(uiop/package:define-package #:pira/eventbridge (:use)
                             (:export #:awsevents #:access-denied-exception
                              #:account-id #:action #:activate-event-source
                              #:api-destination #:api-destination-arn
                              #:api-destination-description
                              #:api-destination-http-method
                              #:api-destination-invocation-rate-limit-per-second
                              #:api-destination-name
                              #:api-destination-response-list
                              #:api-destination-state #:app-sync-parameters
                              #:archive #:archive-arn #:archive-description
                              #:archive-name #:archive-response-list
                              #:archive-state #:archive-state-reason #:arn
                              #:assign-public-ip #:auth-header-parameters
                              #:auth-header-parameters-sensitive
                              #:aws-vpc-configuration #:batch-array-properties
                              #:batch-parameters #:batch-retry-strategy
                              #:boolean #:cancel-replay #:capacity-provider
                              #:capacity-provider-strategy
                              #:capacity-provider-strategy-item
                              #:capacity-provider-strategy-item-base
                              #:capacity-provider-strategy-item-weight
                              #:concurrent-modification-exception #:condition
                              #:connection
                              #:connection-api-key-auth-response-parameters
                              #:connection-arn
                              #:connection-auth-response-parameters
                              #:connection-authorization-type
                              #:connection-basic-auth-response-parameters
                              #:connection-body-parameter
                              #:connection-body-parameters-list
                              #:connection-description
                              #:connection-header-parameter
                              #:connection-header-parameters-list
                              #:connection-http-parameters #:connection-name
                              #:connection-oauth-client-response-parameters
                              #:connection-oauth-http-method
                              #:connection-oauth-response-parameters
                              #:connection-query-string-parameter
                              #:connection-query-string-parameters-list
                              #:connection-response-list #:connection-state
                              #:connection-state-reason
                              #:connectivity-resource-configuration-arn
                              #:connectivity-resource-parameters
                              #:create-api-destination #:create-archive
                              #:create-connection
                              #:create-connection-api-key-auth-request-parameters
                              #:create-connection-auth-request-parameters
                              #:create-connection-basic-auth-request-parameters
                              #:create-connection-oauth-client-request-parameters
                              #:create-connection-oauth-request-parameters
                              #:create-endpoint #:create-event-bus
                              #:create-partner-event-source #:created-by
                              #:database #:db-user #:deactivate-event-source
                              #:dead-letter-config #:deauthorize-connection
                              #:delete-api-destination #:delete-archive
                              #:delete-connection #:delete-endpoint
                              #:delete-event-bus #:delete-partner-event-source
                              #:delete-rule #:describe-api-destination
                              #:describe-archive #:describe-connection
                              #:describe-connection-connectivity-parameters
                              #:describe-connection-resource-parameters
                              #:describe-endpoint #:describe-event-bus
                              #:describe-event-source
                              #:describe-partner-event-source #:describe-replay
                              #:describe-rule #:disable-rule #:ecs-parameters
                              #:enable-rule #:endpoint #:endpoint-arn
                              #:endpoint-description #:endpoint-event-bus
                              #:endpoint-event-bus-list #:endpoint-id
                              #:endpoint-list #:endpoint-name #:endpoint-state
                              #:endpoint-state-reason #:endpoint-url
                              #:error-code #:error-message #:event-bus
                              #:event-bus-arn #:event-bus-description
                              #:event-bus-list #:event-bus-name
                              #:event-bus-name-or-arn #:event-id
                              #:event-pattern #:event-resource
                              #:event-resource-list #:event-source
                              #:event-source-list #:event-source-name
                              #:event-source-name-prefix #:event-source-state
                              #:event-time #:failover-config
                              #:graph-qloperation #:header-key
                              #:header-parameters-map #:header-value
                              #:header-value-sensitive #:health-check
                              #:home-region #:http-parameters #:https-endpoint
                              #:iam-role-arn #:illegal-status-exception
                              #:include-detail #:input-transformer
                              #:input-transformer-path-key #:integer
                              #:internal-exception
                              #:invalid-event-pattern-exception
                              #:invalid-state-exception #:kinesis-parameters
                              #:kms-key-identifier #:launch-type #:level
                              #:limit-exceeded-exception #:limit-max100
                              #:limit-min1 #:list-api-destinations
                              #:list-archives #:list-connections
                              #:list-endpoints #:list-event-buses
                              #:list-event-sources
                              #:list-partner-event-source-accounts
                              #:list-partner-event-sources #:list-replays
                              #:list-rule-names-by-target #:list-rules
                              #:list-tags-for-resource #:list-targets-by-rule
                              #:log-config #:long #:managed-by
                              #:managed-rule-exception
                              #:maximum-event-age-in-seconds
                              #:maximum-retry-attempts #:message-group-id
                              #:network-configuration #:next-token
                              #:non-partner-event-bus-arn
                              #:non-partner-event-bus-name
                              #:non-partner-event-bus-name-or-arn
                              #:operation-disabled-exception
                              #:partner-event-source
                              #:partner-event-source-account
                              #:partner-event-source-account-list
                              #:partner-event-source-list
                              #:partner-event-source-name-prefix
                              #:path-parameter #:path-parameter-list
                              #:placement-constraint
                              #:placement-constraint-expression
                              #:placement-constraint-type
                              #:placement-constraints #:placement-strategies
                              #:placement-strategy #:placement-strategy-field
                              #:placement-strategy-type
                              #:policy-length-exceeded-exception #:primary
                              #:principal #:propagate-tags #:put-events
                              #:put-events-request-entry
                              #:put-events-request-entry-list
                              #:put-events-result-entry
                              #:put-events-result-entry-list
                              #:put-partner-events
                              #:put-partner-events-request-entry
                              #:put-partner-events-request-entry-list
                              #:put-partner-events-result-entry
                              #:put-partner-events-result-entry-list
                              #:put-permission #:put-rule #:put-targets
                              #:put-targets-result-entry
                              #:put-targets-result-entry-list
                              #:query-string-key #:query-string-parameters-map
                              #:query-string-value
                              #:query-string-value-sensitive
                              #:redshift-data-parameters
                              #:redshift-secret-manager-arn #:reference-id
                              #:remove-permission #:remove-targets
                              #:remove-targets-result-entry
                              #:remove-targets-result-entry-list #:replay
                              #:replay-arn #:replay-description
                              #:replay-destination #:replay-destination-filters
                              #:replay-list #:replay-name #:replay-state
                              #:replay-state-reason #:replication-config
                              #:replication-state
                              #:resource-already-exists-exception
                              #:resource-arn #:resource-association-arn
                              #:resource-configuration-arn
                              #:resource-not-found-exception #:retention-days
                              #:retry-policy #:role-arn #:route
                              #:routing-config #:rule #:rule-arn
                              #:rule-description #:rule-name #:rule-name-list
                              #:rule-response-list #:rule-state
                              #:run-command-parameters #:run-command-target
                              #:run-command-target-key
                              #:run-command-target-value
                              #:run-command-target-values #:run-command-targets
                              #:sage-maker-pipeline-parameter
                              #:sage-maker-pipeline-parameter-list
                              #:sage-maker-pipeline-parameter-name
                              #:sage-maker-pipeline-parameter-value
                              #:sage-maker-pipeline-parameters
                              #:schedule-expression #:secondary
                              #:secrets-manager-secret-arn #:sensitive-string
                              #:sql #:sqls #:sqs-parameters #:start-replay
                              #:statement-id #:statement-name #:string
                              #:string-list #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value #:target
                              #:target-arn #:target-id #:target-id-list
                              #:target-input #:target-input-path #:target-list
                              #:target-partition-key-path #:test-event-pattern
                              #:throttling-exception #:timestamp #:trace-header
                              #:transformer-input #:transformer-paths
                              #:untag-resource #:update-api-destination
                              #:update-archive #:update-connection
                              #:update-connection-api-key-auth-request-parameters
                              #:update-connection-auth-request-parameters
                              #:update-connection-basic-auth-request-parameters
                              #:update-connection-oauth-client-request-parameters
                              #:update-connection-oauth-request-parameters
                              #:update-endpoint #:update-event-bus
                              #:eventbridge-error))
(common-lisp:in-package #:pira/eventbridge)

(common-lisp:define-condition eventbridge-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsevents :shape-name "AWSEvents" :version
                                   "2015-10-07" :title "Amazon EventBridge"
                                   :operations
                                   '(activate-event-source cancel-replay
                                     create-api-destination create-archive
                                     create-connection create-endpoint
                                     create-event-bus
                                     create-partner-event-source
                                     deactivate-event-source
                                     deauthorize-connection
                                     delete-api-destination delete-archive
                                     delete-connection delete-endpoint
                                     delete-event-bus
                                     delete-partner-event-source delete-rule
                                     describe-api-destination describe-archive
                                     describe-connection describe-endpoint
                                     describe-event-bus describe-event-source
                                     describe-partner-event-source
                                     describe-replay describe-rule disable-rule
                                     enable-rule list-api-destinations
                                     list-archives list-connections
                                     list-endpoints list-event-buses
                                     list-event-sources
                                     list-partner-event-source-accounts
                                     list-partner-event-sources list-replays
                                     list-rule-names-by-target list-rules
                                     list-tags-for-resource
                                     list-targets-by-rule put-events
                                     put-partner-events put-permission put-rule
                                     put-targets remove-permission
                                     remove-targets start-replay tag-resource
                                     test-event-pattern untag-resource
                                     update-api-destination update-archive
                                     update-connection update-endpoint
                                     update-event-bus)
                                   :xml-namespace
                                   '(:uri
                                     "http://events.amazonaws.com/doc/2015-10-07"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "EventBridge")
                                      ("arnNamespace" . "events")
                                      ("cloudFormationName" . "Events")
                                      ("cloudTrailEventSource"
                                       . "events.amazonaws.com")
                                      ("endpointPrefix" . "events"))
                                     ("aws.auth#sigv4" ("name" . "events"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input activate-event-source-request common-lisp:nil
                                ((name :target-type event-source-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "ActivateEventSourceRequest"))

(smithy/sdk/shapes:define-structure api-destination common-lisp:nil
                                    ((api-destination-arn :target-type
                                      api-destination-arn :member-name
                                      "ApiDestinationArn")
                                     (name :target-type api-destination-name
                                      :member-name "Name")
                                     (api-destination-state :target-type
                                      api-destination-state :member-name
                                      "ApiDestinationState")
                                     (connection-arn :target-type
                                      connection-arn :member-name
                                      "ConnectionArn")
                                     (invocation-endpoint :target-type
                                      https-endpoint :member-name
                                      "InvocationEndpoint")
                                     (http-method :target-type
                                      api-destination-http-method :member-name
                                      "HttpMethod")
                                     (invocation-rate-limit-per-second
                                      :target-type
                                      api-destination-invocation-rate-limit-per-second
                                      :member-name
                                      "InvocationRateLimitPerSecond")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "ApiDestination"))

(smithy/sdk/shapes:define-type api-destination-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-destination-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum api-destination-http-method
    common-lisp:nil
  (:post "POST")
  (:get "GET")
  (:head "HEAD")
  (:options "OPTIONS")
  (:put "PUT")
  (:patch "PATCH")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-type api-destination-invocation-rate-limit-per-second
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type api-destination-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list api-destination-response-list :member
                               api-destination)

(smithy/sdk/shapes:define-enum api-destination-state
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure app-sync-parameters common-lisp:nil
                                    ((graph-qloperation :target-type
                                      graph-qloperation :member-name
                                      "GraphQLOperation"))
                                    (:shape-name "AppSyncParameters"))

(smithy/sdk/shapes:define-structure archive common-lisp:nil
                                    ((archive-name :target-type archive-name
                                      :member-name "ArchiveName")
                                     (event-source-arn :target-type
                                      event-bus-arn :member-name
                                      "EventSourceArn")
                                     (state :target-type archive-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      archive-state-reason :member-name
                                      "StateReason")
                                     (retention-days :target-type
                                      retention-days :member-name
                                      "RetentionDays")
                                     (size-bytes :target-type long :member-name
                                      "SizeBytes")
                                     (event-count :target-type long
                                      :member-name "EventCount")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime"))
                                    (:shape-name "Archive"))

(smithy/sdk/shapes:define-type archive-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type archive-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type archive-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list archive-response-list :member archive)

(smithy/sdk/shapes:define-enum archive-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:creating "CREATING")
  (:updating "UPDATING")
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-type archive-state-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum assign-public-ip
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type auth-header-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-header-parameters-sensitive
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-vpc-configuration common-lisp:nil
                                    ((subnets :target-type string-list
                                      :required common-lisp:t :member-name
                                      "Subnets")
                                     (security-groups :target-type string-list
                                      :member-name "SecurityGroups")
                                     (assign-public-ip :target-type
                                      assign-public-ip :member-name
                                      "AssignPublicIp"))
                                    (:shape-name "AwsVpcConfiguration"))

(smithy/sdk/shapes:define-structure batch-array-properties common-lisp:nil
                                    ((size :target-type integer :member-name
                                      "Size"))
                                    (:shape-name "BatchArrayProperties"))

(smithy/sdk/shapes:define-structure batch-parameters common-lisp:nil
                                    ((job-definition :target-type string
                                      :required common-lisp:t :member-name
                                      "JobDefinition")
                                     (job-name :target-type string :required
                                      common-lisp:t :member-name "JobName")
                                     (array-properties :target-type
                                      batch-array-properties :member-name
                                      "ArrayProperties")
                                     (retry-strategy :target-type
                                      batch-retry-strategy :member-name
                                      "RetryStrategy"))
                                    (:shape-name "BatchParameters"))

(smithy/sdk/shapes:define-structure batch-retry-strategy common-lisp:nil
                                    ((attempts :target-type integer
                                      :member-name "Attempts"))
                                    (:shape-name "BatchRetryStrategy"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-replay-request common-lisp:nil
                                ((replay-name :target-type replay-name
                                  :required common-lisp:t :member-name
                                  "ReplayName"))
                                (:shape-name "CancelReplayRequest"))

(smithy/sdk/shapes:define-output cancel-replay-response common-lisp:nil
                                 ((replay-arn :target-type replay-arn
                                   :member-name "ReplayArn")
                                  (state :target-type replay-state :member-name
                                   "State")
                                  (state-reason :target-type
                                   replay-state-reason :member-name
                                   "StateReason"))
                                 (:shape-name "CancelReplayResponse"))

(smithy/sdk/shapes:define-type capacity-provider smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list capacity-provider-strategy :member
                               capacity-provider-strategy-item)

(smithy/sdk/shapes:define-structure capacity-provider-strategy-item
                                    common-lisp:nil
                                    ((capacity-provider :target-type
                                      capacity-provider :required common-lisp:t
                                      :member-name "capacityProvider")
                                     (weight :target-type
                                      capacity-provider-strategy-item-weight
                                      :member-name "weight")
                                     (base :target-type
                                      capacity-provider-strategy-item-base
                                      :member-name "base"))
                                    (:shape-name
                                     "CapacityProviderStrategyItem"))

(smithy/sdk/shapes:define-type capacity-provider-strategy-item-base
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type capacity-provider-strategy-item-weight
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((type :target-type string :required
                                      common-lisp:t :member-name "Type")
                                     (key :target-type string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-structure connection common-lisp:nil
                                    ((connection-arn :target-type
                                      connection-arn :member-name
                                      "ConnectionArn")
                                     (name :target-type connection-name
                                      :member-name "Name")
                                     (connection-state :target-type
                                      connection-state :member-name
                                      "ConnectionState")
                                     (state-reason :target-type
                                      connection-state-reason :member-name
                                      "StateReason")
                                     (authorization-type :target-type
                                      connection-authorization-type
                                      :member-name "AuthorizationType")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (last-authorized-time :target-type
                                      timestamp :member-name
                                      "LastAuthorizedTime"))
                                    (:shape-name "Connection"))

(smithy/sdk/shapes:define-structure connection-api-key-auth-response-parameters
                                    common-lisp:nil
                                    ((api-key-name :target-type
                                      auth-header-parameters :member-name
                                      "ApiKeyName"))
                                    (:shape-name
                                     "ConnectionApiKeyAuthResponseParameters"))

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connection-auth-response-parameters
                                    common-lisp:nil
                                    ((basic-auth-parameters :target-type
                                      connection-basic-auth-response-parameters
                                      :member-name "BasicAuthParameters")
                                     (oauth-parameters :target-type
                                      connection-oauth-response-parameters
                                      :member-name "OAuthParameters")
                                     (api-key-auth-parameters :target-type
                                      connection-api-key-auth-response-parameters
                                      :member-name "ApiKeyAuthParameters")
                                     (invocation-http-parameters :target-type
                                      connection-http-parameters :member-name
                                      "InvocationHttpParameters")
                                     (connectivity-parameters :target-type
                                      describe-connection-connectivity-parameters
                                      :member-name "ConnectivityParameters"))
                                    (:shape-name
                                     "ConnectionAuthResponseParameters"))

(smithy/sdk/shapes:define-enum connection-authorization-type
    common-lisp:nil
  (:basic "BASIC")
  (:oauth-client-credentials "OAUTH_CLIENT_CREDENTIALS")
  (:api-key "API_KEY"))

(smithy/sdk/shapes:define-structure connection-basic-auth-response-parameters
                                    common-lisp:nil
                                    ((username :target-type
                                      auth-header-parameters :member-name
                                      "Username"))
                                    (:shape-name
                                     "ConnectionBasicAuthResponseParameters"))

(smithy/sdk/shapes:define-structure connection-body-parameter common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type sensitive-string
                                      :member-name "Value")
                                     (is-value-secret :target-type boolean
                                      :member-name "IsValueSecret"))
                                    (:shape-name "ConnectionBodyParameter"))

(smithy/sdk/shapes:define-list connection-body-parameters-list :member
                               connection-body-parameter)

(smithy/sdk/shapes:define-type connection-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connection-header-parameter common-lisp:nil
                                    ((key :target-type header-key :member-name
                                      "Key")
                                     (value :target-type header-value-sensitive
                                      :member-name "Value")
                                     (is-value-secret :target-type boolean
                                      :member-name "IsValueSecret"))
                                    (:shape-name "ConnectionHeaderParameter"))

(smithy/sdk/shapes:define-list connection-header-parameters-list :member
                               connection-header-parameter)

(smithy/sdk/shapes:define-structure connection-http-parameters common-lisp:nil
                                    ((header-parameters :target-type
                                      connection-header-parameters-list
                                      :member-name "HeaderParameters")
                                     (query-string-parameters :target-type
                                      connection-query-string-parameters-list
                                      :member-name "QueryStringParameters")
                                     (body-parameters :target-type
                                      connection-body-parameters-list
                                      :member-name "BodyParameters"))
                                    (:shape-name "ConnectionHttpParameters"))

(smithy/sdk/shapes:define-type connection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connection-oauth-client-response-parameters
                                    common-lisp:nil
                                    ((client-id :target-type
                                      auth-header-parameters :member-name
                                      "ClientID"))
                                    (:shape-name
                                     "ConnectionOAuthClientResponseParameters"))

(smithy/sdk/shapes:define-enum connection-oauth-http-method
    common-lisp:nil
  (:get "GET")
  (:post "POST")
  (:put "PUT"))

(smithy/sdk/shapes:define-structure connection-oauth-response-parameters
                                    common-lisp:nil
                                    ((client-parameters :target-type
                                      connection-oauth-client-response-parameters
                                      :member-name "ClientParameters")
                                     (authorization-endpoint :target-type
                                      https-endpoint :member-name
                                      "AuthorizationEndpoint")
                                     (http-method :target-type
                                      connection-oauth-http-method :member-name
                                      "HttpMethod")
                                     (oauth-http-parameters :target-type
                                      connection-http-parameters :member-name
                                      "OAuthHttpParameters"))
                                    (:shape-name
                                     "ConnectionOAuthResponseParameters"))

(smithy/sdk/shapes:define-structure connection-query-string-parameter
                                    common-lisp:nil
                                    ((key :target-type query-string-key
                                      :member-name "Key")
                                     (value :target-type
                                      query-string-value-sensitive :member-name
                                      "Value")
                                     (is-value-secret :target-type boolean
                                      :member-name "IsValueSecret"))
                                    (:shape-name
                                     "ConnectionQueryStringParameter"))

(smithy/sdk/shapes:define-list connection-query-string-parameters-list :member
                               connection-query-string-parameter)

(smithy/sdk/shapes:define-list connection-response-list :member connection)

(smithy/sdk/shapes:define-enum connection-state
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:authorized "AUTHORIZED")
  (:deauthorized "DEAUTHORIZED")
  (:authorizing "AUTHORIZING")
  (:deauthorizing "DEAUTHORIZING")
  (:active "ACTIVE")
  (:failed-connectivity "FAILED_CONNECTIVITY"))

(smithy/sdk/shapes:define-type connection-state-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connectivity-resource-configuration-arn
                                    common-lisp:nil
                                    ((resource-configuration-arn :target-type
                                      resource-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ResourceConfigurationArn"))
                                    (:shape-name
                                     "ConnectivityResourceConfigurationArn"))

(smithy/sdk/shapes:define-structure connectivity-resource-parameters
                                    common-lisp:nil
                                    ((resource-parameters :target-type
                                      connectivity-resource-configuration-arn
                                      :required common-lisp:t :member-name
                                      "ResourceParameters"))
                                    (:shape-name
                                     "ConnectivityResourceParameters"))

(smithy/sdk/shapes:define-input create-api-destination-request common-lisp:nil
                                ((name :target-type api-destination-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  api-destination-description :member-name
                                  "Description")
                                 (connection-arn :target-type connection-arn
                                  :required common-lisp:t :member-name
                                  "ConnectionArn")
                                 (invocation-endpoint :target-type
                                  https-endpoint :required common-lisp:t
                                  :member-name "InvocationEndpoint")
                                 (http-method :target-type
                                  api-destination-http-method :required
                                  common-lisp:t :member-name "HttpMethod")
                                 (invocation-rate-limit-per-second :target-type
                                  api-destination-invocation-rate-limit-per-second
                                  :member-name "InvocationRateLimitPerSecond"))
                                (:shape-name "CreateApiDestinationRequest"))

(smithy/sdk/shapes:define-output create-api-destination-response
                                 common-lisp:nil
                                 ((api-destination-arn :target-type
                                   api-destination-arn :member-name
                                   "ApiDestinationArn")
                                  (api-destination-state :target-type
                                   api-destination-state :member-name
                                   "ApiDestinationState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "CreateApiDestinationResponse"))

(smithy/sdk/shapes:define-input create-archive-request common-lisp:nil
                                ((archive-name :target-type archive-name
                                  :required common-lisp:t :member-name
                                  "ArchiveName")
                                 (event-source-arn :target-type event-bus-arn
                                  :required common-lisp:t :member-name
                                  "EventSourceArn")
                                 (description :target-type archive-description
                                  :member-name "Description")
                                 (event-pattern :target-type event-pattern
                                  :member-name "EventPattern")
                                 (retention-days :target-type retention-days
                                  :member-name "RetentionDays")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name "CreateArchiveRequest"))

(smithy/sdk/shapes:define-output create-archive-response common-lisp:nil
                                 ((archive-arn :target-type archive-arn
                                   :member-name "ArchiveArn")
                                  (state :target-type archive-state
                                   :member-name "State")
                                  (state-reason :target-type
                                   archive-state-reason :member-name
                                   "StateReason")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "CreateArchiveResponse"))

(smithy/sdk/shapes:define-structure
 create-connection-api-key-auth-request-parameters common-lisp:nil
 ((api-key-name :target-type auth-header-parameters :required common-lisp:t
   :member-name "ApiKeyName")
  (api-key-value :target-type auth-header-parameters-sensitive :required
   common-lisp:t :member-name "ApiKeyValue"))
 (:shape-name "CreateConnectionApiKeyAuthRequestParameters"))

(smithy/sdk/shapes:define-structure create-connection-auth-request-parameters
                                    common-lisp:nil
                                    ((basic-auth-parameters :target-type
                                      create-connection-basic-auth-request-parameters
                                      :member-name "BasicAuthParameters")
                                     (oauth-parameters :target-type
                                      create-connection-oauth-request-parameters
                                      :member-name "OAuthParameters")
                                     (api-key-auth-parameters :target-type
                                      create-connection-api-key-auth-request-parameters
                                      :member-name "ApiKeyAuthParameters")
                                     (invocation-http-parameters :target-type
                                      connection-http-parameters :member-name
                                      "InvocationHttpParameters")
                                     (connectivity-parameters :target-type
                                      connectivity-resource-parameters
                                      :member-name "ConnectivityParameters"))
                                    (:shape-name
                                     "CreateConnectionAuthRequestParameters"))

(smithy/sdk/shapes:define-structure
 create-connection-basic-auth-request-parameters common-lisp:nil
 ((username :target-type auth-header-parameters :required common-lisp:t
   :member-name "Username")
  (password :target-type auth-header-parameters-sensitive :required
   common-lisp:t :member-name "Password"))
 (:shape-name "CreateConnectionBasicAuthRequestParameters"))

(smithy/sdk/shapes:define-structure
 create-connection-oauth-client-request-parameters common-lisp:nil
 ((client-id :target-type auth-header-parameters :required common-lisp:t
   :member-name "ClientID")
  (client-secret :target-type auth-header-parameters-sensitive :required
   common-lisp:t :member-name "ClientSecret"))
 (:shape-name "CreateConnectionOAuthClientRequestParameters"))

(smithy/sdk/shapes:define-structure create-connection-oauth-request-parameters
                                    common-lisp:nil
                                    ((client-parameters :target-type
                                      create-connection-oauth-client-request-parameters
                                      :required common-lisp:t :member-name
                                      "ClientParameters")
                                     (authorization-endpoint :target-type
                                      https-endpoint :required common-lisp:t
                                      :member-name "AuthorizationEndpoint")
                                     (http-method :target-type
                                      connection-oauth-http-method :required
                                      common-lisp:t :member-name "HttpMethod")
                                     (oauth-http-parameters :target-type
                                      connection-http-parameters :member-name
                                      "OAuthHttpParameters"))
                                    (:shape-name
                                     "CreateConnectionOAuthRequestParameters"))

(smithy/sdk/shapes:define-input create-connection-request common-lisp:nil
                                ((name :target-type connection-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  connection-description :member-name
                                  "Description")
                                 (authorization-type :target-type
                                  connection-authorization-type :required
                                  common-lisp:t :member-name
                                  "AuthorizationType")
                                 (auth-parameters :target-type
                                  create-connection-auth-request-parameters
                                  :required common-lisp:t :member-name
                                  "AuthParameters")
                                 (invocation-connectivity-parameters
                                  :target-type connectivity-resource-parameters
                                  :member-name
                                  "InvocationConnectivityParameters")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name "CreateConnectionRequest"))

(smithy/sdk/shapes:define-output create-connection-response common-lisp:nil
                                 ((connection-arn :target-type connection-arn
                                   :member-name "ConnectionArn")
                                  (connection-state :target-type
                                   connection-state :member-name
                                   "ConnectionState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "CreateConnectionResponse"))

(smithy/sdk/shapes:define-input create-endpoint-request common-lisp:nil
                                ((name :target-type endpoint-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type endpoint-description
                                  :member-name "Description")
                                 (routing-config :target-type routing-config
                                  :required common-lisp:t :member-name
                                  "RoutingConfig")
                                 (replication-config :target-type
                                  replication-config :member-name
                                  "ReplicationConfig")
                                 (event-buses :target-type
                                  endpoint-event-bus-list :required
                                  common-lisp:t :member-name "EventBuses")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn"))
                                (:shape-name "CreateEndpointRequest"))

(smithy/sdk/shapes:define-output create-endpoint-response common-lisp:nil
                                 ((name :target-type endpoint-name :member-name
                                   "Name")
                                  (arn :target-type endpoint-arn :member-name
                                   "Arn")
                                  (routing-config :target-type routing-config
                                   :member-name "RoutingConfig")
                                  (replication-config :target-type
                                   replication-config :member-name
                                   "ReplicationConfig")
                                  (event-buses :target-type
                                   endpoint-event-bus-list :member-name
                                   "EventBuses")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (state :target-type endpoint-state
                                   :member-name "State"))
                                 (:shape-name "CreateEndpointResponse"))

(smithy/sdk/shapes:define-input create-event-bus-request common-lisp:nil
                                ((name :target-type event-bus-name :required
                                  common-lisp:t :member-name "Name")
                                 (event-source-name :target-type
                                  event-source-name :member-name
                                  "EventSourceName")
                                 (description :target-type
                                  event-bus-description :member-name
                                  "Description")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier")
                                 (dead-letter-config :target-type
                                  dead-letter-config :member-name
                                  "DeadLetterConfig")
                                 (log-config :target-type log-config
                                  :member-name "LogConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateEventBusRequest"))

(smithy/sdk/shapes:define-output create-event-bus-response common-lisp:nil
                                 ((event-bus-arn :target-type string
                                   :member-name "EventBusArn")
                                  (description :target-type
                                   event-bus-description :member-name
                                   "Description")
                                  (kms-key-identifier :target-type
                                   kms-key-identifier :member-name
                                   "KmsKeyIdentifier")
                                  (dead-letter-config :target-type
                                   dead-letter-config :member-name
                                   "DeadLetterConfig")
                                  (log-config :target-type log-config
                                   :member-name "LogConfig"))
                                 (:shape-name "CreateEventBusResponse"))

(smithy/sdk/shapes:define-input create-partner-event-source-request
                                common-lisp:nil
                                ((name :target-type event-source-name :required
                                  common-lisp:t :member-name "Name")
                                 (account :target-type account-id :required
                                  common-lisp:t :member-name "Account"))
                                (:shape-name "CreatePartnerEventSourceRequest"))

(smithy/sdk/shapes:define-output create-partner-event-source-response
                                 common-lisp:nil
                                 ((event-source-arn :target-type string
                                   :member-name "EventSourceArn"))
                                 (:shape-name
                                  "CreatePartnerEventSourceResponse"))

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input deactivate-event-source-request common-lisp:nil
                                ((name :target-type event-source-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeactivateEventSourceRequest"))

(smithy/sdk/shapes:define-structure dead-letter-config common-lisp:nil
                                    ((arn :target-type resource-arn
                                      :member-name "Arn"))
                                    (:shape-name "DeadLetterConfig"))

(smithy/sdk/shapes:define-input deauthorize-connection-request common-lisp:nil
                                ((name :target-type connection-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeauthorizeConnectionRequest"))

(smithy/sdk/shapes:define-output deauthorize-connection-response
                                 common-lisp:nil
                                 ((connection-arn :target-type connection-arn
                                   :member-name "ConnectionArn")
                                  (connection-state :target-type
                                   connection-state :member-name
                                   "ConnectionState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (last-authorized-time :target-type timestamp
                                   :member-name "LastAuthorizedTime"))
                                 (:shape-name "DeauthorizeConnectionResponse"))

(smithy/sdk/shapes:define-input delete-api-destination-request common-lisp:nil
                                ((name :target-type api-destination-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteApiDestinationRequest"))

(smithy/sdk/shapes:define-output delete-api-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteApiDestinationResponse"))

(smithy/sdk/shapes:define-input delete-archive-request common-lisp:nil
                                ((archive-name :target-type archive-name
                                  :required common-lisp:t :member-name
                                  "ArchiveName"))
                                (:shape-name "DeleteArchiveRequest"))

(smithy/sdk/shapes:define-output delete-archive-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteArchiveResponse"))

(smithy/sdk/shapes:define-input delete-connection-request common-lisp:nil
                                ((name :target-type connection-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteConnectionRequest"))

(smithy/sdk/shapes:define-output delete-connection-response common-lisp:nil
                                 ((connection-arn :target-type connection-arn
                                   :member-name "ConnectionArn")
                                  (connection-state :target-type
                                   connection-state :member-name
                                   "ConnectionState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (last-authorized-time :target-type timestamp
                                   :member-name "LastAuthorizedTime"))
                                 (:shape-name "DeleteConnectionResponse"))

(smithy/sdk/shapes:define-input delete-endpoint-request common-lisp:nil
                                ((name :target-type endpoint-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteEndpointRequest"))

(smithy/sdk/shapes:define-output delete-endpoint-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEndpointResponse"))

(smithy/sdk/shapes:define-input delete-event-bus-request common-lisp:nil
                                ((name :target-type event-bus-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteEventBusRequest"))

(smithy/sdk/shapes:define-input delete-partner-event-source-request
                                common-lisp:nil
                                ((name :target-type event-source-name :required
                                  common-lisp:t :member-name "Name")
                                 (account :target-type account-id :required
                                  common-lisp:t :member-name "Account"))
                                (:shape-name "DeletePartnerEventSourceRequest"))

(smithy/sdk/shapes:define-input delete-rule-request common-lisp:nil
                                ((name :target-type rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "DeleteRuleRequest"))

(smithy/sdk/shapes:define-input describe-api-destination-request
                                common-lisp:nil
                                ((name :target-type api-destination-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DescribeApiDestinationRequest"))

(smithy/sdk/shapes:define-output describe-api-destination-response
                                 common-lisp:nil
                                 ((api-destination-arn :target-type
                                   api-destination-arn :member-name
                                   "ApiDestinationArn")
                                  (name :target-type api-destination-name
                                   :member-name "Name")
                                  (description :target-type
                                   api-destination-description :member-name
                                   "Description")
                                  (api-destination-state :target-type
                                   api-destination-state :member-name
                                   "ApiDestinationState")
                                  (connection-arn :target-type connection-arn
                                   :member-name "ConnectionArn")
                                  (invocation-endpoint :target-type
                                   https-endpoint :member-name
                                   "InvocationEndpoint")
                                  (http-method :target-type
                                   api-destination-http-method :member-name
                                   "HttpMethod")
                                  (invocation-rate-limit-per-second
                                   :target-type
                                   api-destination-invocation-rate-limit-per-second
                                   :member-name "InvocationRateLimitPerSecond")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "DescribeApiDestinationResponse"))

(smithy/sdk/shapes:define-input describe-archive-request common-lisp:nil
                                ((archive-name :target-type archive-name
                                  :required common-lisp:t :member-name
                                  "ArchiveName"))
                                (:shape-name "DescribeArchiveRequest"))

(smithy/sdk/shapes:define-output describe-archive-response common-lisp:nil
                                 ((archive-arn :target-type archive-arn
                                   :member-name "ArchiveArn")
                                  (archive-name :target-type archive-name
                                   :member-name "ArchiveName")
                                  (event-source-arn :target-type event-bus-arn
                                   :member-name "EventSourceArn")
                                  (description :target-type archive-description
                                   :member-name "Description")
                                  (event-pattern :target-type event-pattern
                                   :member-name "EventPattern")
                                  (state :target-type archive-state
                                   :member-name "State")
                                  (state-reason :target-type
                                   archive-state-reason :member-name
                                   "StateReason")
                                  (kms-key-identifier :target-type
                                   kms-key-identifier :member-name
                                   "KmsKeyIdentifier")
                                  (retention-days :target-type retention-days
                                   :member-name "RetentionDays")
                                  (size-bytes :target-type long :member-name
                                   "SizeBytes")
                                  (event-count :target-type long :member-name
                                   "EventCount")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "DescribeArchiveResponse"))

(smithy/sdk/shapes:define-structure describe-connection-connectivity-parameters
                                    common-lisp:nil
                                    ((resource-parameters :target-type
                                      describe-connection-resource-parameters
                                      :required common-lisp:t :member-name
                                      "ResourceParameters"))
                                    (:shape-name
                                     "DescribeConnectionConnectivityParameters"))

(smithy/sdk/shapes:define-input describe-connection-request common-lisp:nil
                                ((name :target-type connection-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DescribeConnectionRequest"))

(smithy/sdk/shapes:define-structure describe-connection-resource-parameters
                                    common-lisp:nil
                                    ((resource-configuration-arn :target-type
                                      resource-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ResourceConfigurationArn")
                                     (resource-association-arn :target-type
                                      resource-association-arn :required
                                      common-lisp:t :member-name
                                      "ResourceAssociationArn"))
                                    (:shape-name
                                     "DescribeConnectionResourceParameters"))

(smithy/sdk/shapes:define-output describe-connection-response common-lisp:nil
                                 ((connection-arn :target-type connection-arn
                                   :member-name "ConnectionArn")
                                  (name :target-type connection-name
                                   :member-name "Name")
                                  (description :target-type
                                   connection-description :member-name
                                   "Description")
                                  (invocation-connectivity-parameters
                                   :target-type
                                   describe-connection-connectivity-parameters
                                   :member-name
                                   "InvocationConnectivityParameters")
                                  (connection-state :target-type
                                   connection-state :member-name
                                   "ConnectionState")
                                  (state-reason :target-type
                                   connection-state-reason :member-name
                                   "StateReason")
                                  (authorization-type :target-type
                                   connection-authorization-type :member-name
                                   "AuthorizationType")
                                  (secret-arn :target-type
                                   secrets-manager-secret-arn :member-name
                                   "SecretArn")
                                  (kms-key-identifier :target-type
                                   kms-key-identifier :member-name
                                   "KmsKeyIdentifier")
                                  (auth-parameters :target-type
                                   connection-auth-response-parameters
                                   :member-name "AuthParameters")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (last-authorized-time :target-type timestamp
                                   :member-name "LastAuthorizedTime"))
                                 (:shape-name "DescribeConnectionResponse"))

(smithy/sdk/shapes:define-input describe-endpoint-request common-lisp:nil
                                ((name :target-type endpoint-name :required
                                  common-lisp:t :member-name "Name")
                                 (home-region :target-type home-region
                                  :member-name "HomeRegion"))
                                (:shape-name "DescribeEndpointRequest"))

(smithy/sdk/shapes:define-output describe-endpoint-response common-lisp:nil
                                 ((name :target-type endpoint-name :member-name
                                   "Name")
                                  (description :target-type
                                   endpoint-description :member-name
                                   "Description")
                                  (arn :target-type endpoint-arn :member-name
                                   "Arn")
                                  (routing-config :target-type routing-config
                                   :member-name "RoutingConfig")
                                  (replication-config :target-type
                                   replication-config :member-name
                                   "ReplicationConfig")
                                  (event-buses :target-type
                                   endpoint-event-bus-list :member-name
                                   "EventBuses")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (endpoint-id :target-type endpoint-id
                                   :member-name "EndpointId")
                                  (endpoint-url :target-type endpoint-url
                                   :member-name "EndpointUrl")
                                  (state :target-type endpoint-state
                                   :member-name "State")
                                  (state-reason :target-type
                                   endpoint-state-reason :member-name
                                   "StateReason")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "DescribeEndpointResponse"))

(smithy/sdk/shapes:define-input describe-event-bus-request common-lisp:nil
                                ((name :target-type event-bus-name-or-arn
                                  :member-name "Name"))
                                (:shape-name "DescribeEventBusRequest"))

(smithy/sdk/shapes:define-output describe-event-bus-response common-lisp:nil
                                 ((name :target-type string :member-name
                                   "Name")
                                  (arn :target-type string :member-name "Arn")
                                  (description :target-type
                                   event-bus-description :member-name
                                   "Description")
                                  (kms-key-identifier :target-type
                                   kms-key-identifier :member-name
                                   "KmsKeyIdentifier")
                                  (dead-letter-config :target-type
                                   dead-letter-config :member-name
                                   "DeadLetterConfig")
                                  (policy :target-type string :member-name
                                   "Policy")
                                  (log-config :target-type log-config
                                   :member-name "LogConfig")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "DescribeEventBusResponse"))

(smithy/sdk/shapes:define-input describe-event-source-request common-lisp:nil
                                ((name :target-type event-source-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DescribeEventSourceRequest"))

(smithy/sdk/shapes:define-output describe-event-source-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (created-by :target-type string :member-name
                                   "CreatedBy")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (expiration-time :target-type timestamp
                                   :member-name "ExpirationTime")
                                  (name :target-type string :member-name
                                   "Name")
                                  (state :target-type event-source-state
                                   :member-name "State"))
                                 (:shape-name "DescribeEventSourceResponse"))

(smithy/sdk/shapes:define-input describe-partner-event-source-request
                                common-lisp:nil
                                ((name :target-type event-source-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name
                                 "DescribePartnerEventSourceRequest"))

(smithy/sdk/shapes:define-output describe-partner-event-source-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name
                                  "DescribePartnerEventSourceResponse"))

(smithy/sdk/shapes:define-input describe-replay-request common-lisp:nil
                                ((replay-name :target-type replay-name
                                  :required common-lisp:t :member-name
                                  "ReplayName"))
                                (:shape-name "DescribeReplayRequest"))

(smithy/sdk/shapes:define-output describe-replay-response common-lisp:nil
                                 ((replay-name :target-type replay-name
                                   :member-name "ReplayName")
                                  (replay-arn :target-type replay-arn
                                   :member-name "ReplayArn")
                                  (description :target-type replay-description
                                   :member-name "Description")
                                  (state :target-type replay-state :member-name
                                   "State")
                                  (state-reason :target-type
                                   replay-state-reason :member-name
                                   "StateReason")
                                  (event-source-arn :target-type archive-arn
                                   :member-name "EventSourceArn")
                                  (destination :target-type replay-destination
                                   :member-name "Destination")
                                  (event-start-time :target-type timestamp
                                   :member-name "EventStartTime")
                                  (event-end-time :target-type timestamp
                                   :member-name "EventEndTime")
                                  (event-last-replayed-time :target-type
                                   timestamp :member-name
                                   "EventLastReplayedTime")
                                  (replay-start-time :target-type timestamp
                                   :member-name "ReplayStartTime")
                                  (replay-end-time :target-type timestamp
                                   :member-name "ReplayEndTime"))
                                 (:shape-name "DescribeReplayResponse"))

(smithy/sdk/shapes:define-input describe-rule-request common-lisp:nil
                                ((name :target-type rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName"))
                                (:shape-name "DescribeRuleRequest"))

(smithy/sdk/shapes:define-output describe-rule-response common-lisp:nil
                                 ((name :target-type rule-name :member-name
                                   "Name")
                                  (arn :target-type rule-arn :member-name
                                   "Arn")
                                  (event-pattern :target-type event-pattern
                                   :member-name "EventPattern")
                                  (schedule-expression :target-type
                                   schedule-expression :member-name
                                   "ScheduleExpression")
                                  (state :target-type rule-state :member-name
                                   "State")
                                  (description :target-type rule-description
                                   :member-name "Description")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (managed-by :target-type managed-by
                                   :member-name "ManagedBy")
                                  (event-bus-name :target-type event-bus-name
                                   :member-name "EventBusName")
                                  (created-by :target-type created-by
                                   :member-name "CreatedBy"))
                                 (:shape-name "DescribeRuleResponse"))

(smithy/sdk/shapes:define-input disable-rule-request common-lisp:nil
                                ((name :target-type rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName"))
                                (:shape-name "DisableRuleRequest"))

(smithy/sdk/shapes:define-structure ecs-parameters common-lisp:nil
                                    ((task-definition-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "TaskDefinitionArn")
                                     (task-count :target-type limit-min1
                                      :member-name "TaskCount")
                                     (launch-type :target-type launch-type
                                      :member-name "LaunchType")
                                     (network-configuration :target-type
                                      network-configuration :member-name
                                      "NetworkConfiguration")
                                     (platform-version :target-type string
                                      :member-name "PlatformVersion")
                                     (group :target-type string :member-name
                                      "Group")
                                     (capacity-provider-strategy :target-type
                                      capacity-provider-strategy :member-name
                                      "CapacityProviderStrategy")
                                     (enable-ecsmanaged-tags :target-type
                                      boolean :member-name
                                      "EnableECSManagedTags")
                                     (enable-execute-command :target-type
                                      boolean :member-name
                                      "EnableExecuteCommand")
                                     (placement-constraints :target-type
                                      placement-constraints :member-name
                                      "PlacementConstraints")
                                     (placement-strategy :target-type
                                      placement-strategies :member-name
                                      "PlacementStrategy")
                                     (propagate-tags :target-type
                                      propagate-tags :member-name
                                      "PropagateTags")
                                     (reference-id :target-type reference-id
                                      :member-name "ReferenceId")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "EcsParameters"))

(smithy/sdk/shapes:define-input enable-rule-request common-lisp:nil
                                ((name :target-type rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName"))
                                (:shape-name "EnableRuleRequest"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((name :target-type endpoint-name
                                      :member-name "Name")
                                     (description :target-type
                                      endpoint-description :member-name
                                      "Description")
                                     (arn :target-type endpoint-arn
                                      :member-name "Arn")
                                     (routing-config :target-type
                                      routing-config :member-name
                                      "RoutingConfig")
                                     (replication-config :target-type
                                      replication-config :member-name
                                      "ReplicationConfig")
                                     (event-buses :target-type
                                      endpoint-event-bus-list :member-name
                                      "EventBuses")
                                     (role-arn :target-type iam-role-arn
                                      :member-name "RoleArn")
                                     (endpoint-id :target-type endpoint-id
                                      :member-name "EndpointId")
                                     (endpoint-url :target-type endpoint-url
                                      :member-name "EndpointUrl")
                                     (state :target-type endpoint-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      endpoint-state-reason :member-name
                                      "StateReason")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-type endpoint-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure endpoint-event-bus common-lisp:nil
                                    ((event-bus-arn :target-type
                                      non-partner-event-bus-arn :required
                                      common-lisp:t :member-name
                                      "EventBusArn"))
                                    (:shape-name "EndpointEventBus"))

(smithy/sdk/shapes:define-list endpoint-event-bus-list :member
                               endpoint-event-bus)

(smithy/sdk/shapes:define-type endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list endpoint-list :member endpoint)

(smithy/sdk/shapes:define-type endpoint-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-state
    common-lisp:nil
  (:active "ACTIVE")
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type endpoint-state-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-bus common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (description :target-type
                                      event-bus-description :member-name
                                      "Description")
                                     (policy :target-type string :member-name
                                      "Policy")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "EventBus"))

(smithy/sdk/shapes:define-type event-bus-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-bus-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-bus-list :member event-bus)

(smithy/sdk/shapes:define-type event-bus-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-bus-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-resource-list :member event-resource)

(smithy/sdk/shapes:define-structure event-source common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (created-by :target-type string
                                      :member-name "CreatedBy")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (expiration-time :target-type timestamp
                                      :member-name "ExpirationTime")
                                     (name :target-type string :member-name
                                      "Name")
                                     (state :target-type event-source-state
                                      :member-name "State"))
                                    (:shape-name "EventSource"))

(smithy/sdk/shapes:define-list event-source-list :member event-source)

(smithy/sdk/shapes:define-type event-source-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-source-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-source-state
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type event-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure failover-config common-lisp:nil
                                    ((primary :target-type primary :required
                                      common-lisp:t :member-name "Primary")
                                     (secondary :target-type secondary
                                      :required common-lisp:t :member-name
                                      "Secondary"))
                                    (:shape-name "FailoverConfig"))

(smithy/sdk/shapes:define-type graph-qloperation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map header-parameters-map :key header-key :value
                              header-value)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-value-sensitive
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type home-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-parameters common-lisp:nil
                                    ((path-parameter-values :target-type
                                      path-parameter-list :member-name
                                      "PathParameterValues")
                                     (header-parameters :target-type
                                      header-parameters-map :member-name
                                      "HeaderParameters")
                                     (query-string-parameters :target-type
                                      query-string-parameters-map :member-name
                                      "QueryStringParameters"))
                                    (:shape-name "HttpParameters"))

(smithy/sdk/shapes:define-type https-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error illegal-status-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "IllegalStatusException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-enum include-detail
    common-lisp:nil
  (:none "NONE")
  (:full "FULL"))

(smithy/sdk/shapes:define-structure input-transformer common-lisp:nil
                                    ((input-paths-map :target-type
                                      transformer-paths :member-name
                                      "InputPathsMap")
                                     (input-template :target-type
                                      transformer-input :required common-lisp:t
                                      :member-name "InputTemplate"))
                                    (:shape-name "InputTransformer"))

(smithy/sdk/shapes:define-type input-transformer-path-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalException")
                                (:error-code 500)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-error invalid-event-pattern-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidEventPatternException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-structure kinesis-parameters common-lisp:nil
                                    ((partition-key-path :target-type
                                      target-partition-key-path :required
                                      common-lisp:t :member-name
                                      "PartitionKeyPath"))
                                    (:shape-name "KinesisParameters"))

(smithy/sdk/shapes:define-type kms-key-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum launch-type
    common-lisp:nil
  (:ec2 "EC2")
  (:fargate "FARGATE")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-enum level
    common-lisp:nil
  (:off "OFF")
  (:error "ERROR")
  (:info "INFO")
  (:trace "TRACE"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-type limit-max100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type limit-min1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-api-destinations-request common-lisp:nil
                                ((name-prefix :target-type api-destination-name
                                  :member-name "NamePrefix")
                                 (connection-arn :target-type connection-arn
                                  :member-name "ConnectionArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListApiDestinationsRequest"))

(smithy/sdk/shapes:define-output list-api-destinations-response common-lisp:nil
                                 ((api-destinations :target-type
                                   api-destination-response-list :member-name
                                   "ApiDestinations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListApiDestinationsResponse"))

(smithy/sdk/shapes:define-input list-archives-request common-lisp:nil
                                ((name-prefix :target-type archive-name
                                  :member-name "NamePrefix")
                                 (event-source-arn :target-type event-bus-arn
                                  :member-name "EventSourceArn")
                                 (state :target-type archive-state :member-name
                                  "State")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListArchivesRequest"))

(smithy/sdk/shapes:define-output list-archives-response common-lisp:nil
                                 ((archives :target-type archive-response-list
                                   :member-name "Archives")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListArchivesResponse"))

(smithy/sdk/shapes:define-input list-connections-request common-lisp:nil
                                ((name-prefix :target-type connection-name
                                  :member-name "NamePrefix")
                                 (connection-state :target-type
                                  connection-state :member-name
                                  "ConnectionState")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListConnectionsRequest"))

(smithy/sdk/shapes:define-output list-connections-response common-lisp:nil
                                 ((connections :target-type
                                   connection-response-list :member-name
                                   "Connections")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConnectionsResponse"))

(smithy/sdk/shapes:define-input list-endpoints-request common-lisp:nil
                                ((name-prefix :target-type endpoint-name
                                  :member-name "NamePrefix")
                                 (home-region :target-type home-region
                                  :member-name "HomeRegion")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit-max100
                                  :member-name "MaxResults"))
                                (:shape-name "ListEndpointsRequest"))

(smithy/sdk/shapes:define-output list-endpoints-response common-lisp:nil
                                 ((endpoints :target-type endpoint-list
                                   :member-name "Endpoints")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEndpointsResponse"))

(smithy/sdk/shapes:define-input list-event-buses-request common-lisp:nil
                                ((name-prefix :target-type event-bus-name
                                  :member-name "NamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListEventBusesRequest"))

(smithy/sdk/shapes:define-output list-event-buses-response common-lisp:nil
                                 ((event-buses :target-type event-bus-list
                                   :member-name "EventBuses")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEventBusesResponse"))

(smithy/sdk/shapes:define-input list-event-sources-request common-lisp:nil
                                ((name-prefix :target-type
                                  event-source-name-prefix :member-name
                                  "NamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListEventSourcesRequest"))

(smithy/sdk/shapes:define-output list-event-sources-response common-lisp:nil
                                 ((event-sources :target-type event-source-list
                                   :member-name "EventSources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEventSourcesResponse"))

(smithy/sdk/shapes:define-input list-partner-event-source-accounts-request
                                common-lisp:nil
                                ((event-source-name :target-type
                                  event-source-name :required common-lisp:t
                                  :member-name "EventSourceName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name
                                 "ListPartnerEventSourceAccountsRequest"))

(smithy/sdk/shapes:define-output list-partner-event-source-accounts-response
                                 common-lisp:nil
                                 ((partner-event-source-accounts :target-type
                                   partner-event-source-account-list
                                   :member-name "PartnerEventSourceAccounts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPartnerEventSourceAccountsResponse"))

(smithy/sdk/shapes:define-input list-partner-event-sources-request
                                common-lisp:nil
                                ((name-prefix :target-type
                                  partner-event-source-name-prefix :required
                                  common-lisp:t :member-name "NamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListPartnerEventSourcesRequest"))

(smithy/sdk/shapes:define-output list-partner-event-sources-response
                                 common-lisp:nil
                                 ((partner-event-sources :target-type
                                   partner-event-source-list :member-name
                                   "PartnerEventSources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPartnerEventSourcesResponse"))

(smithy/sdk/shapes:define-input list-replays-request common-lisp:nil
                                ((name-prefix :target-type replay-name
                                  :member-name "NamePrefix")
                                 (state :target-type replay-state :member-name
                                  "State")
                                 (event-source-arn :target-type archive-arn
                                  :member-name "EventSourceArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListReplaysRequest"))

(smithy/sdk/shapes:define-output list-replays-response common-lisp:nil
                                 ((replays :target-type replay-list
                                   :member-name "Replays")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListReplaysResponse"))

(smithy/sdk/shapes:define-input list-rule-names-by-target-request
                                common-lisp:nil
                                ((target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "TargetArn")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListRuleNamesByTargetRequest"))

(smithy/sdk/shapes:define-output list-rule-names-by-target-response
                                 common-lisp:nil
                                 ((rule-names :target-type rule-name-list
                                   :member-name "RuleNames")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRuleNamesByTargetResponse"))

(smithy/sdk/shapes:define-input list-rules-request common-lisp:nil
                                ((name-prefix :target-type rule-name
                                  :member-name "NamePrefix")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListRulesRequest"))

(smithy/sdk/shapes:define-output list-rules-response common-lisp:nil
                                 ((rules :target-type rule-response-list
                                   :member-name "Rules")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRulesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-targets-by-rule-request common-lisp:nil
                                ((rule :target-type rule-name :required
                                  common-lisp:t :member-name "Rule")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit-max100 :member-name
                                  "Limit"))
                                (:shape-name "ListTargetsByRuleRequest"))

(smithy/sdk/shapes:define-output list-targets-by-rule-response common-lisp:nil
                                 ((targets :target-type target-list
                                   :member-name "Targets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTargetsByRuleResponse"))

(smithy/sdk/shapes:define-structure log-config common-lisp:nil
                                    ((include-detail :target-type
                                      include-detail :member-name
                                      "IncludeDetail")
                                     (level :target-type level :member-name
                                      "Level"))
                                    (:shape-name "LogConfig"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type managed-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error managed-rule-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ManagedRuleException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-type maximum-event-age-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-retry-attempts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((awsvpc-configuration :target-type
                                      aws-vpc-configuration :member-name
                                      "awsvpcConfiguration"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-partner-event-bus-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-partner-event-bus-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-partner-event-bus-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error operation-disabled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "OperationDisabledException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-structure partner-event-source common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "PartnerEventSource"))

(smithy/sdk/shapes:define-structure partner-event-source-account
                                    common-lisp:nil
                                    ((account :target-type account-id
                                      :member-name "Account")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (expiration-time :target-type timestamp
                                      :member-name "ExpirationTime")
                                     (state :target-type event-source-state
                                      :member-name "State"))
                                    (:shape-name "PartnerEventSourceAccount"))

(smithy/sdk/shapes:define-list partner-event-source-account-list :member
                               partner-event-source-account)

(smithy/sdk/shapes:define-list partner-event-source-list :member
                               partner-event-source)

(smithy/sdk/shapes:define-type partner-event-source-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-parameter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list path-parameter-list :member path-parameter)

(smithy/sdk/shapes:define-structure placement-constraint common-lisp:nil
                                    ((type :target-type
                                      placement-constraint-type :member-name
                                      "type")
                                     (expression :target-type
                                      placement-constraint-expression
                                      :member-name "expression"))
                                    (:shape-name "PlacementConstraint"))

(smithy/sdk/shapes:define-type placement-constraint-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum placement-constraint-type
    common-lisp:nil
  (:distinct-instance "distinctInstance")
  (:member-of "memberOf"))

(smithy/sdk/shapes:define-list placement-constraints :member
                               placement-constraint)

(smithy/sdk/shapes:define-list placement-strategies :member placement-strategy)

(smithy/sdk/shapes:define-structure placement-strategy common-lisp:nil
                                    ((type :target-type placement-strategy-type
                                      :member-name "type")
                                     (field :target-type
                                      placement-strategy-field :member-name
                                      "field"))
                                    (:shape-name "PlacementStrategy"))

(smithy/sdk/shapes:define-type placement-strategy-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum placement-strategy-type
    common-lisp:nil
  (:random "random")
  (:spread "spread")
  (:binpack "binpack"))

(smithy/sdk/shapes:define-error policy-length-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PolicyLengthExceededException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-structure primary common-lisp:nil
                                    ((health-check :target-type health-check
                                      :required common-lisp:t :member-name
                                      "HealthCheck"))
                                    (:shape-name "Primary"))

(smithy/sdk/shapes:define-type principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum propagate-tags
    common-lisp:nil
  (:task-definition "TASK_DEFINITION"))

(smithy/sdk/shapes:define-input put-events-request common-lisp:nil
                                ((entries :target-type
                                  put-events-request-entry-list :required
                                  common-lisp:t :member-name "Entries")
                                 (endpoint-id :target-type endpoint-id
                                  :member-name "EndpointId"))
                                (:shape-name "PutEventsRequest"))

(smithy/sdk/shapes:define-structure put-events-request-entry common-lisp:nil
                                    ((time :target-type event-time :member-name
                                      "Time")
                                     (source :target-type string :member-name
                                      "Source")
                                     (resources :target-type
                                      event-resource-list :member-name
                                      "Resources")
                                     (detail-type :target-type string
                                      :member-name "DetailType")
                                     (detail :target-type string :member-name
                                      "Detail")
                                     (event-bus-name :target-type
                                      non-partner-event-bus-name-or-arn
                                      :member-name "EventBusName")
                                     (trace-header :target-type trace-header
                                      :member-name "TraceHeader"))
                                    (:shape-name "PutEventsRequestEntry"))

(smithy/sdk/shapes:define-list put-events-request-entry-list :member
                               put-events-request-entry)

(smithy/sdk/shapes:define-output put-events-response common-lisp:nil
                                 ((failed-entry-count :target-type integer
                                   :member-name "FailedEntryCount")
                                  (entries :target-type
                                   put-events-result-entry-list :member-name
                                   "Entries"))
                                 (:shape-name "PutEventsResponse"))

(smithy/sdk/shapes:define-structure put-events-result-entry common-lisp:nil
                                    ((event-id :target-type event-id
                                      :member-name "EventId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PutEventsResultEntry"))

(smithy/sdk/shapes:define-list put-events-result-entry-list :member
                               put-events-result-entry)

(smithy/sdk/shapes:define-input put-partner-events-request common-lisp:nil
                                ((entries :target-type
                                  put-partner-events-request-entry-list
                                  :required common-lisp:t :member-name
                                  "Entries"))
                                (:shape-name "PutPartnerEventsRequest"))

(smithy/sdk/shapes:define-structure put-partner-events-request-entry
                                    common-lisp:nil
                                    ((time :target-type event-time :member-name
                                      "Time")
                                     (source :target-type event-source-name
                                      :member-name "Source")
                                     (resources :target-type
                                      event-resource-list :member-name
                                      "Resources")
                                     (detail-type :target-type string
                                      :member-name "DetailType")
                                     (detail :target-type string :member-name
                                      "Detail"))
                                    (:shape-name
                                     "PutPartnerEventsRequestEntry"))

(smithy/sdk/shapes:define-list put-partner-events-request-entry-list :member
                               put-partner-events-request-entry)

(smithy/sdk/shapes:define-output put-partner-events-response common-lisp:nil
                                 ((failed-entry-count :target-type integer
                                   :member-name "FailedEntryCount")
                                  (entries :target-type
                                   put-partner-events-result-entry-list
                                   :member-name "Entries"))
                                 (:shape-name "PutPartnerEventsResponse"))

(smithy/sdk/shapes:define-structure put-partner-events-result-entry
                                    common-lisp:nil
                                    ((event-id :target-type event-id
                                      :member-name "EventId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PutPartnerEventsResultEntry"))

(smithy/sdk/shapes:define-list put-partner-events-result-entry-list :member
                               put-partner-events-result-entry)

(smithy/sdk/shapes:define-input put-permission-request common-lisp:nil
                                ((event-bus-name :target-type
                                  non-partner-event-bus-name :member-name
                                  "EventBusName")
                                 (action :target-type action :member-name
                                  "Action")
                                 (principal :target-type principal :member-name
                                  "Principal")
                                 (statement-id :target-type statement-id
                                  :member-name "StatementId")
                                 (condition :target-type condition :member-name
                                  "Condition")
                                 (policy :target-type string :member-name
                                  "Policy"))
                                (:shape-name "PutPermissionRequest"))

(smithy/sdk/shapes:define-input put-rule-request common-lisp:nil
                                ((name :target-type rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (schedule-expression :target-type
                                  schedule-expression :member-name
                                  "ScheduleExpression")
                                 (event-pattern :target-type event-pattern
                                  :member-name "EventPattern")
                                 (state :target-type rule-state :member-name
                                  "State")
                                 (description :target-type rule-description
                                  :member-name "Description")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName"))
                                (:shape-name "PutRuleRequest"))

(smithy/sdk/shapes:define-output put-rule-response common-lisp:nil
                                 ((rule-arn :target-type rule-arn :member-name
                                   "RuleArn"))
                                 (:shape-name "PutRuleResponse"))

(smithy/sdk/shapes:define-input put-targets-request common-lisp:nil
                                ((rule :target-type rule-name :required
                                  common-lisp:t :member-name "Rule")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName")
                                 (targets :target-type target-list :required
                                  common-lisp:t :member-name "Targets"))
                                (:shape-name "PutTargetsRequest"))

(smithy/sdk/shapes:define-output put-targets-response common-lisp:nil
                                 ((failed-entry-count :target-type integer
                                   :member-name "FailedEntryCount")
                                  (failed-entries :target-type
                                   put-targets-result-entry-list :member-name
                                   "FailedEntries"))
                                 (:shape-name "PutTargetsResponse"))

(smithy/sdk/shapes:define-structure put-targets-result-entry common-lisp:nil
                                    ((target-id :target-type target-id
                                      :member-name "TargetId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PutTargetsResultEntry"))

(smithy/sdk/shapes:define-list put-targets-result-entry-list :member
                               put-targets-result-entry)

(smithy/sdk/shapes:define-type query-string-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map query-string-parameters-map :key query-string-key
                              :value query-string-value)

(smithy/sdk/shapes:define-type query-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-string-value-sensitive
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-data-parameters common-lisp:nil
                                    ((secret-manager-arn :target-type
                                      redshift-secret-manager-arn :member-name
                                      "SecretManagerArn")
                                     (database :target-type database :required
                                      common-lisp:t :member-name "Database")
                                     (db-user :target-type db-user :member-name
                                      "DbUser")
                                     (sql :target-type sql :member-name "Sql")
                                     (statement-name :target-type
                                      statement-name :member-name
                                      "StatementName")
                                     (with-event :target-type boolean
                                      :member-name "WithEvent")
                                     (sqls :target-type sqls :member-name
                                      "Sqls"))
                                    (:shape-name "RedshiftDataParameters"))

(smithy/sdk/shapes:define-type redshift-secret-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input remove-permission-request common-lisp:nil
                                ((statement-id :target-type statement-id
                                  :member-name "StatementId")
                                 (remove-all-permissions :target-type boolean
                                  :member-name "RemoveAllPermissions")
                                 (event-bus-name :target-type
                                  non-partner-event-bus-name :member-name
                                  "EventBusName"))
                                (:shape-name "RemovePermissionRequest"))

(smithy/sdk/shapes:define-input remove-targets-request common-lisp:nil
                                ((rule :target-type rule-name :required
                                  common-lisp:t :member-name "Rule")
                                 (event-bus-name :target-type
                                  event-bus-name-or-arn :member-name
                                  "EventBusName")
                                 (ids :target-type target-id-list :required
                                  common-lisp:t :member-name "Ids")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "RemoveTargetsRequest"))

(smithy/sdk/shapes:define-output remove-targets-response common-lisp:nil
                                 ((failed-entry-count :target-type integer
                                   :member-name "FailedEntryCount")
                                  (failed-entries :target-type
                                   remove-targets-result-entry-list
                                   :member-name "FailedEntries"))
                                 (:shape-name "RemoveTargetsResponse"))

(smithy/sdk/shapes:define-structure remove-targets-result-entry common-lisp:nil
                                    ((target-id :target-type target-id
                                      :member-name "TargetId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "RemoveTargetsResultEntry"))

(smithy/sdk/shapes:define-list remove-targets-result-entry-list :member
                               remove-targets-result-entry)

(smithy/sdk/shapes:define-structure replay common-lisp:nil
                                    ((replay-name :target-type replay-name
                                      :member-name "ReplayName")
                                     (event-source-arn :target-type archive-arn
                                      :member-name "EventSourceArn")
                                     (state :target-type replay-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      replay-state-reason :member-name
                                      "StateReason")
                                     (event-start-time :target-type timestamp
                                      :member-name "EventStartTime")
                                     (event-end-time :target-type timestamp
                                      :member-name "EventEndTime")
                                     (event-last-replayed-time :target-type
                                      timestamp :member-name
                                      "EventLastReplayedTime")
                                     (replay-start-time :target-type timestamp
                                      :member-name "ReplayStartTime")
                                     (replay-end-time :target-type timestamp
                                      :member-name "ReplayEndTime"))
                                    (:shape-name "Replay"))

(smithy/sdk/shapes:define-type replay-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replay-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replay-destination common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (filter-arns :target-type
                                      replay-destination-filters :member-name
                                      "FilterArns"))
                                    (:shape-name "ReplayDestination"))

(smithy/sdk/shapes:define-list replay-destination-filters :member arn)

(smithy/sdk/shapes:define-list replay-list :member replay)

(smithy/sdk/shapes:define-type replay-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum replay-state
    common-lisp:nil
  (:starting "STARTING")
  (:running "RUNNING")
  (:cancelling "CANCELLING")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type replay-state-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replication-config common-lisp:nil
                                    ((state :target-type replication-state
                                      :member-name "State"))
                                    (:shape-name "ReplicationConfig"))

(smithy/sdk/shapes:define-enum replication-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-type retention-days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retry-policy common-lisp:nil
                                    ((maximum-retry-attempts :target-type
                                      maximum-retry-attempts :member-name
                                      "MaximumRetryAttempts")
                                     (maximum-event-age-in-seconds :target-type
                                      maximum-event-age-in-seconds :member-name
                                      "MaximumEventAgeInSeconds"))
                                    (:shape-name "RetryPolicy"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure routing-config common-lisp:nil
                                    ((failover-config :target-type
                                      failover-config :required common-lisp:t
                                      :member-name "FailoverConfig"))
                                    (:shape-name "RoutingConfig"))

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((name :target-type rule-name :member-name
                                      "Name")
                                     (arn :target-type rule-arn :member-name
                                      "Arn")
                                     (event-pattern :target-type event-pattern
                                      :member-name "EventPattern")
                                     (state :target-type rule-state
                                      :member-name "State")
                                     (description :target-type rule-description
                                      :member-name "Description")
                                     (schedule-expression :target-type
                                      schedule-expression :member-name
                                      "ScheduleExpression")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (managed-by :target-type managed-by
                                      :member-name "ManagedBy")
                                     (event-bus-name :target-type
                                      event-bus-name :member-name
                                      "EventBusName"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-type rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rule-name-list :member rule-name)

(smithy/sdk/shapes:define-list rule-response-list :member rule)

(smithy/sdk/shapes:define-enum rule-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:enabled-with-all-cloudtrail-management-events
   "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"))

(smithy/sdk/shapes:define-structure run-command-parameters common-lisp:nil
                                    ((run-command-targets :target-type
                                      run-command-targets :required
                                      common-lisp:t :member-name
                                      "RunCommandTargets"))
                                    (:shape-name "RunCommandParameters"))

(smithy/sdk/shapes:define-structure run-command-target common-lisp:nil
                                    ((key :target-type run-command-target-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (values :target-type
                                      run-command-target-values :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "RunCommandTarget"))

(smithy/sdk/shapes:define-type run-command-target-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-command-target-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list run-command-target-values :member
                               run-command-target-value)

(smithy/sdk/shapes:define-list run-command-targets :member run-command-target)

(smithy/sdk/shapes:define-structure sage-maker-pipeline-parameter
                                    common-lisp:nil
                                    ((name :target-type
                                      sage-maker-pipeline-parameter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      sage-maker-pipeline-parameter-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "SageMakerPipelineParameter"))

(smithy/sdk/shapes:define-list sage-maker-pipeline-parameter-list :member
                               sage-maker-pipeline-parameter)

(smithy/sdk/shapes:define-type sage-maker-pipeline-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sage-maker-pipeline-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sage-maker-pipeline-parameters
                                    common-lisp:nil
                                    ((pipeline-parameter-list :target-type
                                      sage-maker-pipeline-parameter-list
                                      :member-name "PipelineParameterList"))
                                    (:shape-name "SageMakerPipelineParameters"))

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure secondary common-lisp:nil
                                    ((route :target-type route :required
                                      common-lisp:t :member-name "Route"))
                                    (:shape-name "Secondary"))

(smithy/sdk/shapes:define-type secrets-manager-secret-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sql smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sqls :member sql)

(smithy/sdk/shapes:define-structure sqs-parameters common-lisp:nil
                                    ((message-group-id :target-type
                                      message-group-id :member-name
                                      "MessageGroupId"))
                                    (:shape-name "SqsParameters"))

(smithy/sdk/shapes:define-input start-replay-request common-lisp:nil
                                ((replay-name :target-type replay-name
                                  :required common-lisp:t :member-name
                                  "ReplayName")
                                 (description :target-type replay-description
                                  :member-name "Description")
                                 (event-source-arn :target-type archive-arn
                                  :required common-lisp:t :member-name
                                  "EventSourceArn")
                                 (event-start-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "EventStartTime")
                                 (event-end-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "EventEndTime")
                                 (destination :target-type replay-destination
                                  :required common-lisp:t :member-name
                                  "Destination"))
                                (:shape-name "StartReplayRequest"))

(smithy/sdk/shapes:define-output start-replay-response common-lisp:nil
                                 ((replay-arn :target-type replay-arn
                                   :member-name "ReplayArn")
                                  (state :target-type replay-state :member-name
                                   "State")
                                  (state-reason :target-type
                                   replay-state-reason :member-name
                                   "StateReason")
                                  (replay-start-time :target-type timestamp
                                   :member-name "ReplayStartTime"))
                                 (:shape-name "StartReplayResponse"))

(smithy/sdk/shapes:define-type statement-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type statement-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((id :target-type target-id :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type target-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (input :target-type target-input
                                      :member-name "Input")
                                     (input-path :target-type target-input-path
                                      :member-name "InputPath")
                                     (input-transformer :target-type
                                      input-transformer :member-name
                                      "InputTransformer")
                                     (kinesis-parameters :target-type
                                      kinesis-parameters :member-name
                                      "KinesisParameters")
                                     (run-command-parameters :target-type
                                      run-command-parameters :member-name
                                      "RunCommandParameters")
                                     (ecs-parameters :target-type
                                      ecs-parameters :member-name
                                      "EcsParameters")
                                     (batch-parameters :target-type
                                      batch-parameters :member-name
                                      "BatchParameters")
                                     (sqs-parameters :target-type
                                      sqs-parameters :member-name
                                      "SqsParameters")
                                     (http-parameters :target-type
                                      http-parameters :member-name
                                      "HttpParameters")
                                     (redshift-data-parameters :target-type
                                      redshift-data-parameters :member-name
                                      "RedshiftDataParameters")
                                     (sage-maker-pipeline-parameters
                                      :target-type
                                      sage-maker-pipeline-parameters
                                      :member-name
                                      "SageMakerPipelineParameters")
                                     (dead-letter-config :target-type
                                      dead-letter-config :member-name
                                      "DeadLetterConfig")
                                     (retry-policy :target-type retry-policy
                                      :member-name "RetryPolicy")
                                     (app-sync-parameters :target-type
                                      app-sync-parameters :member-name
                                      "AppSyncParameters"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-id-list :member target-id)

(smithy/sdk/shapes:define-type target-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-input-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-list :member target)

(smithy/sdk/shapes:define-type target-partition-key-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-event-pattern-request common-lisp:nil
                                ((event-pattern :target-type event-pattern
                                  :required common-lisp:t :member-name
                                  "EventPattern")
                                 (event :target-type string :required
                                  common-lisp:t :member-name "Event"))
                                (:shape-name "TestEventPatternRequest"))

(smithy/sdk/shapes:define-output test-event-pattern-response common-lisp:nil
                                 ((result :target-type boolean :member-name
                                   "Result"))
                                 (:shape-name "TestEventPatternResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400)
                                (:base-class eventbridge-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type trace-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transformer-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map transformer-paths :key input-transformer-path-key
                              :value target-input-path)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-api-destination-request common-lisp:nil
                                ((name :target-type api-destination-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  api-destination-description :member-name
                                  "Description")
                                 (connection-arn :target-type connection-arn
                                  :member-name "ConnectionArn")
                                 (invocation-endpoint :target-type
                                  https-endpoint :member-name
                                  "InvocationEndpoint")
                                 (http-method :target-type
                                  api-destination-http-method :member-name
                                  "HttpMethod")
                                 (invocation-rate-limit-per-second :target-type
                                  api-destination-invocation-rate-limit-per-second
                                  :member-name "InvocationRateLimitPerSecond"))
                                (:shape-name "UpdateApiDestinationRequest"))

(smithy/sdk/shapes:define-output update-api-destination-response
                                 common-lisp:nil
                                 ((api-destination-arn :target-type
                                   api-destination-arn :member-name
                                   "ApiDestinationArn")
                                  (api-destination-state :target-type
                                   api-destination-state :member-name
                                   "ApiDestinationState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime"))
                                 (:shape-name "UpdateApiDestinationResponse"))

(smithy/sdk/shapes:define-input update-archive-request common-lisp:nil
                                ((archive-name :target-type archive-name
                                  :required common-lisp:t :member-name
                                  "ArchiveName")
                                 (description :target-type archive-description
                                  :member-name "Description")
                                 (event-pattern :target-type event-pattern
                                  :member-name "EventPattern")
                                 (retention-days :target-type retention-days
                                  :member-name "RetentionDays")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name "UpdateArchiveRequest"))

(smithy/sdk/shapes:define-output update-archive-response common-lisp:nil
                                 ((archive-arn :target-type archive-arn
                                   :member-name "ArchiveArn")
                                  (state :target-type archive-state
                                   :member-name "State")
                                  (state-reason :target-type
                                   archive-state-reason :member-name
                                   "StateReason")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime"))
                                 (:shape-name "UpdateArchiveResponse"))

(smithy/sdk/shapes:define-structure
 update-connection-api-key-auth-request-parameters common-lisp:nil
 ((api-key-name :target-type auth-header-parameters :member-name "ApiKeyName")
  (api-key-value :target-type auth-header-parameters-sensitive :member-name
   "ApiKeyValue"))
 (:shape-name "UpdateConnectionApiKeyAuthRequestParameters"))

(smithy/sdk/shapes:define-structure update-connection-auth-request-parameters
                                    common-lisp:nil
                                    ((basic-auth-parameters :target-type
                                      update-connection-basic-auth-request-parameters
                                      :member-name "BasicAuthParameters")
                                     (oauth-parameters :target-type
                                      update-connection-oauth-request-parameters
                                      :member-name "OAuthParameters")
                                     (api-key-auth-parameters :target-type
                                      update-connection-api-key-auth-request-parameters
                                      :member-name "ApiKeyAuthParameters")
                                     (invocation-http-parameters :target-type
                                      connection-http-parameters :member-name
                                      "InvocationHttpParameters")
                                     (connectivity-parameters :target-type
                                      connectivity-resource-parameters
                                      :member-name "ConnectivityParameters"))
                                    (:shape-name
                                     "UpdateConnectionAuthRequestParameters"))

(smithy/sdk/shapes:define-structure
 update-connection-basic-auth-request-parameters common-lisp:nil
 ((username :target-type auth-header-parameters :member-name "Username")
  (password :target-type auth-header-parameters-sensitive :member-name
   "Password"))
 (:shape-name "UpdateConnectionBasicAuthRequestParameters"))

(smithy/sdk/shapes:define-structure
 update-connection-oauth-client-request-parameters common-lisp:nil
 ((client-id :target-type auth-header-parameters :member-name "ClientID")
  (client-secret :target-type auth-header-parameters-sensitive :member-name
   "ClientSecret"))
 (:shape-name "UpdateConnectionOAuthClientRequestParameters"))

(smithy/sdk/shapes:define-structure update-connection-oauth-request-parameters
                                    common-lisp:nil
                                    ((client-parameters :target-type
                                      update-connection-oauth-client-request-parameters
                                      :member-name "ClientParameters")
                                     (authorization-endpoint :target-type
                                      https-endpoint :member-name
                                      "AuthorizationEndpoint")
                                     (http-method :target-type
                                      connection-oauth-http-method :member-name
                                      "HttpMethod")
                                     (oauth-http-parameters :target-type
                                      connection-http-parameters :member-name
                                      "OAuthHttpParameters"))
                                    (:shape-name
                                     "UpdateConnectionOAuthRequestParameters"))

(smithy/sdk/shapes:define-input update-connection-request common-lisp:nil
                                ((name :target-type connection-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  connection-description :member-name
                                  "Description")
                                 (authorization-type :target-type
                                  connection-authorization-type :member-name
                                  "AuthorizationType")
                                 (auth-parameters :target-type
                                  update-connection-auth-request-parameters
                                  :member-name "AuthParameters")
                                 (invocation-connectivity-parameters
                                  :target-type connectivity-resource-parameters
                                  :member-name
                                  "InvocationConnectivityParameters")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name "UpdateConnectionRequest"))

(smithy/sdk/shapes:define-output update-connection-response common-lisp:nil
                                 ((connection-arn :target-type connection-arn
                                   :member-name "ConnectionArn")
                                  (connection-state :target-type
                                   connection-state :member-name
                                   "ConnectionState")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "LastModifiedTime")
                                  (last-authorized-time :target-type timestamp
                                   :member-name "LastAuthorizedTime"))
                                 (:shape-name "UpdateConnectionResponse"))

(smithy/sdk/shapes:define-input update-endpoint-request common-lisp:nil
                                ((name :target-type endpoint-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type endpoint-description
                                  :member-name "Description")
                                 (routing-config :target-type routing-config
                                  :member-name "RoutingConfig")
                                 (replication-config :target-type
                                  replication-config :member-name
                                  "ReplicationConfig")
                                 (event-buses :target-type
                                  endpoint-event-bus-list :member-name
                                  "EventBuses")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn"))
                                (:shape-name "UpdateEndpointRequest"))

(smithy/sdk/shapes:define-output update-endpoint-response common-lisp:nil
                                 ((name :target-type endpoint-name :member-name
                                   "Name")
                                  (arn :target-type endpoint-arn :member-name
                                   "Arn")
                                  (routing-config :target-type routing-config
                                   :member-name "RoutingConfig")
                                  (replication-config :target-type
                                   replication-config :member-name
                                   "ReplicationConfig")
                                  (event-buses :target-type
                                   endpoint-event-bus-list :member-name
                                   "EventBuses")
                                  (role-arn :target-type iam-role-arn
                                   :member-name "RoleArn")
                                  (endpoint-id :target-type endpoint-id
                                   :member-name "EndpointId")
                                  (endpoint-url :target-type endpoint-url
                                   :member-name "EndpointUrl")
                                  (state :target-type endpoint-state
                                   :member-name "State"))
                                 (:shape-name "UpdateEndpointResponse"))

(smithy/sdk/shapes:define-input update-event-bus-request common-lisp:nil
                                ((name :target-type event-bus-name :member-name
                                  "Name")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier")
                                 (description :target-type
                                  event-bus-description :member-name
                                  "Description")
                                 (dead-letter-config :target-type
                                  dead-letter-config :member-name
                                  "DeadLetterConfig")
                                 (log-config :target-type log-config
                                  :member-name "LogConfig"))
                                (:shape-name "UpdateEventBusRequest"))

(smithy/sdk/shapes:define-output update-event-bus-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (name :target-type event-bus-name
                                   :member-name "Name")
                                  (kms-key-identifier :target-type
                                   kms-key-identifier :member-name
                                   "KmsKeyIdentifier")
                                  (description :target-type
                                   event-bus-description :member-name
                                   "Description")
                                  (dead-letter-config :target-type
                                   dead-letter-config :member-name
                                   "DeadLetterConfig")
                                  (log-config :target-type log-config
                                   :member-name "LogConfig"))
                                 (:shape-name "UpdateEventBusResponse"))

(smithy/sdk/operation:define-operation activate-event-source :shape-name
                                       "ActivateEventSource" :input
                                       activate-event-source-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        invalid-state-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation cancel-replay :shape-name "CancelReplay"
                                       :input cancel-replay-request :output
                                       cancel-replay-response :errors
                                       (concurrent-modification-exception
                                        illegal-status-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-api-destination :shape-name
                                       "CreateApiDestination" :input
                                       create-api-destination-request :output
                                       create-api-destination-response :errors
                                       (internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-archive :shape-name
                                       "CreateArchive" :input
                                       create-archive-request :output
                                       create-archive-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        invalid-event-pattern-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-connection :shape-name
                                       "CreateConnection" :input
                                       create-connection-request :output
                                       create-connection-response :errors
                                       (access-denied-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-endpoint :shape-name
                                       "CreateEndpoint" :input
                                       create-endpoint-request :output
                                       create-endpoint-response :errors
                                       (internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-event-bus :shape-name
                                       "CreateEventBus" :input
                                       create-event-bus-request :output
                                       create-event-bus-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        operation-disabled-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-partner-event-source :shape-name
                                       "CreatePartnerEventSource" :input
                                       create-partner-event-source-request
                                       :output
                                       create-partner-event-source-response
                                       :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        operation-disabled-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation deactivate-event-source :shape-name
                                       "DeactivateEventSource" :input
                                       deactivate-event-source-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        invalid-state-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation deauthorize-connection :shape-name
                                       "DeauthorizeConnection" :input
                                       deauthorize-connection-request :output
                                       deauthorize-connection-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-api-destination :shape-name
                                       "DeleteApiDestination" :input
                                       delete-api-destination-request :output
                                       delete-api-destination-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-archive :shape-name
                                       "DeleteArchive" :input
                                       delete-archive-request :output
                                       delete-archive-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-request :output
                                       delete-connection-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-endpoint :shape-name
                                       "DeleteEndpoint" :input
                                       delete-endpoint-request :output
                                       delete-endpoint-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-event-bus :shape-name
                                       "DeleteEventBus" :input
                                       delete-event-bus-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception))

(smithy/sdk/operation:define-operation delete-partner-event-source :shape-name
                                       "DeletePartnerEventSource" :input
                                       delete-partner-event-source-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        operation-disabled-exception))

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-api-destination :shape-name
                                       "DescribeApiDestination" :input
                                       describe-api-destination-request :output
                                       describe-api-destination-response
                                       :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-archive :shape-name
                                       "DescribeArchive" :input
                                       describe-archive-request :output
                                       describe-archive-response :errors
                                       (internal-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-connection :shape-name
                                       "DescribeConnection" :input
                                       describe-connection-request :output
                                       describe-connection-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-endpoint :shape-name
                                       "DescribeEndpoint" :input
                                       describe-endpoint-request :output
                                       describe-endpoint-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-event-bus :shape-name
                                       "DescribeEventBus" :input
                                       describe-event-bus-request :output
                                       describe-event-bus-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-event-source :shape-name
                                       "DescribeEventSource" :input
                                       describe-event-source-request :output
                                       describe-event-source-response :errors
                                       (internal-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-partner-event-source
                                       :shape-name "DescribePartnerEventSource"
                                       :input
                                       describe-partner-event-source-request
                                       :output
                                       describe-partner-event-source-response
                                       :errors
                                       (internal-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-replay :shape-name
                                       "DescribeReplay" :input
                                       describe-replay-request :output
                                       describe-replay-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-rule :shape-name "DescribeRule"
                                       :input describe-rule-request :output
                                       describe-rule-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disable-rule :shape-name "DisableRule"
                                       :input disable-rule-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation enable-rule :shape-name "EnableRule"
                                       :input enable-rule-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-api-destinations :shape-name
                                       "ListApiDestinations" :input
                                       list-api-destinations-request :output
                                       list-api-destinations-response :errors
                                       (internal-exception))

(smithy/sdk/operation:define-operation list-archives :shape-name "ListArchives"
                                       :input list-archives-request :output
                                       list-archives-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-connections :shape-name
                                       "ListConnections" :input
                                       list-connections-request :output
                                       list-connections-response :errors
                                       (internal-exception))

(smithy/sdk/operation:define-operation list-endpoints :shape-name
                                       "ListEndpoints" :input
                                       list-endpoints-request :output
                                       list-endpoints-response :errors
                                       (internal-exception))

(smithy/sdk/operation:define-operation list-event-buses :shape-name
                                       "ListEventBuses" :input
                                       list-event-buses-request :output
                                       list-event-buses-response :errors
                                       (internal-exception))

(smithy/sdk/operation:define-operation list-event-sources :shape-name
                                       "ListEventSources" :input
                                       list-event-sources-request :output
                                       list-event-sources-response :errors
                                       (internal-exception
                                        operation-disabled-exception))

(smithy/sdk/operation:define-operation list-partner-event-source-accounts
                                       :shape-name
                                       "ListPartnerEventSourceAccounts" :input
                                       list-partner-event-source-accounts-request
                                       :output
                                       list-partner-event-source-accounts-response
                                       :errors
                                       (internal-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-partner-event-sources :shape-name
                                       "ListPartnerEventSources" :input
                                       list-partner-event-sources-request
                                       :output
                                       list-partner-event-sources-response
                                       :errors
                                       (internal-exception
                                        operation-disabled-exception))

(smithy/sdk/operation:define-operation list-replays :shape-name "ListReplays"
                                       :input list-replays-request :output
                                       list-replays-response :errors
                                       (internal-exception))

(smithy/sdk/operation:define-operation list-rule-names-by-target :shape-name
                                       "ListRuleNamesByTarget" :input
                                       list-rule-names-by-target-request
                                       :output
                                       list-rule-names-by-target-response
                                       :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-rules :shape-name "ListRules"
                                       :input list-rules-request :output
                                       list-rules-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-targets-by-rule :shape-name
                                       "ListTargetsByRule" :input
                                       list-targets-by-rule-request :output
                                       list-targets-by-rule-response :errors
                                       (internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-events :shape-name "PutEvents"
                                       :input put-events-request :output
                                       put-events-response :errors
                                       (internal-exception))

(smithy/sdk/operation:define-operation put-partner-events :shape-name
                                       "PutPartnerEvents" :input
                                       put-partner-events-request :output
                                       put-partner-events-response :errors
                                       (internal-exception
                                        operation-disabled-exception))

(smithy/sdk/operation:define-operation put-permission :shape-name
                                       "PutPermission" :input
                                       put-permission-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        operation-disabled-exception
                                        policy-length-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-rule :shape-name "PutRule" :input
                                       put-rule-request :output
                                       put-rule-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        invalid-event-pattern-exception
                                        limit-exceeded-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-targets :shape-name "PutTargets"
                                       :input put-targets-request :output
                                       put-targets-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation remove-permission :shape-name
                                       "RemovePermission" :input
                                       remove-permission-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation remove-targets :shape-name
                                       "RemoveTargets" :input
                                       remove-targets-request :output
                                       remove-targets-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-replay :shape-name "StartReplay"
                                       :input start-replay-request :output
                                       start-replay-response :errors
                                       (internal-exception
                                        invalid-event-pattern-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation test-event-pattern :shape-name
                                       "TestEventPattern" :input
                                       test-event-pattern-request :output
                                       test-event-pattern-response :errors
                                       (internal-exception
                                        invalid-event-pattern-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        managed-rule-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-api-destination :shape-name
                                       "UpdateApiDestination" :input
                                       update-api-destination-request :output
                                       update-api-destination-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-archive :shape-name
                                       "UpdateArchive" :input
                                       update-archive-request :output
                                       update-archive-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        invalid-event-pattern-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-connection :shape-name
                                       "UpdateConnection" :input
                                       update-connection-request :output
                                       update-connection-response :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-endpoint :shape-name
                                       "UpdateEndpoint" :input
                                       update-endpoint-request :output
                                       update-endpoint-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-event-bus :shape-name
                                       "UpdateEventBus" :input
                                       update-event-bus-request :output
                                       update-event-bus-response :errors
                                       (concurrent-modification-exception
                                        internal-exception
                                        operation-disabled-exception
                                        resource-not-found-exception))
