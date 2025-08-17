(uiop/package:define-package #:pira/iot (:use)
                             (:export #:awsiot-service #:abort-action
                              #:abort-config #:abort-criteria
                              #:abort-criteria-list
                              #:abort-threshold-percentage
                              #:accept-certificate-transfer
                              #:acm-certificate-arn #:action #:action-list
                              #:action-type #:active-violation
                              #:active-violations #:add-thing-to-billing-group
                              #:add-thing-to-thing-group
                              #:add-things-to-thing-group-params
                              #:additional-metrics-to-retain-list
                              #:additional-metrics-to-retain-v2list
                              #:additional-parameter-map #:aggregation-field
                              #:aggregation-type #:aggregation-type-name
                              #:aggregation-type-value
                              #:aggregation-type-values #:alarm-name
                              #:alert-target #:alert-target-arn
                              #:alert-target-type #:alert-targets
                              #:allow-authorizer-override
                              #:allow-auto-registration #:allowed
                              #:application-protocol
                              #:approximate-seconds-before-timed-out
                              #:ascending-order #:asset-id
                              #:asset-property-alias
                              #:asset-property-boolean-value
                              #:asset-property-double-value
                              #:asset-property-entry-id #:asset-property-id
                              #:asset-property-integer-value
                              #:asset-property-offset-in-nanos
                              #:asset-property-quality
                              #:asset-property-string-value
                              #:asset-property-time-in-seconds
                              #:asset-property-timestamp #:asset-property-value
                              #:asset-property-value-list
                              #:asset-property-variant
                              #:associate-sbom-with-package-version
                              #:associate-targets-with-job #:attach-policy
                              #:attach-principal-policy
                              #:attach-security-profile
                              #:attach-thing-principal #:attribute-key
                              #:attribute-name #:attribute-payload
                              #:attribute-value #:attributes #:attributes-map
                              #:audit-check-configuration
                              #:audit-check-configurations
                              #:audit-check-details #:audit-check-name
                              #:audit-check-run-status
                              #:audit-check-to-actions-mapping
                              #:audit-check-to-reason-code-filter
                              #:audit-description #:audit-details
                              #:audit-finding #:audit-finding-severity
                              #:audit-findings #:audit-frequency
                              #:audit-mitigation-action-execution-metadata
                              #:audit-mitigation-action-execution-metadata-list
                              #:audit-mitigation-actions-execution-status
                              #:audit-mitigation-actions-task-metadata
                              #:audit-mitigation-actions-task-metadata-list
                              #:audit-mitigation-actions-task-statistics
                              #:audit-mitigation-actions-task-status
                              #:audit-mitigation-actions-task-target
                              #:audit-notification-target
                              #:audit-notification-target-configurations
                              #:audit-notification-type #:audit-suppression
                              #:audit-suppression-list #:audit-task-id
                              #:audit-task-metadata #:audit-task-metadata-list
                              #:audit-task-status #:audit-task-type
                              #:auth-decision #:auth-info #:auth-infos
                              #:auth-result #:auth-results
                              #:authentication-type #:authorizer-arn
                              #:authorizer-config #:authorizer-description
                              #:authorizer-function-arn #:authorizer-name
                              #:authorizer-status #:authorizer-summary
                              #:authorizers #:auto-registration-status
                              #:average #:aws-account-id #:aws-arn
                              #:aws-iot-job-arn #:aws-iot-job-id
                              #:aws-iot-sql-version #:aws-job-abort-config
                              #:aws-job-abort-criteria
                              #:aws-job-abort-criteria-abort-action
                              #:aws-job-abort-criteria-abort-threshold-percentage
                              #:aws-job-abort-criteria-failure-type
                              #:aws-job-abort-criteria-list
                              #:aws-job-abort-criteria-minimum-number-of-executed-things
                              #:aws-job-executions-rollout-config
                              #:aws-job-exponential-rollout-rate
                              #:aws-job-presigned-url-config
                              #:aws-job-rate-increase-criteria
                              #:aws-job-rate-increase-criteria-number-of-things
                              #:aws-job-rollout-increment-factor
                              #:aws-job-rollout-rate-per-minute
                              #:aws-job-timeout-config
                              #:aws-job-timeout-in-progress-timeout-in-minutes
                              #:batch-mode #:before-substitution-flag
                              #:behavior #:behavior-criteria
                              #:behavior-criteria-type #:behavior-metric
                              #:behavior-model-training-summaries
                              #:behavior-model-training-summary #:behavior-name
                              #:behaviors #:billing-group-arn
                              #:billing-group-description #:billing-group-id
                              #:billing-group-metadata #:billing-group-name
                              #:billing-group-name-and-arn-list
                              #:billing-group-properties
                              #:binary-command-execution-result
                              #:binary-parameter-value #:boolean #:boolean2
                              #:boolean-command-execution-result #:boolean-key
                              #:boolean-parameter-value
                              #:boolean-wrapper-object #:bucket
                              #:bucket-key-value #:bucket-name #:buckets
                              #:buckets-aggregation-type #:cacertificate
                              #:cacertificate-description
                              #:cacertificate-status
                              #:cacertificate-update-action #:cacertificates
                              #:cancel-audit-mitigation-actions-task
                              #:cancel-audit-task #:cancel-certificate-transfer
                              #:cancel-detect-mitigation-actions-task
                              #:cancel-job #:cancel-job-execution
                              #:canceled-checks-count #:canceled-findings-count
                              #:canceled-things #:canned-access-control-list
                              #:certificate #:certificate-arn
                              #:certificate-description #:certificate-id
                              #:certificate-mode #:certificate-name
                              #:certificate-path-on-device #:certificate-pem
                              #:certificate-provider-account-default-for-operations
                              #:certificate-provider-arn
                              #:certificate-provider-function-arn
                              #:certificate-provider-name
                              #:certificate-provider-operation
                              #:certificate-provider-summary
                              #:certificate-providers
                              #:certificate-signing-request
                              #:certificate-status #:certificate-validity
                              #:certificates #:channel-name #:check-compliant
                              #:check-custom-configuration #:cidr #:cidrs
                              #:clear-default-authorizer
                              #:client-certificate-callback-arn
                              #:client-certificate-config #:client-id
                              #:client-properties #:client-request-token
                              #:client-token #:cloudwatch-alarm-action
                              #:cloudwatch-logs-action
                              #:cloudwatch-metric-action #:code #:code-signing
                              #:code-signing-certificate-chain
                              #:code-signing-signature
                              #:cognito-identity-pool-id #:command-arn
                              #:command-description #:command-execution-id
                              #:command-execution-parameter-map
                              #:command-execution-result
                              #:command-execution-result-map
                              #:command-execution-result-name
                              #:command-execution-status
                              #:command-execution-summary
                              #:command-execution-summary-list
                              #:command-execution-timeout-in-seconds
                              #:command-id #:command-max-results
                              #:command-namespace #:command-parameter
                              #:command-parameter-description
                              #:command-parameter-list #:command-parameter-name
                              #:command-parameter-value #:command-payload
                              #:command-payload-blob #:command-summary
                              #:command-summary-list #:comment
                              #:comparison-operator #:compliant-checks-count
                              #:confidence-level #:config-name #:config-value
                              #:configuration #:configuration-details
                              #:configuration-status
                              #:confirm-topic-rule-destination
                              #:confirmation-token #:connection-attribute-name
                              #:connectivity-api-thing-name
                              #:connectivity-timestamp
                              #:consecutive-datapoints-to-alarm
                              #:consecutive-datapoints-to-clear #:content-type
                              #:correlation-data #:count
                              #:create-audit-suppression #:create-authorizer
                              #:create-billing-group
                              #:create-certificate-from-csr
                              #:create-certificate-provider #:create-command
                              #:create-custom-metric #:create-dimension
                              #:create-domain-configuration
                              #:create-dynamic-thing-group
                              #:create-fleet-metric #:create-job
                              #:create-job-template
                              #:create-keys-and-certificate
                              #:create-mitigation-action #:create-otaupdate
                              #:create-package #:create-package-version
                              #:create-policy #:create-policy-version
                              #:create-provisioning-claim
                              #:create-provisioning-template
                              #:create-provisioning-template-version
                              #:create-role-alias #:create-scheduled-audit
                              #:create-security-profile #:create-stream
                              #:create-thing #:create-thing-group
                              #:create-thing-type #:create-topic-rule
                              #:create-topic-rule-destination #:created-at-date
                              #:creation-date #:credential-duration-seconds
                              #:cron-expression #:custom-code-signing
                              #:custom-metric-arn #:custom-metric-display-name
                              #:custom-metric-type #:customer-version
                              #:data-collection-percentage #:date-type
                              #:day-of-month #:day-of-week
                              #:delete-account-audit-configuration
                              #:delete-additional-metrics-to-retain
                              #:delete-alert-targets #:delete-audit-suppression
                              #:delete-authorizer #:delete-behaviors
                              #:delete-billing-group #:delete-cacertificate
                              #:delete-certificate
                              #:delete-certificate-provider #:delete-command
                              #:delete-command-execution #:delete-custom-metric
                              #:delete-dimension #:delete-domain-configuration
                              #:delete-dynamic-thing-group
                              #:delete-fleet-metric #:delete-job
                              #:delete-job-execution #:delete-job-template
                              #:delete-metrics-export-config
                              #:delete-mitigation-action #:delete-otaupdate
                              #:delete-package #:delete-package-version
                              #:delete-policy #:delete-policy-version
                              #:delete-provisioning-template
                              #:delete-provisioning-template-version
                              #:delete-registration-code #:delete-role-alias
                              #:delete-scheduled-audit
                              #:delete-scheduled-audits
                              #:delete-security-profile #:delete-stream
                              #:delete-stream #:delete-thing
                              #:delete-thing-group #:delete-thing-type
                              #:delete-topic-rule
                              #:delete-topic-rule-destination
                              #:delete-v2logging-level #:delivery-stream-name
                              #:denied #:deprecate-thing-type
                              #:deprecation-date #:deprecation-flag
                              #:describe-account-audit-configuration
                              #:describe-audit-finding
                              #:describe-audit-mitigation-actions-task
                              #:describe-audit-suppression
                              #:describe-audit-task #:describe-authorizer
                              #:describe-billing-group #:describe-cacertificate
                              #:describe-certificate
                              #:describe-certificate-provider
                              #:describe-custom-metric
                              #:describe-default-authorizer
                              #:describe-detect-mitigation-actions-task
                              #:describe-dimension
                              #:describe-domain-configuration
                              #:describe-encryption-configuration
                              #:describe-endpoint
                              #:describe-event-configurations
                              #:describe-fleet-metric #:describe-index
                              #:describe-job #:describe-job-execution
                              #:describe-job-template
                              #:describe-managed-job-template
                              #:describe-mitigation-action
                              #:describe-provisioning-template
                              #:describe-provisioning-template-version
                              #:describe-role-alias #:describe-scheduled-audit
                              #:describe-security-profile #:describe-stream
                              #:describe-thing #:describe-thing-group
                              #:describe-thing-registration-task
                              #:describe-thing-type #:description #:destination
                              #:destination-package-versions #:detach-policy
                              #:detach-principal-policy
                              #:detach-security-profile
                              #:detach-thing-principal #:details-key
                              #:details-map #:details-value
                              #:detect-mitigation-action-execution
                              #:detect-mitigation-action-execution-error-code
                              #:detect-mitigation-action-execution-list
                              #:detect-mitigation-action-execution-status
                              #:detect-mitigation-actions-task-statistics
                              #:detect-mitigation-actions-task-status
                              #:detect-mitigation-actions-task-summary
                              #:detect-mitigation-actions-task-summary-list
                              #:detect-mitigation-actions-task-target
                              #:detect-mitigation-actions-to-execute-list
                              #:device-certificate-update-action
                              #:device-defender-indexing-mode
                              #:device-defender-thing-name #:dimension-arn
                              #:dimension-name #:dimension-names
                              #:dimension-string-value
                              #:dimension-string-values #:dimension-type
                              #:dimension-value-operator #:disable-all-logs
                              #:disable-topic-rule
                              #:disassociate-sbom-from-package-version
                              #:disconnect-reason #:disconnect-reason-value
                              #:display-name #:document-parameter
                              #:document-parameters #:domain-configuration-arn
                              #:domain-configuration-name
                              #:domain-configuration-status
                              #:domain-configuration-summary
                              #:domain-configurations #:domain-name
                              #:domain-type #:double-parameter-value
                              #:duration-in-minutes #:duration-seconds
                              #:dynamic-group-status #:dynamo-dbaction
                              #:dynamo-dbv2action #:dynamo-key-type
                              #:dynamo-operation #:effective-policies
                              #:effective-policy #:elasticsearch-action
                              #:elasticsearch-endpoint #:elasticsearch-id
                              #:elasticsearch-index #:elasticsearch-type
                              #:enable-caching-for-http
                              #:enable-io-tlogging-params #:enable-ocspcheck
                              #:enable-topic-rule #:enabled #:enabled2
                              #:enabled-boolean #:encryption-type
                              #:endpoint-address #:endpoint-type #:environment
                              #:environments #:error-code #:error-info
                              #:error-message #:error-message2
                              #:evaluation-statistic #:event-configurations
                              #:event-type #:example #:execution-name-prefix
                              #:execution-number #:expected-version
                              #:expires-in-sec #:expires-in-seconds
                              #:explicit-deny #:exponential-rollout-rate
                              #:export-metric #:failed-checks-count
                              #:failed-findings-count #:failed-things #:field
                              #:field-name #:field-type #:fields #:file-id
                              #:file-location #:file-name #:file-type
                              #:finding-id #:finding-ids #:firehose-action
                              #:firehose-separator #:flag #:fleet-metric-arn
                              #:fleet-metric-description #:fleet-metric-name
                              #:fleet-metric-name-and-arn
                              #:fleet-metric-name-and-arn-list
                              #:fleet-metric-period #:fleet-metric-unit
                              #:force-delete #:force-delete-awsjob #:force-flag
                              #:forced #:function-arn #:generation-id
                              #:generic-long-value #:geo-location-target
                              #:geo-locations-filter
                              #:get-behavior-model-training-summaries
                              #:get-buckets-aggregation #:get-cardinality
                              #:get-command #:get-command-execution
                              #:get-effective-policies
                              #:get-indexing-configuration #:get-job-document
                              #:get-logging-options #:get-otaupdate
                              #:get-package #:get-package-configuration
                              #:get-package-version #:get-percentiles
                              #:get-policy #:get-policy-version
                              #:get-registration-code #:get-statistics
                              #:get-thing-connectivity-data #:get-topic-rule
                              #:get-topic-rule-destination
                              #:get-v2logging-options #:group-name-and-arn
                              #:hash-algorithm #:hash-key-field
                              #:hash-key-value #:header-key #:header-list
                              #:header-value #:http-action #:http-action-header
                              #:http-authorization #:http-context
                              #:http-header-name #:http-header-value
                              #:http-headers #:http-query-string
                              #:http-url-destination-configuration
                              #:http-url-destination-properties
                              #:http-url-destination-summary #:implicit-deny
                              #:in-progress-checks-count #:in-progress-things
                              #:in-progress-timeout-in-minutes
                              #:increment-factor #:index-name
                              #:index-names-list #:index-schema #:index-status
                              #:indexing-filter #:inline-document #:input-name
                              #:integer-parameter-value #:iot-analytics-action
                              #:iot-events-action #:iot-site-wise-action
                              #:is-authenticated #:is-default-version
                              #:is-disabled #:is-suppressed
                              #:issuer-certificate-identifier
                              #:issuer-certificate-serial-number
                              #:issuer-certificate-subject #:issuer-id #:job
                              #:job-arn #:job-description #:job-document
                              #:job-document-source #:job-end-behavior
                              #:job-execution #:job-execution-failure-type
                              #:job-execution-status
                              #:job-execution-status-details
                              #:job-execution-summary
                              #:job-execution-summary-for-job
                              #:job-execution-summary-for-job-list
                              #:job-execution-summary-for-thing
                              #:job-execution-summary-for-thing-list
                              #:job-executions-retry-config
                              #:job-executions-rollout-config #:job-id
                              #:job-process-details #:job-status #:job-summary
                              #:job-summary-list #:job-targets
                              #:job-template-arn #:job-template-id
                              #:job-template-summary
                              #:job-template-summary-list #:json-document
                              #:kafka-action #:kafka-action-header
                              #:kafka-header-key #:kafka-header-value
                              #:kafka-headers #:key #:key-name #:key-pair
                              #:key-value #:kinesis-action
                              #:kms-access-role-arn #:kms-key-arn
                              #:lambda-action #:laser-max-results
                              #:last-modified-date #:last-updated-at-date
                              #:list-active-violations #:list-attached-policies
                              #:list-audit-findings
                              #:list-audit-mitigation-actions-executions
                              #:list-audit-mitigation-actions-tasks
                              #:list-audit-suppressions #:list-audit-tasks
                              #:list-authorizers #:list-billing-groups
                              #:list-cacertificates
                              #:list-certificate-providers #:list-certificates
                              #:list-certificates-by-ca
                              #:list-command-executions #:list-commands
                              #:list-custom-metrics
                              #:list-detect-mitigation-actions-executions
                              #:list-detect-mitigation-actions-tasks
                              #:list-dimensions #:list-domain-configurations
                              #:list-fleet-metrics #:list-indices
                              #:list-job-executions-for-job
                              #:list-job-executions-for-thing
                              #:list-job-templates #:list-jobs
                              #:list-managed-job-templates #:list-metric-values
                              #:list-mitigation-actions #:list-otaupdates
                              #:list-outgoing-certificates
                              #:list-package-versions #:list-packages
                              #:list-policies #:list-policy-principals
                              #:list-policy-versions #:list-principal-policies
                              #:list-principal-things
                              #:list-principal-things-v2
                              #:list-provisioning-template-versions
                              #:list-provisioning-templates
                              #:list-related-resources-for-audit-finding
                              #:list-role-aliases
                              #:list-sbom-validation-results
                              #:list-scheduled-audits #:list-security-profiles
                              #:list-security-profiles-for-target
                              #:list-streams #:list-suppressed-alerts
                              #:list-suppressed-findings
                              #:list-tags-for-resource
                              #:list-targets-for-policy
                              #:list-targets-for-security-profile
                              #:list-thing-groups #:list-thing-groups-for-thing
                              #:list-thing-principals
                              #:list-thing-principals-v2
                              #:list-thing-registration-task-reports
                              #:list-thing-registration-tasks
                              #:list-thing-types #:list-things
                              #:list-things-in-billing-group
                              #:list-things-in-thing-group
                              #:list-topic-rule-destinations #:list-topic-rules
                              #:list-v2logging-levels #:list-violation-events
                              #:location-action #:location-timestamp
                              #:log-group-name #:log-level #:log-target
                              #:log-target-configuration
                              #:log-target-configurations #:log-target-name
                              #:log-target-type #:logging-options-payload
                              #:long-parameter-value
                              #:machine-learning-detection-config
                              #:maintenance-window #:maintenance-windows
                              #:managed-job-template-name
                              #:managed-job-template-summary
                              #:managed-job-templates-summary-list
                              #:managed-template-version #:marker #:max-buckets
                              #:max-job-executions-per-min #:max-results
                              #:maximum #:maximum-per-minute #:message
                              #:message-expiry #:message-format #:message-id
                              #:metric-datum #:metric-datum-list
                              #:metric-dimension #:metric-name #:metric-names
                              #:metric-to-retain #:metric-value
                              #:metrics-export-config #:mime-type #:minimum
                              #:minimum-number-of-executed-things
                              #:missing-context-value #:missing-context-values
                              #:mitigation-action #:mitigation-action-arn
                              #:mitigation-action-id
                              #:mitigation-action-identifier
                              #:mitigation-action-identifier-list
                              #:mitigation-action-list #:mitigation-action-name
                              #:mitigation-action-name-list
                              #:mitigation-action-params
                              #:mitigation-action-type
                              #:mitigation-actions-task-id #:model-status
                              #:mqtt5configuration #:mqtt-client-id
                              #:mqtt-context #:mqtt-headers #:mqtt-password
                              #:mqtt-topic #:mqtt-username
                              #:named-shadow-indexing-mode
                              #:named-shadow-names-filter #:namespace-id
                              #:next-token #:non-compliant-checks-count
                              #:non-compliant-resource
                              #:non-compliant-resources-count
                              #:nullable-boolean #:number #:number-list
                              #:number-of-retries #:number-of-things
                              #:ocsplambda-arn #:otaupdate-arn
                              #:otaupdate-description #:otaupdate-error-message
                              #:otaupdate-file #:otaupdate-file-version
                              #:otaupdate-files #:otaupdate-id #:otaupdate-info
                              #:otaupdate-status #:otaupdate-summary
                              #:otaupdates-summary #:open-search-action
                              #:optional #:optional-version
                              #:outgoing-certificate #:outgoing-certificates
                              #:override-dynamic-groups #:package-arn
                              #:package-catalog-max-results #:package-name
                              #:package-summary #:package-summary-list
                              #:package-version-action #:package-version-arn
                              #:package-version-artifact
                              #:package-version-error-reason
                              #:package-version-recipe #:package-version-status
                              #:package-version-summary
                              #:package-version-summary-list #:page-size
                              #:parameter #:parameter-key #:parameter-map
                              #:parameter-value #:parameters #:partition-key
                              #:payload-field #:payload-format-indicator
                              #:payload-version #:percent #:percent-list
                              #:percent-pair #:percent-value #:percentage
                              #:percentiles #:platform #:policies #:policy
                              #:policy-arn #:policy-document #:policy-documents
                              #:policy-name #:policy-names #:policy-target
                              #:policy-targets #:policy-template-name
                              #:policy-version #:policy-version-id
                              #:policy-version-identifier #:policy-versions
                              #:port #:ports #:prefix #:presigned-url-config
                              #:primitive-boolean #:principal #:principal-arn
                              #:principal-id #:principal-thing-object
                              #:principal-thing-objects #:principals
                              #:private-key #:processing-target-name
                              #:processing-target-name-list
                              #:propagating-attribute
                              #:propagating-attribute-list #:protocol
                              #:protocols #:provisioning-hook
                              #:provisioning-template-listing
                              #:provisioning-template-summary
                              #:provisioning-template-version-listing
                              #:provisioning-template-version-summary
                              #:public-key #:public-key-map
                              #:publish-finding-to-sns-params
                              #:put-asset-property-value-entry
                              #:put-asset-property-value-entry-list
                              #:put-item-input
                              #:put-verification-state-on-violation #:qos
                              #:query-max-results #:query-string
                              #:query-version #:queue-url #:queued-things
                              #:range-key-field #:range-key-value
                              #:rate-increase-criteria #:reason-code
                              #:reason-for-non-compliance
                              #:reason-for-non-compliance-code
                              #:reason-for-non-compliance-codes #:recursive
                              #:recursive-without-default #:regex
                              #:register-cacertificate #:register-certificate
                              #:register-certificate-without-ca
                              #:register-thing #:registration-code
                              #:registration-config #:registry-max-results
                              #:registry-s3bucket-name #:registry-s3key-name
                              #:reject-certificate-transfer #:rejected-things
                              #:related-resource #:related-resources
                              #:remove-authorizer-config
                              #:remove-auto-registration #:remove-hook
                              #:remove-thing-from-billing-group
                              #:remove-thing-from-thing-group
                              #:remove-thing-type #:removed-things
                              #:replace-default-policy-version-params
                              #:replace-topic-rule #:report-type
                              #:republish-action
                              #:reserved-domain-configuration-name #:resource
                              #:resource-arn #:resource-arns
                              #:resource-attribute-key
                              #:resource-attribute-value #:resource-attributes
                              #:resource-description #:resource-identifier
                              #:resource-logical-id #:resource-type #:resources
                              #:response-topic #:retry-attempt #:retry-criteria
                              #:retry-criteria-list #:retryable-failure-type
                              #:role-alias #:role-alias-arn
                              #:role-alias-description #:role-aliases
                              #:role-arn #:rollout-rate-per-minute #:rule-arn
                              #:rule-name #:s3action #:s3bucket #:s3destination
                              #:s3file-url #:s3file-url-list #:s3key
                              #:s3location #:s3version #:sql
                              #:salesforce-action #:salesforce-endpoint
                              #:salesforce-token #:sbom
                              #:sbom-validation-error-code
                              #:sbom-validation-error-message
                              #:sbom-validation-result
                              #:sbom-validation-result-summary
                              #:sbom-validation-result-summary-list
                              #:sbom-validation-status #:scheduled-audit-arn
                              #:scheduled-audit-metadata
                              #:scheduled-audit-metadata-list
                              #:scheduled-audit-name #:scheduled-job-rollout
                              #:scheduled-job-rollout-list #:scheduling-config
                              #:search-index #:search-query-max-results
                              #:searchable-attributes #:seconds
                              #:security-group-id #:security-group-list
                              #:security-policy #:security-profile-arn
                              #:security-profile-description
                              #:security-profile-identifier
                              #:security-profile-identifiers
                              #:security-profile-name #:security-profile-target
                              #:security-profile-target-arn
                              #:security-profile-target-mapping
                              #:security-profile-target-mappings
                              #:security-profile-targets
                              #:server-certificate-arns
                              #:server-certificate-config
                              #:server-certificate-status
                              #:server-certificate-status-detail
                              #:server-certificate-summary
                              #:server-certificates #:server-name
                              #:service-name #:service-type #:set-as-active
                              #:set-as-active-flag #:set-as-default
                              #:set-default-authorizer
                              #:set-default-policy-version
                              #:set-logging-options #:set-v2logging-level
                              #:set-v2logging-options #:shadow-name
                              #:sig-v4authorization #:signature
                              #:signature-algorithm #:signing-job-id
                              #:signing-profile-name
                              #:signing-profile-parameter #:signing-region
                              #:skipped-findings-count #:skyfall-max-results
                              #:sns-action #:sns-topic-arn #:sort-order
                              #:sqs-action
                              #:start-audit-mitigation-actions-task
                              #:start-detect-mitigation-actions-task
                              #:start-on-demand-audit-task
                              #:start-signing-job-parameter
                              #:start-thing-registration-task
                              #:state-machine-name #:state-reason #:state-value
                              #:statistical-threshold #:statistics #:status
                              #:status-code #:status-reason
                              #:status-reason-code #:status-reason-description
                              #:std-deviation #:step-functions-action
                              #:stop-thing-registration-task #:stream
                              #:stream-arn #:stream-description #:stream-file
                              #:stream-files #:stream-id #:stream-info
                              #:stream-name #:stream-summary #:stream-version
                              #:streams-summary #:string
                              #:string-command-execution-result
                              #:string-date-time #:string-list #:string-map
                              #:string-parameter-value #:subnet-id
                              #:subnet-id-list #:succeeded-findings-count
                              #:succeeded-things #:sum #:sum-of-squares
                              #:suppress-alerts #:suppress-indefinitely
                              #:suppressed-non-compliant-resources-count
                              #:table-name #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-map #:tag-resource #:tag-value
                              #:target #:target-arn #:target-audit-check-names
                              #:target-field-name #:target-field-order
                              #:target-selection
                              #:target-violation-ids-for-detect-mitigation-actions
                              #:targets #:task-id #:task-id-list
                              #:task-statistics
                              #:task-statistics-for-audit-check #:template-arn
                              #:template-body #:template-description
                              #:template-name #:template-type
                              #:template-version-id #:terms-aggregation
                              #:test-authorization #:test-invoke-authorizer
                              #:thing-arn #:thing-attribute
                              #:thing-attribute-list #:thing-connectivity
                              #:thing-connectivity-indexing-mode
                              #:thing-document #:thing-document-list
                              #:thing-group-arn #:thing-group-description
                              #:thing-group-document
                              #:thing-group-document-list #:thing-group-id
                              #:thing-group-indexing-configuration
                              #:thing-group-indexing-mode #:thing-group-list
                              #:thing-group-metadata #:thing-group-name
                              #:thing-group-name-and-arn-list
                              #:thing-group-name-list #:thing-group-names
                              #:thing-group-properties #:thing-id
                              #:thing-indexing-configuration
                              #:thing-indexing-mode #:thing-name
                              #:thing-name-list #:thing-principal-object
                              #:thing-principal-objects #:thing-principal-type
                              #:thing-type-arn #:thing-type-definition
                              #:thing-type-description #:thing-type-id
                              #:thing-type-list #:thing-type-metadata
                              #:thing-type-name #:thing-type-properties
                              #:time-filter #:timed-out-things #:timeout-config
                              #:timestamp #:timestream-action
                              #:timestream-database-name #:timestream-dimension
                              #:timestream-dimension-list
                              #:timestream-dimension-name
                              #:timestream-dimension-value
                              #:timestream-table-name #:timestream-timestamp
                              #:timestream-timestamp-unit
                              #:timestream-timestamp-value #:tiny-max-results
                              #:tls-config #:tls-context #:token
                              #:token-key-name #:token-signature #:topic
                              #:topic-pattern #:topic-rule
                              #:topic-rule-destination
                              #:topic-rule-destination-configuration
                              #:topic-rule-destination-max-results
                              #:topic-rule-destination-status
                              #:topic-rule-destination-summaries
                              #:topic-rule-destination-summary
                              #:topic-rule-list #:topic-rule-list-item
                              #:topic-rule-max-results #:topic-rule-payload
                              #:total-checks-count #:total-findings-count
                              #:total-resources-count #:transfer-certificate
                              #:transfer-data #:undo-deprecate
                              #:unset-default-version #:unsigned-long
                              #:unsigned-long-parameter-value #:untag-resource
                              #:update-account-audit-configuration
                              #:update-audit-suppression #:update-authorizer
                              #:update-billing-group #:update-cacertificate
                              #:update-cacertificate-params
                              #:update-certificate
                              #:update-certificate-provider #:update-command
                              #:update-custom-metric
                              #:update-device-certificate-params
                              #:update-dimension #:update-domain-configuration
                              #:update-dynamic-thing-group
                              #:update-encryption-configuration
                              #:update-event-configurations
                              #:update-fleet-metric
                              #:update-indexing-configuration #:update-job
                              #:update-mitigation-action #:update-package
                              #:update-package-configuration
                              #:update-package-version
                              #:update-provisioning-template
                              #:update-role-alias #:update-scheduled-audit
                              #:update-security-profile #:update-stream
                              #:update-thing #:update-thing-group
                              #:update-thing-groups-for-thing
                              #:update-thing-type
                              #:update-topic-rule-destination #:url
                              #:use-base64 #:user-properties #:user-property
                              #:user-property-key #:user-property-key-name
                              #:user-property-value #:valid
                              #:validate-security-profile-behaviors
                              #:validation-error #:validation-errors #:value
                              #:variance #:verification-state
                              #:verification-state-description #:version
                              #:version-name #:version-number
                              #:version-update-by-jobs-config #:violation-event
                              #:violation-event-additional-info
                              #:violation-event-occurrence-range
                              #:violation-event-type #:violation-events
                              #:violation-id #:vpc-destination-configuration
                              #:vpc-destination-properties
                              #:vpc-destination-summary #:vpc-id
                              #:waiting-for-data-collection-checks-count
                              #:resource-id #:string-value
                              #:use-prefix-attribute-value))
(common-lisp:in-package #:pira/iot)

(smithy/sdk/service:define-service awsiot-service :shape-name "AWSIotService"
                                   :version "2015-05-28" :title "AWS IoT"
                                   :operations
                                   '(accept-certificate-transfer
                                     add-thing-to-billing-group
                                     add-thing-to-thing-group
                                     associate-sbom-with-package-version
                                     associate-targets-with-job attach-policy
                                     attach-principal-policy
                                     attach-security-profile
                                     attach-thing-principal
                                     cancel-audit-mitigation-actions-task
                                     cancel-audit-task
                                     cancel-certificate-transfer
                                     cancel-detect-mitigation-actions-task
                                     cancel-job cancel-job-execution
                                     clear-default-authorizer
                                     confirm-topic-rule-destination
                                     create-audit-suppression create-authorizer
                                     create-billing-group
                                     create-certificate-from-csr
                                     create-certificate-provider create-command
                                     create-custom-metric create-dimension
                                     create-domain-configuration
                                     create-dynamic-thing-group
                                     create-fleet-metric create-job
                                     create-job-template
                                     create-keys-and-certificate
                                     create-mitigation-action create-otaupdate
                                     create-package create-package-version
                                     create-policy create-policy-version
                                     create-provisioning-claim
                                     create-provisioning-template
                                     create-provisioning-template-version
                                     create-role-alias create-scheduled-audit
                                     create-security-profile create-stream
                                     create-thing create-thing-group
                                     create-thing-type create-topic-rule
                                     create-topic-rule-destination
                                     delete-account-audit-configuration
                                     delete-audit-suppression delete-authorizer
                                     delete-billing-group delete-cacertificate
                                     delete-certificate
                                     delete-certificate-provider delete-command
                                     delete-command-execution
                                     delete-custom-metric delete-dimension
                                     delete-domain-configuration
                                     delete-dynamic-thing-group
                                     delete-fleet-metric delete-job
                                     delete-job-execution delete-job-template
                                     delete-mitigation-action delete-otaupdate
                                     delete-package delete-package-version
                                     delete-policy delete-policy-version
                                     delete-provisioning-template
                                     delete-provisioning-template-version
                                     delete-registration-code delete-role-alias
                                     delete-scheduled-audit
                                     delete-security-profile delete-stream
                                     delete-thing delete-thing-group
                                     delete-thing-type delete-topic-rule
                                     delete-topic-rule-destination
                                     delete-v2logging-level
                                     deprecate-thing-type
                                     describe-account-audit-configuration
                                     describe-audit-finding
                                     describe-audit-mitigation-actions-task
                                     describe-audit-suppression
                                     describe-audit-task describe-authorizer
                                     describe-billing-group
                                     describe-cacertificate
                                     describe-certificate
                                     describe-certificate-provider
                                     describe-custom-metric
                                     describe-default-authorizer
                                     describe-detect-mitigation-actions-task
                                     describe-dimension
                                     describe-domain-configuration
                                     describe-encryption-configuration
                                     describe-endpoint
                                     describe-event-configurations
                                     describe-fleet-metric describe-index
                                     describe-job describe-job-execution
                                     describe-job-template
                                     describe-managed-job-template
                                     describe-mitigation-action
                                     describe-provisioning-template
                                     describe-provisioning-template-version
                                     describe-role-alias
                                     describe-scheduled-audit
                                     describe-security-profile describe-stream
                                     describe-thing describe-thing-group
                                     describe-thing-registration-task
                                     describe-thing-type detach-policy
                                     detach-principal-policy
                                     detach-security-profile
                                     detach-thing-principal disable-topic-rule
                                     disassociate-sbom-from-package-version
                                     enable-topic-rule
                                     get-behavior-model-training-summaries
                                     get-buckets-aggregation get-cardinality
                                     get-command get-command-execution
                                     get-effective-policies
                                     get-indexing-configuration
                                     get-job-document get-logging-options
                                     get-otaupdate get-package
                                     get-package-configuration
                                     get-package-version get-percentiles
                                     get-policy get-policy-version
                                     get-registration-code get-statistics
                                     get-thing-connectivity-data get-topic-rule
                                     get-topic-rule-destination
                                     get-v2logging-options
                                     list-active-violations
                                     list-attached-policies list-audit-findings
                                     list-audit-mitigation-actions-executions
                                     list-audit-mitigation-actions-tasks
                                     list-audit-suppressions list-audit-tasks
                                     list-authorizers list-billing-groups
                                     list-cacertificates
                                     list-certificate-providers
                                     list-certificates list-certificates-by-ca
                                     list-command-executions list-commands
                                     list-custom-metrics
                                     list-detect-mitigation-actions-executions
                                     list-detect-mitigation-actions-tasks
                                     list-dimensions list-domain-configurations
                                     list-fleet-metrics list-indices
                                     list-job-executions-for-job
                                     list-job-executions-for-thing list-jobs
                                     list-job-templates
                                     list-managed-job-templates
                                     list-metric-values list-mitigation-actions
                                     list-otaupdates list-outgoing-certificates
                                     list-packages list-package-versions
                                     list-policies list-policy-principals
                                     list-policy-versions
                                     list-principal-policies
                                     list-principal-things
                                     list-principal-things-v2
                                     list-provisioning-templates
                                     list-provisioning-template-versions
                                     list-related-resources-for-audit-finding
                                     list-role-aliases
                                     list-sbom-validation-results
                                     list-scheduled-audits
                                     list-security-profiles
                                     list-security-profiles-for-target
                                     list-streams list-tags-for-resource
                                     list-targets-for-policy
                                     list-targets-for-security-profile
                                     list-thing-groups
                                     list-thing-groups-for-thing
                                     list-thing-principals
                                     list-thing-principals-v2
                                     list-thing-registration-task-reports
                                     list-thing-registration-tasks list-things
                                     list-things-in-billing-group
                                     list-things-in-thing-group
                                     list-thing-types
                                     list-topic-rule-destinations
                                     list-topic-rules list-v2logging-levels
                                     list-violation-events
                                     put-verification-state-on-violation
                                     register-cacertificate
                                     register-certificate
                                     register-certificate-without-ca
                                     register-thing reject-certificate-transfer
                                     remove-thing-from-billing-group
                                     remove-thing-from-thing-group
                                     replace-topic-rule search-index
                                     set-default-authorizer
                                     set-default-policy-version
                                     set-logging-options set-v2logging-level
                                     set-v2logging-options
                                     start-audit-mitigation-actions-task
                                     start-detect-mitigation-actions-task
                                     start-on-demand-audit-task
                                     start-thing-registration-task
                                     stop-thing-registration-task tag-resource
                                     test-authorization test-invoke-authorizer
                                     transfer-certificate untag-resource
                                     update-account-audit-configuration
                                     update-audit-suppression update-authorizer
                                     update-billing-group update-cacertificate
                                     update-certificate
                                     update-certificate-provider update-command
                                     update-custom-metric update-dimension
                                     update-domain-configuration
                                     update-dynamic-thing-group
                                     update-encryption-configuration
                                     update-event-configurations
                                     update-fleet-metric
                                     update-indexing-configuration update-job
                                     update-mitigation-action update-package
                                     update-package-configuration
                                     update-package-version
                                     update-provisioning-template
                                     update-role-alias update-scheduled-audit
                                     update-security-profile update-stream
                                     update-thing update-thing-group
                                     update-thing-groups-for-thing
                                     update-thing-type
                                     update-topic-rule-destination
                                     validate-security-profile-behaviors)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "IoT")
                                      ("arnNamespace" . "iot")
                                      ("cloudFormationName" . "IoT")
                                      ("cloudTrailEventSource"
                                       . "iot.amazonaws.com")
                                      ("endpointPrefix" . "iot"))
                                     ("aws.auth#sigv4" ("name" . "iot"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum abort-action
    common-lisp:nil
  (:cancel "CANCEL"))

(smithy/sdk/shapes:define-structure abort-config common-lisp:nil
                                    ((criteria-list :target-type
                                      abort-criteria-list :required
                                      common-lisp:t :member-name
                                      "criteriaList"))
                                    (:shape-name "AbortConfig"))

(smithy/sdk/shapes:define-structure abort-criteria common-lisp:nil
                                    ((failure-type :target-type
                                      job-execution-failure-type :required
                                      common-lisp:t :member-name "failureType")
                                     (action :target-type abort-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (threshold-percentage :target-type
                                      abort-threshold-percentage :required
                                      common-lisp:t :member-name
                                      "thresholdPercentage")
                                     (min-number-of-executed-things
                                      :target-type
                                      minimum-number-of-executed-things
                                      :required common-lisp:t :member-name
                                      "minNumberOfExecutedThings"))
                                    (:shape-name "AbortCriteria"))

(smithy/sdk/shapes:define-list abort-criteria-list :member abort-criteria)

(smithy/sdk/shapes:define-type abort-threshold-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input accept-certificate-transfer-request
                                common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t)
                                 (set-as-active :target-type set-as-active
                                  :member-name "setAsActive" :http-query
                                  "setAsActive"))
                                (:shape-name
                                 "AcceptCertificateTransferRequest"))

(smithy/sdk/shapes:define-type acm-certificate-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((dynamo-db :target-type dynamo-dbaction
                                      :member-name "dynamoDB")
                                     (dynamo-dbv2 :target-type
                                      dynamo-dbv2action :member-name
                                      "dynamoDBv2")
                                     (lambda :target-type lambda-action
                                      :member-name "lambda")
                                     (sns :target-type sns-action :member-name
                                      "sns")
                                     (sqs :target-type sqs-action :member-name
                                      "sqs")
                                     (kinesis :target-type kinesis-action
                                      :member-name "kinesis")
                                     (republish :target-type republish-action
                                      :member-name "republish")
                                     (s3 :target-type s3action :member-name
                                      "s3")
                                     (firehose :target-type firehose-action
                                      :member-name "firehose")
                                     (cloudwatch-metric :target-type
                                      cloudwatch-metric-action :member-name
                                      "cloudwatchMetric")
                                     (cloudwatch-alarm :target-type
                                      cloudwatch-alarm-action :member-name
                                      "cloudwatchAlarm")
                                     (cloudwatch-logs :target-type
                                      cloudwatch-logs-action :member-name
                                      "cloudwatchLogs")
                                     (elasticsearch :target-type
                                      elasticsearch-action :member-name
                                      "elasticsearch")
                                     (salesforce :target-type salesforce-action
                                      :member-name "salesforce")
                                     (iot-analytics :target-type
                                      iot-analytics-action :member-name
                                      "iotAnalytics")
                                     (iot-events :target-type iot-events-action
                                      :member-name "iotEvents")
                                     (iot-site-wise :target-type
                                      iot-site-wise-action :member-name
                                      "iotSiteWise")
                                     (step-functions :target-type
                                      step-functions-action :member-name
                                      "stepFunctions")
                                     (timestream :target-type timestream-action
                                      :member-name "timestream")
                                     (http :target-type http-action
                                      :member-name "http")
                                     (kafka :target-type kafka-action
                                      :member-name "kafka")
                                     (open-search :target-type
                                      open-search-action :member-name
                                      "openSearch")
                                     (location :target-type location-action
                                      :member-name "location"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-list action-list :member action)

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:publish "PUBLISH")
  (:subscribe "SUBSCRIBE")
  (:receive "RECEIVE")
  (:connect "CONNECT"))

(smithy/sdk/shapes:define-structure active-violation common-lisp:nil
                                    ((violation-id :target-type violation-id
                                      :member-name "violationId")
                                     (thing-name :target-type
                                      device-defender-thing-name :member-name
                                      "thingName")
                                     (security-profile-name :target-type
                                      security-profile-name :member-name
                                      "securityProfileName")
                                     (behavior :target-type behavior
                                      :member-name "behavior")
                                     (last-violation-value :target-type
                                      metric-value :member-name
                                      "lastViolationValue")
                                     (violation-event-additional-info
                                      :target-type
                                      violation-event-additional-info
                                      :member-name
                                      "violationEventAdditionalInfo")
                                     (verification-state :target-type
                                      verification-state :member-name
                                      "verificationState")
                                     (verification-state-description
                                      :target-type
                                      verification-state-description
                                      :member-name
                                      "verificationStateDescription")
                                     (last-violation-time :target-type
                                      timestamp :member-name
                                      "lastViolationTime")
                                     (violation-start-time :target-type
                                      timestamp :member-name
                                      "violationStartTime"))
                                    (:shape-name "ActiveViolation"))

(smithy/sdk/shapes:define-list active-violations :member active-violation)

(smithy/sdk/shapes:define-input add-thing-to-billing-group-request
                                common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :member-name
                                  "billingGroupName")
                                 (billing-group-arn :target-type
                                  billing-group-arn :member-name
                                  "billingGroupArn")
                                 (thing-name :target-type thing-name
                                  :member-name "thingName")
                                 (thing-arn :target-type thing-arn :member-name
                                  "thingArn"))
                                (:shape-name "AddThingToBillingGroupRequest"))

(smithy/sdk/shapes:define-output add-thing-to-billing-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AddThingToBillingGroupResponse"))

(smithy/sdk/shapes:define-input add-thing-to-thing-group-request
                                common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :member-name
                                  "thingGroupName")
                                 (thing-group-arn :target-type thing-group-arn
                                  :member-name "thingGroupArn")
                                 (thing-name :target-type thing-name
                                  :member-name "thingName")
                                 (thing-arn :target-type thing-arn :member-name
                                  "thingArn")
                                 (override-dynamic-groups :target-type
                                  override-dynamic-groups :member-name
                                  "overrideDynamicGroups"))
                                (:shape-name "AddThingToThingGroupRequest"))

(smithy/sdk/shapes:define-output add-thing-to-thing-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AddThingToThingGroupResponse"))

(smithy/sdk/shapes:define-structure add-things-to-thing-group-params
                                    common-lisp:nil
                                    ((thing-group-names :target-type
                                      thing-group-names :required common-lisp:t
                                      :member-name "thingGroupNames")
                                     (override-dynamic-groups :target-type
                                      nullable-boolean :member-name
                                      "overrideDynamicGroups"))
                                    (:shape-name "AddThingsToThingGroupParams"))

(smithy/sdk/shapes:define-list additional-metrics-to-retain-list :member
                               behavior-metric)

(smithy/sdk/shapes:define-list additional-metrics-to-retain-v2list :member
                               metric-to-retain)

(smithy/sdk/shapes:define-map additional-parameter-map :key attribute-key
                              :value value)

(smithy/sdk/shapes:define-type aggregation-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregation-type common-lisp:nil
                                    ((name :target-type aggregation-type-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      aggregation-type-values :member-name
                                      "values"))
                                    (:shape-name "AggregationType"))

(smithy/sdk/shapes:define-enum aggregation-type-name
    common-lisp:nil
  (:statistics "Statistics")
  (:percentiles "Percentiles")
  (:cardinality "Cardinality"))

(smithy/sdk/shapes:define-type aggregation-type-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aggregation-type-values :member
                               aggregation-type-value)

(smithy/sdk/shapes:define-type alarm-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alert-target common-lisp:nil
                                    ((alert-target-arn :target-type
                                      alert-target-arn :required common-lisp:t
                                      :member-name "alertTargetArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "AlertTarget"))

(smithy/sdk/shapes:define-type alert-target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum alert-target-type
    common-lisp:nil
  (:sns "SNS"))

(smithy/sdk/shapes:define-map alert-targets :key alert-target-type :value
                              alert-target)

(smithy/sdk/shapes:define-type allow-authorizer-override
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type allow-auto-registration
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure allowed common-lisp:nil
                                    ((policies :target-type policies
                                      :member-name "policies"))
                                    (:shape-name "Allowed"))

(smithy/sdk/shapes:define-enum application-protocol
    common-lisp:nil
  (:secure-mqtt "SECURE_MQTT")
  (:mqtt-wss "MQTT_WSS")
  (:https "HTTPS")
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-type approximate-seconds-before-timed-out
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type ascending-order smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type asset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-boolean-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-double-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-entry-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-integer-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-offset-in-nanos
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-quality
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-property-time-in-seconds
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-property-timestamp common-lisp:nil
                                    ((time-in-seconds :target-type
                                      asset-property-time-in-seconds :required
                                      common-lisp:t :member-name
                                      "timeInSeconds")
                                     (offset-in-nanos :target-type
                                      asset-property-offset-in-nanos
                                      :member-name "offsetInNanos"))
                                    (:shape-name "AssetPropertyTimestamp"))

(smithy/sdk/shapes:define-structure asset-property-value common-lisp:nil
                                    ((value :target-type asset-property-variant
                                      :required common-lisp:t :member-name
                                      "value")
                                     (timestamp :target-type
                                      asset-property-timestamp :required
                                      common-lisp:t :member-name "timestamp")
                                     (quality :target-type
                                      asset-property-quality :member-name
                                      "quality"))
                                    (:shape-name "AssetPropertyValue"))

(smithy/sdk/shapes:define-list asset-property-value-list :member
                               asset-property-value)

(smithy/sdk/shapes:define-union asset-property-variant common-lisp:nil
                                ((string-value :target-type
                                  asset-property-string-value :member-name
                                  "stringValue")
                                 (integer-value :target-type
                                  asset-property-integer-value :member-name
                                  "integerValue")
                                 (double-value :target-type
                                  asset-property-double-value :member-name
                                  "doubleValue")
                                 (boolean-value :target-type
                                  asset-property-boolean-value :member-name
                                  "booleanValue"))
                                (:shape-name "AssetPropertyVariant"))

(smithy/sdk/shapes:define-input associate-sbom-with-package-version-request
                                common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t)
                                 (sbom :target-type sbom :required
                                  common-lisp:t :member-name "sbom")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name
                                 "AssociateSbomWithPackageVersionRequest"))

(smithy/sdk/shapes:define-output associate-sbom-with-package-version-response
                                 common-lisp:nil
                                 ((package-name :target-type package-name
                                   :member-name "packageName")
                                  (version-name :target-type version-name
                                   :member-name "versionName")
                                  (sbom :target-type sbom :member-name "sbom")
                                  (sbom-validation-status :target-type
                                   sbom-validation-status :member-name
                                   "sbomValidationStatus"))
                                 (:shape-name
                                  "AssociateSbomWithPackageVersionResponse"))

(smithy/sdk/shapes:define-input associate-targets-with-job-request
                                common-lisp:nil
                                ((targets :target-type job-targets :required
                                  common-lisp:t :member-name "targets")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (comment :target-type comment :member-name
                                  "comment")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId" :http-query
                                  "namespaceId"))
                                (:shape-name "AssociateTargetsWithJobRequest"))

(smithy/sdk/shapes:define-output associate-targets-with-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type job-arn :member-name
                                   "jobArn")
                                  (job-id :target-type job-id :member-name
                                   "jobId")
                                  (description :target-type job-description
                                   :member-name "description"))
                                 (:shape-name
                                  "AssociateTargetsWithJobResponse"))

(smithy/sdk/shapes:define-input attach-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (target :target-type policy-target :required
                                  common-lisp:t :member-name "target"))
                                (:shape-name "AttachPolicyRequest"))

(smithy/sdk/shapes:define-input attach-principal-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-iot-principal"))
                                (:shape-name "AttachPrincipalPolicyRequest"))

(smithy/sdk/shapes:define-input attach-security-profile-request common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t)
                                 (security-profile-target-arn :target-type
                                  security-profile-target-arn :required
                                  common-lisp:t :member-name
                                  "securityProfileTargetArn" :http-query
                                  "securityProfileTargetArn"))
                                (:shape-name "AttachSecurityProfileRequest"))

(smithy/sdk/shapes:define-output attach-security-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AttachSecurityProfileResponse"))

(smithy/sdk/shapes:define-input attach-thing-principal-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-principal")
                                 (thing-principal-type :target-type
                                  thing-principal-type :member-name
                                  "thingPrincipalType" :http-query
                                  "thingPrincipalType"))
                                (:shape-name "AttachThingPrincipalRequest"))

(smithy/sdk/shapes:define-output attach-thing-principal-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AttachThingPrincipalResponse"))

(smithy/sdk/shapes:define-type attribute-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-payload common-lisp:nil
                                    ((attributes :target-type attributes
                                      :member-name "attributes")
                                     (merge :target-type flag :member-name
                                      "merge"))
                                    (:shape-name "AttributePayload"))

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attributes :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-map attributes-map :key attribute-key :value value)

(smithy/sdk/shapes:define-structure audit-check-configuration common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "enabled")
                                     (configuration :target-type
                                      check-custom-configuration :member-name
                                      "configuration"))
                                    (:shape-name "AuditCheckConfiguration"))

(smithy/sdk/shapes:define-map audit-check-configurations :key audit-check-name
                              :value audit-check-configuration)

(smithy/sdk/shapes:define-structure audit-check-details common-lisp:nil
                                    ((check-run-status :target-type
                                      audit-check-run-status :member-name
                                      "checkRunStatus")
                                     (check-compliant :target-type
                                      check-compliant :member-name
                                      "checkCompliant")
                                     (total-resources-count :target-type
                                      total-resources-count :member-name
                                      "totalResourcesCount")
                                     (non-compliant-resources-count
                                      :target-type
                                      non-compliant-resources-count
                                      :member-name
                                      "nonCompliantResourcesCount")
                                     (suppressed-non-compliant-resources-count
                                      :target-type
                                      suppressed-non-compliant-resources-count
                                      :member-name
                                      "suppressedNonCompliantResourcesCount")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name "AuditCheckDetails"))

(smithy/sdk/shapes:define-type audit-check-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum audit-check-run-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:waiting-for-data-collection "WAITING_FOR_DATA_COLLECTION")
  (:canceled "CANCELED")
  (:completed-compliant "COMPLETED_COMPLIANT")
  (:completed-non-compliant "COMPLETED_NON_COMPLIANT")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-map audit-check-to-actions-mapping :key
                              audit-check-name :value
                              mitigation-action-name-list)

(smithy/sdk/shapes:define-map audit-check-to-reason-code-filter :key
                              audit-check-name :value
                              reason-for-non-compliance-codes)

(smithy/sdk/shapes:define-type audit-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map audit-details :key audit-check-name :value
                              audit-check-details)

(smithy/sdk/shapes:define-structure audit-finding common-lisp:nil
                                    ((finding-id :target-type finding-id
                                      :member-name "findingId")
                                     (task-id :target-type audit-task-id
                                      :member-name "taskId")
                                     (check-name :target-type audit-check-name
                                      :member-name "checkName")
                                     (task-start-time :target-type timestamp
                                      :member-name "taskStartTime")
                                     (finding-time :target-type timestamp
                                      :member-name "findingTime")
                                     (severity :target-type
                                      audit-finding-severity :member-name
                                      "severity")
                                     (non-compliant-resource :target-type
                                      non-compliant-resource :member-name
                                      "nonCompliantResource")
                                     (related-resources :target-type
                                      related-resources :member-name
                                      "relatedResources")
                                     (reason-for-non-compliance :target-type
                                      reason-for-non-compliance :member-name
                                      "reasonForNonCompliance")
                                     (reason-for-non-compliance-code
                                      :target-type
                                      reason-for-non-compliance-code
                                      :member-name
                                      "reasonForNonComplianceCode")
                                     (is-suppressed :target-type is-suppressed
                                      :member-name "isSuppressed"))
                                    (:shape-name "AuditFinding"))

(smithy/sdk/shapes:define-enum audit-finding-severity
    common-lisp:nil
  (:critical "CRITICAL")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW"))

(smithy/sdk/shapes:define-list audit-findings :member audit-finding)

(smithy/sdk/shapes:define-enum audit-frequency
    common-lisp:nil
  (:daily "DAILY")
  (:weekly "WEEKLY")
  (:biweekly "BIWEEKLY")
  (:monthly "MONTHLY"))

(smithy/sdk/shapes:define-structure audit-mitigation-action-execution-metadata
                                    common-lisp:nil
                                    ((task-id :target-type
                                      mitigation-actions-task-id :member-name
                                      "taskId")
                                     (finding-id :target-type finding-id
                                      :member-name "findingId")
                                     (action-name :target-type
                                      mitigation-action-name :member-name
                                      "actionName")
                                     (action-id :target-type
                                      mitigation-action-id :member-name
                                      "actionId")
                                     (status :target-type
                                      audit-mitigation-actions-execution-status
                                      :member-name "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name
                                     "AuditMitigationActionExecutionMetadata"))

(smithy/sdk/shapes:define-list audit-mitigation-action-execution-metadata-list
                               :member
                               audit-mitigation-action-execution-metadata)

(smithy/sdk/shapes:define-enum audit-mitigation-actions-execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:canceled "CANCELED")
  (:skipped "SKIPPED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-structure audit-mitigation-actions-task-metadata
                                    common-lisp:nil
                                    ((task-id :target-type
                                      mitigation-actions-task-id :member-name
                                      "taskId")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (task-status :target-type
                                      audit-mitigation-actions-task-status
                                      :member-name "taskStatus"))
                                    (:shape-name
                                     "AuditMitigationActionsTaskMetadata"))

(smithy/sdk/shapes:define-list audit-mitigation-actions-task-metadata-list
                               :member audit-mitigation-actions-task-metadata)

(smithy/sdk/shapes:define-map audit-mitigation-actions-task-statistics :key
                              audit-check-name :value
                              task-statistics-for-audit-check)

(smithy/sdk/shapes:define-enum audit-mitigation-actions-task-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure audit-mitigation-actions-task-target
                                    common-lisp:nil
                                    ((audit-task-id :target-type audit-task-id
                                      :member-name "auditTaskId")
                                     (finding-ids :target-type finding-ids
                                      :member-name "findingIds")
                                     (audit-check-to-reason-code-filter
                                      :target-type
                                      audit-check-to-reason-code-filter
                                      :member-name
                                      "auditCheckToReasonCodeFilter"))
                                    (:shape-name
                                     "AuditMitigationActionsTaskTarget"))

(smithy/sdk/shapes:define-structure audit-notification-target common-lisp:nil
                                    ((target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (enabled :target-type enabled :member-name
                                      "enabled"))
                                    (:shape-name "AuditNotificationTarget"))

(smithy/sdk/shapes:define-map audit-notification-target-configurations :key
                              audit-notification-type :value
                              audit-notification-target)

(smithy/sdk/shapes:define-enum audit-notification-type
    common-lisp:nil
  (:sns "SNS"))

(smithy/sdk/shapes:define-structure audit-suppression common-lisp:nil
                                    ((check-name :target-type audit-check-name
                                      :required common-lisp:t :member-name
                                      "checkName")
                                     (resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (expiration-date :target-type timestamp
                                      :member-name "expirationDate")
                                     (suppress-indefinitely :target-type
                                      suppress-indefinitely :member-name
                                      "suppressIndefinitely")
                                     (description :target-type
                                      audit-description :member-name
                                      "description"))
                                    (:shape-name "AuditSuppression"))

(smithy/sdk/shapes:define-list audit-suppression-list :member audit-suppression)

(smithy/sdk/shapes:define-type audit-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audit-task-metadata common-lisp:nil
                                    ((task-id :target-type audit-task-id
                                      :member-name "taskId")
                                     (task-status :target-type
                                      audit-task-status :member-name
                                      "taskStatus")
                                     (task-type :target-type audit-task-type
                                      :member-name "taskType"))
                                    (:shape-name "AuditTaskMetadata"))

(smithy/sdk/shapes:define-list audit-task-metadata-list :member
                               audit-task-metadata)

(smithy/sdk/shapes:define-enum audit-task-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-enum audit-task-type
    common-lisp:nil
  (:on-demand-audit-task "ON_DEMAND_AUDIT_TASK")
  (:scheduled-audit-task "SCHEDULED_AUDIT_TASK"))

(smithy/sdk/shapes:define-enum auth-decision
    common-lisp:nil
  (:allowed "ALLOWED")
  (:explicit-deny "EXPLICIT_DENY")
  (:implicit-deny "IMPLICIT_DENY"))

(smithy/sdk/shapes:define-structure auth-info common-lisp:nil
                                    ((action-type :target-type action-type
                                      :member-name "actionType")
                                     (resources :target-type resources
                                      :required common-lisp:t :member-name
                                      "resources"))
                                    (:shape-name "AuthInfo"))

(smithy/sdk/shapes:define-list auth-infos :member auth-info)

(smithy/sdk/shapes:define-structure auth-result common-lisp:nil
                                    ((auth-info :target-type auth-info
                                      :member-name "authInfo")
                                     (allowed :target-type allowed :member-name
                                      "allowed")
                                     (denied :target-type denied :member-name
                                      "denied")
                                     (auth-decision :target-type auth-decision
                                      :member-name "authDecision")
                                     (missing-context-values :target-type
                                      missing-context-values :member-name
                                      "missingContextValues"))
                                    (:shape-name "AuthResult"))

(smithy/sdk/shapes:define-list auth-results :member auth-result)

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:custom-auth-x509 "CUSTOM_AUTH_X509")
  (:custom-auth "CUSTOM_AUTH")
  (:aws-x509 "AWS_X509")
  (:aws-sigv4 "AWS_SIGV4")
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-type authorizer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure authorizer-config common-lisp:nil
                                    ((default-authorizer-name :target-type
                                      authorizer-name :member-name
                                      "defaultAuthorizerName")
                                     (allow-authorizer-override :target-type
                                      allow-authorizer-override :member-name
                                      "allowAuthorizerOverride"))
                                    (:shape-name "AuthorizerConfig"))

(smithy/sdk/shapes:define-structure authorizer-description common-lisp:nil
                                    ((authorizer-name :target-type
                                      authorizer-name :member-name
                                      "authorizerName")
                                     (authorizer-arn :target-type
                                      authorizer-arn :member-name
                                      "authorizerArn")
                                     (authorizer-function-arn :target-type
                                      authorizer-function-arn :member-name
                                      "authorizerFunctionArn")
                                     (token-key-name :target-type
                                      token-key-name :member-name
                                      "tokenKeyName")
                                     (token-signing-public-keys :target-type
                                      public-key-map :member-name
                                      "tokenSigningPublicKeys")
                                     (status :target-type authorizer-status
                                      :member-name "status")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "lastModifiedDate")
                                     (signing-disabled :target-type boolean-key
                                      :member-name "signingDisabled")
                                     (enable-caching-for-http :target-type
                                      enable-caching-for-http :member-name
                                      "enableCachingForHttp"))
                                    (:shape-name "AuthorizerDescription"))

(smithy/sdk/shapes:define-type authorizer-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authorizer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum authorizer-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure authorizer-summary common-lisp:nil
                                    ((authorizer-name :target-type
                                      authorizer-name :member-name
                                      "authorizerName")
                                     (authorizer-arn :target-type
                                      authorizer-arn :member-name
                                      "authorizerArn"))
                                    (:shape-name "AuthorizerSummary"))

(smithy/sdk/shapes:define-list authorizers :member authorizer-summary)

(smithy/sdk/shapes:define-enum auto-registration-status
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-type average smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-iot-job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-iot-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-iot-sql-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-job-abort-config common-lisp:nil
                                    ((abort-criteria-list :target-type
                                      aws-job-abort-criteria-list :required
                                      common-lisp:t :member-name
                                      "abortCriteriaList"))
                                    (:shape-name "AwsJobAbortConfig"))

(smithy/sdk/shapes:define-structure aws-job-abort-criteria common-lisp:nil
                                    ((failure-type :target-type
                                      aws-job-abort-criteria-failure-type
                                      :required common-lisp:t :member-name
                                      "failureType")
                                     (action :target-type
                                      aws-job-abort-criteria-abort-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (threshold-percentage :target-type
                                      aws-job-abort-criteria-abort-threshold-percentage
                                      :required common-lisp:t :member-name
                                      "thresholdPercentage")
                                     (min-number-of-executed-things
                                      :target-type
                                      aws-job-abort-criteria-minimum-number-of-executed-things
                                      :required common-lisp:t :member-name
                                      "minNumberOfExecutedThings"))
                                    (:shape-name "AwsJobAbortCriteria"))

(smithy/sdk/shapes:define-enum aws-job-abort-criteria-abort-action
    common-lisp:nil
  (:cancel "CANCEL"))

(smithy/sdk/shapes:define-type
 aws-job-abort-criteria-abort-threshold-percentage
 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum aws-job-abort-criteria-failure-type
    common-lisp:nil
  (:failed "FAILED")
  (:rejected "REJECTED")
  (:timed-out "TIMED_OUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-list aws-job-abort-criteria-list :member
                               aws-job-abort-criteria)

(smithy/sdk/shapes:define-type
 aws-job-abort-criteria-minimum-number-of-executed-things
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure aws-job-executions-rollout-config
                                    common-lisp:nil
                                    ((maximum-per-minute :target-type
                                      maximum-per-minute :member-name
                                      "maximumPerMinute")
                                     (exponential-rate :target-type
                                      aws-job-exponential-rollout-rate
                                      :member-name "exponentialRate"))
                                    (:shape-name
                                     "AwsJobExecutionsRolloutConfig"))

(smithy/sdk/shapes:define-structure aws-job-exponential-rollout-rate
                                    common-lisp:nil
                                    ((base-rate-per-minute :target-type
                                      aws-job-rollout-rate-per-minute :required
                                      common-lisp:t :member-name
                                      "baseRatePerMinute")
                                     (increment-factor :target-type
                                      aws-job-rollout-increment-factor
                                      :required common-lisp:t :member-name
                                      "incrementFactor")
                                     (rate-increase-criteria :target-type
                                      aws-job-rate-increase-criteria :required
                                      common-lisp:t :member-name
                                      "rateIncreaseCriteria"))
                                    (:shape-name
                                     "AwsJobExponentialRolloutRate"))

(smithy/sdk/shapes:define-structure aws-job-presigned-url-config
                                    common-lisp:nil
                                    ((expires-in-sec :target-type
                                      expires-in-seconds :member-name
                                      "expiresInSec"))
                                    (:shape-name "AwsJobPresignedUrlConfig"))

(smithy/sdk/shapes:define-structure aws-job-rate-increase-criteria
                                    common-lisp:nil
                                    ((number-of-notified-things :target-type
                                      aws-job-rate-increase-criteria-number-of-things
                                      :member-name "numberOfNotifiedThings")
                                     (number-of-succeeded-things :target-type
                                      aws-job-rate-increase-criteria-number-of-things
                                      :member-name "numberOfSucceededThings"))
                                    (:shape-name "AwsJobRateIncreaseCriteria"))

(smithy/sdk/shapes:define-type aws-job-rate-increase-criteria-number-of-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type aws-job-rollout-increment-factor
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type aws-job-rollout-rate-per-minute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure aws-job-timeout-config common-lisp:nil
                                    ((in-progress-timeout-in-minutes
                                      :target-type
                                      aws-job-timeout-in-progress-timeout-in-minutes
                                      :member-name
                                      "inProgressTimeoutInMinutes"))
                                    (:shape-name "AwsJobTimeoutConfig"))

(smithy/sdk/shapes:define-type aws-job-timeout-in-progress-timeout-in-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type batch-mode smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type before-substitution-flag
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure behavior common-lisp:nil
                                    ((name :target-type behavior-name :required
                                      common-lisp:t :member-name "name")
                                     (metric :target-type behavior-metric
                                      :member-name "metric")
                                     (metric-dimension :target-type
                                      metric-dimension :member-name
                                      "metricDimension")
                                     (criteria :target-type behavior-criteria
                                      :member-name "criteria")
                                     (suppress-alerts :target-type
                                      suppress-alerts :member-name
                                      "suppressAlerts")
                                     (export-metric :target-type export-metric
                                      :member-name "exportMetric"))
                                    (:shape-name "Behavior"))

(smithy/sdk/shapes:define-structure behavior-criteria common-lisp:nil
                                    ((comparison-operator :target-type
                                      comparison-operator :member-name
                                      "comparisonOperator")
                                     (value :target-type metric-value
                                      :member-name "value")
                                     (duration-seconds :target-type
                                      duration-seconds :member-name
                                      "durationSeconds")
                                     (consecutive-datapoints-to-alarm
                                      :target-type
                                      consecutive-datapoints-to-alarm
                                      :member-name
                                      "consecutiveDatapointsToAlarm")
                                     (consecutive-datapoints-to-clear
                                      :target-type
                                      consecutive-datapoints-to-clear
                                      :member-name
                                      "consecutiveDatapointsToClear")
                                     (statistical-threshold :target-type
                                      statistical-threshold :member-name
                                      "statisticalThreshold")
                                     (ml-detection-config :target-type
                                      machine-learning-detection-config
                                      :member-name "mlDetectionConfig"))
                                    (:shape-name "BehaviorCriteria"))

(smithy/sdk/shapes:define-enum behavior-criteria-type
    common-lisp:nil
  (:static "STATIC")
  (:statistical "STATISTICAL")
  (:machine-learning "MACHINE_LEARNING"))

(smithy/sdk/shapes:define-type behavior-metric smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list behavior-model-training-summaries :member
                               behavior-model-training-summary)

(smithy/sdk/shapes:define-structure behavior-model-training-summary
                                    common-lisp:nil
                                    ((security-profile-name :target-type
                                      security-profile-name :member-name
                                      "securityProfileName")
                                     (behavior-name :target-type behavior-name
                                      :member-name "behaviorName")
                                     (training-data-collection-start-date
                                      :target-type timestamp :member-name
                                      "trainingDataCollectionStartDate")
                                     (model-status :target-type model-status
                                      :member-name "modelStatus")
                                     (datapoints-collection-percentage
                                      :target-type data-collection-percentage
                                      :member-name
                                      "datapointsCollectionPercentage")
                                     (last-model-refresh-date :target-type
                                      timestamp :member-name
                                      "lastModelRefreshDate"))
                                    (:shape-name
                                     "BehaviorModelTrainingSummary"))

(smithy/sdk/shapes:define-type behavior-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list behaviors :member behavior)

(smithy/sdk/shapes:define-type billing-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type billing-group-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type billing-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure billing-group-metadata common-lisp:nil
                                    ((creation-date :target-type creation-date
                                      :member-name "creationDate"))
                                    (:shape-name "BillingGroupMetadata"))

(smithy/sdk/shapes:define-type billing-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list billing-group-name-and-arn-list :member
                               group-name-and-arn)

(smithy/sdk/shapes:define-structure billing-group-properties common-lisp:nil
                                    ((billing-group-description :target-type
                                      billing-group-description :member-name
                                      "billingGroupDescription"))
                                    (:shape-name "BillingGroupProperties"))

(smithy/sdk/shapes:define-type binary-command-execution-result
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type binary-parameter-value
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean2 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-command-execution-result
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-key smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-parameter-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-wrapper-object
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bucket common-lisp:nil
                                    ((key-value :target-type bucket-key-value
                                      :member-name "keyValue")
                                     (count :target-type count :member-name
                                      "count"))
                                    (:shape-name "Bucket"))

(smithy/sdk/shapes:define-type bucket-key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list buckets :member bucket)

(smithy/sdk/shapes:define-structure buckets-aggregation-type common-lisp:nil
                                    ((terms-aggregation :target-type
                                      terms-aggregation :member-name
                                      "termsAggregation"))
                                    (:shape-name "BucketsAggregationType"))

(smithy/sdk/shapes:define-structure cacertificate common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "certificateId")
                                     (status :target-type cacertificate-status
                                      :member-name "status")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate"))
                                    (:shape-name "CACertificate"))

(smithy/sdk/shapes:define-structure cacertificate-description common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "certificateId")
                                     (status :target-type cacertificate-status
                                      :member-name "status")
                                     (certificate-pem :target-type
                                      certificate-pem :member-name
                                      "certificatePem")
                                     (owned-by :target-type aws-account-id
                                      :member-name "ownedBy")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (auto-registration-status :target-type
                                      auto-registration-status :member-name
                                      "autoRegistrationStatus")
                                     (last-modified-date :target-type date-type
                                      :member-name "lastModifiedDate")
                                     (customer-version :target-type
                                      customer-version :member-name
                                      "customerVersion")
                                     (generation-id :target-type generation-id
                                      :member-name "generationId")
                                     (validity :target-type
                                      certificate-validity :member-name
                                      "validity")
                                     (certificate-mode :target-type
                                      certificate-mode :member-name
                                      "certificateMode"))
                                    (:shape-name "CACertificateDescription"))

(smithy/sdk/shapes:define-enum cacertificate-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-enum cacertificate-update-action
    common-lisp:nil
  (:deactivate "DEACTIVATE"))

(smithy/sdk/shapes:define-list cacertificates :member cacertificate)

(smithy/sdk/shapes:define-input cancel-audit-mitigation-actions-task-request
                                common-lisp:nil
                                ((task-id :target-type
                                  mitigation-actions-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "CancelAuditMitigationActionsTaskRequest"))

(smithy/sdk/shapes:define-output cancel-audit-mitigation-actions-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelAuditMitigationActionsTaskResponse"))

(smithy/sdk/shapes:define-input cancel-audit-task-request common-lisp:nil
                                ((task-id :target-type audit-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelAuditTaskRequest"))

(smithy/sdk/shapes:define-output cancel-audit-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelAuditTaskResponse"))

(smithy/sdk/shapes:define-input cancel-certificate-transfer-request
                                common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t))
                                (:shape-name
                                 "CancelCertificateTransferRequest"))

(smithy/sdk/shapes:define-input cancel-detect-mitigation-actions-task-request
                                common-lisp:nil
                                ((task-id :target-type
                                  mitigation-actions-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "CancelDetectMitigationActionsTaskRequest"))

(smithy/sdk/shapes:define-output cancel-detect-mitigation-actions-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelDetectMitigationActionsTaskResponse"))

(smithy/sdk/shapes:define-input cancel-job-execution-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (force :target-type force-flag :member-name
                                  "force" :http-query "force")
                                 (expected-version :target-type
                                  expected-version :member-name
                                  "expectedVersion")
                                 (status-details :target-type details-map
                                  :member-name "statusDetails"))
                                (:shape-name "CancelJobExecutionRequest"))

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (reason-code :target-type reason-code
                                  :member-name "reasonCode")
                                 (comment :target-type comment :member-name
                                  "comment")
                                 (force :target-type force-flag :member-name
                                  "force" :http-query "force"))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-output cancel-job-response common-lisp:nil
                                 ((job-arn :target-type job-arn :member-name
                                   "jobArn")
                                  (job-id :target-type job-id :member-name
                                   "jobId")
                                  (description :target-type job-description
                                   :member-name "description"))
                                 (:shape-name "CancelJobResponse"))

(smithy/sdk/shapes:define-type canceled-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type canceled-findings-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type canceled-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum canned-access-control-list
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:aws-exec-read "aws-exec-read")
  (:authenticated-read "authenticated-read")
  (:bucket-owner-read "bucket-owner-read")
  (:bucket-owner-full-control "bucket-owner-full-control")
  (:log-delivery-write "log-delivery-write"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "certificateId")
                                     (status :target-type certificate-status
                                      :member-name "status")
                                     (certificate-mode :target-type
                                      certificate-mode :member-name
                                      "certificateMode")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-type certificate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error certificate-conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "CertificateConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure certificate-description common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "certificateId")
                                     (ca-certificate-id :target-type
                                      certificate-id :member-name
                                      "caCertificateId")
                                     (status :target-type certificate-status
                                      :member-name "status")
                                     (certificate-pem :target-type
                                      certificate-pem :member-name
                                      "certificatePem")
                                     (owned-by :target-type aws-account-id
                                      :member-name "ownedBy")
                                     (previous-owned-by :target-type
                                      aws-account-id :member-name
                                      "previousOwnedBy")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "lastModifiedDate")
                                     (customer-version :target-type
                                      customer-version :member-name
                                      "customerVersion")
                                     (transfer-data :target-type transfer-data
                                      :member-name "transferData")
                                     (generation-id :target-type generation-id
                                      :member-name "generationId")
                                     (validity :target-type
                                      certificate-validity :member-name
                                      "validity")
                                     (certificate-mode :target-type
                                      certificate-mode :member-name
                                      "certificateMode"))
                                    (:shape-name "CertificateDescription"))

(smithy/sdk/shapes:define-type certificate-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum certificate-mode
    common-lisp:nil
  (:default "DEFAULT")
  (:sni-only "SNI_ONLY"))

(smithy/sdk/shapes:define-type certificate-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-path-on-device
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-pem smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 certificate-provider-account-default-for-operations :member
 certificate-provider-operation)

(smithy/sdk/shapes:define-type certificate-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-provider-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum certificate-provider-operation
    common-lisp:nil
  (:create-certificate-from-csr "CreateCertificateFromCsr"))

(smithy/sdk/shapes:define-structure certificate-provider-summary
                                    common-lisp:nil
                                    ((certificate-provider-name :target-type
                                      certificate-provider-name :member-name
                                      "certificateProviderName")
                                     (certificate-provider-arn :target-type
                                      certificate-provider-arn :member-name
                                      "certificateProviderArn"))
                                    (:shape-name "CertificateProviderSummary"))

(smithy/sdk/shapes:define-list certificate-providers :member
                               certificate-provider-summary)

(smithy/sdk/shapes:define-type certificate-signing-request
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error certificate-state-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "CertificateStateException")
                                (:error-code 406))

(smithy/sdk/shapes:define-enum certificate-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:revoked "REVOKED")
  (:pending-transfer "PENDING_TRANSFER")
  (:register-inactive "REGISTER_INACTIVE")
  (:pending-activation "PENDING_ACTIVATION"))

(smithy/sdk/shapes:define-error certificate-validation-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "CertificateValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure certificate-validity common-lisp:nil
                                    ((not-before :target-type date-type
                                      :member-name "notBefore")
                                     (not-after :target-type date-type
                                      :member-name "notAfter"))
                                    (:shape-name "CertificateValidity"))

(smithy/sdk/shapes:define-list certificates :member certificate)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type check-compliant smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map check-custom-configuration :key config-name
                              :value config-value)

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cidrs :member cidr)

(smithy/sdk/shapes:define-input clear-default-authorizer-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "ClearDefaultAuthorizerRequest"))

(smithy/sdk/shapes:define-output clear-default-authorizer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ClearDefaultAuthorizerResponse"))

(smithy/sdk/shapes:define-type client-certificate-callback-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure client-certificate-config common-lisp:nil
                                    ((client-certificate-callback-arn
                                      :target-type
                                      client-certificate-callback-arn
                                      :member-name
                                      "clientCertificateCallbackArn"))
                                    (:shape-name "ClientCertificateConfig"))

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map client-properties :key string :value string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloudwatch-alarm-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (alarm-name :target-type alarm-name
                                      :required common-lisp:t :member-name
                                      "alarmName")
                                     (state-reason :target-type state-reason
                                      :required common-lisp:t :member-name
                                      "stateReason")
                                     (state-value :target-type state-value
                                      :required common-lisp:t :member-name
                                      "stateValue"))
                                    (:shape-name "CloudwatchAlarmAction"))

(smithy/sdk/shapes:define-structure cloudwatch-logs-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (log-group-name :target-type
                                      log-group-name :required common-lisp:t
                                      :member-name "logGroupName")
                                     (batch-mode :target-type batch-mode
                                      :member-name "batchMode"))
                                    (:shape-name "CloudwatchLogsAction"))

(smithy/sdk/shapes:define-structure cloudwatch-metric-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (metric-namespace :target-type string
                                      :required common-lisp:t :member-name
                                      "metricNamespace")
                                     (metric-name :target-type string :required
                                      common-lisp:t :member-name "metricName")
                                     (metric-value :target-type string
                                      :required common-lisp:t :member-name
                                      "metricValue")
                                     (metric-unit :target-type string :required
                                      common-lisp:t :member-name "metricUnit")
                                     (metric-timestamp :target-type string
                                      :member-name "metricTimestamp"))
                                    (:shape-name "CloudwatchMetricAction"))

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-signing common-lisp:nil
                                    ((aws-signer-job-id :target-type
                                      signing-job-id :member-name
                                      "awsSignerJobId")
                                     (start-signing-job-parameter :target-type
                                      start-signing-job-parameter :member-name
                                      "startSigningJobParameter")
                                     (custom-code-signing :target-type
                                      custom-code-signing :member-name
                                      "customCodeSigning"))
                                    (:shape-name "CodeSigning"))

(smithy/sdk/shapes:define-structure code-signing-certificate-chain
                                    common-lisp:nil
                                    ((certificate-name :target-type
                                      certificate-name :member-name
                                      "certificateName")
                                     (inline-document :target-type
                                      inline-document :member-name
                                      "inlineDocument"))
                                    (:shape-name "CodeSigningCertificateChain"))

(smithy/sdk/shapes:define-structure code-signing-signature common-lisp:nil
                                    ((inline-document :target-type signature
                                      :member-name "inlineDocument"))
                                    (:shape-name "CodeSigningSignature"))

(smithy/sdk/shapes:define-type cognito-identity-pool-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map command-execution-parameter-map :key
                              command-parameter-name :value
                              command-parameter-value)

(smithy/sdk/shapes:define-structure command-execution-result common-lisp:nil
                                    ((s :target-type
                                      string-command-execution-result
                                      :member-name "S")
                                     (b :target-type
                                      boolean-command-execution-result
                                      :member-name "B")
                                     (bin :target-type
                                      binary-command-execution-result
                                      :member-name "BIN"))
                                    (:shape-name "CommandExecutionResult"))

(smithy/sdk/shapes:define-map command-execution-result-map :key
                              command-execution-result-name :value
                              command-execution-result)

(smithy/sdk/shapes:define-type command-execution-result-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum command-execution-status
    common-lisp:nil
  (:created "CREATED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:rejected "REJECTED")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-structure command-execution-summary common-lisp:nil
                                    ((command-arn :target-type command-arn
                                      :member-name "commandArn")
                                     (execution-id :target-type
                                      command-execution-id :member-name
                                      "executionId")
                                     (target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (status :target-type
                                      command-execution-status :member-name
                                      "status")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (started-at :target-type date-type
                                      :member-name "startedAt")
                                     (completed-at :target-type date-type
                                      :member-name "completedAt"))
                                    (:shape-name "CommandExecutionSummary"))

(smithy/sdk/shapes:define-list command-execution-summary-list :member
                               command-execution-summary)

(smithy/sdk/shapes:define-type command-execution-timeout-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type command-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum command-namespace
    common-lisp:nil
  (:awsio-t "AWS-IoT")
  (:awsio-tfleet-wise "AWS-IoT-FleetWise"))

(smithy/sdk/shapes:define-structure command-parameter common-lisp:nil
                                    ((name :target-type command-parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type
                                      command-parameter-value :member-name
                                      "value")
                                     (default-value :target-type
                                      command-parameter-value :member-name
                                      "defaultValue")
                                     (description :target-type
                                      command-parameter-description
                                      :member-name "description"))
                                    (:shape-name "CommandParameter"))

(smithy/sdk/shapes:define-type command-parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list command-parameter-list :member command-parameter)

(smithy/sdk/shapes:define-type command-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure command-parameter-value common-lisp:nil
                                    ((s :target-type string-parameter-value
                                      :member-name "S")
                                     (b :target-type boolean-parameter-value
                                      :member-name "B")
                                     (i :target-type integer-parameter-value
                                      :member-name "I")
                                     (l :target-type long-parameter-value
                                      :member-name "L")
                                     (d :target-type double-parameter-value
                                      :member-name "D")
                                     (bin :target-type binary-parameter-value
                                      :member-name "BIN")
                                     (ul :target-type
                                      unsigned-long-parameter-value
                                      :member-name "UL"))
                                    (:shape-name "CommandParameterValue"))

(smithy/sdk/shapes:define-structure command-payload common-lisp:nil
                                    ((content :target-type command-payload-blob
                                      :member-name "content")
                                     (content-type :target-type mime-type
                                      :member-name "contentType"))
                                    (:shape-name "CommandPayload"))

(smithy/sdk/shapes:define-type command-payload-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure command-summary common-lisp:nil
                                    ((command-arn :target-type command-arn
                                      :member-name "commandArn")
                                     (command-id :target-type command-id
                                      :member-name "commandId")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (deprecated :target-type deprecation-flag
                                      :member-name "deprecated")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt")
                                     (pending-deletion :target-type
                                      boolean-wrapper-object :member-name
                                      "pendingDeletion"))
                                    (:shape-name "CommandSummary"))

(smithy/sdk/shapes:define-list command-summary-list :member command-summary)

(smithy/sdk/shapes:define-type comment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:less-than "less-than")
  (:less-than-equals "less-than-equals")
  (:greater-than "greater-than")
  (:greater-than-equals "greater-than-equals")
  (:in-cidr-set "in-cidr-set")
  (:not-in-cidr-set "not-in-cidr-set")
  (:in-port-set "in-port-set")
  (:not-in-port-set "not-in-port-set")
  (:in-set "in-set")
  (:not-in-set "not-in-set"))

(smithy/sdk/shapes:define-type compliant-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum confidence-level
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum config-name
    common-lisp:nil
  (:cert-age-threshold-in-days "CERT_AGE_THRESHOLD_IN_DAYS")
  (:cert-expiration-threshold-in-days "CERT_EXPIRATION_THRESHOLD_IN_DAYS"))

(smithy/sdk/shapes:define-type config-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "Enabled"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-structure configuration-details common-lisp:nil
                                    ((configuration-status :target-type
                                      configuration-status :member-name
                                      "configurationStatus")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "ConfigurationDetails"))

(smithy/sdk/shapes:define-enum configuration-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-input confirm-topic-rule-destination-request
                                common-lisp:nil
                                ((confirmation-token :target-type
                                  confirmation-token :required common-lisp:t
                                  :member-name "confirmationToken" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ConfirmTopicRuleDestinationRequest"))

(smithy/sdk/shapes:define-output confirm-topic-rule-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ConfirmTopicRuleDestinationResponse"))

(smithy/sdk/shapes:define-type confirmation-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conflicting-resource-update-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name
                                 "ConflictingResourceUpdateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type connection-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connectivity-api-thing-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connectivity-timestamp
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type consecutive-datapoints-to-alarm
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type consecutive-datapoints-to-clear
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type correlation-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-audit-suppression-request
                                common-lisp:nil
                                ((check-name :target-type audit-check-name
                                  :required common-lisp:t :member-name
                                  "checkName")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier")
                                 (expiration-date :target-type timestamp
                                  :member-name "expirationDate")
                                 (suppress-indefinitely :target-type
                                  suppress-indefinitely :member-name
                                  "suppressIndefinitely")
                                 (description :target-type audit-description
                                  :member-name "description")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken"))
                                (:shape-name "CreateAuditSuppressionRequest"))

(smithy/sdk/shapes:define-output create-audit-suppression-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateAuditSuppressionResponse"))

(smithy/sdk/shapes:define-input create-authorizer-request common-lisp:nil
                                ((authorizer-name :target-type authorizer-name
                                  :required common-lisp:t :member-name
                                  "authorizerName" :http-label common-lisp:t)
                                 (authorizer-function-arn :target-type
                                  authorizer-function-arn :required
                                  common-lisp:t :member-name
                                  "authorizerFunctionArn")
                                 (token-key-name :target-type token-key-name
                                  :member-name "tokenKeyName")
                                 (token-signing-public-keys :target-type
                                  public-key-map :member-name
                                  "tokenSigningPublicKeys")
                                 (status :target-type authorizer-status
                                  :member-name "status")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (signing-disabled :target-type boolean-key
                                  :member-name "signingDisabled")
                                 (enable-caching-for-http :target-type
                                  enable-caching-for-http :member-name
                                  "enableCachingForHttp"))
                                (:shape-name "CreateAuthorizerRequest"))

(smithy/sdk/shapes:define-output create-authorizer-response common-lisp:nil
                                 ((authorizer-name :target-type authorizer-name
                                   :member-name "authorizerName")
                                  (authorizer-arn :target-type authorizer-arn
                                   :member-name "authorizerArn"))
                                 (:shape-name "CreateAuthorizerResponse"))

(smithy/sdk/shapes:define-input create-billing-group-request common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :required common-lisp:t
                                  :member-name "billingGroupName" :http-label
                                  common-lisp:t)
                                 (billing-group-properties :target-type
                                  billing-group-properties :member-name
                                  "billingGroupProperties")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateBillingGroupRequest"))

(smithy/sdk/shapes:define-output create-billing-group-response common-lisp:nil
                                 ((billing-group-name :target-type
                                   billing-group-name :member-name
                                   "billingGroupName")
                                  (billing-group-arn :target-type
                                   billing-group-arn :member-name
                                   "billingGroupArn")
                                  (billing-group-id :target-type
                                   billing-group-id :member-name
                                   "billingGroupId"))
                                 (:shape-name "CreateBillingGroupResponse"))

(smithy/sdk/shapes:define-input create-certificate-from-csr-request
                                common-lisp:nil
                                ((certificate-signing-request :target-type
                                  certificate-signing-request :required
                                  common-lisp:t :member-name
                                  "certificateSigningRequest")
                                 (set-as-active :target-type set-as-active
                                  :member-name "setAsActive" :http-query
                                  "setAsActive"))
                                (:shape-name "CreateCertificateFromCsrRequest"))

(smithy/sdk/shapes:define-output create-certificate-from-csr-response
                                 common-lisp:nil
                                 ((certificate-arn :target-type certificate-arn
                                   :member-name "certificateArn")
                                  (certificate-id :target-type certificate-id
                                   :member-name "certificateId")
                                  (certificate-pem :target-type certificate-pem
                                   :member-name "certificatePem"))
                                 (:shape-name
                                  "CreateCertificateFromCsrResponse"))

(smithy/sdk/shapes:define-input create-certificate-provider-request
                                common-lisp:nil
                                ((certificate-provider-name :target-type
                                  certificate-provider-name :required
                                  common-lisp:t :member-name
                                  "certificateProviderName" :http-label
                                  common-lisp:t)
                                 (lambda-function-arn :target-type
                                  certificate-provider-function-arn :required
                                  common-lisp:t :member-name
                                  "lambdaFunctionArn")
                                 (account-default-for-operations :target-type
                                  certificate-provider-account-default-for-operations
                                  :required common-lisp:t :member-name
                                  "accountDefaultForOperations")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateCertificateProviderRequest"))

(smithy/sdk/shapes:define-output create-certificate-provider-response
                                 common-lisp:nil
                                 ((certificate-provider-name :target-type
                                   certificate-provider-name :member-name
                                   "certificateProviderName")
                                  (certificate-provider-arn :target-type
                                   certificate-provider-arn :member-name
                                   "certificateProviderArn"))
                                 (:shape-name
                                  "CreateCertificateProviderResponse"))

(smithy/sdk/shapes:define-input create-command-request common-lisp:nil
                                ((command-id :target-type command-id :required
                                  common-lisp:t :member-name "commandId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type command-namespace
                                  :member-name "namespace")
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (description :target-type command-description
                                  :member-name "description")
                                 (payload :target-type command-payload
                                  :member-name "payload")
                                 (mandatory-parameters :target-type
                                  command-parameter-list :member-name
                                  "mandatoryParameters")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateCommandRequest"))

(smithy/sdk/shapes:define-output create-command-response common-lisp:nil
                                 ((command-id :target-type command-id
                                   :member-name "commandId")
                                  (command-arn :target-type command-arn
                                   :member-name "commandArn"))
                                 (:shape-name "CreateCommandResponse"))

(smithy/sdk/shapes:define-input create-custom-metric-request common-lisp:nil
                                ((metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t)
                                 (display-name :target-type
                                  custom-metric-display-name :member-name
                                  "displayName")
                                 (metric-type :target-type custom-metric-type
                                  :required common-lisp:t :member-name
                                  "metricType")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken"))
                                (:shape-name "CreateCustomMetricRequest"))

(smithy/sdk/shapes:define-output create-custom-metric-response common-lisp:nil
                                 ((metric-name :target-type metric-name
                                   :member-name "metricName")
                                  (metric-arn :target-type custom-metric-arn
                                   :member-name "metricArn"))
                                 (:shape-name "CreateCustomMetricResponse"))

(smithy/sdk/shapes:define-input create-dimension-request common-lisp:nil
                                ((name :target-type dimension-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (type :target-type dimension-type :required
                                  common-lisp:t :member-name "type")
                                 (string-values :target-type
                                  dimension-string-values :required
                                  common-lisp:t :member-name "stringValues")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken"))
                                (:shape-name "CreateDimensionRequest"))

(smithy/sdk/shapes:define-output create-dimension-response common-lisp:nil
                                 ((name :target-type dimension-name
                                   :member-name "name")
                                  (arn :target-type dimension-arn :member-name
                                   "arn"))
                                 (:shape-name "CreateDimensionResponse"))

(smithy/sdk/shapes:define-input create-domain-configuration-request
                                common-lisp:nil
                                ((domain-configuration-name :target-type
                                  domain-configuration-name :required
                                  common-lisp:t :member-name
                                  "domainConfigurationName" :http-label
                                  common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :member-name "domainName")
                                 (server-certificate-arns :target-type
                                  server-certificate-arns :member-name
                                  "serverCertificateArns")
                                 (validation-certificate-arn :target-type
                                  acm-certificate-arn :member-name
                                  "validationCertificateArn")
                                 (authorizer-config :target-type
                                  authorizer-config :member-name
                                  "authorizerConfig")
                                 (service-type :target-type service-type
                                  :member-name "serviceType")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (tls-config :target-type tls-config
                                  :member-name "tlsConfig")
                                 (server-certificate-config :target-type
                                  server-certificate-config :member-name
                                  "serverCertificateConfig")
                                 (authentication-type :target-type
                                  authentication-type :member-name
                                  "authenticationType")
                                 (application-protocol :target-type
                                  application-protocol :member-name
                                  "applicationProtocol")
                                 (client-certificate-config :target-type
                                  client-certificate-config :member-name
                                  "clientCertificateConfig"))
                                (:shape-name
                                 "CreateDomainConfigurationRequest"))

(smithy/sdk/shapes:define-output create-domain-configuration-response
                                 common-lisp:nil
                                 ((domain-configuration-name :target-type
                                   domain-configuration-name :member-name
                                   "domainConfigurationName")
                                  (domain-configuration-arn :target-type
                                   domain-configuration-arn :member-name
                                   "domainConfigurationArn"))
                                 (:shape-name
                                  "CreateDomainConfigurationResponse"))

(smithy/sdk/shapes:define-input create-dynamic-thing-group-request
                                common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (thing-group-properties :target-type
                                  thing-group-properties :member-name
                                  "thingGroupProperties")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateDynamicThingGroupRequest"))

(smithy/sdk/shapes:define-output create-dynamic-thing-group-response
                                 common-lisp:nil
                                 ((thing-group-name :target-type
                                   thing-group-name :member-name
                                   "thingGroupName")
                                  (thing-group-arn :target-type thing-group-arn
                                   :member-name "thingGroupArn")
                                  (thing-group-id :target-type thing-group-id
                                   :member-name "thingGroupId")
                                  (index-name :target-type index-name
                                   :member-name "indexName")
                                  (query-string :target-type query-string
                                   :member-name "queryString")
                                  (query-version :target-type query-version
                                   :member-name "queryVersion"))
                                 (:shape-name
                                  "CreateDynamicThingGroupResponse"))

(smithy/sdk/shapes:define-input create-fleet-metric-request common-lisp:nil
                                ((metric-name :target-type fleet-metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t)
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (aggregation-type :target-type
                                  aggregation-type :required common-lisp:t
                                  :member-name "aggregationType")
                                 (period :target-type fleet-metric-period
                                  :required common-lisp:t :member-name
                                  "period")
                                 (aggregation-field :target-type
                                  aggregation-field :required common-lisp:t
                                  :member-name "aggregationField")
                                 (description :target-type
                                  fleet-metric-description :member-name
                                  "description")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (unit :target-type fleet-metric-unit
                                  :member-name "unit")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateFleetMetricRequest"))

(smithy/sdk/shapes:define-output create-fleet-metric-response common-lisp:nil
                                 ((metric-name :target-type fleet-metric-name
                                   :member-name "metricName")
                                  (metric-arn :target-type fleet-metric-arn
                                   :member-name "metricArn"))
                                 (:shape-name "CreateFleetMetricResponse"))

(smithy/sdk/shapes:define-input create-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (targets :target-type job-targets :required
                                  common-lisp:t :member-name "targets")
                                 (document-source :target-type
                                  job-document-source :member-name
                                  "documentSource")
                                 (document :target-type job-document
                                  :member-name "document")
                                 (description :target-type job-description
                                  :member-name "description")
                                 (presigned-url-config :target-type
                                  presigned-url-config :member-name
                                  "presignedUrlConfig")
                                 (target-selection :target-type
                                  target-selection :member-name
                                  "targetSelection")
                                 (job-executions-rollout-config :target-type
                                  job-executions-rollout-config :member-name
                                  "jobExecutionsRolloutConfig")
                                 (abort-config :target-type abort-config
                                  :member-name "abortConfig")
                                 (timeout-config :target-type timeout-config
                                  :member-name "timeoutConfig")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId")
                                 (job-template-arn :target-type
                                  job-template-arn :member-name
                                  "jobTemplateArn")
                                 (job-executions-retry-config :target-type
                                  job-executions-retry-config :member-name
                                  "jobExecutionsRetryConfig")
                                 (document-parameters :target-type
                                  parameter-map :member-name
                                  "documentParameters")
                                 (scheduling-config :target-type
                                  scheduling-config :member-name
                                  "schedulingConfig")
                                 (destination-package-versions :target-type
                                  destination-package-versions :member-name
                                  "destinationPackageVersions"))
                                (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-output create-job-response common-lisp:nil
                                 ((job-arn :target-type job-arn :member-name
                                   "jobArn")
                                  (job-id :target-type job-id :member-name
                                   "jobId")
                                  (description :target-type job-description
                                   :member-name "description"))
                                 (:shape-name "CreateJobResponse"))

(smithy/sdk/shapes:define-input create-job-template-request common-lisp:nil
                                ((job-template-id :target-type job-template-id
                                  :required common-lisp:t :member-name
                                  "jobTemplateId" :http-label common-lisp:t)
                                 (job-arn :target-type job-arn :member-name
                                  "jobArn")
                                 (document-source :target-type
                                  job-document-source :member-name
                                  "documentSource")
                                 (document :target-type job-document
                                  :member-name "document")
                                 (description :target-type job-description
                                  :required common-lisp:t :member-name
                                  "description")
                                 (presigned-url-config :target-type
                                  presigned-url-config :member-name
                                  "presignedUrlConfig")
                                 (job-executions-rollout-config :target-type
                                  job-executions-rollout-config :member-name
                                  "jobExecutionsRolloutConfig")
                                 (abort-config :target-type abort-config
                                  :member-name "abortConfig")
                                 (timeout-config :target-type timeout-config
                                  :member-name "timeoutConfig")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (job-executions-retry-config :target-type
                                  job-executions-retry-config :member-name
                                  "jobExecutionsRetryConfig")
                                 (maintenance-windows :target-type
                                  maintenance-windows :member-name
                                  "maintenanceWindows")
                                 (destination-package-versions :target-type
                                  destination-package-versions :member-name
                                  "destinationPackageVersions"))
                                (:shape-name "CreateJobTemplateRequest"))

(smithy/sdk/shapes:define-output create-job-template-response common-lisp:nil
                                 ((job-template-arn :target-type
                                   job-template-arn :member-name
                                   "jobTemplateArn")
                                  (job-template-id :target-type job-template-id
                                   :member-name "jobTemplateId"))
                                 (:shape-name "CreateJobTemplateResponse"))

(smithy/sdk/shapes:define-input create-keys-and-certificate-request
                                common-lisp:nil
                                ((set-as-active :target-type set-as-active
                                  :member-name "setAsActive" :http-query
                                  "setAsActive"))
                                (:shape-name "CreateKeysAndCertificateRequest"))

(smithy/sdk/shapes:define-output create-keys-and-certificate-response
                                 common-lisp:nil
                                 ((certificate-arn :target-type certificate-arn
                                   :member-name "certificateArn")
                                  (certificate-id :target-type certificate-id
                                   :member-name "certificateId")
                                  (certificate-pem :target-type certificate-pem
                                   :member-name "certificatePem")
                                  (key-pair :target-type key-pair :member-name
                                   "keyPair"))
                                 (:shape-name
                                  "CreateKeysAndCertificateResponse"))

(smithy/sdk/shapes:define-input create-mitigation-action-request
                                common-lisp:nil
                                ((action-name :target-type
                                  mitigation-action-name :required
                                  common-lisp:t :member-name "actionName"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (action-params :target-type
                                  mitigation-action-params :required
                                  common-lisp:t :member-name "actionParams")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateMitigationActionRequest"))

(smithy/sdk/shapes:define-output create-mitigation-action-response
                                 common-lisp:nil
                                 ((action-arn :target-type
                                   mitigation-action-arn :member-name
                                   "actionArn")
                                  (action-id :target-type mitigation-action-id
                                   :member-name "actionId"))
                                 (:shape-name "CreateMitigationActionResponse"))

(smithy/sdk/shapes:define-input create-otaupdate-request common-lisp:nil
                                ((ota-update-id :target-type otaupdate-id
                                  :required common-lisp:t :member-name
                                  "otaUpdateId" :http-label common-lisp:t)
                                 (description :target-type
                                  otaupdate-description :member-name
                                  "description")
                                 (targets :target-type targets :required
                                  common-lisp:t :member-name "targets")
                                 (protocols :target-type protocols :member-name
                                  "protocols")
                                 (target-selection :target-type
                                  target-selection :member-name
                                  "targetSelection")
                                 (aws-job-executions-rollout-config
                                  :target-type
                                  aws-job-executions-rollout-config
                                  :member-name "awsJobExecutionsRolloutConfig")
                                 (aws-job-presigned-url-config :target-type
                                  aws-job-presigned-url-config :member-name
                                  "awsJobPresignedUrlConfig")
                                 (aws-job-abort-config :target-type
                                  aws-job-abort-config :member-name
                                  "awsJobAbortConfig")
                                 (aws-job-timeout-config :target-type
                                  aws-job-timeout-config :member-name
                                  "awsJobTimeoutConfig")
                                 (files :target-type otaupdate-files :required
                                  common-lisp:t :member-name "files")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (additional-parameters :target-type
                                  additional-parameter-map :member-name
                                  "additionalParameters")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateOTAUpdateRequest"))

(smithy/sdk/shapes:define-output create-otaupdate-response common-lisp:nil
                                 ((ota-update-id :target-type otaupdate-id
                                   :member-name "otaUpdateId")
                                  (aws-iot-job-id :target-type aws-iot-job-id
                                   :member-name "awsIotJobId")
                                  (ota-update-arn :target-type otaupdate-arn
                                   :member-name "otaUpdateArn")
                                  (aws-iot-job-arn :target-type aws-iot-job-arn
                                   :member-name "awsIotJobArn")
                                  (ota-update-status :target-type
                                   otaupdate-status :member-name
                                   "otaUpdateStatus"))
                                 (:shape-name "CreateOTAUpdateResponse"))

(smithy/sdk/shapes:define-input create-package-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "CreatePackageRequest"))

(smithy/sdk/shapes:define-output create-package-response common-lisp:nil
                                 ((package-name :target-type package-name
                                   :member-name "packageName")
                                  (package-arn :target-type package-arn
                                   :member-name "packageArn")
                                  (description :target-type
                                   resource-description :member-name
                                   "description"))
                                 (:shape-name "CreatePackageResponse"))

(smithy/sdk/shapes:define-input create-package-version-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (attributes :target-type resource-attributes
                                  :member-name "attributes")
                                 (artifact :target-type
                                  package-version-artifact :member-name
                                  "artifact")
                                 (recipe :target-type package-version-recipe
                                  :member-name "recipe")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "CreatePackageVersionRequest"))

(smithy/sdk/shapes:define-output create-package-version-response
                                 common-lisp:nil
                                 ((package-version-arn :target-type
                                   package-version-arn :member-name
                                   "packageVersionArn")
                                  (package-name :target-type package-name
                                   :member-name "packageName")
                                  (version-name :target-type version-name
                                   :member-name "versionName")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (attributes :target-type resource-attributes
                                   :member-name "attributes")
                                  (status :target-type package-version-status
                                   :member-name "status")
                                  (error-reason :target-type
                                   package-version-error-reason :member-name
                                   "errorReason"))
                                 (:shape-name "CreatePackageVersionResponse"))

(smithy/sdk/shapes:define-input create-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (policy-document :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "policyDocument")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePolicyRequest"))

(smithy/sdk/shapes:define-output create-policy-response common-lisp:nil
                                 ((policy-name :target-type policy-name
                                   :member-name "policyName")
                                  (policy-arn :target-type policy-arn
                                   :member-name "policyArn")
                                  (policy-document :target-type policy-document
                                   :member-name "policyDocument")
                                  (policy-version-id :target-type
                                   policy-version-id :member-name
                                   "policyVersionId"))
                                 (:shape-name "CreatePolicyResponse"))

(smithy/sdk/shapes:define-input create-policy-version-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (policy-document :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "policyDocument")
                                 (set-as-default :target-type set-as-default
                                  :member-name "setAsDefault" :http-query
                                  "setAsDefault"))
                                (:shape-name "CreatePolicyVersionRequest"))

(smithy/sdk/shapes:define-output create-policy-version-response common-lisp:nil
                                 ((policy-arn :target-type policy-arn
                                   :member-name "policyArn")
                                  (policy-document :target-type policy-document
                                   :member-name "policyDocument")
                                  (policy-version-id :target-type
                                   policy-version-id :member-name
                                   "policyVersionId")
                                  (is-default-version :target-type
                                   is-default-version :member-name
                                   "isDefaultVersion"))
                                 (:shape-name "CreatePolicyVersionResponse"))

(smithy/sdk/shapes:define-input create-provisioning-claim-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t))
                                (:shape-name "CreateProvisioningClaimRequest"))

(smithy/sdk/shapes:define-output create-provisioning-claim-response
                                 common-lisp:nil
                                 ((certificate-id :target-type certificate-id
                                   :member-name "certificateId")
                                  (certificate-pem :target-type certificate-pem
                                   :member-name "certificatePem")
                                  (key-pair :target-type key-pair :member-name
                                   "keyPair")
                                  (expiration :target-type date-type
                                   :member-name "expiration"))
                                 (:shape-name
                                  "CreateProvisioningClaimResponse"))

(smithy/sdk/shapes:define-input create-provisioning-template-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName")
                                 (description :target-type template-description
                                  :member-name "description")
                                 (template-body :target-type template-body
                                  :required common-lisp:t :member-name
                                  "templateBody")
                                 (enabled :target-type enabled2 :member-name
                                  "enabled")
                                 (provisioning-role-arn :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "provisioningRoleArn")
                                 (pre-provisioning-hook :target-type
                                  provisioning-hook :member-name
                                  "preProvisioningHook")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (type :target-type template-type :member-name
                                  "type"))
                                (:shape-name
                                 "CreateProvisioningTemplateRequest"))

(smithy/sdk/shapes:define-output create-provisioning-template-response
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "templateArn")
                                  (template-name :target-type template-name
                                   :member-name "templateName")
                                  (default-version-id :target-type
                                   template-version-id :member-name
                                   "defaultVersionId"))
                                 (:shape-name
                                  "CreateProvisioningTemplateResponse"))

(smithy/sdk/shapes:define-input create-provisioning-template-version-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t)
                                 (template-body :target-type template-body
                                  :required common-lisp:t :member-name
                                  "templateBody")
                                 (set-as-default :target-type set-as-default
                                  :member-name "setAsDefault" :http-query
                                  "setAsDefault"))
                                (:shape-name
                                 "CreateProvisioningTemplateVersionRequest"))

(smithy/sdk/shapes:define-output create-provisioning-template-version-response
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "templateArn")
                                  (template-name :target-type template-name
                                   :member-name "templateName")
                                  (version-id :target-type template-version-id
                                   :member-name "versionId")
                                  (is-default-version :target-type
                                   is-default-version :member-name
                                   "isDefaultVersion"))
                                 (:shape-name
                                  "CreateProvisioningTemplateVersionResponse"))

(smithy/sdk/shapes:define-input create-role-alias-request common-lisp:nil
                                ((role-alias :target-type role-alias :required
                                  common-lisp:t :member-name "roleAlias"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (credential-duration-seconds :target-type
                                  credential-duration-seconds :member-name
                                  "credentialDurationSeconds")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateRoleAliasRequest"))

(smithy/sdk/shapes:define-output create-role-alias-response common-lisp:nil
                                 ((role-alias :target-type role-alias
                                   :member-name "roleAlias")
                                  (role-alias-arn :target-type role-alias-arn
                                   :member-name "roleAliasArn"))
                                 (:shape-name "CreateRoleAliasResponse"))

(smithy/sdk/shapes:define-input create-scheduled-audit-request common-lisp:nil
                                ((frequency :target-type audit-frequency
                                  :required common-lisp:t :member-name
                                  "frequency")
                                 (day-of-month :target-type day-of-month
                                  :member-name "dayOfMonth")
                                 (day-of-week :target-type day-of-week
                                  :member-name "dayOfWeek")
                                 (target-check-names :target-type
                                  target-audit-check-names :required
                                  common-lisp:t :member-name
                                  "targetCheckNames")
                                 (scheduled-audit-name :target-type
                                  scheduled-audit-name :required common-lisp:t
                                  :member-name "scheduledAuditName" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateScheduledAuditRequest"))

(smithy/sdk/shapes:define-output create-scheduled-audit-response
                                 common-lisp:nil
                                 ((scheduled-audit-arn :target-type
                                   scheduled-audit-arn :member-name
                                   "scheduledAuditArn"))
                                 (:shape-name "CreateScheduledAuditResponse"))

(smithy/sdk/shapes:define-input create-security-profile-request common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t)
                                 (security-profile-description :target-type
                                  security-profile-description :member-name
                                  "securityProfileDescription")
                                 (behaviors :target-type behaviors :member-name
                                  "behaviors")
                                 (alert-targets :target-type alert-targets
                                  :member-name "alertTargets")
                                 (additional-metrics-to-retain :target-type
                                  additional-metrics-to-retain-list
                                  :member-name "additionalMetricsToRetain")
                                 (additional-metrics-to-retain-v2 :target-type
                                  additional-metrics-to-retain-v2list
                                  :member-name "additionalMetricsToRetainV2")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (metrics-export-config :target-type
                                  metrics-export-config :member-name
                                  "metricsExportConfig"))
                                (:shape-name "CreateSecurityProfileRequest"))

(smithy/sdk/shapes:define-output create-security-profile-response
                                 common-lisp:nil
                                 ((security-profile-name :target-type
                                   security-profile-name :member-name
                                   "securityProfileName")
                                  (security-profile-arn :target-type
                                   security-profile-arn :member-name
                                   "securityProfileArn"))
                                 (:shape-name "CreateSecurityProfileResponse"))

(smithy/sdk/shapes:define-input create-stream-request common-lisp:nil
                                ((stream-id :target-type stream-id :required
                                  common-lisp:t :member-name "streamId"
                                  :http-label common-lisp:t)
                                 (description :target-type stream-description
                                  :member-name "description")
                                 (files :target-type stream-files :required
                                  common-lisp:t :member-name "files")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateStreamRequest"))

(smithy/sdk/shapes:define-output create-stream-response common-lisp:nil
                                 ((stream-id :target-type stream-id
                                   :member-name "streamId")
                                  (stream-arn :target-type stream-arn
                                   :member-name "streamArn")
                                  (description :target-type stream-description
                                   :member-name "description")
                                  (stream-version :target-type stream-version
                                   :member-name "streamVersion"))
                                 (:shape-name "CreateStreamResponse"))

(smithy/sdk/shapes:define-input create-thing-group-request common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (parent-group-name :target-type
                                  thing-group-name :member-name
                                  "parentGroupName")
                                 (thing-group-properties :target-type
                                  thing-group-properties :member-name
                                  "thingGroupProperties")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateThingGroupRequest"))

(smithy/sdk/shapes:define-output create-thing-group-response common-lisp:nil
                                 ((thing-group-name :target-type
                                   thing-group-name :member-name
                                   "thingGroupName")
                                  (thing-group-arn :target-type thing-group-arn
                                   :member-name "thingGroupArn")
                                  (thing-group-id :target-type thing-group-id
                                   :member-name "thingGroupId"))
                                 (:shape-name "CreateThingGroupResponse"))

(smithy/sdk/shapes:define-input create-thing-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (thing-type-name :target-type thing-type-name
                                  :member-name "thingTypeName")
                                 (attribute-payload :target-type
                                  attribute-payload :member-name
                                  "attributePayload")
                                 (billing-group-name :target-type
                                  billing-group-name :member-name
                                  "billingGroupName"))
                                (:shape-name "CreateThingRequest"))

(smithy/sdk/shapes:define-output create-thing-response common-lisp:nil
                                 ((thing-name :target-type thing-name
                                   :member-name "thingName")
                                  (thing-arn :target-type thing-arn
                                   :member-name "thingArn")
                                  (thing-id :target-type thing-id :member-name
                                   "thingId"))
                                 (:shape-name "CreateThingResponse"))

(smithy/sdk/shapes:define-input create-thing-type-request common-lisp:nil
                                ((thing-type-name :target-type thing-type-name
                                  :required common-lisp:t :member-name
                                  "thingTypeName" :http-label common-lisp:t)
                                 (thing-type-properties :target-type
                                  thing-type-properties :member-name
                                  "thingTypeProperties")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateThingTypeRequest"))

(smithy/sdk/shapes:define-output create-thing-type-response common-lisp:nil
                                 ((thing-type-name :target-type thing-type-name
                                   :member-name "thingTypeName")
                                  (thing-type-arn :target-type thing-type-arn
                                   :member-name "thingTypeArn")
                                  (thing-type-id :target-type thing-type-id
                                   :member-name "thingTypeId"))
                                 (:shape-name "CreateThingTypeResponse"))

(smithy/sdk/shapes:define-input create-topic-rule-destination-request
                                common-lisp:nil
                                ((destination-configuration :target-type
                                  topic-rule-destination-configuration
                                  :required common-lisp:t :member-name
                                  "destinationConfiguration"))
                                (:shape-name
                                 "CreateTopicRuleDestinationRequest"))

(smithy/sdk/shapes:define-output create-topic-rule-destination-response
                                 common-lisp:nil
                                 ((topic-rule-destination :target-type
                                   topic-rule-destination :member-name
                                   "topicRuleDestination"))
                                 (:shape-name
                                  "CreateTopicRuleDestinationResponse"))

(smithy/sdk/shapes:define-input create-topic-rule-request common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "ruleName"
                                  :http-label common-lisp:t)
                                 (topic-rule-payload :target-type
                                  topic-rule-payload :required common-lisp:t
                                  :member-name "topicRulePayload" :http-payload
                                  common-lisp:t)
                                 (tags :target-type string :member-name "tags"
                                  :http-header "x-amz-tagging"))
                                (:shape-name "CreateTopicRuleRequest"))

(smithy/sdk/shapes:define-type created-at-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type credential-duration-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type cron-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-code-signing common-lisp:nil
                                    ((signature :target-type
                                      code-signing-signature :member-name
                                      "signature")
                                     (certificate-chain :target-type
                                      code-signing-certificate-chain
                                      :member-name "certificateChain")
                                     (hash-algorithm :target-type
                                      hash-algorithm :member-name
                                      "hashAlgorithm")
                                     (signature-algorithm :target-type
                                      signature-algorithm :member-name
                                      "signatureAlgorithm"))
                                    (:shape-name "CustomCodeSigning"))

(smithy/sdk/shapes:define-type custom-metric-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-metric-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum custom-metric-type
    common-lisp:nil
  (:string-list "string-list")
  (:ip-address-list "ip-address-list")
  (:number-list "number-list")
  (:number "number"))

(smithy/sdk/shapes:define-type customer-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-collection-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type day-of-month smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:sun "SUN")
  (:mon "MON")
  (:tue "TUE")
  (:wed "WED")
  (:thu "THU")
  (:fri "FRI")
  (:sat "SAT"))

(smithy/sdk/shapes:define-input delete-account-audit-configuration-request
                                common-lisp:nil
                                ((delete-scheduled-audits :target-type
                                  delete-scheduled-audits :member-name
                                  "deleteScheduledAudits" :http-query
                                  "deleteScheduledAudits"))
                                (:shape-name
                                 "DeleteAccountAuditConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-account-audit-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAccountAuditConfigurationResponse"))

(smithy/sdk/shapes:define-type delete-additional-metrics-to-retain
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type delete-alert-targets
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-audit-suppression-request
                                common-lisp:nil
                                ((check-name :target-type audit-check-name
                                  :required common-lisp:t :member-name
                                  "checkName")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier"))
                                (:shape-name "DeleteAuditSuppressionRequest"))

(smithy/sdk/shapes:define-output delete-audit-suppression-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAuditSuppressionResponse"))

(smithy/sdk/shapes:define-input delete-authorizer-request common-lisp:nil
                                ((authorizer-name :target-type authorizer-name
                                  :required common-lisp:t :member-name
                                  "authorizerName" :http-label common-lisp:t))
                                (:shape-name "DeleteAuthorizerRequest"))

(smithy/sdk/shapes:define-output delete-authorizer-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAuthorizerResponse"))

(smithy/sdk/shapes:define-type delete-behaviors smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-billing-group-request common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :required common-lisp:t
                                  :member-name "billingGroupName" :http-label
                                  common-lisp:t)
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion"))
                                (:shape-name "DeleteBillingGroupRequest"))

(smithy/sdk/shapes:define-output delete-billing-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBillingGroupResponse"))

(smithy/sdk/shapes:define-input delete-cacertificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t))
                                (:shape-name "DeleteCACertificateRequest"))

(smithy/sdk/shapes:define-output delete-cacertificate-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCACertificateResponse"))

(smithy/sdk/shapes:define-input delete-certificate-provider-request
                                common-lisp:nil
                                ((certificate-provider-name :target-type
                                  certificate-provider-name :required
                                  common-lisp:t :member-name
                                  "certificateProviderName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteCertificateProviderRequest"))

(smithy/sdk/shapes:define-output delete-certificate-provider-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCertificateProviderResponse"))

(smithy/sdk/shapes:define-input delete-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t)
                                 (force-delete :target-type force-delete
                                  :member-name "forceDelete" :http-query
                                  "forceDelete"))
                                (:shape-name "DeleteCertificateRequest"))

(smithy/sdk/shapes:define-input delete-command-execution-request
                                common-lisp:nil
                                ((execution-id :target-type
                                  command-execution-id :required common-lisp:t
                                  :member-name "executionId" :http-label
                                  common-lisp:t)
                                 (target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "targetArn"
                                  :http-query "targetArn"))
                                (:shape-name "DeleteCommandExecutionRequest"))

(smithy/sdk/shapes:define-output delete-command-execution-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCommandExecutionResponse"))

(smithy/sdk/shapes:define-input delete-command-request common-lisp:nil
                                ((command-id :target-type command-id :required
                                  common-lisp:t :member-name "commandId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteCommandRequest"))

(smithy/sdk/shapes:define-output delete-command-response common-lisp:nil
                                 ((status-code :target-type status-code
                                   :member-name "statusCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name "DeleteCommandResponse"))

(smithy/sdk/shapes:define-error delete-conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "DeleteConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input delete-custom-metric-request common-lisp:nil
                                ((metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t))
                                (:shape-name "DeleteCustomMetricRequest"))

(smithy/sdk/shapes:define-output delete-custom-metric-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCustomMetricResponse"))

(smithy/sdk/shapes:define-input delete-dimension-request common-lisp:nil
                                ((name :target-type dimension-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDimensionRequest"))

(smithy/sdk/shapes:define-output delete-dimension-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDimensionResponse"))

(smithy/sdk/shapes:define-input delete-domain-configuration-request
                                common-lisp:nil
                                ((domain-configuration-name :target-type
                                  domain-configuration-name :required
                                  common-lisp:t :member-name
                                  "domainConfigurationName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteDomainConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-domain-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteDomainConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-dynamic-thing-group-request
                                common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion"))
                                (:shape-name "DeleteDynamicThingGroupRequest"))

(smithy/sdk/shapes:define-output delete-dynamic-thing-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteDynamicThingGroupResponse"))

(smithy/sdk/shapes:define-input delete-fleet-metric-request common-lisp:nil
                                ((metric-name :target-type fleet-metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t)
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion"))
                                (:shape-name "DeleteFleetMetricRequest"))

(smithy/sdk/shapes:define-input delete-job-execution-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (execution-number :target-type
                                  execution-number :required common-lisp:t
                                  :member-name "executionNumber" :http-label
                                  common-lisp:t)
                                 (force :target-type force-flag :member-name
                                  "force" :http-query "force")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId" :http-query
                                  "namespaceId"))
                                (:shape-name "DeleteJobExecutionRequest"))

(smithy/sdk/shapes:define-input delete-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (force :target-type force-flag :member-name
                                  "force" :http-query "force")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId" :http-query
                                  "namespaceId"))
                                (:shape-name "DeleteJobRequest"))

(smithy/sdk/shapes:define-input delete-job-template-request common-lisp:nil
                                ((job-template-id :target-type job-template-id
                                  :required common-lisp:t :member-name
                                  "jobTemplateId" :http-label common-lisp:t))
                                (:shape-name "DeleteJobTemplateRequest"))

(smithy/sdk/shapes:define-type delete-metrics-export-config
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-mitigation-action-request
                                common-lisp:nil
                                ((action-name :target-type
                                  mitigation-action-name :required
                                  common-lisp:t :member-name "actionName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMitigationActionRequest"))

(smithy/sdk/shapes:define-output delete-mitigation-action-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteMitigationActionResponse"))

(smithy/sdk/shapes:define-input delete-otaupdate-request common-lisp:nil
                                ((ota-update-id :target-type otaupdate-id
                                  :required common-lisp:t :member-name
                                  "otaUpdateId" :http-label common-lisp:t)
                                 (delete-stream :target-type delete-stream
                                  :member-name "deleteStream" :http-query
                                  "deleteStream")
                                 (force-delete-awsjob :target-type
                                  force-delete-awsjob :member-name
                                  "forceDeleteAWSJob" :http-query
                                  "forceDeleteAWSJob"))
                                (:shape-name "DeleteOTAUpdateRequest"))

(smithy/sdk/shapes:define-output delete-otaupdate-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteOTAUpdateResponse"))

(smithy/sdk/shapes:define-input delete-package-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeletePackageRequest"))

(smithy/sdk/shapes:define-output delete-package-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePackageResponse"))

(smithy/sdk/shapes:define-input delete-package-version-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeletePackageVersionRequest"))

(smithy/sdk/shapes:define-output delete-package-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeletePackageVersionResponse"))

(smithy/sdk/shapes:define-input delete-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t))
                                (:shape-name "DeletePolicyRequest"))

(smithy/sdk/shapes:define-input delete-policy-version-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (policy-version-id :target-type
                                  policy-version-id :required common-lisp:t
                                  :member-name "policyVersionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeletePolicyVersionRequest"))

(smithy/sdk/shapes:define-input delete-provisioning-template-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteProvisioningTemplateRequest"))

(smithy/sdk/shapes:define-output delete-provisioning-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteProvisioningTemplateResponse"))

(smithy/sdk/shapes:define-input delete-provisioning-template-version-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t)
                                 (version-id :target-type template-version-id
                                  :required common-lisp:t :member-name
                                  "versionId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteProvisioningTemplateVersionRequest"))

(smithy/sdk/shapes:define-output delete-provisioning-template-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteProvisioningTemplateVersionResponse"))

(smithy/sdk/shapes:define-input delete-registration-code-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DeleteRegistrationCodeRequest"))

(smithy/sdk/shapes:define-output delete-registration-code-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteRegistrationCodeResponse"))

(smithy/sdk/shapes:define-input delete-role-alias-request common-lisp:nil
                                ((role-alias :target-type role-alias :required
                                  common-lisp:t :member-name "roleAlias"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRoleAliasRequest"))

(smithy/sdk/shapes:define-output delete-role-alias-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRoleAliasResponse"))

(smithy/sdk/shapes:define-input delete-scheduled-audit-request common-lisp:nil
                                ((scheduled-audit-name :target-type
                                  scheduled-audit-name :required common-lisp:t
                                  :member-name "scheduledAuditName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteScheduledAuditRequest"))

(smithy/sdk/shapes:define-output delete-scheduled-audit-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteScheduledAuditResponse"))

(smithy/sdk/shapes:define-type delete-scheduled-audits
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-security-profile-request common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t)
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion"))
                                (:shape-name "DeleteSecurityProfileRequest"))

(smithy/sdk/shapes:define-output delete-security-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSecurityProfileResponse"))

(smithy/sdk/shapes:define-input delete-stream-request common-lisp:nil
                                ((stream-id :target-type stream-id :required
                                  common-lisp:t :member-name "streamId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteStreamRequest"))

(smithy/sdk/shapes:define-output delete-stream-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteStreamResponse"))

(smithy/sdk/shapes:define-type delete-stream smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-thing-group-request common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion"))
                                (:shape-name "DeleteThingGroupRequest"))

(smithy/sdk/shapes:define-output delete-thing-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteThingGroupResponse"))

(smithy/sdk/shapes:define-input delete-thing-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion"))
                                (:shape-name "DeleteThingRequest"))

(smithy/sdk/shapes:define-output delete-thing-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteThingResponse"))

(smithy/sdk/shapes:define-input delete-thing-type-request common-lisp:nil
                                ((thing-type-name :target-type thing-type-name
                                  :required common-lisp:t :member-name
                                  "thingTypeName" :http-label common-lisp:t))
                                (:shape-name "DeleteThingTypeRequest"))

(smithy/sdk/shapes:define-output delete-thing-type-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteThingTypeResponse"))

(smithy/sdk/shapes:define-input delete-topic-rule-destination-request
                                common-lisp:nil
                                ((arn :target-type aws-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteTopicRuleDestinationRequest"))

(smithy/sdk/shapes:define-output delete-topic-rule-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTopicRuleDestinationResponse"))

(smithy/sdk/shapes:define-input delete-topic-rule-request common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "ruleName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteTopicRuleRequest"))

(smithy/sdk/shapes:define-input delete-v2logging-level-request common-lisp:nil
                                ((target-type :target-type log-target-type
                                  :required common-lisp:t :member-name
                                  "targetType" :http-query "targetType")
                                 (target-name :target-type log-target-name
                                  :required common-lisp:t :member-name
                                  "targetName" :http-query "targetName"))
                                (:shape-name "DeleteV2LoggingLevelRequest"))

(smithy/sdk/shapes:define-type delivery-stream-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure denied common-lisp:nil
                                    ((implicit-deny :target-type implicit-deny
                                      :member-name "implicitDeny")
                                     (explicit-deny :target-type explicit-deny
                                      :member-name "explicitDeny"))
                                    (:shape-name "Denied"))

(smithy/sdk/shapes:define-input deprecate-thing-type-request common-lisp:nil
                                ((thing-type-name :target-type thing-type-name
                                  :required common-lisp:t :member-name
                                  "thingTypeName" :http-label common-lisp:t)
                                 (undo-deprecate :target-type undo-deprecate
                                  :member-name "undoDeprecate"))
                                (:shape-name "DeprecateThingTypeRequest"))

(smithy/sdk/shapes:define-output deprecate-thing-type-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeprecateThingTypeResponse"))

(smithy/sdk/shapes:define-type deprecation-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type deprecation-flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input describe-account-audit-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeAccountAuditConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-account-audit-configuration-response
                                 common-lisp:nil
                                 ((role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (audit-notification-target-configurations
                                   :target-type
                                   audit-notification-target-configurations
                                   :member-name
                                   "auditNotificationTargetConfigurations")
                                  (audit-check-configurations :target-type
                                   audit-check-configurations :member-name
                                   "auditCheckConfigurations"))
                                 (:shape-name
                                  "DescribeAccountAuditConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-audit-finding-request common-lisp:nil
                                ((finding-id :target-type finding-id :required
                                  common-lisp:t :member-name "findingId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeAuditFindingRequest"))

(smithy/sdk/shapes:define-output describe-audit-finding-response
                                 common-lisp:nil
                                 ((finding :target-type audit-finding
                                   :member-name "finding"))
                                 (:shape-name "DescribeAuditFindingResponse"))

(smithy/sdk/shapes:define-input describe-audit-mitigation-actions-task-request
                                common-lisp:nil
                                ((task-id :target-type
                                  mitigation-actions-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeAuditMitigationActionsTaskRequest"))

(smithy/sdk/shapes:define-output
 describe-audit-mitigation-actions-task-response common-lisp:nil
 ((task-status :target-type audit-mitigation-actions-task-status :member-name
   "taskStatus")
  (start-time :target-type timestamp :member-name "startTime")
  (end-time :target-type timestamp :member-name "endTime")
  (task-statistics :target-type audit-mitigation-actions-task-statistics
   :member-name "taskStatistics")
  (target :target-type audit-mitigation-actions-task-target :member-name
   "target")
  (audit-check-to-actions-mapping :target-type audit-check-to-actions-mapping
   :member-name "auditCheckToActionsMapping")
  (actions-definition :target-type mitigation-action-list :member-name
   "actionsDefinition"))
 (:shape-name "DescribeAuditMitigationActionsTaskResponse"))

(smithy/sdk/shapes:define-input describe-audit-suppression-request
                                common-lisp:nil
                                ((check-name :target-type audit-check-name
                                  :required common-lisp:t :member-name
                                  "checkName")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier"))
                                (:shape-name "DescribeAuditSuppressionRequest"))

(smithy/sdk/shapes:define-output describe-audit-suppression-response
                                 common-lisp:nil
                                 ((check-name :target-type audit-check-name
                                   :member-name "checkName")
                                  (resource-identifier :target-type
                                   resource-identifier :member-name
                                   "resourceIdentifier")
                                  (expiration-date :target-type timestamp
                                   :member-name "expirationDate")
                                  (suppress-indefinitely :target-type
                                   suppress-indefinitely :member-name
                                   "suppressIndefinitely")
                                  (description :target-type audit-description
                                   :member-name "description"))
                                 (:shape-name
                                  "DescribeAuditSuppressionResponse"))

(smithy/sdk/shapes:define-input describe-audit-task-request common-lisp:nil
                                ((task-id :target-type audit-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeAuditTaskRequest"))

(smithy/sdk/shapes:define-output describe-audit-task-response common-lisp:nil
                                 ((task-status :target-type audit-task-status
                                   :member-name "taskStatus")
                                  (task-type :target-type audit-task-type
                                   :member-name "taskType")
                                  (task-start-time :target-type timestamp
                                   :member-name "taskStartTime")
                                  (task-statistics :target-type task-statistics
                                   :member-name "taskStatistics")
                                  (scheduled-audit-name :target-type
                                   scheduled-audit-name :member-name
                                   "scheduledAuditName")
                                  (audit-details :target-type audit-details
                                   :member-name "auditDetails"))
                                 (:shape-name "DescribeAuditTaskResponse"))

(smithy/sdk/shapes:define-input describe-authorizer-request common-lisp:nil
                                ((authorizer-name :target-type authorizer-name
                                  :required common-lisp:t :member-name
                                  "authorizerName" :http-label common-lisp:t))
                                (:shape-name "DescribeAuthorizerRequest"))

(smithy/sdk/shapes:define-output describe-authorizer-response common-lisp:nil
                                 ((authorizer-description :target-type
                                   authorizer-description :member-name
                                   "authorizerDescription"))
                                 (:shape-name "DescribeAuthorizerResponse"))

(smithy/sdk/shapes:define-input describe-billing-group-request common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :required common-lisp:t
                                  :member-name "billingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeBillingGroupRequest"))

(smithy/sdk/shapes:define-output describe-billing-group-response
                                 common-lisp:nil
                                 ((billing-group-name :target-type
                                   billing-group-name :member-name
                                   "billingGroupName")
                                  (billing-group-id :target-type
                                   billing-group-id :member-name
                                   "billingGroupId")
                                  (billing-group-arn :target-type
                                   billing-group-arn :member-name
                                   "billingGroupArn")
                                  (version :target-type version :member-name
                                   "version")
                                  (billing-group-properties :target-type
                                   billing-group-properties :member-name
                                   "billingGroupProperties")
                                  (billing-group-metadata :target-type
                                   billing-group-metadata :member-name
                                   "billingGroupMetadata"))
                                 (:shape-name "DescribeBillingGroupResponse"))

(smithy/sdk/shapes:define-input describe-cacertificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t))
                                (:shape-name "DescribeCACertificateRequest"))

(smithy/sdk/shapes:define-output describe-cacertificate-response
                                 common-lisp:nil
                                 ((certificate-description :target-type
                                   cacertificate-description :member-name
                                   "certificateDescription")
                                  (registration-config :target-type
                                   registration-config :member-name
                                   "registrationConfig"))
                                 (:shape-name "DescribeCACertificateResponse"))

(smithy/sdk/shapes:define-input describe-certificate-provider-request
                                common-lisp:nil
                                ((certificate-provider-name :target-type
                                  certificate-provider-name :required
                                  common-lisp:t :member-name
                                  "certificateProviderName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeCertificateProviderRequest"))

(smithy/sdk/shapes:define-output describe-certificate-provider-response
                                 common-lisp:nil
                                 ((certificate-provider-name :target-type
                                   certificate-provider-name :member-name
                                   "certificateProviderName")
                                  (certificate-provider-arn :target-type
                                   certificate-provider-arn :member-name
                                   "certificateProviderArn")
                                  (lambda-function-arn :target-type
                                   certificate-provider-function-arn
                                   :member-name "lambdaFunctionArn")
                                  (account-default-for-operations :target-type
                                   certificate-provider-account-default-for-operations
                                   :member-name "accountDefaultForOperations")
                                  (creation-date :target-type date-type
                                   :member-name "creationDate")
                                  (last-modified-date :target-type date-type
                                   :member-name "lastModifiedDate"))
                                 (:shape-name
                                  "DescribeCertificateProviderResponse"))

(smithy/sdk/shapes:define-input describe-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t))
                                (:shape-name "DescribeCertificateRequest"))

(smithy/sdk/shapes:define-output describe-certificate-response common-lisp:nil
                                 ((certificate-description :target-type
                                   certificate-description :member-name
                                   "certificateDescription"))
                                 (:shape-name "DescribeCertificateResponse"))

(smithy/sdk/shapes:define-input describe-custom-metric-request common-lisp:nil
                                ((metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t))
                                (:shape-name "DescribeCustomMetricRequest"))

(smithy/sdk/shapes:define-output describe-custom-metric-response
                                 common-lisp:nil
                                 ((metric-name :target-type metric-name
                                   :member-name "metricName")
                                  (metric-arn :target-type custom-metric-arn
                                   :member-name "metricArn")
                                  (metric-type :target-type custom-metric-type
                                   :member-name "metricType")
                                  (display-name :target-type
                                   custom-metric-display-name :member-name
                                   "displayName")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate"))
                                 (:shape-name "DescribeCustomMetricResponse"))

(smithy/sdk/shapes:define-input describe-default-authorizer-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeDefaultAuthorizerRequest"))

(smithy/sdk/shapes:define-output describe-default-authorizer-response
                                 common-lisp:nil
                                 ((authorizer-description :target-type
                                   authorizer-description :member-name
                                   "authorizerDescription"))
                                 (:shape-name
                                  "DescribeDefaultAuthorizerResponse"))

(smithy/sdk/shapes:define-input describe-detect-mitigation-actions-task-request
                                common-lisp:nil
                                ((task-id :target-type
                                  mitigation-actions-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeDetectMitigationActionsTaskRequest"))

(smithy/sdk/shapes:define-output
 describe-detect-mitigation-actions-task-response common-lisp:nil
 ((task-summary :target-type detect-mitigation-actions-task-summary
   :member-name "taskSummary"))
 (:shape-name "DescribeDetectMitigationActionsTaskResponse"))

(smithy/sdk/shapes:define-input describe-dimension-request common-lisp:nil
                                ((name :target-type dimension-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeDimensionRequest"))

(smithy/sdk/shapes:define-output describe-dimension-response common-lisp:nil
                                 ((name :target-type dimension-name
                                   :member-name "name")
                                  (arn :target-type dimension-arn :member-name
                                   "arn")
                                  (type :target-type dimension-type
                                   :member-name "type")
                                  (string-values :target-type
                                   dimension-string-values :member-name
                                   "stringValues")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate"))
                                 (:shape-name "DescribeDimensionResponse"))

(smithy/sdk/shapes:define-input describe-domain-configuration-request
                                common-lisp:nil
                                ((domain-configuration-name :target-type
                                  reserved-domain-configuration-name :required
                                  common-lisp:t :member-name
                                  "domainConfigurationName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeDomainConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-domain-configuration-response
                                 common-lisp:nil
                                 ((domain-configuration-name :target-type
                                   reserved-domain-configuration-name
                                   :member-name "domainConfigurationName")
                                  (domain-configuration-arn :target-type
                                   domain-configuration-arn :member-name
                                   "domainConfigurationArn")
                                  (domain-name :target-type domain-name
                                   :member-name "domainName")
                                  (server-certificates :target-type
                                   server-certificates :member-name
                                   "serverCertificates")
                                  (authorizer-config :target-type
                                   authorizer-config :member-name
                                   "authorizerConfig")
                                  (domain-configuration-status :target-type
                                   domain-configuration-status :member-name
                                   "domainConfigurationStatus")
                                  (service-type :target-type service-type
                                   :member-name "serviceType")
                                  (domain-type :target-type domain-type
                                   :member-name "domainType")
                                  (last-status-change-date :target-type
                                   date-type :member-name
                                   "lastStatusChangeDate")
                                  (tls-config :target-type tls-config
                                   :member-name "tlsConfig")
                                  (server-certificate-config :target-type
                                   server-certificate-config :member-name
                                   "serverCertificateConfig")
                                  (authentication-type :target-type
                                   authentication-type :member-name
                                   "authenticationType")
                                  (application-protocol :target-type
                                   application-protocol :member-name
                                   "applicationProtocol")
                                  (client-certificate-config :target-type
                                   client-certificate-config :member-name
                                   "clientCertificateConfig"))
                                 (:shape-name
                                  "DescribeDomainConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-encryption-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-encryption-configuration-response
                                 common-lisp:nil
                                 ((encryption-type :target-type encryption-type
                                   :member-name "encryptionType")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (kms-access-role-arn :target-type
                                   kms-access-role-arn :member-name
                                   "kmsAccessRoleArn")
                                  (configuration-details :target-type
                                   configuration-details :member-name
                                   "configurationDetails")
                                  (last-modified-date :target-type date-type
                                   :member-name "lastModifiedDate"))
                                 (:shape-name
                                  "DescribeEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-endpoint-request common-lisp:nil
                                ((endpoint-type :target-type endpoint-type
                                  :member-name "endpointType" :http-query
                                  "endpointType"))
                                (:shape-name "DescribeEndpointRequest"))

(smithy/sdk/shapes:define-output describe-endpoint-response common-lisp:nil
                                 ((endpoint-address :target-type
                                   endpoint-address :member-name
                                   "endpointAddress"))
                                 (:shape-name "DescribeEndpointResponse"))

(smithy/sdk/shapes:define-input describe-event-configurations-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeEventConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-event-configurations-response
                                 common-lisp:nil
                                 ((event-configurations :target-type
                                   event-configurations :member-name
                                   "eventConfigurations")
                                  (creation-date :target-type creation-date
                                   :member-name "creationDate")
                                  (last-modified-date :target-type
                                   last-modified-date :member-name
                                   "lastModifiedDate"))
                                 (:shape-name
                                  "DescribeEventConfigurationsResponse"))

(smithy/sdk/shapes:define-input describe-fleet-metric-request common-lisp:nil
                                ((metric-name :target-type fleet-metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t))
                                (:shape-name "DescribeFleetMetricRequest"))

(smithy/sdk/shapes:define-output describe-fleet-metric-response common-lisp:nil
                                 ((metric-name :target-type fleet-metric-name
                                   :member-name "metricName")
                                  (query-string :target-type query-string
                                   :member-name "queryString")
                                  (aggregation-type :target-type
                                   aggregation-type :member-name
                                   "aggregationType")
                                  (period :target-type fleet-metric-period
                                   :member-name "period")
                                  (aggregation-field :target-type
                                   aggregation-field :member-name
                                   "aggregationField")
                                  (description :target-type
                                   fleet-metric-description :member-name
                                   "description")
                                  (query-version :target-type query-version
                                   :member-name "queryVersion")
                                  (index-name :target-type index-name
                                   :member-name "indexName")
                                  (creation-date :target-type creation-date
                                   :member-name "creationDate")
                                  (last-modified-date :target-type
                                   last-modified-date :member-name
                                   "lastModifiedDate")
                                  (unit :target-type fleet-metric-unit
                                   :member-name "unit")
                                  (version :target-type version :member-name
                                   "version")
                                  (metric-arn :target-type fleet-metric-arn
                                   :member-name "metricArn"))
                                 (:shape-name "DescribeFleetMetricResponse"))

(smithy/sdk/shapes:define-input describe-index-request common-lisp:nil
                                ((index-name :target-type index-name :required
                                  common-lisp:t :member-name "indexName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeIndexRequest"))

(smithy/sdk/shapes:define-output describe-index-response common-lisp:nil
                                 ((index-name :target-type index-name
                                   :member-name "indexName")
                                  (index-status :target-type index-status
                                   :member-name "indexStatus")
                                  (schema :target-type index-schema
                                   :member-name "schema"))
                                 (:shape-name "DescribeIndexResponse"))

(smithy/sdk/shapes:define-input describe-job-execution-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (execution-number :target-type
                                  execution-number :member-name
                                  "executionNumber" :http-query
                                  "executionNumber"))
                                (:shape-name "DescribeJobExecutionRequest"))

(smithy/sdk/shapes:define-output describe-job-execution-response
                                 common-lisp:nil
                                 ((execution :target-type job-execution
                                   :member-name "execution"))
                                 (:shape-name "DescribeJobExecutionResponse"))

(smithy/sdk/shapes:define-input describe-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (before-substitution :target-type
                                  before-substitution-flag :member-name
                                  "beforeSubstitution" :http-query
                                  "beforeSubstitution"))
                                (:shape-name "DescribeJobRequest"))

(smithy/sdk/shapes:define-output describe-job-response common-lisp:nil
                                 ((document-source :target-type
                                   job-document-source :member-name
                                   "documentSource")
                                  (job :target-type job :member-name "job"))
                                 (:shape-name "DescribeJobResponse"))

(smithy/sdk/shapes:define-input describe-job-template-request common-lisp:nil
                                ((job-template-id :target-type job-template-id
                                  :required common-lisp:t :member-name
                                  "jobTemplateId" :http-label common-lisp:t))
                                (:shape-name "DescribeJobTemplateRequest"))

(smithy/sdk/shapes:define-output describe-job-template-response common-lisp:nil
                                 ((job-template-arn :target-type
                                   job-template-arn :member-name
                                   "jobTemplateArn")
                                  (job-template-id :target-type job-template-id
                                   :member-name "jobTemplateId")
                                  (description :target-type job-description
                                   :member-name "description")
                                  (document-source :target-type
                                   job-document-source :member-name
                                   "documentSource")
                                  (document :target-type job-document
                                   :member-name "document")
                                  (created-at :target-type date-type
                                   :member-name "createdAt")
                                  (presigned-url-config :target-type
                                   presigned-url-config :member-name
                                   "presignedUrlConfig")
                                  (job-executions-rollout-config :target-type
                                   job-executions-rollout-config :member-name
                                   "jobExecutionsRolloutConfig")
                                  (abort-config :target-type abort-config
                                   :member-name "abortConfig")
                                  (timeout-config :target-type timeout-config
                                   :member-name "timeoutConfig")
                                  (job-executions-retry-config :target-type
                                   job-executions-retry-config :member-name
                                   "jobExecutionsRetryConfig")
                                  (maintenance-windows :target-type
                                   maintenance-windows :member-name
                                   "maintenanceWindows")
                                  (destination-package-versions :target-type
                                   destination-package-versions :member-name
                                   "destinationPackageVersions"))
                                 (:shape-name "DescribeJobTemplateResponse"))

(smithy/sdk/shapes:define-input describe-managed-job-template-request
                                common-lisp:nil
                                ((template-name :target-type
                                  managed-job-template-name :required
                                  common-lisp:t :member-name "templateName"
                                  :http-label common-lisp:t)
                                 (template-version :target-type
                                  managed-template-version :member-name
                                  "templateVersion" :http-query
                                  "templateVersion"))
                                (:shape-name
                                 "DescribeManagedJobTemplateRequest"))

(smithy/sdk/shapes:define-output describe-managed-job-template-response
                                 common-lisp:nil
                                 ((template-name :target-type
                                   managed-job-template-name :member-name
                                   "templateName")
                                  (template-arn :target-type job-template-arn
                                   :member-name "templateArn")
                                  (description :target-type job-description
                                   :member-name "description")
                                  (template-version :target-type
                                   managed-template-version :member-name
                                   "templateVersion")
                                  (environments :target-type environments
                                   :member-name "environments")
                                  (document-parameters :target-type
                                   document-parameters :member-name
                                   "documentParameters")
                                  (document :target-type job-document
                                   :member-name "document"))
                                 (:shape-name
                                  "DescribeManagedJobTemplateResponse"))

(smithy/sdk/shapes:define-input describe-mitigation-action-request
                                common-lisp:nil
                                ((action-name :target-type
                                  mitigation-action-name :required
                                  common-lisp:t :member-name "actionName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeMitigationActionRequest"))

(smithy/sdk/shapes:define-output describe-mitigation-action-response
                                 common-lisp:nil
                                 ((action-name :target-type
                                   mitigation-action-name :member-name
                                   "actionName")
                                  (action-type :target-type
                                   mitigation-action-type :member-name
                                   "actionType")
                                  (action-arn :target-type
                                   mitigation-action-arn :member-name
                                   "actionArn")
                                  (action-id :target-type mitigation-action-id
                                   :member-name "actionId")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (action-params :target-type
                                   mitigation-action-params :member-name
                                   "actionParams")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate"))
                                 (:shape-name
                                  "DescribeMitigationActionResponse"))

(smithy/sdk/shapes:define-input describe-provisioning-template-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeProvisioningTemplateRequest"))

(smithy/sdk/shapes:define-output describe-provisioning-template-response
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "templateArn")
                                  (template-name :target-type template-name
                                   :member-name "templateName")
                                  (description :target-type
                                   template-description :member-name
                                   "description")
                                  (creation-date :target-type date-type
                                   :member-name "creationDate")
                                  (last-modified-date :target-type date-type
                                   :member-name "lastModifiedDate")
                                  (default-version-id :target-type
                                   template-version-id :member-name
                                   "defaultVersionId")
                                  (template-body :target-type template-body
                                   :member-name "templateBody")
                                  (enabled :target-type enabled2 :member-name
                                   "enabled")
                                  (provisioning-role-arn :target-type role-arn
                                   :member-name "provisioningRoleArn")
                                  (pre-provisioning-hook :target-type
                                   provisioning-hook :member-name
                                   "preProvisioningHook")
                                  (type :target-type template-type :member-name
                                   "type"))
                                 (:shape-name
                                  "DescribeProvisioningTemplateResponse"))

(smithy/sdk/shapes:define-input describe-provisioning-template-version-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t)
                                 (version-id :target-type template-version-id
                                  :required common-lisp:t :member-name
                                  "versionId" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeProvisioningTemplateVersionRequest"))

(smithy/sdk/shapes:define-output
 describe-provisioning-template-version-response common-lisp:nil
 ((version-id :target-type template-version-id :member-name "versionId")
  (creation-date :target-type date-type :member-name "creationDate")
  (template-body :target-type template-body :member-name "templateBody")
  (is-default-version :target-type is-default-version :member-name
   "isDefaultVersion"))
 (:shape-name "DescribeProvisioningTemplateVersionResponse"))

(smithy/sdk/shapes:define-input describe-role-alias-request common-lisp:nil
                                ((role-alias :target-type role-alias :required
                                  common-lisp:t :member-name "roleAlias"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeRoleAliasRequest"))

(smithy/sdk/shapes:define-output describe-role-alias-response common-lisp:nil
                                 ((role-alias-description :target-type
                                   role-alias-description :member-name
                                   "roleAliasDescription"))
                                 (:shape-name "DescribeRoleAliasResponse"))

(smithy/sdk/shapes:define-input describe-scheduled-audit-request
                                common-lisp:nil
                                ((scheduled-audit-name :target-type
                                  scheduled-audit-name :required common-lisp:t
                                  :member-name "scheduledAuditName" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeScheduledAuditRequest"))

(smithy/sdk/shapes:define-output describe-scheduled-audit-response
                                 common-lisp:nil
                                 ((frequency :target-type audit-frequency
                                   :member-name "frequency")
                                  (day-of-month :target-type day-of-month
                                   :member-name "dayOfMonth")
                                  (day-of-week :target-type day-of-week
                                   :member-name "dayOfWeek")
                                  (target-check-names :target-type
                                   target-audit-check-names :member-name
                                   "targetCheckNames")
                                  (scheduled-audit-name :target-type
                                   scheduled-audit-name :member-name
                                   "scheduledAuditName")
                                  (scheduled-audit-arn :target-type
                                   scheduled-audit-arn :member-name
                                   "scheduledAuditArn"))
                                 (:shape-name "DescribeScheduledAuditResponse"))

(smithy/sdk/shapes:define-input describe-security-profile-request
                                common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeSecurityProfileRequest"))

(smithy/sdk/shapes:define-output describe-security-profile-response
                                 common-lisp:nil
                                 ((security-profile-name :target-type
                                   security-profile-name :member-name
                                   "securityProfileName")
                                  (security-profile-arn :target-type
                                   security-profile-arn :member-name
                                   "securityProfileArn")
                                  (security-profile-description :target-type
                                   security-profile-description :member-name
                                   "securityProfileDescription")
                                  (behaviors :target-type behaviors
                                   :member-name "behaviors")
                                  (alert-targets :target-type alert-targets
                                   :member-name "alertTargets")
                                  (additional-metrics-to-retain :target-type
                                   additional-metrics-to-retain-list
                                   :member-name "additionalMetricsToRetain")
                                  (additional-metrics-to-retain-v2 :target-type
                                   additional-metrics-to-retain-v2list
                                   :member-name "additionalMetricsToRetainV2")
                                  (version :target-type version :member-name
                                   "version")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate")
                                  (metrics-export-config :target-type
                                   metrics-export-config :member-name
                                   "metricsExportConfig"))
                                 (:shape-name
                                  "DescribeSecurityProfileResponse"))

(smithy/sdk/shapes:define-input describe-stream-request common-lisp:nil
                                ((stream-id :target-type stream-id :required
                                  common-lisp:t :member-name "streamId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeStreamRequest"))

(smithy/sdk/shapes:define-output describe-stream-response common-lisp:nil
                                 ((stream-info :target-type stream-info
                                   :member-name "streamInfo"))
                                 (:shape-name "DescribeStreamResponse"))

(smithy/sdk/shapes:define-input describe-thing-group-request common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeThingGroupRequest"))

(smithy/sdk/shapes:define-output describe-thing-group-response common-lisp:nil
                                 ((thing-group-name :target-type
                                   thing-group-name :member-name
                                   "thingGroupName")
                                  (thing-group-id :target-type thing-group-id
                                   :member-name "thingGroupId")
                                  (thing-group-arn :target-type thing-group-arn
                                   :member-name "thingGroupArn")
                                  (version :target-type version :member-name
                                   "version")
                                  (thing-group-properties :target-type
                                   thing-group-properties :member-name
                                   "thingGroupProperties")
                                  (thing-group-metadata :target-type
                                   thing-group-metadata :member-name
                                   "thingGroupMetadata")
                                  (index-name :target-type index-name
                                   :member-name "indexName")
                                  (query-string :target-type query-string
                                   :member-name "queryString")
                                  (query-version :target-type query-version
                                   :member-name "queryVersion")
                                  (status :target-type dynamic-group-status
                                   :member-name "status"))
                                 (:shape-name "DescribeThingGroupResponse"))

(smithy/sdk/shapes:define-input describe-thing-registration-task-request
                                common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeThingRegistrationTaskRequest"))

(smithy/sdk/shapes:define-output describe-thing-registration-task-response
                                 common-lisp:nil
                                 ((task-id :target-type task-id :member-name
                                   "taskId")
                                  (creation-date :target-type creation-date
                                   :member-name "creationDate")
                                  (last-modified-date :target-type
                                   last-modified-date :member-name
                                   "lastModifiedDate")
                                  (template-body :target-type template-body
                                   :member-name "templateBody")
                                  (input-file-bucket :target-type
                                   registry-s3bucket-name :member-name
                                   "inputFileBucket")
                                  (input-file-key :target-type
                                   registry-s3key-name :member-name
                                   "inputFileKey")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (status :target-type status :member-name
                                   "status")
                                  (message :target-type error-message
                                   :member-name "message")
                                  (success-count :target-type count
                                   :member-name "successCount")
                                  (failure-count :target-type count
                                   :member-name "failureCount")
                                  (percentage-progress :target-type percentage
                                   :member-name "percentageProgress"))
                                 (:shape-name
                                  "DescribeThingRegistrationTaskResponse"))

(smithy/sdk/shapes:define-input describe-thing-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeThingRequest"))

(smithy/sdk/shapes:define-output describe-thing-response common-lisp:nil
                                 ((default-client-id :target-type client-id
                                   :member-name "defaultClientId")
                                  (thing-name :target-type thing-name
                                   :member-name "thingName")
                                  (thing-id :target-type thing-id :member-name
                                   "thingId")
                                  (thing-arn :target-type thing-arn
                                   :member-name "thingArn")
                                  (thing-type-name :target-type thing-type-name
                                   :member-name "thingTypeName")
                                  (attributes :target-type attributes
                                   :member-name "attributes")
                                  (version :target-type version :member-name
                                   "version")
                                  (billing-group-name :target-type
                                   billing-group-name :member-name
                                   "billingGroupName"))
                                 (:shape-name "DescribeThingResponse"))

(smithy/sdk/shapes:define-input describe-thing-type-request common-lisp:nil
                                ((thing-type-name :target-type thing-type-name
                                  :required common-lisp:t :member-name
                                  "thingTypeName" :http-label common-lisp:t))
                                (:shape-name "DescribeThingTypeRequest"))

(smithy/sdk/shapes:define-output describe-thing-type-response common-lisp:nil
                                 ((thing-type-name :target-type thing-type-name
                                   :member-name "thingTypeName")
                                  (thing-type-id :target-type thing-type-id
                                   :member-name "thingTypeId")
                                  (thing-type-arn :target-type thing-type-arn
                                   :member-name "thingTypeArn")
                                  (thing-type-properties :target-type
                                   thing-type-properties :member-name
                                   "thingTypeProperties")
                                  (thing-type-metadata :target-type
                                   thing-type-metadata :member-name
                                   "thingTypeMetadata"))
                                 (:shape-name "DescribeThingTypeResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((s3destination :target-type s3destination
                                      :member-name "s3Destination"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-list destination-package-versions :member
                               package-version-arn)

(smithy/sdk/shapes:define-input detach-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (target :target-type policy-target :required
                                  common-lisp:t :member-name "target"))
                                (:shape-name "DetachPolicyRequest"))

(smithy/sdk/shapes:define-input detach-principal-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-iot-principal"))
                                (:shape-name "DetachPrincipalPolicyRequest"))

(smithy/sdk/shapes:define-input detach-security-profile-request common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t)
                                 (security-profile-target-arn :target-type
                                  security-profile-target-arn :required
                                  common-lisp:t :member-name
                                  "securityProfileTargetArn" :http-query
                                  "securityProfileTargetArn"))
                                (:shape-name "DetachSecurityProfileRequest"))

(smithy/sdk/shapes:define-output detach-security-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DetachSecurityProfileResponse"))

(smithy/sdk/shapes:define-input detach-thing-principal-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-principal"))
                                (:shape-name "DetachThingPrincipalRequest"))

(smithy/sdk/shapes:define-output detach-thing-principal-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DetachThingPrincipalResponse"))

(smithy/sdk/shapes:define-type details-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map details-map :key details-key :value details-value)

(smithy/sdk/shapes:define-type details-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure detect-mitigation-action-execution
                                    common-lisp:nil
                                    ((task-id :target-type
                                      mitigation-actions-task-id :member-name
                                      "taskId")
                                     (violation-id :target-type violation-id
                                      :member-name "violationId")
                                     (action-name :target-type
                                      mitigation-action-name :member-name
                                      "actionName")
                                     (thing-name :target-type
                                      device-defender-thing-name :member-name
                                      "thingName")
                                     (execution-start-date :target-type
                                      timestamp :member-name
                                      "executionStartDate")
                                     (execution-end-date :target-type timestamp
                                      :member-name "executionEndDate")
                                     (status :target-type
                                      detect-mitigation-action-execution-status
                                      :member-name "status")
                                     (error-code :target-type
                                      detect-mitigation-action-execution-error-code
                                      :member-name "errorCode")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name
                                     "DetectMitigationActionExecution"))

(smithy/sdk/shapes:define-type detect-mitigation-action-execution-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list detect-mitigation-action-execution-list :member
                               detect-mitigation-action-execution)

(smithy/sdk/shapes:define-enum detect-mitigation-action-execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:successful "SUCCESSFUL")
  (:failed "FAILED")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-structure detect-mitigation-actions-task-statistics
                                    common-lisp:nil
                                    ((actions-executed :target-type
                                      generic-long-value :member-name
                                      "actionsExecuted")
                                     (actions-skipped :target-type
                                      generic-long-value :member-name
                                      "actionsSkipped")
                                     (actions-failed :target-type
                                      generic-long-value :member-name
                                      "actionsFailed"))
                                    (:shape-name
                                     "DetectMitigationActionsTaskStatistics"))

(smithy/sdk/shapes:define-enum detect-mitigation-actions-task-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:successful "SUCCESSFUL")
  (:failed "FAILED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure detect-mitigation-actions-task-summary
                                    common-lisp:nil
                                    ((task-id :target-type
                                      mitigation-actions-task-id :member-name
                                      "taskId")
                                     (task-status :target-type
                                      detect-mitigation-actions-task-status
                                      :member-name "taskStatus")
                                     (task-start-time :target-type timestamp
                                      :member-name "taskStartTime")
                                     (task-end-time :target-type timestamp
                                      :member-name "taskEndTime")
                                     (target :target-type
                                      detect-mitigation-actions-task-target
                                      :member-name "target")
                                     (violation-event-occurrence-range
                                      :target-type
                                      violation-event-occurrence-range
                                      :member-name
                                      "violationEventOccurrenceRange")
                                     (only-active-violations-included
                                      :target-type primitive-boolean
                                      :member-name
                                      "onlyActiveViolationsIncluded")
                                     (suppressed-alerts-included :target-type
                                      primitive-boolean :member-name
                                      "suppressedAlertsIncluded")
                                     (actions-definition :target-type
                                      mitigation-action-list :member-name
                                      "actionsDefinition")
                                     (task-statistics :target-type
                                      detect-mitigation-actions-task-statistics
                                      :member-name "taskStatistics"))
                                    (:shape-name
                                     "DetectMitigationActionsTaskSummary"))

(smithy/sdk/shapes:define-list detect-mitigation-actions-task-summary-list
                               :member detect-mitigation-actions-task-summary)

(smithy/sdk/shapes:define-structure detect-mitigation-actions-task-target
                                    common-lisp:nil
                                    ((violation-ids :target-type
                                      target-violation-ids-for-detect-mitigation-actions
                                      :member-name "violationIds")
                                     (security-profile-name :target-type
                                      security-profile-name :member-name
                                      "securityProfileName")
                                     (behavior-name :target-type behavior-name
                                      :member-name "behaviorName"))
                                    (:shape-name
                                     "DetectMitigationActionsTaskTarget"))

(smithy/sdk/shapes:define-list detect-mitigation-actions-to-execute-list
                               :member mitigation-action-name)

(smithy/sdk/shapes:define-enum device-certificate-update-action
    common-lisp:nil
  (:deactivate "DEACTIVATE"))

(smithy/sdk/shapes:define-enum device-defender-indexing-mode
    common-lisp:nil
  (:off "OFF")
  (:violations "VIOLATIONS"))

(smithy/sdk/shapes:define-type device-defender-thing-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimension-names :member dimension-name)

(smithy/sdk/shapes:define-type dimension-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimension-string-values :member
                               dimension-string-value)

(smithy/sdk/shapes:define-enum dimension-type
    common-lisp:nil
  (:topic-filter "TOPIC_FILTER"))

(smithy/sdk/shapes:define-enum dimension-value-operator
    common-lisp:nil
  (:in "IN")
  (:not-in "NOT_IN"))

(smithy/sdk/shapes:define-type disable-all-logs smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input disable-topic-rule-request common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "ruleName"
                                  :http-label common-lisp:t))
                                (:shape-name "DisableTopicRuleRequest"))

(smithy/sdk/shapes:define-input disassociate-sbom-from-package-version-request
                                common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name
                                 "DisassociateSbomFromPackageVersionRequest"))

(smithy/sdk/shapes:define-output
 disassociate-sbom-from-package-version-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateSbomFromPackageVersionResponse"))

(smithy/sdk/shapes:define-type disconnect-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum disconnect-reason-value
    common-lisp:nil
  (:auth-error "AUTH_ERROR")
  (:client-initiated-disconnect "CLIENT_INITIATED_DISCONNECT")
  (:client-error "CLIENT_ERROR")
  (:connection-lost "CONNECTION_LOST")
  (:duplicate-clientid "DUPLICATE_CLIENTID")
  (:forbidden-access "FORBIDDEN_ACCESS")
  (:mqtt-keep-alive-timeout "MQTT_KEEP_ALIVE_TIMEOUT")
  (:server-error "SERVER_ERROR")
  (:server-initiated-disconnect "SERVER_INITIATED_DISCONNECT")
  (:throttled "THROTTLED")
  (:websocket-ttl-expiration "WEBSOCKET_TTL_EXPIRATION")
  (:customauth-ttl-expiration "CUSTOMAUTH_TTL_EXPIRATION")
  (:unknown "UNKNOWN")
  (:none "NONE"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-parameter common-lisp:nil
                                    ((key :target-type parameter-key
                                      :member-name "key")
                                     (description :target-type job-description
                                      :member-name "description")
                                     (regex :target-type regex :member-name
                                      "regex")
                                     (example :target-type example :member-name
                                      "example")
                                     (optional :target-type optional
                                      :member-name "optional"))
                                    (:shape-name "DocumentParameter"))

(smithy/sdk/shapes:define-list document-parameters :member document-parameter)

(smithy/sdk/shapes:define-type domain-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-configuration-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure domain-configuration-summary
                                    common-lisp:nil
                                    ((domain-configuration-name :target-type
                                      reserved-domain-configuration-name
                                      :member-name "domainConfigurationName")
                                     (domain-configuration-arn :target-type
                                      domain-configuration-arn :member-name
                                      "domainConfigurationArn")
                                     (service-type :target-type service-type
                                      :member-name "serviceType"))
                                    (:shape-name "DomainConfigurationSummary"))

(smithy/sdk/shapes:define-list domain-configurations :member
                               domain-configuration-summary)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-type
    common-lisp:nil
  (:endpoint "ENDPOINT")
  (:aws-managed "AWS_MANAGED")
  (:customer-managed "CUSTOMER_MANAGED"))

(smithy/sdk/shapes:define-type double-parameter-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type duration-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type duration-seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum dynamic-group-status
    common-lisp:nil
  (:active "ACTIVE")
  (:building "BUILDING")
  (:rebuilding "REBUILDING"))

(smithy/sdk/shapes:define-structure dynamo-dbaction common-lisp:nil
                                    ((table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (operation :target-type dynamo-operation
                                      :member-name "operation")
                                     (hash-key-field :target-type
                                      hash-key-field :required common-lisp:t
                                      :member-name "hashKeyField")
                                     (hash-key-value :target-type
                                      hash-key-value :required common-lisp:t
                                      :member-name "hashKeyValue")
                                     (hash-key-type :target-type
                                      dynamo-key-type :member-name
                                      "hashKeyType")
                                     (range-key-field :target-type
                                      range-key-field :member-name
                                      "rangeKeyField")
                                     (range-key-value :target-type
                                      range-key-value :member-name
                                      "rangeKeyValue")
                                     (range-key-type :target-type
                                      dynamo-key-type :member-name
                                      "rangeKeyType")
                                     (payload-field :target-type payload-field
                                      :member-name "payloadField"))
                                    (:shape-name "DynamoDBAction"))

(smithy/sdk/shapes:define-structure dynamo-dbv2action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (put-item :target-type put-item-input
                                      :required common-lisp:t :member-name
                                      "putItem"))
                                    (:shape-name "DynamoDBv2Action"))

(smithy/sdk/shapes:define-enum dynamo-key-type
    common-lisp:nil
  (:string "STRING")
  (:number "NUMBER"))

(smithy/sdk/shapes:define-type dynamo-operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list effective-policies :member effective-policy)

(smithy/sdk/shapes:define-structure effective-policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (policy-arn :target-type policy-arn
                                      :member-name "policyArn")
                                     (policy-document :target-type
                                      policy-document :member-name
                                      "policyDocument"))
                                    (:shape-name "EffectivePolicy"))

(smithy/sdk/shapes:define-structure elasticsearch-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (endpoint :target-type
                                      elasticsearch-endpoint :required
                                      common-lisp:t :member-name "endpoint")
                                     (index :target-type elasticsearch-index
                                      :required common-lisp:t :member-name
                                      "index")
                                     (type :target-type elasticsearch-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (id :target-type elasticsearch-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name "ElasticsearchAction"))

(smithy/sdk/shapes:define-type elasticsearch-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type elasticsearch-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type elasticsearch-index
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type elasticsearch-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enable-caching-for-http
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure enable-io-tlogging-params common-lisp:nil
                                    ((role-arn-for-logging :target-type
                                      role-arn :required common-lisp:t
                                      :member-name "roleArnForLogging")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "logLevel"))
                                    (:shape-name "EnableIoTLoggingParams"))

(smithy/sdk/shapes:define-type enable-ocspcheck smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input enable-topic-rule-request common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "ruleName"
                                  :http-label common-lisp:t))
                                (:shape-name "EnableTopicRuleRequest"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enabled2 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enabled-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:customer-managed-kms-key "CUSTOMER_MANAGED_KMS_KEY")
  (:aws-owned-kms-key "AWS_OWNED_KMS_KEY"))

(smithy/sdk/shapes:define-type endpoint-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environments :member environment)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((code :target-type code :member-name
                                      "code")
                                     (message :target-type
                                      otaupdate-error-message :member-name
                                      "message"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluation-statistic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map event-configurations :key event-type :value
                              configuration)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:thing "THING")
  (:thing-group "THING_GROUP")
  (:thing-type "THING_TYPE")
  (:thing-group-membership "THING_GROUP_MEMBERSHIP")
  (:thing-group-hierarchy "THING_GROUP_HIERARCHY")
  (:thing-type-association "THING_TYPE_ASSOCIATION")
  (:job "JOB")
  (:job-execution "JOB_EXECUTION")
  (:policy "POLICY")
  (:certificate "CERTIFICATE")
  (:ca-certificate "CA_CERTIFICATE"))

(smithy/sdk/shapes:define-type example smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type expected-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type expires-in-sec smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type expires-in-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure explicit-deny common-lisp:nil
                                    ((policies :target-type policies
                                      :member-name "policies"))
                                    (:shape-name "ExplicitDeny"))

(smithy/sdk/shapes:define-structure exponential-rollout-rate common-lisp:nil
                                    ((base-rate-per-minute :target-type
                                      rollout-rate-per-minute :required
                                      common-lisp:t :member-name
                                      "baseRatePerMinute")
                                     (increment-factor :target-type
                                      increment-factor :required common-lisp:t
                                      :member-name "incrementFactor")
                                     (rate-increase-criteria :target-type
                                      rate-increase-criteria :required
                                      common-lisp:t :member-name
                                      "rateIncreaseCriteria"))
                                    (:shape-name "ExponentialRolloutRate"))

(smithy/sdk/shapes:define-type export-metric smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type failed-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type failed-findings-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type failed-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure field common-lisp:nil
                                    ((name :target-type field-name :member-name
                                      "name")
                                     (type :target-type field-type :member-name
                                      "type"))
                                    (:shape-name "Field"))

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum field-type
    common-lisp:nil
  (:number "Number")
  (:string "String")
  (:boolean "Boolean"))

(smithy/sdk/shapes:define-list fields :member field)

(smithy/sdk/shapes:define-type file-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure file-location common-lisp:nil
                                    ((stream :target-type stream :member-name
                                      "stream")
                                     (s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "FileLocation"))

(smithy/sdk/shapes:define-type file-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type finding-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-ids :member finding-id)

(smithy/sdk/shapes:define-structure firehose-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (delivery-stream-name :target-type
                                      delivery-stream-name :required
                                      common-lisp:t :member-name
                                      "deliveryStreamName")
                                     (separator :target-type firehose-separator
                                      :member-name "separator")
                                     (batch-mode :target-type batch-mode
                                      :member-name "batchMode"))
                                    (:shape-name "FirehoseAction"))

(smithy/sdk/shapes:define-type firehose-separator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type fleet-metric-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fleet-metric-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fleet-metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fleet-metric-name-and-arn common-lisp:nil
                                    ((metric-name :target-type
                                      fleet-metric-name :member-name
                                      "metricName")
                                     (metric-arn :target-type fleet-metric-arn
                                      :member-name "metricArn"))
                                    (:shape-name "FleetMetricNameAndArn"))

(smithy/sdk/shapes:define-list fleet-metric-name-and-arn-list :member
                               fleet-metric-name-and-arn)

(smithy/sdk/shapes:define-type fleet-metric-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum fleet-metric-unit
    common-lisp:nil
  (:seconds "Seconds")
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:bytes "Bytes")
  (:kilobytes "Kilobytes")
  (:megabytes "Megabytes")
  (:gigabytes "Gigabytes")
  (:terabytes "Terabytes")
  (:bits "Bits")
  (:kilobits "Kilobits")
  (:megabits "Megabits")
  (:gigabits "Gigabits")
  (:terabits "Terabits")
  (:percent "Percent")
  (:count "Count")
  (:bytes-second "Bytes/Second")
  (:kilobytes-second "Kilobytes/Second")
  (:megabytes-second "Megabytes/Second")
  (:gigabytes-second "Gigabytes/Second")
  (:terabytes-second "Terabytes/Second")
  (:bits-second "Bits/Second")
  (:kilobits-second "Kilobits/Second")
  (:megabits-second "Megabits/Second")
  (:gigabits-second "Gigabits/Second")
  (:terabits-second "Terabits/Second")
  (:count-second "Count/Second")
  (:none "None"))

(smithy/sdk/shapes:define-type force-delete smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type force-delete-awsjob
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type force-flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type forced smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type function-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-long-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure geo-location-target common-lisp:nil
                                    ((name :target-type target-field-name
                                      :member-name "name")
                                     (order :target-type target-field-order
                                      :member-name "order"))
                                    (:shape-name "GeoLocationTarget"))

(smithy/sdk/shapes:define-list geo-locations-filter :member geo-location-target)

(smithy/sdk/shapes:define-input get-behavior-model-training-summaries-request
                                common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :member-name
                                  "securityProfileName" :http-query
                                  "securityProfileName")
                                 (max-results :target-type tiny-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetBehaviorModelTrainingSummariesRequest"))

(smithy/sdk/shapes:define-output get-behavior-model-training-summaries-response
                                 common-lisp:nil
                                 ((summaries :target-type
                                   behavior-model-training-summaries
                                   :member-name "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetBehaviorModelTrainingSummariesResponse"))

(smithy/sdk/shapes:define-input get-buckets-aggregation-request common-lisp:nil
                                ((index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (aggregation-field :target-type
                                  aggregation-field :required common-lisp:t
                                  :member-name "aggregationField")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion")
                                 (buckets-aggregation-type :target-type
                                  buckets-aggregation-type :required
                                  common-lisp:t :member-name
                                  "bucketsAggregationType"))
                                (:shape-name "GetBucketsAggregationRequest"))

(smithy/sdk/shapes:define-output get-buckets-aggregation-response
                                 common-lisp:nil
                                 ((total-count :target-type count :member-name
                                   "totalCount")
                                  (buckets :target-type buckets :member-name
                                   "buckets"))
                                 (:shape-name "GetBucketsAggregationResponse"))

(smithy/sdk/shapes:define-input get-cardinality-request common-lisp:nil
                                ((index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (aggregation-field :target-type
                                  aggregation-field :member-name
                                  "aggregationField")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion"))
                                (:shape-name "GetCardinalityRequest"))

(smithy/sdk/shapes:define-output get-cardinality-response common-lisp:nil
                                 ((cardinality :target-type count :member-name
                                   "cardinality"))
                                 (:shape-name "GetCardinalityResponse"))

(smithy/sdk/shapes:define-input get-command-execution-request common-lisp:nil
                                ((execution-id :target-type
                                  command-execution-id :required common-lisp:t
                                  :member-name "executionId" :http-label
                                  common-lisp:t)
                                 (target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "targetArn"
                                  :http-query "targetArn")
                                 (include-result :target-type
                                  boolean-wrapper-object :member-name
                                  "includeResult" :http-query "includeResult"))
                                (:shape-name "GetCommandExecutionRequest"))

(smithy/sdk/shapes:define-output get-command-execution-response common-lisp:nil
                                 ((execution-id :target-type
                                   command-execution-id :member-name
                                   "executionId")
                                  (command-arn :target-type command-arn
                                   :member-name "commandArn")
                                  (target-arn :target-type target-arn
                                   :member-name "targetArn")
                                  (status :target-type command-execution-status
                                   :member-name "status")
                                  (status-reason :target-type status-reason
                                   :member-name "statusReason")
                                  (result :target-type
                                   command-execution-result-map :member-name
                                   "result")
                                  (parameters :target-type
                                   command-execution-parameter-map :member-name
                                   "parameters")
                                  (execution-timeout-seconds :target-type
                                   command-execution-timeout-in-seconds
                                   :member-name "executionTimeoutSeconds")
                                  (created-at :target-type date-type
                                   :member-name "createdAt")
                                  (last-updated-at :target-type date-type
                                   :member-name "lastUpdatedAt")
                                  (started-at :target-type date-type
                                   :member-name "startedAt")
                                  (completed-at :target-type date-type
                                   :member-name "completedAt")
                                  (time-to-live :target-type date-type
                                   :member-name "timeToLive"))
                                 (:shape-name "GetCommandExecutionResponse"))

(smithy/sdk/shapes:define-input get-command-request common-lisp:nil
                                ((command-id :target-type command-id :required
                                  common-lisp:t :member-name "commandId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetCommandRequest"))

(smithy/sdk/shapes:define-output get-command-response common-lisp:nil
                                 ((command-id :target-type command-id
                                   :member-name "commandId")
                                  (command-arn :target-type command-arn
                                   :member-name "commandArn")
                                  (namespace :target-type command-namespace
                                   :member-name "namespace")
                                  (display-name :target-type display-name
                                   :member-name "displayName")
                                  (description :target-type command-description
                                   :member-name "description")
                                  (mandatory-parameters :target-type
                                   command-parameter-list :member-name
                                   "mandatoryParameters")
                                  (payload :target-type command-payload
                                   :member-name "payload")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (created-at :target-type date-type
                                   :member-name "createdAt")
                                  (last-updated-at :target-type date-type
                                   :member-name "lastUpdatedAt")
                                  (deprecated :target-type deprecation-flag
                                   :member-name "deprecated")
                                  (pending-deletion :target-type
                                   boolean-wrapper-object :member-name
                                   "pendingDeletion"))
                                 (:shape-name "GetCommandResponse"))

(smithy/sdk/shapes:define-input get-effective-policies-request common-lisp:nil
                                ((principal :target-type principal :member-name
                                  "principal")
                                 (cognito-identity-pool-id :target-type
                                  cognito-identity-pool-id :member-name
                                  "cognitoIdentityPoolId")
                                 (thing-name :target-type thing-name
                                  :member-name "thingName" :http-query
                                  "thingName"))
                                (:shape-name "GetEffectivePoliciesRequest"))

(smithy/sdk/shapes:define-output get-effective-policies-response
                                 common-lisp:nil
                                 ((effective-policies :target-type
                                   effective-policies :member-name
                                   "effectivePolicies"))
                                 (:shape-name "GetEffectivePoliciesResponse"))

(smithy/sdk/shapes:define-input get-indexing-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetIndexingConfigurationRequest"))

(smithy/sdk/shapes:define-output get-indexing-configuration-response
                                 common-lisp:nil
                                 ((thing-indexing-configuration :target-type
                                   thing-indexing-configuration :member-name
                                   "thingIndexingConfiguration")
                                  (thing-group-indexing-configuration
                                   :target-type
                                   thing-group-indexing-configuration
                                   :member-name
                                   "thingGroupIndexingConfiguration"))
                                 (:shape-name
                                  "GetIndexingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-job-document-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (before-substitution :target-type
                                  before-substitution-flag :member-name
                                  "beforeSubstitution" :http-query
                                  "beforeSubstitution"))
                                (:shape-name "GetJobDocumentRequest"))

(smithy/sdk/shapes:define-output get-job-document-response common-lisp:nil
                                 ((document :target-type job-document
                                   :member-name "document"))
                                 (:shape-name "GetJobDocumentResponse"))

(smithy/sdk/shapes:define-input get-logging-options-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetLoggingOptionsRequest"))

(smithy/sdk/shapes:define-output get-logging-options-response common-lisp:nil
                                 ((role-arn :target-type aws-arn :member-name
                                   "roleArn")
                                  (log-level :target-type log-level
                                   :member-name "logLevel"))
                                 (:shape-name "GetLoggingOptionsResponse"))

(smithy/sdk/shapes:define-input get-otaupdate-request common-lisp:nil
                                ((ota-update-id :target-type otaupdate-id
                                  :required common-lisp:t :member-name
                                  "otaUpdateId" :http-label common-lisp:t))
                                (:shape-name "GetOTAUpdateRequest"))

(smithy/sdk/shapes:define-output get-otaupdate-response common-lisp:nil
                                 ((ota-update-info :target-type otaupdate-info
                                   :member-name "otaUpdateInfo"))
                                 (:shape-name "GetOTAUpdateResponse"))

(smithy/sdk/shapes:define-input get-package-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetPackageConfigurationRequest"))

(smithy/sdk/shapes:define-output get-package-configuration-response
                                 common-lisp:nil
                                 ((version-update-by-jobs-config :target-type
                                   version-update-by-jobs-config :member-name
                                   "versionUpdateByJobsConfig"))
                                 (:shape-name
                                  "GetPackageConfigurationResponse"))

(smithy/sdk/shapes:define-input get-package-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t))
                                (:shape-name "GetPackageRequest"))

(smithy/sdk/shapes:define-output get-package-response common-lisp:nil
                                 ((package-name :target-type package-name
                                   :member-name "packageName")
                                  (package-arn :target-type package-arn
                                   :member-name "packageArn")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (default-version-name :target-type
                                   version-name :member-name
                                   "defaultVersionName")
                                  (creation-date :target-type creation-date
                                   :member-name "creationDate")
                                  (last-modified-date :target-type
                                   last-modified-date :member-name
                                   "lastModifiedDate"))
                                 (:shape-name "GetPackageResponse"))

(smithy/sdk/shapes:define-input get-package-version-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t))
                                (:shape-name "GetPackageVersionRequest"))

(smithy/sdk/shapes:define-output get-package-version-response common-lisp:nil
                                 ((package-version-arn :target-type
                                   package-version-arn :member-name
                                   "packageVersionArn")
                                  (package-name :target-type package-name
                                   :member-name "packageName")
                                  (version-name :target-type version-name
                                   :member-name "versionName")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (attributes :target-type resource-attributes
                                   :member-name "attributes")
                                  (artifact :target-type
                                   package-version-artifact :member-name
                                   "artifact")
                                  (status :target-type package-version-status
                                   :member-name "status")
                                  (error-reason :target-type
                                   package-version-error-reason :member-name
                                   "errorReason")
                                  (creation-date :target-type creation-date
                                   :member-name "creationDate")
                                  (last-modified-date :target-type
                                   last-modified-date :member-name
                                   "lastModifiedDate")
                                  (sbom :target-type sbom :member-name "sbom")
                                  (sbom-validation-status :target-type
                                   sbom-validation-status :member-name
                                   "sbomValidationStatus")
                                  (recipe :target-type package-version-recipe
                                   :member-name "recipe"))
                                 (:shape-name "GetPackageVersionResponse"))

(smithy/sdk/shapes:define-input get-percentiles-request common-lisp:nil
                                ((index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (aggregation-field :target-type
                                  aggregation-field :member-name
                                  "aggregationField")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion")
                                 (percents :target-type percent-list
                                  :member-name "percents"))
                                (:shape-name "GetPercentilesRequest"))

(smithy/sdk/shapes:define-output get-percentiles-response common-lisp:nil
                                 ((percentiles :target-type percentiles
                                   :member-name "percentiles"))
                                 (:shape-name "GetPercentilesResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy-name :target-type policy-name
                                   :member-name "policyName")
                                  (policy-arn :target-type policy-arn
                                   :member-name "policyArn")
                                  (policy-document :target-type policy-document
                                   :member-name "policyDocument")
                                  (default-version-id :target-type
                                   policy-version-id :member-name
                                   "defaultVersionId")
                                  (creation-date :target-type date-type
                                   :member-name "creationDate")
                                  (last-modified-date :target-type date-type
                                   :member-name "lastModifiedDate")
                                  (generation-id :target-type generation-id
                                   :member-name "generationId"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-policy-version-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (policy-version-id :target-type
                                  policy-version-id :required common-lisp:t
                                  :member-name "policyVersionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPolicyVersionRequest"))

(smithy/sdk/shapes:define-output get-policy-version-response common-lisp:nil
                                 ((policy-arn :target-type policy-arn
                                   :member-name "policyArn")
                                  (policy-name :target-type policy-name
                                   :member-name "policyName")
                                  (policy-document :target-type policy-document
                                   :member-name "policyDocument")
                                  (policy-version-id :target-type
                                   policy-version-id :member-name
                                   "policyVersionId")
                                  (is-default-version :target-type
                                   is-default-version :member-name
                                   "isDefaultVersion")
                                  (creation-date :target-type date-type
                                   :member-name "creationDate")
                                  (last-modified-date :target-type date-type
                                   :member-name "lastModifiedDate")
                                  (generation-id :target-type generation-id
                                   :member-name "generationId"))
                                 (:shape-name "GetPolicyVersionResponse"))

(smithy/sdk/shapes:define-input get-registration-code-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetRegistrationCodeRequest"))

(smithy/sdk/shapes:define-output get-registration-code-response common-lisp:nil
                                 ((registration-code :target-type
                                   registration-code :member-name
                                   "registrationCode"))
                                 (:shape-name "GetRegistrationCodeResponse"))

(smithy/sdk/shapes:define-input get-statistics-request common-lisp:nil
                                ((index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (aggregation-field :target-type
                                  aggregation-field :member-name
                                  "aggregationField")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion"))
                                (:shape-name "GetStatisticsRequest"))

(smithy/sdk/shapes:define-output get-statistics-response common-lisp:nil
                                 ((statistics :target-type statistics
                                   :member-name "statistics"))
                                 (:shape-name "GetStatisticsResponse"))

(smithy/sdk/shapes:define-input get-thing-connectivity-data-request
                                common-lisp:nil
                                ((thing-name :target-type
                                  connectivity-api-thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetThingConnectivityDataRequest"))

(smithy/sdk/shapes:define-output get-thing-connectivity-data-response
                                 common-lisp:nil
                                 ((thing-name :target-type
                                   connectivity-api-thing-name :member-name
                                   "thingName")
                                  (connected :target-type boolean :member-name
                                   "connected")
                                  (timestamp :target-type timestamp
                                   :member-name "timestamp")
                                  (disconnect-reason :target-type
                                   disconnect-reason-value :member-name
                                   "disconnectReason"))
                                 (:shape-name
                                  "GetThingConnectivityDataResponse"))

(smithy/sdk/shapes:define-input get-topic-rule-destination-request
                                common-lisp:nil
                                ((arn :target-type aws-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTopicRuleDestinationRequest"))

(smithy/sdk/shapes:define-output get-topic-rule-destination-response
                                 common-lisp:nil
                                 ((topic-rule-destination :target-type
                                   topic-rule-destination :member-name
                                   "topicRuleDestination"))
                                 (:shape-name
                                  "GetTopicRuleDestinationResponse"))

(smithy/sdk/shapes:define-input get-topic-rule-request common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "ruleName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTopicRuleRequest"))

(smithy/sdk/shapes:define-output get-topic-rule-response common-lisp:nil
                                 ((rule-arn :target-type rule-arn :member-name
                                   "ruleArn")
                                  (rule :target-type topic-rule :member-name
                                   "rule"))
                                 (:shape-name "GetTopicRuleResponse"))

(smithy/sdk/shapes:define-input get-v2logging-options-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetV2LoggingOptionsRequest"))

(smithy/sdk/shapes:define-output get-v2logging-options-response common-lisp:nil
                                 ((role-arn :target-type aws-arn :member-name
                                   "roleArn")
                                  (default-log-level :target-type log-level
                                   :member-name "defaultLogLevel")
                                  (disable-all-logs :target-type
                                   disable-all-logs :member-name
                                   "disableAllLogs"))
                                 (:shape-name "GetV2LoggingOptionsResponse"))

(smithy/sdk/shapes:define-structure group-name-and-arn common-lisp:nil
                                    ((group-name :target-type thing-group-name
                                      :member-name "groupName")
                                     (group-arn :target-type thing-group-arn
                                      :member-name "groupArn"))
                                    (:shape-name "GroupNameAndArn"))

(smithy/sdk/shapes:define-type hash-algorithm smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hash-key-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hash-key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list header-list :member http-action-header)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-action common-lisp:nil
                                    ((url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (confirmation-url :target-type url
                                      :member-name "confirmationUrl")
                                     (headers :target-type header-list
                                      :member-name "headers")
                                     (auth :target-type http-authorization
                                      :member-name "auth"))
                                    (:shape-name "HttpAction"))

(smithy/sdk/shapes:define-structure http-action-header common-lisp:nil
                                    ((key :target-type header-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type header-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "HttpActionHeader"))

(smithy/sdk/shapes:define-structure http-authorization common-lisp:nil
                                    ((sigv4 :target-type sig-v4authorization
                                      :member-name "sigv4"))
                                    (:shape-name "HttpAuthorization"))

(smithy/sdk/shapes:define-structure http-context common-lisp:nil
                                    ((headers :target-type http-headers
                                      :member-name "headers")
                                     (query-string :target-type
                                      http-query-string :member-name
                                      "queryString"))
                                    (:shape-name "HttpContext"))

(smithy/sdk/shapes:define-type http-header-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map http-headers :key http-header-name :value
                              http-header-value)

(smithy/sdk/shapes:define-type http-query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-url-destination-configuration
                                    common-lisp:nil
                                    ((confirmation-url :target-type url
                                      :required common-lisp:t :member-name
                                      "confirmationUrl"))
                                    (:shape-name
                                     "HttpUrlDestinationConfiguration"))

(smithy/sdk/shapes:define-structure http-url-destination-properties
                                    common-lisp:nil
                                    ((confirmation-url :target-type url
                                      :member-name "confirmationUrl"))
                                    (:shape-name
                                     "HttpUrlDestinationProperties"))

(smithy/sdk/shapes:define-structure http-url-destination-summary
                                    common-lisp:nil
                                    ((confirmation-url :target-type url
                                      :member-name "confirmationUrl"))
                                    (:shape-name "HttpUrlDestinationSummary"))

(smithy/sdk/shapes:define-structure implicit-deny common-lisp:nil
                                    ((policies :target-type policies
                                      :member-name "policies"))
                                    (:shape-name "ImplicitDeny"))

(smithy/sdk/shapes:define-type in-progress-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type in-progress-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type in-progress-timeout-in-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type increment-factor smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type index-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list index-names-list :member index-name)

(smithy/sdk/shapes:define-error index-not-ready-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "IndexNotReadyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type index-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum index-status
    common-lisp:nil
  (:active "ACTIVE")
  (:building "BUILDING")
  (:rebuilding "REBUILDING"))

(smithy/sdk/shapes:define-structure indexing-filter common-lisp:nil
                                    ((named-shadow-names :target-type
                                      named-shadow-names-filter :member-name
                                      "namedShadowNames")
                                     (geo-locations :target-type
                                      geo-locations-filter :member-name
                                      "geoLocations"))
                                    (:shape-name "IndexingFilter"))

(smithy/sdk/shapes:define-type inline-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type input-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer-parameter-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InternalException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-aggregation-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InvalidAggregationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-query-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InvalidQueryException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-response-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InvalidResponseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-transition-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InvalidStateTransitionException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure iot-analytics-action common-lisp:nil
                                    ((channel-arn :target-type aws-arn
                                      :member-name "channelArn")
                                     (channel-name :target-type channel-name
                                      :member-name "channelName")
                                     (batch-mode :target-type batch-mode
                                      :member-name "batchMode")
                                     (role-arn :target-type aws-arn
                                      :member-name "roleArn"))
                                    (:shape-name "IotAnalyticsAction"))

(smithy/sdk/shapes:define-structure iot-events-action common-lisp:nil
                                    ((input-name :target-type input-name
                                      :required common-lisp:t :member-name
                                      "inputName")
                                     (message-id :target-type message-id
                                      :member-name "messageId")
                                     (batch-mode :target-type batch-mode
                                      :member-name "batchMode")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "IotEventsAction"))

(smithy/sdk/shapes:define-structure iot-site-wise-action common-lisp:nil
                                    ((put-asset-property-value-entries
                                      :target-type
                                      put-asset-property-value-entry-list
                                      :required common-lisp:t :member-name
                                      "putAssetPropertyValueEntries")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "IotSiteWiseAction"))

(smithy/sdk/shapes:define-type is-authenticated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-default-version
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-disabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-suppressed smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure issuer-certificate-identifier
                                    common-lisp:nil
                                    ((issuer-certificate-subject :target-type
                                      issuer-certificate-subject :member-name
                                      "issuerCertificateSubject")
                                     (issuer-id :target-type issuer-id
                                      :member-name "issuerId")
                                     (issuer-certificate-serial-number
                                      :target-type
                                      issuer-certificate-serial-number
                                      :member-name
                                      "issuerCertificateSerialNumber"))
                                    (:shape-name "IssuerCertificateIdentifier"))

(smithy/sdk/shapes:define-type issuer-certificate-serial-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type issuer-certificate-subject
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type issuer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((job-arn :target-type job-arn :member-name
                                      "jobArn")
                                     (job-id :target-type job-id :member-name
                                      "jobId")
                                     (target-selection :target-type
                                      target-selection :member-name
                                      "targetSelection")
                                     (status :target-type job-status
                                      :member-name "status")
                                     (force-canceled :target-type forced
                                      :member-name "forceCanceled")
                                     (reason-code :target-type reason-code
                                      :member-name "reasonCode")
                                     (comment :target-type comment :member-name
                                      "comment")
                                     (targets :target-type job-targets
                                      :member-name "targets")
                                     (description :target-type job-description
                                      :member-name "description")
                                     (presigned-url-config :target-type
                                      presigned-url-config :member-name
                                      "presignedUrlConfig")
                                     (job-executions-rollout-config
                                      :target-type
                                      job-executions-rollout-config
                                      :member-name
                                      "jobExecutionsRolloutConfig")
                                     (abort-config :target-type abort-config
                                      :member-name "abortConfig")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt")
                                     (completed-at :target-type date-type
                                      :member-name "completedAt")
                                     (job-process-details :target-type
                                      job-process-details :member-name
                                      "jobProcessDetails")
                                     (timeout-config :target-type
                                      timeout-config :member-name
                                      "timeoutConfig")
                                     (namespace-id :target-type namespace-id
                                      :member-name "namespaceId")
                                     (job-template-arn :target-type
                                      job-template-arn :member-name
                                      "jobTemplateArn")
                                     (job-executions-retry-config :target-type
                                      job-executions-retry-config :member-name
                                      "jobExecutionsRetryConfig")
                                     (document-parameters :target-type
                                      parameter-map :member-name
                                      "documentParameters")
                                     (is-concurrent :target-type
                                      boolean-wrapper-object :member-name
                                      "isConcurrent")
                                     (scheduling-config :target-type
                                      scheduling-config :member-name
                                      "schedulingConfig")
                                     (scheduled-job-rollouts :target-type
                                      scheduled-job-rollout-list :member-name
                                      "scheduledJobRollouts")
                                     (destination-package-versions :target-type
                                      destination-package-versions :member-name
                                      "destinationPackageVersions"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-type job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-document-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-end-behavior
    common-lisp:nil
  (:stop-rollout "STOP_ROLLOUT")
  (:cancel "CANCEL")
  (:force-cancel "FORCE_CANCEL"))

(smithy/sdk/shapes:define-structure job-execution common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (status :target-type job-execution-status
                                      :member-name "status")
                                     (force-canceled :target-type forced
                                      :member-name "forceCanceled")
                                     (status-details :target-type
                                      job-execution-status-details :member-name
                                      "statusDetails")
                                     (thing-arn :target-type thing-arn
                                      :member-name "thingArn")
                                     (queued-at :target-type date-type
                                      :member-name "queuedAt")
                                     (started-at :target-type date-type
                                      :member-name "startedAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt")
                                     (execution-number :target-type
                                      execution-number :member-name
                                      "executionNumber")
                                     (version-number :target-type
                                      version-number :member-name
                                      "versionNumber")
                                     (approximate-seconds-before-timed-out
                                      :target-type
                                      approximate-seconds-before-timed-out
                                      :member-name
                                      "approximateSecondsBeforeTimedOut"))
                                    (:shape-name "JobExecution"))

(smithy/sdk/shapes:define-enum job-execution-failure-type
    common-lisp:nil
  (:failed "FAILED")
  (:rejected "REJECTED")
  (:timed-out "TIMED_OUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-enum job-execution-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:rejected "REJECTED")
  (:removed "REMOVED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure job-execution-status-details
                                    common-lisp:nil
                                    ((details-map :target-type details-map
                                      :member-name "detailsMap"))
                                    (:shape-name "JobExecutionStatusDetails"))

(smithy/sdk/shapes:define-structure job-execution-summary common-lisp:nil
                                    ((status :target-type job-execution-status
                                      :member-name "status")
                                     (queued-at :target-type date-type
                                      :member-name "queuedAt")
                                     (started-at :target-type date-type
                                      :member-name "startedAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt")
                                     (execution-number :target-type
                                      execution-number :member-name
                                      "executionNumber")
                                     (retry-attempt :target-type retry-attempt
                                      :member-name "retryAttempt"))
                                    (:shape-name "JobExecutionSummary"))

(smithy/sdk/shapes:define-structure job-execution-summary-for-job
                                    common-lisp:nil
                                    ((thing-arn :target-type thing-arn
                                      :member-name "thingArn")
                                     (job-execution-summary :target-type
                                      job-execution-summary :member-name
                                      "jobExecutionSummary"))
                                    (:shape-name "JobExecutionSummaryForJob"))

(smithy/sdk/shapes:define-list job-execution-summary-for-job-list :member
                               job-execution-summary-for-job)

(smithy/sdk/shapes:define-structure job-execution-summary-for-thing
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (job-execution-summary :target-type
                                      job-execution-summary :member-name
                                      "jobExecutionSummary"))
                                    (:shape-name "JobExecutionSummaryForThing"))

(smithy/sdk/shapes:define-list job-execution-summary-for-thing-list :member
                               job-execution-summary-for-thing)

(smithy/sdk/shapes:define-structure job-executions-retry-config common-lisp:nil
                                    ((criteria-list :target-type
                                      retry-criteria-list :required
                                      common-lisp:t :member-name
                                      "criteriaList"))
                                    (:shape-name "JobExecutionsRetryConfig"))

(smithy/sdk/shapes:define-structure job-executions-rollout-config
                                    common-lisp:nil
                                    ((maximum-per-minute :target-type
                                      max-job-executions-per-min :member-name
                                      "maximumPerMinute")
                                     (exponential-rate :target-type
                                      exponential-rollout-rate :member-name
                                      "exponentialRate"))
                                    (:shape-name "JobExecutionsRolloutConfig"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-process-details common-lisp:nil
                                    ((processing-targets :target-type
                                      processing-target-name-list :member-name
                                      "processingTargets")
                                     (number-of-canceled-things :target-type
                                      canceled-things :member-name
                                      "numberOfCanceledThings")
                                     (number-of-succeeded-things :target-type
                                      succeeded-things :member-name
                                      "numberOfSucceededThings")
                                     (number-of-failed-things :target-type
                                      failed-things :member-name
                                      "numberOfFailedThings")
                                     (number-of-rejected-things :target-type
                                      rejected-things :member-name
                                      "numberOfRejectedThings")
                                     (number-of-queued-things :target-type
                                      queued-things :member-name
                                      "numberOfQueuedThings")
                                     (number-of-in-progress-things :target-type
                                      in-progress-things :member-name
                                      "numberOfInProgressThings")
                                     (number-of-removed-things :target-type
                                      removed-things :member-name
                                      "numberOfRemovedThings")
                                     (number-of-timed-out-things :target-type
                                      timed-out-things :member-name
                                      "numberOfTimedOutThings"))
                                    (:shape-name "JobProcessDetails"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:canceled "CANCELED")
  (:completed "COMPLETED")
  (:deletion-in-progress "DELETION_IN_PROGRESS")
  (:scheduled "SCHEDULED"))

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((job-arn :target-type job-arn :member-name
                                      "jobArn")
                                     (job-id :target-type job-id :member-name
                                      "jobId")
                                     (thing-group-id :target-type
                                      thing-group-id :member-name
                                      "thingGroupId")
                                     (target-selection :target-type
                                      target-selection :member-name
                                      "targetSelection")
                                     (status :target-type job-status
                                      :member-name "status")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt")
                                     (completed-at :target-type date-type
                                      :member-name "completedAt")
                                     (is-concurrent :target-type
                                      boolean-wrapper-object :member-name
                                      "isConcurrent"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-list job-summary-list :member job-summary)

(smithy/sdk/shapes:define-list job-targets :member target-arn)

(smithy/sdk/shapes:define-type job-template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-template-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-template-summary common-lisp:nil
                                    ((job-template-arn :target-type
                                      job-template-arn :member-name
                                      "jobTemplateArn")
                                     (job-template-id :target-type
                                      job-template-id :member-name
                                      "jobTemplateId")
                                     (description :target-type job-description
                                      :member-name "description")
                                     (created-at :target-type date-type
                                      :member-name "createdAt"))
                                    (:shape-name "JobTemplateSummary"))

(smithy/sdk/shapes:define-list job-template-summary-list :member
                               job-template-summary)

(smithy/sdk/shapes:define-type json-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kafka-action common-lisp:nil
                                    ((destination-arn :target-type aws-arn
                                      :required common-lisp:t :member-name
                                      "destinationArn")
                                     (topic :target-type string :required
                                      common-lisp:t :member-name "topic")
                                     (key :target-type string :member-name
                                      "key")
                                     (partition :target-type string
                                      :member-name "partition")
                                     (client-properties :target-type
                                      client-properties :required common-lisp:t
                                      :member-name "clientProperties")
                                     (headers :target-type kafka-headers
                                      :member-name "headers"))
                                    (:shape-name "KafkaAction"))

(smithy/sdk/shapes:define-structure kafka-action-header common-lisp:nil
                                    ((key :target-type kafka-header-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type kafka-header-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "KafkaActionHeader"))

(smithy/sdk/shapes:define-type kafka-header-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kafka-header-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kafka-headers :member kafka-action-header)

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-pair common-lisp:nil
                                    ((public-key :target-type public-key
                                      :member-name "PublicKey")
                                     (private-key :target-type private-key
                                      :member-name "PrivateKey"))
                                    (:shape-name "KeyPair"))

(smithy/sdk/shapes:define-type key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (stream-name :target-type stream-name
                                      :required common-lisp:t :member-name
                                      "streamName")
                                     (partition-key :target-type partition-key
                                      :member-name "partitionKey"))
                                    (:shape-name "KinesisAction"))

(smithy/sdk/shapes:define-type kms-access-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-action common-lisp:nil
                                    ((function-arn :target-type function-arn
                                      :required common-lisp:t :member-name
                                      "functionArn"))
                                    (:shape-name "LambdaAction"))

(smithy/sdk/shapes:define-type laser-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type last-modified-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-updated-at-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input list-active-violations-request common-lisp:nil
                                ((thing-name :target-type
                                  device-defender-thing-name :member-name
                                  "thingName" :http-query "thingName")
                                 (security-profile-name :target-type
                                  security-profile-name :member-name
                                  "securityProfileName" :http-query
                                  "securityProfileName")
                                 (behavior-criteria-type :target-type
                                  behavior-criteria-type :member-name
                                  "behaviorCriteriaType" :http-query
                                  "behaviorCriteriaType")
                                 (list-suppressed-alerts :target-type
                                  list-suppressed-alerts :member-name
                                  "listSuppressedAlerts" :http-query
                                  "listSuppressedAlerts")
                                 (verification-state :target-type
                                  verification-state :member-name
                                  "verificationState" :http-query
                                  "verificationState")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListActiveViolationsRequest"))

(smithy/sdk/shapes:define-output list-active-violations-response
                                 common-lisp:nil
                                 ((active-violations :target-type
                                   active-violations :member-name
                                   "activeViolations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListActiveViolationsResponse"))

(smithy/sdk/shapes:define-input list-attached-policies-request common-lisp:nil
                                ((target :target-type policy-target :required
                                  common-lisp:t :member-name "target"
                                  :http-label common-lisp:t)
                                 (recursive :target-type recursive :member-name
                                  "recursive" :http-query "recursive")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize"))
                                (:shape-name "ListAttachedPoliciesRequest"))

(smithy/sdk/shapes:define-output list-attached-policies-response
                                 common-lisp:nil
                                 ((policies :target-type policies :member-name
                                   "policies")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListAttachedPoliciesResponse"))

(smithy/sdk/shapes:define-input list-audit-findings-request common-lisp:nil
                                ((task-id :target-type audit-task-id
                                  :member-name "taskId")
                                 (check-name :target-type audit-check-name
                                  :member-name "checkName")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "resourceIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (start-time :target-type timestamp
                                  :member-name "startTime")
                                 (end-time :target-type timestamp :member-name
                                  "endTime")
                                 (list-suppressed-findings :target-type
                                  list-suppressed-findings :member-name
                                  "listSuppressedFindings"))
                                (:shape-name "ListAuditFindingsRequest"))

(smithy/sdk/shapes:define-output list-audit-findings-response common-lisp:nil
                                 ((findings :target-type audit-findings
                                   :member-name "findings")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAuditFindingsResponse"))

(smithy/sdk/shapes:define-input
 list-audit-mitigation-actions-executions-request common-lisp:nil
 ((task-id :target-type mitigation-actions-task-id :required common-lisp:t
   :member-name "taskId" :http-query "taskId")
  (action-status :target-type audit-mitigation-actions-execution-status
   :member-name "actionStatus" :http-query "actionStatus")
  (finding-id :target-type finding-id :required common-lisp:t :member-name
   "findingId" :http-query "findingId")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListAuditMitigationActionsExecutionsRequest"))

(smithy/sdk/shapes:define-output
 list-audit-mitigation-actions-executions-response common-lisp:nil
 ((actions-executions :target-type
   audit-mitigation-action-execution-metadata-list :member-name
   "actionsExecutions")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListAuditMitigationActionsExecutionsResponse"))

(smithy/sdk/shapes:define-input list-audit-mitigation-actions-tasks-request
                                common-lisp:nil
                                ((audit-task-id :target-type audit-task-id
                                  :member-name "auditTaskId" :http-query
                                  "auditTaskId")
                                 (finding-id :target-type finding-id
                                  :member-name "findingId" :http-query
                                  "findingId")
                                 (task-status :target-type
                                  audit-mitigation-actions-task-status
                                  :member-name "taskStatus" :http-query
                                  "taskStatus")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime"))
                                (:shape-name
                                 "ListAuditMitigationActionsTasksRequest"))

(smithy/sdk/shapes:define-output list-audit-mitigation-actions-tasks-response
                                 common-lisp:nil
                                 ((tasks :target-type
                                   audit-mitigation-actions-task-metadata-list
                                   :member-name "tasks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAuditMitigationActionsTasksResponse"))

(smithy/sdk/shapes:define-input list-audit-suppressions-request common-lisp:nil
                                ((check-name :target-type audit-check-name
                                  :member-name "checkName")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "resourceIdentifier")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListAuditSuppressionsRequest"))

(smithy/sdk/shapes:define-output list-audit-suppressions-response
                                 common-lisp:nil
                                 ((suppressions :target-type
                                   audit-suppression-list :member-name
                                   "suppressions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAuditSuppressionsResponse"))

(smithy/sdk/shapes:define-input list-audit-tasks-request common-lisp:nil
                                ((start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (task-type :target-type audit-task-type
                                  :member-name "taskType" :http-query
                                  "taskType")
                                 (task-status :target-type audit-task-status
                                  :member-name "taskStatus" :http-query
                                  "taskStatus")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAuditTasksRequest"))

(smithy/sdk/shapes:define-output list-audit-tasks-response common-lisp:nil
                                 ((tasks :target-type audit-task-metadata-list
                                   :member-name "tasks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAuditTasksResponse"))

(smithy/sdk/shapes:define-input list-authorizers-request common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder")
                                 (status :target-type authorizer-status
                                  :member-name "status" :http-query "status"))
                                (:shape-name "ListAuthorizersRequest"))

(smithy/sdk/shapes:define-output list-authorizers-response common-lisp:nil
                                 ((authorizers :target-type authorizers
                                   :member-name "authorizers")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListAuthorizersResponse"))

(smithy/sdk/shapes:define-input list-billing-groups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (name-prefix-filter :target-type
                                  billing-group-name :member-name
                                  "namePrefixFilter" :http-query
                                  "namePrefixFilter"))
                                (:shape-name "ListBillingGroupsRequest"))

(smithy/sdk/shapes:define-output list-billing-groups-response common-lisp:nil
                                 ((billing-groups :target-type
                                   billing-group-name-and-arn-list :member-name
                                   "billingGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBillingGroupsResponse"))

(smithy/sdk/shapes:define-input list-cacertificates-request common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder")
                                 (template-name :target-type template-name
                                  :member-name "templateName" :http-query
                                  "templateName"))
                                (:shape-name "ListCACertificatesRequest"))

(smithy/sdk/shapes:define-output list-cacertificates-response common-lisp:nil
                                 ((certificates :target-type cacertificates
                                   :member-name "certificates")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListCACertificatesResponse"))

(smithy/sdk/shapes:define-input list-certificate-providers-request
                                common-lisp:nil
                                ((next-token :target-type marker :member-name
                                  "nextToken" :http-query "nextToken")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListCertificateProvidersRequest"))

(smithy/sdk/shapes:define-output list-certificate-providers-response
                                 common-lisp:nil
                                 ((certificate-providers :target-type
                                   certificate-providers :member-name
                                   "certificateProviders")
                                  (next-token :target-type marker :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListCertificateProvidersResponse"))

(smithy/sdk/shapes:define-input list-certificates-by-carequest common-lisp:nil
                                ((ca-certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "caCertificateId" :http-label common-lisp:t)
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListCertificatesByCARequest"))

(smithy/sdk/shapes:define-output list-certificates-by-caresponse
                                 common-lisp:nil
                                 ((certificates :target-type certificates
                                   :member-name "certificates")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListCertificatesByCAResponse"))

(smithy/sdk/shapes:define-input list-certificates-request common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListCertificatesRequest"))

(smithy/sdk/shapes:define-output list-certificates-response common-lisp:nil
                                 ((certificates :target-type certificates
                                   :member-name "certificates")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListCertificatesResponse"))

(smithy/sdk/shapes:define-input list-command-executions-request common-lisp:nil
                                ((max-results :target-type command-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (namespace :target-type command-namespace
                                  :member-name "namespace")
                                 (status :target-type command-execution-status
                                  :member-name "status")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder")
                                 (started-time-filter :target-type time-filter
                                  :member-name "startedTimeFilter")
                                 (completed-time-filter :target-type
                                  time-filter :member-name
                                  "completedTimeFilter")
                                 (target-arn :target-type target-arn
                                  :member-name "targetArn")
                                 (command-arn :target-type command-arn
                                  :member-name "commandArn"))
                                (:shape-name "ListCommandExecutionsRequest"))

(smithy/sdk/shapes:define-output list-command-executions-response
                                 common-lisp:nil
                                 ((command-executions :target-type
                                   command-execution-summary-list :member-name
                                   "commandExecutions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCommandExecutionsResponse"))

(smithy/sdk/shapes:define-input list-commands-request common-lisp:nil
                                ((max-results :target-type command-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (namespace :target-type command-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (command-parameter-name :target-type
                                  command-parameter-name :member-name
                                  "commandParameterName" :http-query
                                  "commandParameterName")
                                 (sort-order :target-type sort-order
                                  :member-name "sortOrder" :http-query
                                  "sortOrder"))
                                (:shape-name "ListCommandsRequest"))

(smithy/sdk/shapes:define-output list-commands-response common-lisp:nil
                                 ((commands :target-type command-summary-list
                                   :member-name "commands")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCommandsResponse"))

(smithy/sdk/shapes:define-input list-custom-metrics-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListCustomMetricsRequest"))

(smithy/sdk/shapes:define-output list-custom-metrics-response common-lisp:nil
                                 ((metric-names :target-type metric-names
                                   :member-name "metricNames")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCustomMetricsResponse"))

(smithy/sdk/shapes:define-input
 list-detect-mitigation-actions-executions-request common-lisp:nil
 ((task-id :target-type mitigation-actions-task-id :member-name "taskId"
   :http-query "taskId")
  (violation-id :target-type violation-id :member-name "violationId"
   :http-query "violationId")
  (thing-name :target-type device-defender-thing-name :member-name "thingName"
   :http-query "thingName")
  (start-time :target-type timestamp :member-name "startTime" :http-query
   "startTime")
  (end-time :target-type timestamp :member-name "endTime" :http-query
   "endTime")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListDetectMitigationActionsExecutionsRequest"))

(smithy/sdk/shapes:define-output
 list-detect-mitigation-actions-executions-response common-lisp:nil
 ((actions-executions :target-type detect-mitigation-action-execution-list
   :member-name "actionsExecutions")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListDetectMitigationActionsExecutionsResponse"))

(smithy/sdk/shapes:define-input list-detect-mitigation-actions-tasks-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime"))
                                (:shape-name
                                 "ListDetectMitigationActionsTasksRequest"))

(smithy/sdk/shapes:define-output list-detect-mitigation-actions-tasks-response
                                 common-lisp:nil
                                 ((tasks :target-type
                                   detect-mitigation-actions-task-summary-list
                                   :member-name "tasks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDetectMitigationActionsTasksResponse"))

(smithy/sdk/shapes:define-input list-dimensions-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDimensionsRequest"))

(smithy/sdk/shapes:define-output list-dimensions-response common-lisp:nil
                                 ((dimension-names :target-type dimension-names
                                   :member-name "dimensionNames")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDimensionsResponse"))

(smithy/sdk/shapes:define-input list-domain-configurations-request
                                common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (service-type :target-type service-type
                                  :member-name "serviceType" :http-query
                                  "serviceType"))
                                (:shape-name "ListDomainConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-domain-configurations-response
                                 common-lisp:nil
                                 ((domain-configurations :target-type
                                   domain-configurations :member-name
                                   "domainConfigurations")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name
                                  "ListDomainConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-fleet-metrics-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFleetMetricsRequest"))

(smithy/sdk/shapes:define-output list-fleet-metrics-response common-lisp:nil
                                 ((fleet-metrics :target-type
                                   fleet-metric-name-and-arn-list :member-name
                                   "fleetMetrics")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFleetMetricsResponse"))

(smithy/sdk/shapes:define-input list-indices-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type query-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListIndicesRequest"))

(smithy/sdk/shapes:define-output list-indices-response common-lisp:nil
                                 ((index-names :target-type index-names-list
                                   :member-name "indexNames")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIndicesResponse"))

(smithy/sdk/shapes:define-input list-job-executions-for-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (status :target-type job-execution-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type laser-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListJobExecutionsForJobRequest"))

(smithy/sdk/shapes:define-output list-job-executions-for-job-response
                                 common-lisp:nil
                                 ((execution-summaries :target-type
                                   job-execution-summary-for-job-list
                                   :member-name "executionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListJobExecutionsForJobResponse"))

(smithy/sdk/shapes:define-input list-job-executions-for-thing-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (status :target-type job-execution-status
                                  :member-name "status" :http-query "status")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId" :http-query
                                  "namespaceId")
                                 (max-results :target-type laser-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (job-id :target-type job-id :member-name
                                  "jobId" :http-query "jobId"))
                                (:shape-name
                                 "ListJobExecutionsForThingRequest"))

(smithy/sdk/shapes:define-output list-job-executions-for-thing-response
                                 common-lisp:nil
                                 ((execution-summaries :target-type
                                   job-execution-summary-for-thing-list
                                   :member-name "executionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListJobExecutionsForThingResponse"))

(smithy/sdk/shapes:define-input list-job-templates-request common-lisp:nil
                                ((max-results :target-type laser-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListJobTemplatesRequest"))

(smithy/sdk/shapes:define-output list-job-templates-response common-lisp:nil
                                 ((job-templates :target-type
                                   job-template-summary-list :member-name
                                   "jobTemplates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobTemplatesResponse"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((status :target-type job-status :member-name
                                  "status" :http-query "status")
                                 (target-selection :target-type
                                  target-selection :member-name
                                  "targetSelection" :http-query
                                  "targetSelection")
                                 (max-results :target-type laser-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (thing-group-name :target-type
                                  thing-group-name :member-name
                                  "thingGroupName" :http-query
                                  "thingGroupName")
                                 (thing-group-id :target-type thing-group-id
                                  :member-name "thingGroupId" :http-query
                                  "thingGroupId")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId" :http-query
                                  "namespaceId"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-response common-lisp:nil
                                 ((jobs :target-type job-summary-list
                                   :member-name "jobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobsResponse"))

(smithy/sdk/shapes:define-input list-managed-job-templates-request
                                common-lisp:nil
                                ((template-name :target-type
                                  managed-job-template-name :member-name
                                  "templateName" :http-query "templateName")
                                 (max-results :target-type laser-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListManagedJobTemplatesRequest"))

(smithy/sdk/shapes:define-output list-managed-job-templates-response
                                 common-lisp:nil
                                 ((managed-job-templates :target-type
                                   managed-job-templates-summary-list
                                   :member-name "managedJobTemplates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListManagedJobTemplatesResponse"))

(smithy/sdk/shapes:define-input list-metric-values-request common-lisp:nil
                                ((thing-name :target-type
                                  device-defender-thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-query "thingName")
                                 (metric-name :target-type behavior-metric
                                  :required common-lisp:t :member-name
                                  "metricName" :http-query "metricName")
                                 (dimension-name :target-type dimension-name
                                  :member-name "dimensionName" :http-query
                                  "dimensionName")
                                 (dimension-value-operator :target-type
                                  dimension-value-operator :member-name
                                  "dimensionValueOperator" :http-query
                                  "dimensionValueOperator")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListMetricValuesRequest"))

(smithy/sdk/shapes:define-output list-metric-values-response common-lisp:nil
                                 ((metric-datum-list :target-type
                                   metric-datum-list :member-name
                                   "metricDatumList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMetricValuesResponse"))

(smithy/sdk/shapes:define-input list-mitigation-actions-request common-lisp:nil
                                ((action-type :target-type
                                  mitigation-action-type :member-name
                                  "actionType" :http-query "actionType")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListMitigationActionsRequest"))

(smithy/sdk/shapes:define-output list-mitigation-actions-response
                                 common-lisp:nil
                                 ((action-identifiers :target-type
                                   mitigation-action-identifier-list
                                   :member-name "actionIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMitigationActionsResponse"))

(smithy/sdk/shapes:define-input list-otaupdates-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (ota-update-status :target-type
                                  otaupdate-status :member-name
                                  "otaUpdateStatus" :http-query
                                  "otaUpdateStatus"))
                                (:shape-name "ListOTAUpdatesRequest"))

(smithy/sdk/shapes:define-output list-otaupdates-response common-lisp:nil
                                 ((ota-updates :target-type otaupdates-summary
                                   :member-name "otaUpdates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListOTAUpdatesResponse"))

(smithy/sdk/shapes:define-input list-outgoing-certificates-request
                                common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListOutgoingCertificatesRequest"))

(smithy/sdk/shapes:define-output list-outgoing-certificates-response
                                 common-lisp:nil
                                 ((outgoing-certificates :target-type
                                   outgoing-certificates :member-name
                                   "outgoingCertificates")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name
                                  "ListOutgoingCertificatesResponse"))

(smithy/sdk/shapes:define-input list-package-versions-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (status :target-type package-version-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type
                                  package-catalog-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPackageVersionsRequest"))

(smithy/sdk/shapes:define-output list-package-versions-response common-lisp:nil
                                 ((package-version-summaries :target-type
                                   package-version-summary-list :member-name
                                   "packageVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPackageVersionsResponse"))

(smithy/sdk/shapes:define-input list-packages-request common-lisp:nil
                                ((max-results :target-type
                                  package-catalog-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPackagesRequest"))

(smithy/sdk/shapes:define-output list-packages-response common-lisp:nil
                                 ((package-summaries :target-type
                                   package-summary-list :member-name
                                   "packageSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPackagesResponse"))

(smithy/sdk/shapes:define-input list-policies-request common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListPoliciesRequest"))

(smithy/sdk/shapes:define-output list-policies-response common-lisp:nil
                                 ((policies :target-type policies :member-name
                                   "policies")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListPoliciesResponse"))

(smithy/sdk/shapes:define-input list-policy-principals-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-header
                                  "x-amzn-iot-policy")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListPolicyPrincipalsRequest"))

(smithy/sdk/shapes:define-output list-policy-principals-response
                                 common-lisp:nil
                                 ((principals :target-type principals
                                   :member-name "principals")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListPolicyPrincipalsResponse"))

(smithy/sdk/shapes:define-input list-policy-versions-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t))
                                (:shape-name "ListPolicyVersionsRequest"))

(smithy/sdk/shapes:define-output list-policy-versions-response common-lisp:nil
                                 ((policy-versions :target-type policy-versions
                                   :member-name "policyVersions"))
                                 (:shape-name "ListPolicyVersionsResponse"))

(smithy/sdk/shapes:define-input list-principal-policies-request common-lisp:nil
                                ((principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-iot-principal")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListPrincipalPoliciesRequest"))

(smithy/sdk/shapes:define-output list-principal-policies-response
                                 common-lisp:nil
                                 ((policies :target-type policies :member-name
                                   "policies")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListPrincipalPoliciesResponse"))

(smithy/sdk/shapes:define-input list-principal-things-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-principal"))
                                (:shape-name "ListPrincipalThingsRequest"))

(smithy/sdk/shapes:define-output list-principal-things-response common-lisp:nil
                                 ((things :target-type thing-name-list
                                   :member-name "things")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPrincipalThingsResponse"))

(smithy/sdk/shapes:define-input list-principal-things-v2request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "principal"
                                  :http-header "x-amzn-principal")
                                 (thing-principal-type :target-type
                                  thing-principal-type :member-name
                                  "thingPrincipalType" :http-query
                                  "thingPrincipalType"))
                                (:shape-name "ListPrincipalThingsV2Request"))

(smithy/sdk/shapes:define-output list-principal-things-v2response
                                 common-lisp:nil
                                 ((principal-thing-objects :target-type
                                   principal-thing-objects :member-name
                                   "principalThingObjects")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPrincipalThingsV2Response"))

(smithy/sdk/shapes:define-input list-provisioning-template-versions-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListProvisioningTemplateVersionsRequest"))

(smithy/sdk/shapes:define-output list-provisioning-template-versions-response
                                 common-lisp:nil
                                 ((versions :target-type
                                   provisioning-template-version-listing
                                   :member-name "versions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListProvisioningTemplateVersionsResponse"))

(smithy/sdk/shapes:define-input list-provisioning-templates-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListProvisioningTemplatesRequest"))

(smithy/sdk/shapes:define-output list-provisioning-templates-response
                                 common-lisp:nil
                                 ((templates :target-type
                                   provisioning-template-listing :member-name
                                   "templates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListProvisioningTemplatesResponse"))

(smithy/sdk/shapes:define-input
 list-related-resources-for-audit-finding-request common-lisp:nil
 ((finding-id :target-type finding-id :required common-lisp:t :member-name
   "findingId" :http-query "findingId")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListRelatedResourcesForAuditFindingRequest"))

(smithy/sdk/shapes:define-output
 list-related-resources-for-audit-finding-response common-lisp:nil
 ((related-resources :target-type related-resources :member-name
   "relatedResources")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListRelatedResourcesForAuditFindingResponse"))

(smithy/sdk/shapes:define-input list-role-aliases-request common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize")
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListRoleAliasesRequest"))

(smithy/sdk/shapes:define-output list-role-aliases-response common-lisp:nil
                                 ((role-aliases :target-type role-aliases
                                   :member-name "roleAliases")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListRoleAliasesResponse"))

(smithy/sdk/shapes:define-input list-sbom-validation-results-request
                                common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t)
                                 (validation-result :target-type
                                  sbom-validation-result :member-name
                                  "validationResult" :http-query
                                  "validationResult")
                                 (max-results :target-type
                                  package-catalog-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListSbomValidationResultsRequest"))

(smithy/sdk/shapes:define-output list-sbom-validation-results-response
                                 common-lisp:nil
                                 ((validation-result-summaries :target-type
                                   sbom-validation-result-summary-list
                                   :member-name "validationResultSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSbomValidationResultsResponse"))

(smithy/sdk/shapes:define-input list-scheduled-audits-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListScheduledAuditsRequest"))

(smithy/sdk/shapes:define-output list-scheduled-audits-response common-lisp:nil
                                 ((scheduled-audits :target-type
                                   scheduled-audit-metadata-list :member-name
                                   "scheduledAudits")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListScheduledAuditsResponse"))

(smithy/sdk/shapes:define-input list-security-profiles-for-target-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (recursive :target-type recursive :member-name
                                  "recursive" :http-query "recursive")
                                 (security-profile-target-arn :target-type
                                  security-profile-target-arn :required
                                  common-lisp:t :member-name
                                  "securityProfileTargetArn" :http-query
                                  "securityProfileTargetArn"))
                                (:shape-name
                                 "ListSecurityProfilesForTargetRequest"))

(smithy/sdk/shapes:define-output list-security-profiles-for-target-response
                                 common-lisp:nil
                                 ((security-profile-target-mappings
                                   :target-type
                                   security-profile-target-mappings
                                   :member-name
                                   "securityProfileTargetMappings")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSecurityProfilesForTargetResponse"))

(smithy/sdk/shapes:define-input list-security-profiles-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (dimension-name :target-type dimension-name
                                  :member-name "dimensionName" :http-query
                                  "dimensionName")
                                 (metric-name :target-type metric-name
                                  :member-name "metricName" :http-query
                                  "metricName"))
                                (:shape-name "ListSecurityProfilesRequest"))

(smithy/sdk/shapes:define-output list-security-profiles-response
                                 common-lisp:nil
                                 ((security-profile-identifiers :target-type
                                   security-profile-identifiers :member-name
                                   "securityProfileIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSecurityProfilesResponse"))

(smithy/sdk/shapes:define-input list-streams-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (ascending-order :target-type ascending-order
                                  :member-name "ascendingOrder" :http-query
                                  "isAscendingOrder"))
                                (:shape-name "ListStreamsRequest"))

(smithy/sdk/shapes:define-output list-streams-response common-lisp:nil
                                 ((streams :target-type streams-summary
                                   :member-name "streams")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStreamsResponse"))

(smithy/sdk/shapes:define-type list-suppressed-alerts
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type list-suppressed-findings
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-query "resourceArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-targets-for-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (marker :target-type marker :member-name
                                  "marker" :http-query "marker")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize"))
                                (:shape-name "ListTargetsForPolicyRequest"))

(smithy/sdk/shapes:define-output list-targets-for-policy-response
                                 common-lisp:nil
                                 ((targets :target-type policy-targets
                                   :member-name "targets")
                                  (next-marker :target-type marker :member-name
                                   "nextMarker"))
                                 (:shape-name "ListTargetsForPolicyResponse"))

(smithy/sdk/shapes:define-input list-targets-for-security-profile-request
                                common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListTargetsForSecurityProfileRequest"))

(smithy/sdk/shapes:define-output list-targets-for-security-profile-response
                                 common-lisp:nil
                                 ((security-profile-targets :target-type
                                   security-profile-targets :member-name
                                   "securityProfileTargets")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTargetsForSecurityProfileResponse"))

(smithy/sdk/shapes:define-input list-thing-groups-for-thing-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListThingGroupsForThingRequest"))

(smithy/sdk/shapes:define-output list-thing-groups-for-thing-response
                                 common-lisp:nil
                                 ((thing-groups :target-type
                                   thing-group-name-and-arn-list :member-name
                                   "thingGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListThingGroupsForThingResponse"))

(smithy/sdk/shapes:define-input list-thing-groups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (parent-group :target-type thing-group-name
                                  :member-name "parentGroup" :http-query
                                  "parentGroup")
                                 (name-prefix-filter :target-type
                                  thing-group-name :member-name
                                  "namePrefixFilter" :http-query
                                  "namePrefixFilter")
                                 (recursive :target-type
                                  recursive-without-default :member-name
                                  "recursive" :http-query "recursive"))
                                (:shape-name "ListThingGroupsRequest"))

(smithy/sdk/shapes:define-output list-thing-groups-response common-lisp:nil
                                 ((thing-groups :target-type
                                   thing-group-name-and-arn-list :member-name
                                   "thingGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListThingGroupsResponse"))

(smithy/sdk/shapes:define-input list-thing-principals-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t))
                                (:shape-name "ListThingPrincipalsRequest"))

(smithy/sdk/shapes:define-output list-thing-principals-response common-lisp:nil
                                 ((principals :target-type principals
                                   :member-name "principals")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListThingPrincipalsResponse"))

(smithy/sdk/shapes:define-input list-thing-principals-v2request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (thing-principal-type :target-type
                                  thing-principal-type :member-name
                                  "thingPrincipalType" :http-query
                                  "thingPrincipalType"))
                                (:shape-name "ListThingPrincipalsV2Request"))

(smithy/sdk/shapes:define-output list-thing-principals-v2response
                                 common-lisp:nil
                                 ((thing-principal-objects :target-type
                                   thing-principal-objects :member-name
                                   "thingPrincipalObjects")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListThingPrincipalsV2Response"))

(smithy/sdk/shapes:define-input list-thing-registration-task-reports-request
                                common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t)
                                 (report-type :target-type report-type
                                  :required common-lisp:t :member-name
                                  "reportType" :http-query "reportType")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListThingRegistrationTaskReportsRequest"))

(smithy/sdk/shapes:define-output list-thing-registration-task-reports-response
                                 common-lisp:nil
                                 ((resource-links :target-type s3file-url-list
                                   :member-name "resourceLinks")
                                  (report-type :target-type report-type
                                   :member-name "reportType")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListThingRegistrationTaskReportsResponse"))

(smithy/sdk/shapes:define-input list-thing-registration-tasks-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (status :target-type status :member-name
                                  "status" :http-query "status"))
                                (:shape-name
                                 "ListThingRegistrationTasksRequest"))

(smithy/sdk/shapes:define-output list-thing-registration-tasks-response
                                 common-lisp:nil
                                 ((task-ids :target-type task-id-list
                                   :member-name "taskIds")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListThingRegistrationTasksResponse"))

(smithy/sdk/shapes:define-input list-thing-types-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (thing-type-name :target-type thing-type-name
                                  :member-name "thingTypeName" :http-query
                                  "thingTypeName"))
                                (:shape-name "ListThingTypesRequest"))

(smithy/sdk/shapes:define-output list-thing-types-response common-lisp:nil
                                 ((thing-types :target-type thing-type-list
                                   :member-name "thingTypes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListThingTypesResponse"))

(smithy/sdk/shapes:define-input list-things-in-billing-group-request
                                common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :required common-lisp:t
                                  :member-name "billingGroupName" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListThingsInBillingGroupRequest"))

(smithy/sdk/shapes:define-output list-things-in-billing-group-response
                                 common-lisp:nil
                                 ((things :target-type thing-name-list
                                   :member-name "things")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListThingsInBillingGroupResponse"))

(smithy/sdk/shapes:define-input list-things-in-thing-group-request
                                common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (recursive :target-type recursive :member-name
                                  "recursive" :http-query "recursive")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListThingsInThingGroupRequest"))

(smithy/sdk/shapes:define-output list-things-in-thing-group-response
                                 common-lisp:nil
                                 ((things :target-type thing-name-list
                                   :member-name "things")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListThingsInThingGroupResponse"))

(smithy/sdk/shapes:define-input list-things-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type registry-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (attribute-name :target-type attribute-name
                                  :member-name "attributeName" :http-query
                                  "attributeName")
                                 (attribute-value :target-type attribute-value
                                  :member-name "attributeValue" :http-query
                                  "attributeValue")
                                 (thing-type-name :target-type thing-type-name
                                  :member-name "thingTypeName" :http-query
                                  "thingTypeName")
                                 (use-prefix-attribute-value :target-type
                                  use-prefix-attribute-value :member-name
                                  "usePrefixAttributeValue" :http-query
                                  "usePrefixAttributeValue"))
                                (:shape-name "ListThingsRequest"))

(smithy/sdk/shapes:define-output list-things-response common-lisp:nil
                                 ((things :target-type thing-attribute-list
                                   :member-name "things")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListThingsResponse"))

(smithy/sdk/shapes:define-input list-topic-rule-destinations-request
                                common-lisp:nil
                                ((max-results :target-type
                                  topic-rule-destination-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListTopicRuleDestinationsRequest"))

(smithy/sdk/shapes:define-output list-topic-rule-destinations-response
                                 common-lisp:nil
                                 ((destination-summaries :target-type
                                   topic-rule-destination-summaries
                                   :member-name "destinationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTopicRuleDestinationsResponse"))

(smithy/sdk/shapes:define-input list-topic-rules-request common-lisp:nil
                                ((topic :target-type topic :member-name "topic"
                                  :http-query "topic")
                                 (max-results :target-type
                                  topic-rule-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (rule-disabled :target-type is-disabled
                                  :member-name "ruleDisabled" :http-query
                                  "ruleDisabled"))
                                (:shape-name "ListTopicRulesRequest"))

(smithy/sdk/shapes:define-output list-topic-rules-response common-lisp:nil
                                 ((rules :target-type topic-rule-list
                                   :member-name "rules")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTopicRulesResponse"))

(smithy/sdk/shapes:define-input list-v2logging-levels-request common-lisp:nil
                                ((target-type :target-type log-target-type
                                  :member-name "targetType" :http-query
                                  "targetType")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type skyfall-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListV2LoggingLevelsRequest"))

(smithy/sdk/shapes:define-output list-v2logging-levels-response common-lisp:nil
                                 ((log-target-configurations :target-type
                                   log-target-configurations :member-name
                                   "logTargetConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListV2LoggingLevelsResponse"))

(smithy/sdk/shapes:define-input list-violation-events-request common-lisp:nil
                                ((start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (thing-name :target-type
                                  device-defender-thing-name :member-name
                                  "thingName" :http-query "thingName")
                                 (security-profile-name :target-type
                                  security-profile-name :member-name
                                  "securityProfileName" :http-query
                                  "securityProfileName")
                                 (behavior-criteria-type :target-type
                                  behavior-criteria-type :member-name
                                  "behaviorCriteriaType" :http-query
                                  "behaviorCriteriaType")
                                 (list-suppressed-alerts :target-type
                                  list-suppressed-alerts :member-name
                                  "listSuppressedAlerts" :http-query
                                  "listSuppressedAlerts")
                                 (verification-state :target-type
                                  verification-state :member-name
                                  "verificationState" :http-query
                                  "verificationState")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListViolationEventsRequest"))

(smithy/sdk/shapes:define-output list-violation-events-response common-lisp:nil
                                 ((violation-events :target-type
                                   violation-events :member-name
                                   "violationEvents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListViolationEventsResponse"))

(smithy/sdk/shapes:define-structure location-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (tracker-name :target-type string
                                      :required common-lisp:t :member-name
                                      "trackerName")
                                     (device-id :target-type string :required
                                      common-lisp:t :member-name "deviceId")
                                     (timestamp :target-type location-timestamp
                                      :member-name "timestamp")
                                     (latitude :target-type string :required
                                      common-lisp:t :member-name "latitude")
                                     (longitude :target-type string :required
                                      common-lisp:t :member-name "longitude"))
                                    (:shape-name "LocationAction"))

(smithy/sdk/shapes:define-structure location-timestamp common-lisp:nil
                                    ((value :target-type string :required
                                      common-lisp:t :member-name "value")
                                     (unit :target-type string :member-name
                                      "unit"))
                                    (:shape-name "LocationTimestamp"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:debug "DEBUG")
  (:info "INFO")
  (:error "ERROR")
  (:warn "WARN")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure log-target common-lisp:nil
                                    ((target-type :target-type log-target-type
                                      :required common-lisp:t :member-name
                                      "targetType")
                                     (target-name :target-type log-target-name
                                      :member-name "targetName"))
                                    (:shape-name "LogTarget"))

(smithy/sdk/shapes:define-structure log-target-configuration common-lisp:nil
                                    ((log-target :target-type log-target
                                      :member-name "logTarget")
                                     (log-level :target-type log-level
                                      :member-name "logLevel"))
                                    (:shape-name "LogTargetConfiguration"))

(smithy/sdk/shapes:define-list log-target-configurations :member
                               log-target-configuration)

(smithy/sdk/shapes:define-type log-target-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-target-type
    common-lisp:nil
  (:default "DEFAULT")
  (:thing-group "THING_GROUP")
  (:client-id "CLIENT_ID")
  (:source-ip "SOURCE_IP")
  (:principal-id "PRINCIPAL_ID"))

(smithy/sdk/shapes:define-structure logging-options-payload common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (log-level :target-type log-level
                                      :member-name "logLevel"))
                                    (:shape-name "LoggingOptionsPayload"))

(smithy/sdk/shapes:define-type long-parameter-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure machine-learning-detection-config
                                    common-lisp:nil
                                    ((confidence-level :target-type
                                      confidence-level :required common-lisp:t
                                      :member-name "confidenceLevel"))
                                    (:shape-name
                                     "MachineLearningDetectionConfig"))

(smithy/sdk/shapes:define-structure maintenance-window common-lisp:nil
                                    ((start-time :target-type cron-expression
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (duration-in-minutes :target-type
                                      duration-in-minutes :required
                                      common-lisp:t :member-name
                                      "durationInMinutes"))
                                    (:shape-name "MaintenanceWindow"))

(smithy/sdk/shapes:define-list maintenance-windows :member maintenance-window)

(smithy/sdk/shapes:define-error malformed-policy-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "MalformedPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type managed-job-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-job-template-summary
                                    common-lisp:nil
                                    ((template-arn :target-type
                                      job-template-arn :member-name
                                      "templateArn")
                                     (template-name :target-type
                                      managed-job-template-name :member-name
                                      "templateName")
                                     (description :target-type job-description
                                      :member-name "description")
                                     (environments :target-type environments
                                      :member-name "environments")
                                     (template-version :target-type
                                      managed-template-version :member-name
                                      "templateVersion"))
                                    (:shape-name "ManagedJobTemplateSummary"))

(smithy/sdk/shapes:define-list managed-job-templates-summary-list :member
                               managed-job-template-summary)

(smithy/sdk/shapes:define-type managed-template-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-buckets smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-job-executions-per-min
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type maximum-per-minute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-expiry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum message-format
    common-lisp:nil
  (:raw "RAW")
  (:json "JSON"))

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-datum common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (value :target-type metric-value
                                      :member-name "value"))
                                    (:shape-name "MetricDatum"))

(smithy/sdk/shapes:define-list metric-datum-list :member metric-datum)

(smithy/sdk/shapes:define-structure metric-dimension common-lisp:nil
                                    ((dimension-name :target-type
                                      dimension-name :required common-lisp:t
                                      :member-name "dimensionName")
                                     (operator :target-type
                                      dimension-value-operator :member-name
                                      "operator"))
                                    (:shape-name "MetricDimension"))

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-names :member metric-name)

(smithy/sdk/shapes:define-structure metric-to-retain common-lisp:nil
                                    ((metric :target-type behavior-metric
                                      :required common-lisp:t :member-name
                                      "metric")
                                     (metric-dimension :target-type
                                      metric-dimension :member-name
                                      "metricDimension")
                                     (export-metric :target-type export-metric
                                      :member-name "exportMetric"))
                                    (:shape-name "MetricToRetain"))

(smithy/sdk/shapes:define-structure metric-value common-lisp:nil
                                    ((count :target-type unsigned-long
                                      :member-name "count")
                                     (cidrs :target-type cidrs :member-name
                                      "cidrs")
                                     (ports :target-type ports :member-name
                                      "ports")
                                     (number :target-type number :member-name
                                      "number")
                                     (numbers :target-type number-list
                                      :member-name "numbers")
                                     (strings :target-type string-list
                                      :member-name "strings"))
                                    (:shape-name "MetricValue"))

(smithy/sdk/shapes:define-structure metrics-export-config common-lisp:nil
                                    ((mqtt-topic :target-type mqtt-topic
                                      :required common-lisp:t :member-name
                                      "mqttTopic")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "MetricsExportConfig"))

(smithy/sdk/shapes:define-type mime-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type minimum-number-of-executed-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type missing-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list missing-context-values :member
                               missing-context-value)

(smithy/sdk/shapes:define-structure mitigation-action common-lisp:nil
                                    ((name :target-type mitigation-action-name
                                      :member-name "name")
                                     (id :target-type mitigation-action-id
                                      :member-name "id")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (action-params :target-type
                                      mitigation-action-params :member-name
                                      "actionParams"))
                                    (:shape-name "MitigationAction"))

(smithy/sdk/shapes:define-type mitigation-action-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mitigation-action-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mitigation-action-identifier
                                    common-lisp:nil
                                    ((action-name :target-type
                                      mitigation-action-name :member-name
                                      "actionName")
                                     (action-arn :target-type
                                      mitigation-action-arn :member-name
                                      "actionArn")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate"))
                                    (:shape-name "MitigationActionIdentifier"))

(smithy/sdk/shapes:define-list mitigation-action-identifier-list :member
                               mitigation-action-identifier)

(smithy/sdk/shapes:define-list mitigation-action-list :member mitigation-action)

(smithy/sdk/shapes:define-type mitigation-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list mitigation-action-name-list :member
                               mitigation-action-name)

(smithy/sdk/shapes:define-structure mitigation-action-params common-lisp:nil
                                    ((update-device-certificate-params
                                      :target-type
                                      update-device-certificate-params
                                      :member-name
                                      "updateDeviceCertificateParams")
                                     (update-cacertificate-params :target-type
                                      update-cacertificate-params :member-name
                                      "updateCACertificateParams")
                                     (add-things-to-thing-group-params
                                      :target-type
                                      add-things-to-thing-group-params
                                      :member-name
                                      "addThingsToThingGroupParams")
                                     (replace-default-policy-version-params
                                      :target-type
                                      replace-default-policy-version-params
                                      :member-name
                                      "replaceDefaultPolicyVersionParams")
                                     (enable-io-tlogging-params :target-type
                                      enable-io-tlogging-params :member-name
                                      "enableIoTLoggingParams")
                                     (publish-finding-to-sns-params
                                      :target-type
                                      publish-finding-to-sns-params
                                      :member-name
                                      "publishFindingToSnsParams"))
                                    (:shape-name "MitigationActionParams"))

(smithy/sdk/shapes:define-enum mitigation-action-type
    common-lisp:nil
  (:update-device-certificate "UPDATE_DEVICE_CERTIFICATE")
  (:update-ca-certificate "UPDATE_CA_CERTIFICATE")
  (:add-things-to-thing-group "ADD_THINGS_TO_THING_GROUP")
  (:replace-default-policy-version "REPLACE_DEFAULT_POLICY_VERSION")
  (:enable-iot-logging "ENABLE_IOT_LOGGING")
  (:publish-finding-to-sns "PUBLISH_FINDING_TO_SNS"))

(smithy/sdk/shapes:define-type mitigation-actions-task-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-status
    common-lisp:nil
  (:pending-build "PENDING_BUILD")
  (:active "ACTIVE")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-structure mqtt5configuration common-lisp:nil
                                    ((propagating-attributes :target-type
                                      propagating-attribute-list :member-name
                                      "propagatingAttributes"))
                                    (:shape-name "Mqtt5Configuration"))

(smithy/sdk/shapes:define-type mqtt-client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mqtt-context common-lisp:nil
                                    ((username :target-type mqtt-username
                                      :member-name "username")
                                     (password :target-type mqtt-password
                                      :member-name "password")
                                     (client-id :target-type mqtt-client-id
                                      :member-name "clientId"))
                                    (:shape-name "MqttContext"))

(smithy/sdk/shapes:define-structure mqtt-headers common-lisp:nil
                                    ((payload-format-indicator :target-type
                                      payload-format-indicator :member-name
                                      "payloadFormatIndicator")
                                     (content-type :target-type content-type
                                      :member-name "contentType")
                                     (response-topic :target-type
                                      response-topic :member-name
                                      "responseTopic")
                                     (correlation-data :target-type
                                      correlation-data :member-name
                                      "correlationData")
                                     (message-expiry :target-type
                                      message-expiry :member-name
                                      "messageExpiry")
                                     (user-properties :target-type
                                      user-properties :member-name
                                      "userProperties"))
                                    (:shape-name "MqttHeaders"))

(smithy/sdk/shapes:define-type mqtt-password smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type mqtt-topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mqtt-username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum named-shadow-indexing-mode
    common-lisp:nil
  (:off "OFF")
  (:on "ON"))

(smithy/sdk/shapes:define-list named-shadow-names-filter :member shadow-name)

(smithy/sdk/shapes:define-type namespace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-compliant-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure non-compliant-resource common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-identifier :target-type
                                      resource-identifier :member-name
                                      "resourceIdentifier")
                                     (additional-info :target-type string-map
                                      :member-name "additionalInfo"))
                                    (:shape-name "NonCompliantResource"))

(smithy/sdk/shapes:define-type non-compliant-resources-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error not-configured-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "NotConfiguredException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type number smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list number-list :member number)

(smithy/sdk/shapes:define-type number-of-retries
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ocsplambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type otaupdate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type otaupdate-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type otaupdate-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure otaupdate-file common-lisp:nil
                                    ((file-name :target-type file-name
                                      :member-name "fileName")
                                     (file-type :target-type file-type
                                      :member-name "fileType")
                                     (file-version :target-type
                                      otaupdate-file-version :member-name
                                      "fileVersion")
                                     (file-location :target-type file-location
                                      :member-name "fileLocation")
                                     (code-signing :target-type code-signing
                                      :member-name "codeSigning")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes"))
                                    (:shape-name "OTAUpdateFile"))

(smithy/sdk/shapes:define-type otaupdate-file-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list otaupdate-files :member otaupdate-file)

(smithy/sdk/shapes:define-type otaupdate-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure otaupdate-info common-lisp:nil
                                    ((ota-update-id :target-type otaupdate-id
                                      :member-name "otaUpdateId")
                                     (ota-update-arn :target-type otaupdate-arn
                                      :member-name "otaUpdateArn")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "lastModifiedDate")
                                     (description :target-type
                                      otaupdate-description :member-name
                                      "description")
                                     (targets :target-type targets :member-name
                                      "targets")
                                     (protocols :target-type protocols
                                      :member-name "protocols")
                                     (aws-job-executions-rollout-config
                                      :target-type
                                      aws-job-executions-rollout-config
                                      :member-name
                                      "awsJobExecutionsRolloutConfig")
                                     (aws-job-presigned-url-config :target-type
                                      aws-job-presigned-url-config :member-name
                                      "awsJobPresignedUrlConfig")
                                     (target-selection :target-type
                                      target-selection :member-name
                                      "targetSelection")
                                     (ota-update-files :target-type
                                      otaupdate-files :member-name
                                      "otaUpdateFiles")
                                     (ota-update-status :target-type
                                      otaupdate-status :member-name
                                      "otaUpdateStatus")
                                     (aws-iot-job-id :target-type
                                      aws-iot-job-id :member-name
                                      "awsIotJobId")
                                     (aws-iot-job-arn :target-type
                                      aws-iot-job-arn :member-name
                                      "awsIotJobArn")
                                     (error-info :target-type error-info
                                      :member-name "errorInfo")
                                     (additional-parameters :target-type
                                      additional-parameter-map :member-name
                                      "additionalParameters"))
                                    (:shape-name "OTAUpdateInfo"))

(smithy/sdk/shapes:define-enum otaupdate-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure otaupdate-summary common-lisp:nil
                                    ((ota-update-id :target-type otaupdate-id
                                      :member-name "otaUpdateId")
                                     (ota-update-arn :target-type otaupdate-arn
                                      :member-name "otaUpdateArn")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate"))
                                    (:shape-name "OTAUpdateSummary"))

(smithy/sdk/shapes:define-list otaupdates-summary :member otaupdate-summary)

(smithy/sdk/shapes:define-structure open-search-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (endpoint :target-type
                                      elasticsearch-endpoint :required
                                      common-lisp:t :member-name "endpoint")
                                     (index :target-type elasticsearch-index
                                      :required common-lisp:t :member-name
                                      "index")
                                     (type :target-type elasticsearch-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (id :target-type elasticsearch-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name "OpenSearchAction"))

(smithy/sdk/shapes:define-type optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type optional-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure outgoing-certificate common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "certificateId")
                                     (transferred-to :target-type
                                      aws-account-id :member-name
                                      "transferredTo")
                                     (transfer-date :target-type date-type
                                      :member-name "transferDate")
                                     (transfer-message :target-type message
                                      :member-name "transferMessage")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate"))
                                    (:shape-name "OutgoingCertificate"))

(smithy/sdk/shapes:define-list outgoing-certificates :member
                               outgoing-certificate)

(smithy/sdk/shapes:define-type override-dynamic-groups
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type package-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-catalog-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type package-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-summary common-lisp:nil
                                    ((package-name :target-type package-name
                                      :member-name "packageName")
                                     (default-version-name :target-type
                                      version-name :member-name
                                      "defaultVersionName")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (last-modified-date :target-type
                                      last-modified-date :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "PackageSummary"))

(smithy/sdk/shapes:define-list package-summary-list :member package-summary)

(smithy/sdk/shapes:define-enum package-version-action
    common-lisp:nil
  (:publish "PUBLISH")
  (:deprecate "DEPRECATE"))

(smithy/sdk/shapes:define-type package-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-version-artifact common-lisp:nil
                                    ((s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "PackageVersionArtifact"))

(smithy/sdk/shapes:define-type package-version-error-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-version-recipe
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum package-version-status
    common-lisp:nil
  (:draft "DRAFT")
  (:published "PUBLISHED")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-structure package-version-summary common-lisp:nil
                                    ((package-name :target-type package-name
                                      :member-name "packageName")
                                     (version-name :target-type version-name
                                      :member-name "versionName")
                                     (status :target-type
                                      package-version-status :member-name
                                      "status")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (last-modified-date :target-type
                                      last-modified-date :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "PackageVersionSummary"))

(smithy/sdk/shapes:define-list package-version-summary-list :member
                               package-version-summary)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type parameter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map parameter-map :key parameter-key :value
                              parameter-value)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map parameters :key parameter :value value)

(smithy/sdk/shapes:define-type partition-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload-format-indicator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percent smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list percent-list :member percent)

(smithy/sdk/shapes:define-structure percent-pair common-lisp:nil
                                    ((percent :target-type percent :member-name
                                      "percent")
                                     (value :target-type percent-value
                                      :member-name "value"))
                                    (:shape-name "PercentPair"))

(smithy/sdk/shapes:define-type percent-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list percentiles :member percent-pair)

(smithy/sdk/shapes:define-type platform smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policies :member policy)

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (policy-arn :target-type policy-arn
                                      :member-name "policyArn"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-type policy-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-documents :member policy-document)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-names :member policy-name)

(smithy/sdk/shapes:define-type policy-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-targets :member policy-target)

(smithy/sdk/shapes:define-enum policy-template-name
    common-lisp:nil
  (:blank-policy "BLANK_POLICY"))

(smithy/sdk/shapes:define-structure policy-version common-lisp:nil
                                    ((version-id :target-type policy-version-id
                                      :member-name "versionId")
                                     (is-default-version :target-type
                                      is-default-version :member-name
                                      "isDefaultVersion")
                                     (create-date :target-type date-type
                                      :member-name "createDate"))
                                    (:shape-name "PolicyVersion"))

(smithy/sdk/shapes:define-type policy-version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-version-identifier common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (policy-version-id :target-type
                                      policy-version-id :member-name
                                      "policyVersionId"))
                                    (:shape-name "PolicyVersionIdentifier"))

(smithy/sdk/shapes:define-list policy-versions :member policy-version)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list ports :member port)

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure presigned-url-config common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (expires-in-sec :target-type
                                      expires-in-sec :member-name
                                      "expiresInSec"))
                                    (:shape-name "PresignedUrlConfig"))

(smithy/sdk/shapes:define-type primitive-boolean
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure principal-thing-object common-lisp:nil
                                    ((thing-name :target-type thing-name
                                      :required common-lisp:t :member-name
                                      "thingName")
                                     (thing-principal-type :target-type
                                      thing-principal-type :member-name
                                      "thingPrincipalType"))
                                    (:shape-name "PrincipalThingObject"))

(smithy/sdk/shapes:define-list principal-thing-objects :member
                               principal-thing-object)

(smithy/sdk/shapes:define-list principals :member principal-arn)

(smithy/sdk/shapes:define-type private-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type processing-target-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list processing-target-name-list :member
                               processing-target-name)

(smithy/sdk/shapes:define-structure propagating-attribute common-lisp:nil
                                    ((user-property-key :target-type
                                      user-property-key-name :member-name
                                      "userPropertyKey")
                                     (thing-attribute :target-type
                                      attribute-name :member-name
                                      "thingAttribute")
                                     (connection-attribute :target-type
                                      connection-attribute-name :member-name
                                      "connectionAttribute"))
                                    (:shape-name "PropagatingAttribute"))

(smithy/sdk/shapes:define-list propagating-attribute-list :member
                               propagating-attribute)

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:mqtt "MQTT")
  (:http "HTTP"))

(smithy/sdk/shapes:define-list protocols :member protocol)

(smithy/sdk/shapes:define-structure provisioning-hook common-lisp:nil
                                    ((payload-version :target-type
                                      payload-version :member-name
                                      "payloadVersion")
                                     (target-arn :target-type target-arn
                                      :required common-lisp:t :member-name
                                      "targetArn"))
                                    (:shape-name "ProvisioningHook"))

(smithy/sdk/shapes:define-list provisioning-template-listing :member
                               provisioning-template-summary)

(smithy/sdk/shapes:define-structure provisioning-template-summary
                                    common-lisp:nil
                                    ((template-arn :target-type template-arn
                                      :member-name "templateArn")
                                     (template-name :target-type template-name
                                      :member-name "templateName")
                                     (description :target-type
                                      template-description :member-name
                                      "description")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "lastModifiedDate")
                                     (enabled :target-type enabled2
                                      :member-name "enabled")
                                     (type :target-type template-type
                                      :member-name "type"))
                                    (:shape-name "ProvisioningTemplateSummary"))

(smithy/sdk/shapes:define-list provisioning-template-version-listing :member
                               provisioning-template-version-summary)

(smithy/sdk/shapes:define-structure provisioning-template-version-summary
                                    common-lisp:nil
                                    ((version-id :target-type
                                      template-version-id :member-name
                                      "versionId")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (is-default-version :target-type
                                      is-default-version :member-name
                                      "isDefaultVersion"))
                                    (:shape-name
                                     "ProvisioningTemplateVersionSummary"))

(smithy/sdk/shapes:define-type public-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map public-key-map :key key-name :value key-value)

(smithy/sdk/shapes:define-structure publish-finding-to-sns-params
                                    common-lisp:nil
                                    ((topic-arn :target-type sns-topic-arn
                                      :required common-lisp:t :member-name
                                      "topicArn"))
                                    (:shape-name "PublishFindingToSnsParams"))

(smithy/sdk/shapes:define-structure put-asset-property-value-entry
                                    common-lisp:nil
                                    ((entry-id :target-type
                                      asset-property-entry-id :member-name
                                      "entryId")
                                     (asset-id :target-type asset-id
                                      :member-name "assetId")
                                     (property-id :target-type
                                      asset-property-id :member-name
                                      "propertyId")
                                     (property-alias :target-type
                                      asset-property-alias :member-name
                                      "propertyAlias")
                                     (property-values :target-type
                                      asset-property-value-list :required
                                      common-lisp:t :member-name
                                      "propertyValues"))
                                    (:shape-name "PutAssetPropertyValueEntry"))

(smithy/sdk/shapes:define-list put-asset-property-value-entry-list :member
                               put-asset-property-value-entry)

(smithy/sdk/shapes:define-structure put-item-input common-lisp:nil
                                    ((table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName"))
                                    (:shape-name "PutItemInput"))

(smithy/sdk/shapes:define-input put-verification-state-on-violation-request
                                common-lisp:nil
                                ((violation-id :target-type violation-id
                                  :required common-lisp:t :member-name
                                  "violationId" :http-label common-lisp:t)
                                 (verification-state :target-type
                                  verification-state :required common-lisp:t
                                  :member-name "verificationState")
                                 (verification-state-description :target-type
                                  verification-state-description :member-name
                                  "verificationStateDescription"))
                                (:shape-name
                                 "PutVerificationStateOnViolationRequest"))

(smithy/sdk/shapes:define-output put-verification-state-on-violation-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutVerificationStateOnViolationResponse"))

(smithy/sdk/shapes:define-type qos smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type query-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type queue-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type queued-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type range-key-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type range-key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rate-increase-criteria common-lisp:nil
                                    ((number-of-notified-things :target-type
                                      number-of-things :member-name
                                      "numberOfNotifiedThings")
                                     (number-of-succeeded-things :target-type
                                      number-of-things :member-name
                                      "numberOfSucceededThings"))
                                    (:shape-name "RateIncreaseCriteria"))

(smithy/sdk/shapes:define-type reason-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reason-for-non-compliance
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reason-for-non-compliance-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list reason-for-non-compliance-codes :member
                               reason-for-non-compliance-code)

(smithy/sdk/shapes:define-type recursive smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type recursive-without-default
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-cacertificate-request common-lisp:nil
                                ((ca-certificate :target-type certificate-pem
                                  :required common-lisp:t :member-name
                                  "caCertificate")
                                 (verification-certificate :target-type
                                  certificate-pem :member-name
                                  "verificationCertificate")
                                 (set-as-active :target-type set-as-active
                                  :member-name "setAsActive" :http-query
                                  "setAsActive")
                                 (allow-auto-registration :target-type
                                  allow-auto-registration :member-name
                                  "allowAutoRegistration" :http-query
                                  "allowAutoRegistration")
                                 (registration-config :target-type
                                  registration-config :member-name
                                  "registrationConfig")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (certificate-mode :target-type
                                  certificate-mode :member-name
                                  "certificateMode"))
                                (:shape-name "RegisterCACertificateRequest"))

(smithy/sdk/shapes:define-output register-cacertificate-response
                                 common-lisp:nil
                                 ((certificate-arn :target-type certificate-arn
                                   :member-name "certificateArn")
                                  (certificate-id :target-type certificate-id
                                   :member-name "certificateId"))
                                 (:shape-name "RegisterCACertificateResponse"))

(smithy/sdk/shapes:define-input register-certificate-request common-lisp:nil
                                ((certificate-pem :target-type certificate-pem
                                  :required common-lisp:t :member-name
                                  "certificatePem")
                                 (ca-certificate-pem :target-type
                                  certificate-pem :member-name
                                  "caCertificatePem")
                                 (set-as-active :target-type set-as-active-flag
                                  :member-name "setAsActive" :http-query
                                  "setAsActive")
                                 (status :target-type certificate-status
                                  :member-name "status"))
                                (:shape-name "RegisterCertificateRequest"))

(smithy/sdk/shapes:define-output register-certificate-response common-lisp:nil
                                 ((certificate-arn :target-type certificate-arn
                                   :member-name "certificateArn")
                                  (certificate-id :target-type certificate-id
                                   :member-name "certificateId"))
                                 (:shape-name "RegisterCertificateResponse"))

(smithy/sdk/shapes:define-input register-certificate-without-carequest
                                common-lisp:nil
                                ((certificate-pem :target-type certificate-pem
                                  :required common-lisp:t :member-name
                                  "certificatePem")
                                 (status :target-type certificate-status
                                  :member-name "status"))
                                (:shape-name
                                 "RegisterCertificateWithoutCARequest"))

(smithy/sdk/shapes:define-output register-certificate-without-caresponse
                                 common-lisp:nil
                                 ((certificate-arn :target-type certificate-arn
                                   :member-name "certificateArn")
                                  (certificate-id :target-type certificate-id
                                   :member-name "certificateId"))
                                 (:shape-name
                                  "RegisterCertificateWithoutCAResponse"))

(smithy/sdk/shapes:define-input register-thing-request common-lisp:nil
                                ((template-body :target-type template-body
                                  :required common-lisp:t :member-name
                                  "templateBody")
                                 (parameters :target-type parameters
                                  :member-name "parameters"))
                                (:shape-name "RegisterThingRequest"))

(smithy/sdk/shapes:define-output register-thing-response common-lisp:nil
                                 ((certificate-pem :target-type certificate-pem
                                   :member-name "certificatePem")
                                  (resource-arns :target-type resource-arns
                                   :member-name "resourceArns"))
                                 (:shape-name "RegisterThingResponse"))

(smithy/sdk/shapes:define-type registration-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error registration-code-validation-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name
                                 "RegistrationCodeValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure registration-config common-lisp:nil
                                    ((template-body :target-type template-body
                                      :member-name "templateBody")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (template-name :target-type template-name
                                      :member-name "templateName"))
                                    (:shape-name "RegistrationConfig"))

(smithy/sdk/shapes:define-type registry-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type registry-s3bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registry-s3key-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reject-certificate-transfer-request
                                common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t)
                                 (reject-reason :target-type message
                                  :member-name "rejectReason"))
                                (:shape-name
                                 "RejectCertificateTransferRequest"))

(smithy/sdk/shapes:define-type rejected-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure related-resource common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-identifier :target-type
                                      resource-identifier :member-name
                                      "resourceIdentifier")
                                     (additional-info :target-type string-map
                                      :member-name "additionalInfo"))
                                    (:shape-name "RelatedResource"))

(smithy/sdk/shapes:define-list related-resources :member related-resource)

(smithy/sdk/shapes:define-type remove-authorizer-config
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type remove-auto-registration
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type remove-hook smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input remove-thing-from-billing-group-request
                                common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :member-name
                                  "billingGroupName")
                                 (billing-group-arn :target-type
                                  billing-group-arn :member-name
                                  "billingGroupArn")
                                 (thing-name :target-type thing-name
                                  :member-name "thingName")
                                 (thing-arn :target-type thing-arn :member-name
                                  "thingArn"))
                                (:shape-name
                                 "RemoveThingFromBillingGroupRequest"))

(smithy/sdk/shapes:define-output remove-thing-from-billing-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveThingFromBillingGroupResponse"))

(smithy/sdk/shapes:define-input remove-thing-from-thing-group-request
                                common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :member-name
                                  "thingGroupName")
                                 (thing-group-arn :target-type thing-group-arn
                                  :member-name "thingGroupArn")
                                 (thing-name :target-type thing-name
                                  :member-name "thingName")
                                 (thing-arn :target-type thing-arn :member-name
                                  "thingArn"))
                                (:shape-name
                                 "RemoveThingFromThingGroupRequest"))

(smithy/sdk/shapes:define-output remove-thing-from-thing-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveThingFromThingGroupResponse"))

(smithy/sdk/shapes:define-type remove-thing-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type removed-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure replace-default-policy-version-params
                                    common-lisp:nil
                                    ((template-name :target-type
                                      policy-template-name :required
                                      common-lisp:t :member-name
                                      "templateName"))
                                    (:shape-name
                                     "ReplaceDefaultPolicyVersionParams"))

(smithy/sdk/shapes:define-input replace-topic-rule-request common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "ruleName"
                                  :http-label common-lisp:t)
                                 (topic-rule-payload :target-type
                                  topic-rule-payload :required common-lisp:t
                                  :member-name "topicRulePayload" :http-payload
                                  common-lisp:t))
                                (:shape-name "ReplaceTopicRuleRequest"))

(smithy/sdk/shapes:define-enum report-type
    common-lisp:nil
  (:errors "ERRORS")
  (:results "RESULTS"))

(smithy/sdk/shapes:define-structure republish-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (topic :target-type topic-pattern
                                      :required common-lisp:t :member-name
                                      "topic")
                                     (qos :target-type qos :member-name "qos")
                                     (headers :target-type mqtt-headers
                                      :member-name "headers"))
                                    (:shape-name "RepublishAction"))

(smithy/sdk/shapes:define-type reserved-domain-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-arn :target-type resource-arn
                                  :member-name "resourceArn"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map resource-arns :key resource-logical-id :value
                              resource-arn)

(smithy/sdk/shapes:define-type resource-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map resource-attributes :key resource-attribute-key
                              :value resource-attribute-value)

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-identifier common-lisp:nil
                                    ((device-certificate-id :target-type
                                      certificate-id :member-name
                                      "deviceCertificateId")
                                     (ca-certificate-id :target-type
                                      certificate-id :member-name
                                      "caCertificateId")
                                     (cognito-identity-pool-id :target-type
                                      cognito-identity-pool-id :member-name
                                      "cognitoIdentityPoolId")
                                     (client-id :target-type client-id
                                      :member-name "clientId")
                                     (policy-version-identifier :target-type
                                      policy-version-identifier :member-name
                                      "policyVersionIdentifier")
                                     (account :target-type aws-account-id
                                      :member-name "account")
                                     (iam-role-arn :target-type role-arn
                                      :member-name "iamRoleArn")
                                     (role-alias-arn :target-type
                                      role-alias-arn :member-name
                                      "roleAliasArn")
                                     (issuer-certificate-identifier
                                      :target-type
                                      issuer-certificate-identifier
                                      :member-name
                                      "issuerCertificateIdentifier")
                                     (device-certificate-arn :target-type
                                      certificate-arn :member-name
                                      "deviceCertificateArn"))
                                    (:shape-name "ResourceIdentifier"))

(smithy/sdk/shapes:define-type resource-logical-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-registration-failure-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name
                                 "ResourceRegistrationFailureException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:device-certificate "DEVICE_CERTIFICATE")
  (:ca-certificate "CA_CERTIFICATE")
  (:iot-policy "IOT_POLICY")
  (:cognito-identity-pool "COGNITO_IDENTITY_POOL")
  (:client-id "CLIENT_ID")
  (:account-settings "ACCOUNT_SETTINGS")
  (:role-alias "ROLE_ALIAS")
  (:iam-role "IAM_ROLE")
  (:issuer-certificate "ISSUER_CERTIFICATE"))

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-type response-topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-attempt smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retry-criteria common-lisp:nil
                                    ((failure-type :target-type
                                      retryable-failure-type :required
                                      common-lisp:t :member-name "failureType")
                                     (number-of-retries :target-type
                                      number-of-retries :required common-lisp:t
                                      :member-name "numberOfRetries"))
                                    (:shape-name "RetryCriteria"))

(smithy/sdk/shapes:define-list retry-criteria-list :member retry-criteria)

(smithy/sdk/shapes:define-enum retryable-failure-type
    common-lisp:nil
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-type role-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure role-alias-description common-lisp:nil
                                    ((role-alias :target-type role-alias
                                      :member-name "roleAlias")
                                     (role-alias-arn :target-type
                                      role-alias-arn :member-name
                                      "roleAliasArn")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (owner :target-type aws-account-id
                                      :member-name "owner")
                                     (credential-duration-seconds :target-type
                                      credential-duration-seconds :member-name
                                      "credentialDurationSeconds")
                                     (creation-date :target-type date-type
                                      :member-name "creationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "lastModifiedDate"))
                                    (:shape-name "RoleAliasDescription"))

(smithy/sdk/shapes:define-list role-aliases :member role-alias)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rollout-rate-per-minute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (canned-acl :target-type
                                      canned-access-control-list :member-name
                                      "cannedAcl"))
                                    (:shape-name "S3Action"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "bucket")
                                     (prefix :target-type prefix :member-name
                                      "prefix"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-type s3file-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3file-url-list :member s3file-url)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "bucket")
                                     (key :target-type s3key :member-name
                                      "key")
                                     (version :target-type s3version
                                      :member-name "version"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sql smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure salesforce-action common-lisp:nil
                                    ((token :target-type salesforce-token
                                      :required common-lisp:t :member-name
                                      "token")
                                     (url :target-type salesforce-endpoint
                                      :required common-lisp:t :member-name
                                      "url"))
                                    (:shape-name "SalesforceAction"))

(smithy/sdk/shapes:define-type salesforce-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type salesforce-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sbom common-lisp:nil
                                    ((s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "Sbom"))

(smithy/sdk/shapes:define-enum sbom-validation-error-code
    common-lisp:nil
  (:incompatible-format "INCOMPATIBLE_FORMAT")
  (:file-size-limit-exceeded "FILE_SIZE_LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-type sbom-validation-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sbom-validation-result
    common-lisp:nil
  (:failed "FAILED")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-structure sbom-validation-result-summary
                                    common-lisp:nil
                                    ((file-name :target-type file-name
                                      :member-name "fileName")
                                     (validation-result :target-type
                                      sbom-validation-result :member-name
                                      "validationResult")
                                     (error-code :target-type
                                      sbom-validation-error-code :member-name
                                      "errorCode")
                                     (error-message :target-type
                                      sbom-validation-error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "SbomValidationResultSummary"))

(smithy/sdk/shapes:define-list sbom-validation-result-summary-list :member
                               sbom-validation-result-summary)

(smithy/sdk/shapes:define-enum sbom-validation-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-type scheduled-audit-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scheduled-audit-metadata common-lisp:nil
                                    ((scheduled-audit-name :target-type
                                      scheduled-audit-name :member-name
                                      "scheduledAuditName")
                                     (scheduled-audit-arn :target-type
                                      scheduled-audit-arn :member-name
                                      "scheduledAuditArn")
                                     (frequency :target-type audit-frequency
                                      :member-name "frequency")
                                     (day-of-month :target-type day-of-month
                                      :member-name "dayOfMonth")
                                     (day-of-week :target-type day-of-week
                                      :member-name "dayOfWeek"))
                                    (:shape-name "ScheduledAuditMetadata"))

(smithy/sdk/shapes:define-list scheduled-audit-metadata-list :member
                               scheduled-audit-metadata)

(smithy/sdk/shapes:define-type scheduled-audit-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scheduled-job-rollout common-lisp:nil
                                    ((start-time :target-type string-date-time
                                      :member-name "startTime"))
                                    (:shape-name "ScheduledJobRollout"))

(smithy/sdk/shapes:define-list scheduled-job-rollout-list :member
                               scheduled-job-rollout)

(smithy/sdk/shapes:define-structure scheduling-config common-lisp:nil
                                    ((start-time :target-type string-date-time
                                      :member-name "startTime")
                                     (end-time :target-type string-date-time
                                      :member-name "endTime")
                                     (end-behavior :target-type
                                      job-end-behavior :member-name
                                      "endBehavior")
                                     (maintenance-windows :target-type
                                      maintenance-windows :member-name
                                      "maintenanceWindows"))
                                    (:shape-name "SchedulingConfig"))

(smithy/sdk/shapes:define-input search-index-request common-lisp:nil
                                ((index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  search-query-max-results :member-name
                                  "maxResults")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion"))
                                (:shape-name "SearchIndexRequest"))

(smithy/sdk/shapes:define-output search-index-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (things :target-type thing-document-list
                                   :member-name "things")
                                  (thing-groups :target-type
                                   thing-group-document-list :member-name
                                   "thingGroups"))
                                 (:shape-name "SearchIndexResponse"))

(smithy/sdk/shapes:define-type search-query-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list searchable-attributes :member attribute-name)

(smithy/sdk/shapes:define-type seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-list :member security-group-id)

(smithy/sdk/shapes:define-type security-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-profile-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure security-profile-identifier common-lisp:nil
                                    ((name :target-type security-profile-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (arn :target-type security-profile-arn
                                      :required common-lisp:t :member-name
                                      "arn"))
                                    (:shape-name "SecurityProfileIdentifier"))

(smithy/sdk/shapes:define-list security-profile-identifiers :member
                               security-profile-identifier)

(smithy/sdk/shapes:define-type security-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure security-profile-target common-lisp:nil
                                    ((arn :target-type
                                      security-profile-target-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "SecurityProfileTarget"))

(smithy/sdk/shapes:define-type security-profile-target-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure security-profile-target-mapping
                                    common-lisp:nil
                                    ((security-profile-identifier :target-type
                                      security-profile-identifier :member-name
                                      "securityProfileIdentifier")
                                     (target :target-type
                                      security-profile-target :member-name
                                      "target"))
                                    (:shape-name
                                     "SecurityProfileTargetMapping"))

(smithy/sdk/shapes:define-list security-profile-target-mappings :member
                               security-profile-target-mapping)

(smithy/sdk/shapes:define-list security-profile-targets :member
                               security-profile-target)

(smithy/sdk/shapes:define-list server-certificate-arns :member
                               acm-certificate-arn)

(smithy/sdk/shapes:define-structure server-certificate-config common-lisp:nil
                                    ((enable-ocspcheck :target-type
                                      enable-ocspcheck :member-name
                                      "enableOCSPCheck")
                                     (ocsp-lambda-arn :target-type
                                      ocsplambda-arn :member-name
                                      "ocspLambdaArn")
                                     (ocsp-authorized-responder-arn
                                      :target-type acm-certificate-arn
                                      :member-name
                                      "ocspAuthorizedResponderArn"))
                                    (:shape-name "ServerCertificateConfig"))

(smithy/sdk/shapes:define-enum server-certificate-status
    common-lisp:nil
  (:invalid "INVALID")
  (:valid "VALID"))

(smithy/sdk/shapes:define-type server-certificate-status-detail
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-certificate-summary common-lisp:nil
                                    ((server-certificate-arn :target-type
                                      acm-certificate-arn :member-name
                                      "serverCertificateArn")
                                     (server-certificate-status :target-type
                                      server-certificate-status :member-name
                                      "serverCertificateStatus")
                                     (server-certificate-status-detail
                                      :target-type
                                      server-certificate-status-detail
                                      :member-name
                                      "serverCertificateStatusDetail"))
                                    (:shape-name "ServerCertificateSummary"))

(smithy/sdk/shapes:define-list server-certificates :member
                               server-certificate-summary)

(smithy/sdk/shapes:define-type server-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum service-type
    common-lisp:nil
  (:data "DATA")
  (:credential-provider "CREDENTIAL_PROVIDER")
  (:jobs "JOBS"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type set-as-active smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type set-as-active-flag
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type set-as-default smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input set-default-authorizer-request common-lisp:nil
                                ((authorizer-name :target-type authorizer-name
                                  :required common-lisp:t :member-name
                                  "authorizerName"))
                                (:shape-name "SetDefaultAuthorizerRequest"))

(smithy/sdk/shapes:define-output set-default-authorizer-response
                                 common-lisp:nil
                                 ((authorizer-name :target-type authorizer-name
                                   :member-name "authorizerName")
                                  (authorizer-arn :target-type authorizer-arn
                                   :member-name "authorizerArn"))
                                 (:shape-name "SetDefaultAuthorizerResponse"))

(smithy/sdk/shapes:define-input set-default-policy-version-request
                                common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName" :http-label common-lisp:t)
                                 (policy-version-id :target-type
                                  policy-version-id :required common-lisp:t
                                  :member-name "policyVersionId" :http-label
                                  common-lisp:t))
                                (:shape-name "SetDefaultPolicyVersionRequest"))

(smithy/sdk/shapes:define-input set-logging-options-request common-lisp:nil
                                ((logging-options-payload :target-type
                                  logging-options-payload :required
                                  common-lisp:t :member-name
                                  "loggingOptionsPayload" :http-payload
                                  common-lisp:t))
                                (:shape-name "SetLoggingOptionsRequest"))

(smithy/sdk/shapes:define-input set-v2logging-level-request common-lisp:nil
                                ((log-target :target-type log-target :required
                                  common-lisp:t :member-name "logTarget")
                                 (log-level :target-type log-level :required
                                  common-lisp:t :member-name "logLevel"))
                                (:shape-name "SetV2LoggingLevelRequest"))

(smithy/sdk/shapes:define-input set-v2logging-options-request common-lisp:nil
                                ((role-arn :target-type aws-arn :member-name
                                  "roleArn")
                                 (default-log-level :target-type log-level
                                  :member-name "defaultLogLevel")
                                 (disable-all-logs :target-type
                                  disable-all-logs :member-name
                                  "disableAllLogs"))
                                (:shape-name "SetV2LoggingOptionsRequest"))

(smithy/sdk/shapes:define-type shadow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sig-v4authorization common-lisp:nil
                                    ((signing-region :target-type
                                      signing-region :required common-lisp:t
                                      :member-name "signingRegion")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "SigV4Authorization"))

(smithy/sdk/shapes:define-type signature smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type signature-algorithm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure signing-profile-parameter common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (certificate-path-on-device :target-type
                                      certificate-path-on-device :member-name
                                      "certificatePathOnDevice"))
                                    (:shape-name "SigningProfileParameter"))

(smithy/sdk/shapes:define-type signing-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type skipped-findings-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type skyfall-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure sns-action common-lisp:nil
                                    ((target-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "targetArn")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (message-format :target-type
                                      message-format :member-name
                                      "messageFormat"))
                                    (:shape-name "SnsAction"))

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-error sql-parse-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "SqlParseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure sqs-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (queue-url :target-type queue-url
                                      :required common-lisp:t :member-name
                                      "queueUrl")
                                     (use-base64 :target-type use-base64
                                      :member-name "useBase64"))
                                    (:shape-name "SqsAction"))

(smithy/sdk/shapes:define-input start-audit-mitigation-actions-task-request
                                common-lisp:nil
                                ((task-id :target-type
                                  mitigation-actions-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t)
                                 (target :target-type
                                  audit-mitigation-actions-task-target
                                  :required common-lisp:t :member-name
                                  "target")
                                 (audit-check-to-actions-mapping :target-type
                                  audit-check-to-actions-mapping :required
                                  common-lisp:t :member-name
                                  "auditCheckToActionsMapping")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken"))
                                (:shape-name
                                 "StartAuditMitigationActionsTaskRequest"))

(smithy/sdk/shapes:define-output start-audit-mitigation-actions-task-response
                                 common-lisp:nil
                                 ((task-id :target-type
                                   mitigation-actions-task-id :member-name
                                   "taskId"))
                                 (:shape-name
                                  "StartAuditMitigationActionsTaskResponse"))

(smithy/sdk/shapes:define-input start-detect-mitigation-actions-task-request
                                common-lisp:nil
                                ((task-id :target-type
                                  mitigation-actions-task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t)
                                 (target :target-type
                                  detect-mitigation-actions-task-target
                                  :required common-lisp:t :member-name
                                  "target")
                                 (actions :target-type
                                  detect-mitigation-actions-to-execute-list
                                  :required common-lisp:t :member-name
                                  "actions")
                                 (violation-event-occurrence-range :target-type
                                  violation-event-occurrence-range :member-name
                                  "violationEventOccurrenceRange")
                                 (include-only-active-violations :target-type
                                  nullable-boolean :member-name
                                  "includeOnlyActiveViolations")
                                 (include-suppressed-alerts :target-type
                                  nullable-boolean :member-name
                                  "includeSuppressedAlerts")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken"))
                                (:shape-name
                                 "StartDetectMitigationActionsTaskRequest"))

(smithy/sdk/shapes:define-output start-detect-mitigation-actions-task-response
                                 common-lisp:nil
                                 ((task-id :target-type
                                   mitigation-actions-task-id :member-name
                                   "taskId"))
                                 (:shape-name
                                  "StartDetectMitigationActionsTaskResponse"))

(smithy/sdk/shapes:define-input start-on-demand-audit-task-request
                                common-lisp:nil
                                ((target-check-names :target-type
                                  target-audit-check-names :required
                                  common-lisp:t :member-name
                                  "targetCheckNames"))
                                (:shape-name "StartOnDemandAuditTaskRequest"))

(smithy/sdk/shapes:define-output start-on-demand-audit-task-response
                                 common-lisp:nil
                                 ((task-id :target-type audit-task-id
                                   :member-name "taskId"))
                                 (:shape-name "StartOnDemandAuditTaskResponse"))

(smithy/sdk/shapes:define-structure start-signing-job-parameter common-lisp:nil
                                    ((signing-profile-parameter :target-type
                                      signing-profile-parameter :member-name
                                      "signingProfileParameter")
                                     (signing-profile-name :target-type
                                      signing-profile-name :member-name
                                      "signingProfileName")
                                     (destination :target-type destination
                                      :member-name "destination"))
                                    (:shape-name "StartSigningJobParameter"))

(smithy/sdk/shapes:define-input start-thing-registration-task-request
                                common-lisp:nil
                                ((template-body :target-type template-body
                                  :required common-lisp:t :member-name
                                  "templateBody")
                                 (input-file-bucket :target-type
                                  registry-s3bucket-name :required
                                  common-lisp:t :member-name "inputFileBucket")
                                 (input-file-key :target-type
                                  registry-s3key-name :required common-lisp:t
                                  :member-name "inputFileKey")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn"))
                                (:shape-name
                                 "StartThingRegistrationTaskRequest"))

(smithy/sdk/shapes:define-output start-thing-registration-task-response
                                 common-lisp:nil
                                 ((task-id :target-type task-id :member-name
                                   "taskId"))
                                 (:shape-name
                                  "StartThingRegistrationTaskResponse"))

(smithy/sdk/shapes:define-type state-machine-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure statistical-threshold common-lisp:nil
                                    ((statistic :target-type
                                      evaluation-statistic :member-name
                                      "statistic"))
                                    (:shape-name "StatisticalThreshold"))

(smithy/sdk/shapes:define-structure statistics common-lisp:nil
                                    ((count :target-type count :member-name
                                      "count")
                                     (average :target-type average :member-name
                                      "average")
                                     (sum :target-type sum :member-name "sum")
                                     (minimum :target-type minimum :member-name
                                      "minimum")
                                     (maximum :target-type maximum :member-name
                                      "maximum")
                                     (sum-of-squares :target-type
                                      sum-of-squares :member-name
                                      "sumOfSquares")
                                     (variance :target-type variance
                                      :member-name "variance")
                                     (std-deviation :target-type std-deviation
                                      :member-name "stdDeviation"))
                                    (:shape-name "Statistics"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:in-progress "InProgress")
  (:completed "Completed")
  (:failed "Failed")
  (:cancelled "Cancelled")
  (:cancelling "Cancelling"))

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure status-reason common-lisp:nil
                                    ((reason-code :target-type
                                      status-reason-code :required
                                      common-lisp:t :member-name "reasonCode")
                                     (reason-description :target-type
                                      status-reason-description :member-name
                                      "reasonDescription"))
                                    (:shape-name "StatusReason"))

(smithy/sdk/shapes:define-type status-reason-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-reason-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type std-deviation smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure step-functions-action common-lisp:nil
                                    ((execution-name-prefix :target-type
                                      execution-name-prefix :member-name
                                      "executionNamePrefix")
                                     (state-machine-name :target-type
                                      state-machine-name :required
                                      common-lisp:t :member-name
                                      "stateMachineName")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "StepFunctionsAction"))

(smithy/sdk/shapes:define-input stop-thing-registration-task-request
                                common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StopThingRegistrationTaskRequest"))

(smithy/sdk/shapes:define-output stop-thing-registration-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopThingRegistrationTaskResponse"))

(smithy/sdk/shapes:define-structure stream common-lisp:nil
                                    ((stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (file-id :target-type file-id :member-name
                                      "fileId"))
                                    (:shape-name "Stream"))

(smithy/sdk/shapes:define-type stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stream-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-file common-lisp:nil
                                    ((file-id :target-type file-id :member-name
                                      "fileId")
                                     (s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "StreamFile"))

(smithy/sdk/shapes:define-list stream-files :member stream-file)

(smithy/sdk/shapes:define-type stream-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-info common-lisp:nil
                                    ((stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (stream-arn :target-type stream-arn
                                      :member-name "streamArn")
                                     (stream-version :target-type
                                      stream-version :member-name
                                      "streamVersion")
                                     (description :target-type
                                      stream-description :member-name
                                      "description")
                                     (files :target-type stream-files
                                      :member-name "files")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn"))
                                    (:shape-name "StreamInfo"))

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-summary common-lisp:nil
                                    ((stream-id :target-type stream-id
                                      :member-name "streamId")
                                     (stream-arn :target-type stream-arn
                                      :member-name "streamArn")
                                     (stream-version :target-type
                                      stream-version :member-name
                                      "streamVersion")
                                     (description :target-type
                                      stream-description :member-name
                                      "description"))
                                    (:shape-name "StreamSummary"))

(smithy/sdk/shapes:define-type stream-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list streams-summary :member stream-summary)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-command-execution-result
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string-value)

(smithy/sdk/shapes:define-map string-map :key string :value string)

(smithy/sdk/shapes:define-type string-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-type succeeded-findings-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type succeeded-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sum smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type sum-of-squares smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type suppress-alerts smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type suppress-indefinitely
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type suppressed-non-compliant-resources-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-audit-check-names :member
                               audit-check-name)

(smithy/sdk/shapes:define-type target-field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-field-order
    common-lisp:nil
  (:lat-lon "LatLon")
  (:lon-lat "LonLat"))

(smithy/sdk/shapes:define-enum target-selection
    common-lisp:nil
  (:continuous "CONTINUOUS")
  (:snapshot "SNAPSHOT"))

(smithy/sdk/shapes:define-list
 target-violation-ids-for-detect-mitigation-actions :member violation-id)

(smithy/sdk/shapes:define-list targets :member target)

(smithy/sdk/shapes:define-error task-already-exists-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "TaskAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list task-id-list :member task-id)

(smithy/sdk/shapes:define-structure task-statistics common-lisp:nil
                                    ((total-checks :target-type
                                      total-checks-count :member-name
                                      "totalChecks")
                                     (in-progress-checks :target-type
                                      in-progress-checks-count :member-name
                                      "inProgressChecks")
                                     (waiting-for-data-collection-checks
                                      :target-type
                                      waiting-for-data-collection-checks-count
                                      :member-name
                                      "waitingForDataCollectionChecks")
                                     (compliant-checks :target-type
                                      compliant-checks-count :member-name
                                      "compliantChecks")
                                     (non-compliant-checks :target-type
                                      non-compliant-checks-count :member-name
                                      "nonCompliantChecks")
                                     (failed-checks :target-type
                                      failed-checks-count :member-name
                                      "failedChecks")
                                     (canceled-checks :target-type
                                      canceled-checks-count :member-name
                                      "canceledChecks"))
                                    (:shape-name "TaskStatistics"))

(smithy/sdk/shapes:define-structure task-statistics-for-audit-check
                                    common-lisp:nil
                                    ((total-findings-count :target-type
                                      total-findings-count :member-name
                                      "totalFindingsCount")
                                     (failed-findings-count :target-type
                                      failed-findings-count :member-name
                                      "failedFindingsCount")
                                     (succeeded-findings-count :target-type
                                      succeeded-findings-count :member-name
                                      "succeededFindingsCount")
                                     (skipped-findings-count :target-type
                                      skipped-findings-count :member-name
                                      "skippedFindingsCount")
                                     (canceled-findings-count :target-type
                                      canceled-findings-count :member-name
                                      "canceledFindingsCount"))
                                    (:shape-name "TaskStatisticsForAuditCheck"))

(smithy/sdk/shapes:define-type template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum template-type
    common-lisp:nil
  (:fleet-provisioning "FLEET_PROVISIONING")
  (:jitp "JITP"))

(smithy/sdk/shapes:define-type template-version-id
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure terms-aggregation common-lisp:nil
                                    ((max-buckets :target-type max-buckets
                                      :member-name "maxBuckets"))
                                    (:shape-name "TermsAggregation"))

(smithy/sdk/shapes:define-input test-authorization-request common-lisp:nil
                                ((principal :target-type principal :member-name
                                  "principal")
                                 (cognito-identity-pool-id :target-type
                                  cognito-identity-pool-id :member-name
                                  "cognitoIdentityPoolId")
                                 (auth-infos :target-type auth-infos :required
                                  common-lisp:t :member-name "authInfos")
                                 (client-id :target-type client-id :member-name
                                  "clientId" :http-query "clientId")
                                 (policy-names-to-add :target-type policy-names
                                  :member-name "policyNamesToAdd")
                                 (policy-names-to-skip :target-type
                                  policy-names :member-name
                                  "policyNamesToSkip"))
                                (:shape-name "TestAuthorizationRequest"))

(smithy/sdk/shapes:define-output test-authorization-response common-lisp:nil
                                 ((auth-results :target-type auth-results
                                   :member-name "authResults"))
                                 (:shape-name "TestAuthorizationResponse"))

(smithy/sdk/shapes:define-input test-invoke-authorizer-request common-lisp:nil
                                ((authorizer-name :target-type authorizer-name
                                  :required common-lisp:t :member-name
                                  "authorizerName" :http-label common-lisp:t)
                                 (token :target-type token :member-name
                                  "token")
                                 (token-signature :target-type token-signature
                                  :member-name "tokenSignature")
                                 (http-context :target-type http-context
                                  :member-name "httpContext")
                                 (mqtt-context :target-type mqtt-context
                                  :member-name "mqttContext")
                                 (tls-context :target-type tls-context
                                  :member-name "tlsContext"))
                                (:shape-name "TestInvokeAuthorizerRequest"))

(smithy/sdk/shapes:define-output test-invoke-authorizer-response
                                 common-lisp:nil
                                 ((is-authenticated :target-type
                                   is-authenticated :member-name
                                   "isAuthenticated")
                                  (principal-id :target-type principal-id
                                   :member-name "principalId")
                                  (policy-documents :target-type
                                   policy-documents :member-name
                                   "policyDocuments")
                                  (refresh-after-in-seconds :target-type
                                   seconds :member-name
                                   "refreshAfterInSeconds")
                                  (disconnect-after-in-seconds :target-type
                                   seconds :member-name
                                   "disconnectAfterInSeconds"))
                                 (:shape-name "TestInvokeAuthorizerResponse"))

(smithy/sdk/shapes:define-type thing-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing-attribute common-lisp:nil
                                    ((thing-name :target-type thing-name
                                      :member-name "thingName")
                                     (thing-type-name :target-type
                                      thing-type-name :member-name
                                      "thingTypeName")
                                     (thing-arn :target-type thing-arn
                                      :member-name "thingArn")
                                     (attributes :target-type attributes
                                      :member-name "attributes")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "ThingAttribute"))

(smithy/sdk/shapes:define-list thing-attribute-list :member thing-attribute)

(smithy/sdk/shapes:define-structure thing-connectivity common-lisp:nil
                                    ((connected :target-type boolean
                                      :member-name "connected")
                                     (timestamp :target-type
                                      connectivity-timestamp :member-name
                                      "timestamp")
                                     (disconnect-reason :target-type
                                      disconnect-reason :member-name
                                      "disconnectReason"))
                                    (:shape-name "ThingConnectivity"))

(smithy/sdk/shapes:define-enum thing-connectivity-indexing-mode
    common-lisp:nil
  (:off "OFF")
  (:status "STATUS"))

(smithy/sdk/shapes:define-structure thing-document common-lisp:nil
                                    ((thing-name :target-type thing-name
                                      :member-name "thingName")
                                     (thing-id :target-type thing-id
                                      :member-name "thingId")
                                     (thing-type-name :target-type
                                      thing-type-name :member-name
                                      "thingTypeName")
                                     (thing-group-names :target-type
                                      thing-group-name-list :member-name
                                      "thingGroupNames")
                                     (attributes :target-type attributes
                                      :member-name "attributes")
                                     (shadow :target-type json-document
                                      :member-name "shadow")
                                     (device-defender :target-type
                                      json-document :member-name
                                      "deviceDefender")
                                     (connectivity :target-type
                                      thing-connectivity :member-name
                                      "connectivity"))
                                    (:shape-name "ThingDocument"))

(smithy/sdk/shapes:define-list thing-document-list :member thing-document)

(smithy/sdk/shapes:define-type thing-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thing-group-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing-group-document common-lisp:nil
                                    ((thing-group-name :target-type
                                      thing-group-name :member-name
                                      "thingGroupName")
                                     (thing-group-id :target-type
                                      thing-group-id :member-name
                                      "thingGroupId")
                                     (thing-group-description :target-type
                                      thing-group-description :member-name
                                      "thingGroupDescription")
                                     (attributes :target-type attributes
                                      :member-name "attributes")
                                     (parent-group-names :target-type
                                      thing-group-name-list :member-name
                                      "parentGroupNames"))
                                    (:shape-name "ThingGroupDocument"))

(smithy/sdk/shapes:define-list thing-group-document-list :member
                               thing-group-document)

(smithy/sdk/shapes:define-type thing-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing-group-indexing-configuration
                                    common-lisp:nil
                                    ((thing-group-indexing-mode :target-type
                                      thing-group-indexing-mode :required
                                      common-lisp:t :member-name
                                      "thingGroupIndexingMode")
                                     (managed-fields :target-type fields
                                      :member-name "managedFields")
                                     (custom-fields :target-type fields
                                      :member-name "customFields"))
                                    (:shape-name
                                     "ThingGroupIndexingConfiguration"))

(smithy/sdk/shapes:define-enum thing-group-indexing-mode
    common-lisp:nil
  (:off "OFF")
  (:on "ON"))

(smithy/sdk/shapes:define-list thing-group-list :member thing-group-name)

(smithy/sdk/shapes:define-structure thing-group-metadata common-lisp:nil
                                    ((parent-group-name :target-type
                                      thing-group-name :member-name
                                      "parentGroupName")
                                     (root-to-parent-thing-groups :target-type
                                      thing-group-name-and-arn-list
                                      :member-name "rootToParentThingGroups")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate"))
                                    (:shape-name "ThingGroupMetadata"))

(smithy/sdk/shapes:define-type thing-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list thing-group-name-and-arn-list :member
                               group-name-and-arn)

(smithy/sdk/shapes:define-list thing-group-name-list :member thing-group-name)

(smithy/sdk/shapes:define-list thing-group-names :member thing-group-name)

(smithy/sdk/shapes:define-structure thing-group-properties common-lisp:nil
                                    ((thing-group-description :target-type
                                      thing-group-description :member-name
                                      "thingGroupDescription")
                                     (attribute-payload :target-type
                                      attribute-payload :member-name
                                      "attributePayload"))
                                    (:shape-name "ThingGroupProperties"))

(smithy/sdk/shapes:define-type thing-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing-indexing-configuration
                                    common-lisp:nil
                                    ((thing-indexing-mode :target-type
                                      thing-indexing-mode :required
                                      common-lisp:t :member-name
                                      "thingIndexingMode")
                                     (thing-connectivity-indexing-mode
                                      :target-type
                                      thing-connectivity-indexing-mode
                                      :member-name
                                      "thingConnectivityIndexingMode")
                                     (device-defender-indexing-mode
                                      :target-type
                                      device-defender-indexing-mode
                                      :member-name
                                      "deviceDefenderIndexingMode")
                                     (named-shadow-indexing-mode :target-type
                                      named-shadow-indexing-mode :member-name
                                      "namedShadowIndexingMode")
                                     (managed-fields :target-type fields
                                      :member-name "managedFields")
                                     (custom-fields :target-type fields
                                      :member-name "customFields")
                                     (filter :target-type indexing-filter
                                      :member-name "filter"))
                                    (:shape-name "ThingIndexingConfiguration"))

(smithy/sdk/shapes:define-enum thing-indexing-mode
    common-lisp:nil
  (:off "OFF")
  (:registry "REGISTRY")
  (:registry-and-shadow "REGISTRY_AND_SHADOW"))

(smithy/sdk/shapes:define-type thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list thing-name-list :member thing-name)

(smithy/sdk/shapes:define-structure thing-principal-object common-lisp:nil
                                    ((principal :target-type principal
                                      :required common-lisp:t :member-name
                                      "principal")
                                     (thing-principal-type :target-type
                                      thing-principal-type :member-name
                                      "thingPrincipalType"))
                                    (:shape-name "ThingPrincipalObject"))

(smithy/sdk/shapes:define-list thing-principal-objects :member
                               thing-principal-object)

(smithy/sdk/shapes:define-enum thing-principal-type
    common-lisp:nil
  (:exclusive-thing "EXCLUSIVE_THING")
  (:non-exclusive-thing "NON_EXCLUSIVE_THING"))

(smithy/sdk/shapes:define-type thing-type-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing-type-definition common-lisp:nil
                                    ((thing-type-name :target-type
                                      thing-type-name :member-name
                                      "thingTypeName")
                                     (thing-type-arn :target-type
                                      thing-type-arn :member-name
                                      "thingTypeArn")
                                     (thing-type-properties :target-type
                                      thing-type-properties :member-name
                                      "thingTypeProperties")
                                     (thing-type-metadata :target-type
                                      thing-type-metadata :member-name
                                      "thingTypeMetadata"))
                                    (:shape-name "ThingTypeDefinition"))

(smithy/sdk/shapes:define-type thing-type-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thing-type-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list thing-type-list :member thing-type-definition)

(smithy/sdk/shapes:define-structure thing-type-metadata common-lisp:nil
                                    ((deprecated :target-type boolean2
                                      :member-name "deprecated")
                                     (deprecation-date :target-type
                                      deprecation-date :member-name
                                      "deprecationDate")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate"))
                                    (:shape-name "ThingTypeMetadata"))

(smithy/sdk/shapes:define-type thing-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thing-type-properties common-lisp:nil
                                    ((thing-type-description :target-type
                                      thing-type-description :member-name
                                      "thingTypeDescription")
                                     (searchable-attributes :target-type
                                      searchable-attributes :member-name
                                      "searchableAttributes")
                                     (mqtt5configuration :target-type
                                      mqtt5configuration :member-name
                                      "mqtt5Configuration"))
                                    (:shape-name "ThingTypeProperties"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure time-filter common-lisp:nil
                                    ((after :target-type string-date-time
                                      :member-name "after")
                                     (before :target-type string-date-time
                                      :member-name "before"))
                                    (:shape-name "TimeFilter"))

(smithy/sdk/shapes:define-type timed-out-things smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure timeout-config common-lisp:nil
                                    ((in-progress-timeout-in-minutes
                                      :target-type
                                      in-progress-timeout-in-minutes
                                      :member-name
                                      "inProgressTimeoutInMinutes"))
                                    (:shape-name "TimeoutConfig"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestream-action common-lisp:nil
                                    ((role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (database-name :target-type
                                      timestream-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (table-name :target-type
                                      timestream-table-name :required
                                      common-lisp:t :member-name "tableName")
                                     (dimensions :target-type
                                      timestream-dimension-list :required
                                      common-lisp:t :member-name "dimensions")
                                     (timestamp :target-type
                                      timestream-timestamp :member-name
                                      "timestamp"))
                                    (:shape-name "TimestreamAction"))

(smithy/sdk/shapes:define-type timestream-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timestream-dimension common-lisp:nil
                                    ((name :target-type
                                      timestream-dimension-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      timestream-dimension-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "TimestreamDimension"))

(smithy/sdk/shapes:define-list timestream-dimension-list :member
                               timestream-dimension)

(smithy/sdk/shapes:define-type timestream-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestream-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestream-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timestream-timestamp common-lisp:nil
                                    ((value :target-type
                                      timestream-timestamp-value :required
                                      common-lisp:t :member-name "value")
                                     (unit :target-type
                                      timestream-timestamp-unit :required
                                      common-lisp:t :member-name "unit"))
                                    (:shape-name "TimestreamTimestamp"))

(smithy/sdk/shapes:define-type timestream-timestamp-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestream-timestamp-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tiny-max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure tls-config common-lisp:nil
                                    ((security-policy :target-type
                                      security-policy :member-name
                                      "securityPolicy"))
                                    (:shape-name "TlsConfig"))

(smithy/sdk/shapes:define-structure tls-context common-lisp:nil
                                    ((server-name :target-type server-name
                                      :member-name "serverName"))
                                    (:shape-name "TlsContext"))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-signature smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type topic-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure topic-rule common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :member-name "ruleName")
                                     (sql :target-type sql :member-name "sql")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type created-at-date
                                      :member-name "createdAt")
                                     (actions :target-type action-list
                                      :member-name "actions")
                                     (rule-disabled :target-type is-disabled
                                      :member-name "ruleDisabled")
                                     (aws-iot-sql-version :target-type
                                      aws-iot-sql-version :member-name
                                      "awsIotSqlVersion")
                                     (error-action :target-type action
                                      :member-name "errorAction"))
                                    (:shape-name "TopicRule"))

(smithy/sdk/shapes:define-structure topic-rule-destination common-lisp:nil
                                    ((arn :target-type aws-arn :member-name
                                      "arn")
                                     (status :target-type
                                      topic-rule-destination-status
                                      :member-name "status")
                                     (created-at :target-type created-at-date
                                      :member-name "createdAt")
                                     (last-updated-at :target-type
                                      last-updated-at-date :member-name
                                      "lastUpdatedAt")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (http-url-properties :target-type
                                      http-url-destination-properties
                                      :member-name "httpUrlProperties")
                                     (vpc-properties :target-type
                                      vpc-destination-properties :member-name
                                      "vpcProperties"))
                                    (:shape-name "TopicRuleDestination"))

(smithy/sdk/shapes:define-structure topic-rule-destination-configuration
                                    common-lisp:nil
                                    ((http-url-configuration :target-type
                                      http-url-destination-configuration
                                      :member-name "httpUrlConfiguration")
                                     (vpc-configuration :target-type
                                      vpc-destination-configuration
                                      :member-name "vpcConfiguration"))
                                    (:shape-name
                                     "TopicRuleDestinationConfiguration"))

(smithy/sdk/shapes:define-type topic-rule-destination-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum topic-rule-destination-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:in-progress "IN_PROGRESS")
  (:disabled "DISABLED")
  (:error "ERROR")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list topic-rule-destination-summaries :member
                               topic-rule-destination-summary)

(smithy/sdk/shapes:define-structure topic-rule-destination-summary
                                    common-lisp:nil
                                    ((arn :target-type aws-arn :member-name
                                      "arn")
                                     (status :target-type
                                      topic-rule-destination-status
                                      :member-name "status")
                                     (created-at :target-type created-at-date
                                      :member-name "createdAt")
                                     (last-updated-at :target-type
                                      last-updated-at-date :member-name
                                      "lastUpdatedAt")
                                     (status-reason :target-type string
                                      :member-name "statusReason")
                                     (http-url-summary :target-type
                                      http-url-destination-summary :member-name
                                      "httpUrlSummary")
                                     (vpc-destination-summary :target-type
                                      vpc-destination-summary :member-name
                                      "vpcDestinationSummary"))
                                    (:shape-name "TopicRuleDestinationSummary"))

(smithy/sdk/shapes:define-list topic-rule-list :member topic-rule-list-item)

(smithy/sdk/shapes:define-structure topic-rule-list-item common-lisp:nil
                                    ((rule-arn :target-type rule-arn
                                      :member-name "ruleArn")
                                     (rule-name :target-type rule-name
                                      :member-name "ruleName")
                                     (topic-pattern :target-type topic-pattern
                                      :member-name "topicPattern")
                                     (created-at :target-type created-at-date
                                      :member-name "createdAt")
                                     (rule-disabled :target-type is-disabled
                                      :member-name "ruleDisabled"))
                                    (:shape-name "TopicRuleListItem"))

(smithy/sdk/shapes:define-type topic-rule-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure topic-rule-payload common-lisp:nil
                                    ((sql :target-type sql :required
                                      common-lisp:t :member-name "sql")
                                     (description :target-type description
                                      :member-name "description")
                                     (actions :target-type action-list
                                      :required common-lisp:t :member-name
                                      "actions")
                                     (rule-disabled :target-type is-disabled
                                      :member-name "ruleDisabled")
                                     (aws-iot-sql-version :target-type
                                      aws-iot-sql-version :member-name
                                      "awsIotSqlVersion")
                                     (error-action :target-type action
                                      :member-name "errorAction"))
                                    (:shape-name "TopicRulePayload"))

(smithy/sdk/shapes:define-type total-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type total-findings-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type total-resources-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error transfer-already-completed-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name
                                 "TransferAlreadyCompletedException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input transfer-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t)
                                 (target-aws-account :target-type
                                  aws-account-id :required common-lisp:t
                                  :member-name "targetAwsAccount" :http-query
                                  "targetAwsAccount")
                                 (transfer-message :target-type message
                                  :member-name "transferMessage"))
                                (:shape-name "TransferCertificateRequest"))

(smithy/sdk/shapes:define-output transfer-certificate-response common-lisp:nil
                                 ((transferred-certificate-arn :target-type
                                   certificate-arn :member-name
                                   "transferredCertificateArn"))
                                 (:shape-name "TransferCertificateResponse"))

(smithy/sdk/shapes:define-error transfer-conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "TransferConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure transfer-data common-lisp:nil
                                    ((transfer-message :target-type message
                                      :member-name "transferMessage")
                                     (reject-reason :target-type message
                                      :member-name "rejectReason")
                                     (transfer-date :target-type date-type
                                      :member-name "transferDate")
                                     (accept-date :target-type date-type
                                      :member-name "acceptDate")
                                     (reject-date :target-type date-type
                                      :member-name "rejectDate"))
                                    (:shape-name "TransferData"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-type undo-deprecate smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type unset-default-version
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type unsigned-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type unsigned-long-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-account-audit-configuration-request
                                common-lisp:nil
                                ((role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (audit-notification-target-configurations
                                  :target-type
                                  audit-notification-target-configurations
                                  :member-name
                                  "auditNotificationTargetConfigurations")
                                 (audit-check-configurations :target-type
                                  audit-check-configurations :member-name
                                  "auditCheckConfigurations"))
                                (:shape-name
                                 "UpdateAccountAuditConfigurationRequest"))

(smithy/sdk/shapes:define-output update-account-audit-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateAccountAuditConfigurationResponse"))

(smithy/sdk/shapes:define-input update-audit-suppression-request
                                common-lisp:nil
                                ((check-name :target-type audit-check-name
                                  :required common-lisp:t :member-name
                                  "checkName")
                                 (resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "resourceIdentifier")
                                 (expiration-date :target-type timestamp
                                  :member-name "expirationDate")
                                 (suppress-indefinitely :target-type
                                  suppress-indefinitely :member-name
                                  "suppressIndefinitely")
                                 (description :target-type audit-description
                                  :member-name "description"))
                                (:shape-name "UpdateAuditSuppressionRequest"))

(smithy/sdk/shapes:define-output update-audit-suppression-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateAuditSuppressionResponse"))

(smithy/sdk/shapes:define-input update-authorizer-request common-lisp:nil
                                ((authorizer-name :target-type authorizer-name
                                  :required common-lisp:t :member-name
                                  "authorizerName" :http-label common-lisp:t)
                                 (authorizer-function-arn :target-type
                                  authorizer-function-arn :member-name
                                  "authorizerFunctionArn")
                                 (token-key-name :target-type token-key-name
                                  :member-name "tokenKeyName")
                                 (token-signing-public-keys :target-type
                                  public-key-map :member-name
                                  "tokenSigningPublicKeys")
                                 (status :target-type authorizer-status
                                  :member-name "status")
                                 (enable-caching-for-http :target-type
                                  enable-caching-for-http :member-name
                                  "enableCachingForHttp"))
                                (:shape-name "UpdateAuthorizerRequest"))

(smithy/sdk/shapes:define-output update-authorizer-response common-lisp:nil
                                 ((authorizer-name :target-type authorizer-name
                                   :member-name "authorizerName")
                                  (authorizer-arn :target-type authorizer-arn
                                   :member-name "authorizerArn"))
                                 (:shape-name "UpdateAuthorizerResponse"))

(smithy/sdk/shapes:define-input update-billing-group-request common-lisp:nil
                                ((billing-group-name :target-type
                                  billing-group-name :required common-lisp:t
                                  :member-name "billingGroupName" :http-label
                                  common-lisp:t)
                                 (billing-group-properties :target-type
                                  billing-group-properties :required
                                  common-lisp:t :member-name
                                  "billingGroupProperties")
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion"))
                                (:shape-name "UpdateBillingGroupRequest"))

(smithy/sdk/shapes:define-output update-billing-group-response common-lisp:nil
                                 ((version :target-type version :member-name
                                   "version"))
                                 (:shape-name "UpdateBillingGroupResponse"))

(smithy/sdk/shapes:define-structure update-cacertificate-params common-lisp:nil
                                    ((action :target-type
                                      cacertificate-update-action :required
                                      common-lisp:t :member-name "action"))
                                    (:shape-name "UpdateCACertificateParams"))

(smithy/sdk/shapes:define-input update-cacertificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t)
                                 (new-status :target-type cacertificate-status
                                  :member-name "newStatus" :http-query
                                  "newStatus")
                                 (new-auto-registration-status :target-type
                                  auto-registration-status :member-name
                                  "newAutoRegistrationStatus" :http-query
                                  "newAutoRegistrationStatus")
                                 (registration-config :target-type
                                  registration-config :member-name
                                  "registrationConfig")
                                 (remove-auto-registration :target-type
                                  remove-auto-registration :member-name
                                  "removeAutoRegistration"))
                                (:shape-name "UpdateCACertificateRequest"))

(smithy/sdk/shapes:define-input update-certificate-provider-request
                                common-lisp:nil
                                ((certificate-provider-name :target-type
                                  certificate-provider-name :required
                                  common-lisp:t :member-name
                                  "certificateProviderName" :http-label
                                  common-lisp:t)
                                 (lambda-function-arn :target-type
                                  certificate-provider-function-arn
                                  :member-name "lambdaFunctionArn")
                                 (account-default-for-operations :target-type
                                  certificate-provider-account-default-for-operations
                                  :member-name "accountDefaultForOperations"))
                                (:shape-name
                                 "UpdateCertificateProviderRequest"))

(smithy/sdk/shapes:define-output update-certificate-provider-response
                                 common-lisp:nil
                                 ((certificate-provider-name :target-type
                                   certificate-provider-name :member-name
                                   "certificateProviderName")
                                  (certificate-provider-arn :target-type
                                   certificate-provider-arn :member-name
                                   "certificateProviderArn"))
                                 (:shape-name
                                  "UpdateCertificateProviderResponse"))

(smithy/sdk/shapes:define-input update-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "certificateId" :http-label common-lisp:t)
                                 (new-status :target-type certificate-status
                                  :required common-lisp:t :member-name
                                  "newStatus" :http-query "newStatus"))
                                (:shape-name "UpdateCertificateRequest"))

(smithy/sdk/shapes:define-input update-command-request common-lisp:nil
                                ((command-id :target-type command-id :required
                                  common-lisp:t :member-name "commandId"
                                  :http-label common-lisp:t)
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (description :target-type command-description
                                  :member-name "description")
                                 (deprecated :target-type deprecation-flag
                                  :member-name "deprecated"))
                                (:shape-name "UpdateCommandRequest"))

(smithy/sdk/shapes:define-output update-command-response common-lisp:nil
                                 ((command-id :target-type command-id
                                   :member-name "commandId")
                                  (display-name :target-type display-name
                                   :member-name "displayName")
                                  (description :target-type command-description
                                   :member-name "description")
                                  (deprecated :target-type deprecation-flag
                                   :member-name "deprecated")
                                  (last-updated-at :target-type date-type
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "UpdateCommandResponse"))

(smithy/sdk/shapes:define-input update-custom-metric-request common-lisp:nil
                                ((metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t)
                                 (display-name :target-type
                                  custom-metric-display-name :required
                                  common-lisp:t :member-name "displayName"))
                                (:shape-name "UpdateCustomMetricRequest"))

(smithy/sdk/shapes:define-output update-custom-metric-response common-lisp:nil
                                 ((metric-name :target-type metric-name
                                   :member-name "metricName")
                                  (metric-arn :target-type custom-metric-arn
                                   :member-name "metricArn")
                                  (metric-type :target-type custom-metric-type
                                   :member-name "metricType")
                                  (display-name :target-type
                                   custom-metric-display-name :member-name
                                   "displayName")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate"))
                                 (:shape-name "UpdateCustomMetricResponse"))

(smithy/sdk/shapes:define-structure update-device-certificate-params
                                    common-lisp:nil
                                    ((action :target-type
                                      device-certificate-update-action
                                      :required common-lisp:t :member-name
                                      "action"))
                                    (:shape-name
                                     "UpdateDeviceCertificateParams"))

(smithy/sdk/shapes:define-input update-dimension-request common-lisp:nil
                                ((name :target-type dimension-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (string-values :target-type
                                  dimension-string-values :required
                                  common-lisp:t :member-name "stringValues"))
                                (:shape-name "UpdateDimensionRequest"))

(smithy/sdk/shapes:define-output update-dimension-response common-lisp:nil
                                 ((name :target-type dimension-name
                                   :member-name "name")
                                  (arn :target-type dimension-arn :member-name
                                   "arn")
                                  (type :target-type dimension-type
                                   :member-name "type")
                                  (string-values :target-type
                                   dimension-string-values :member-name
                                   "stringValues")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate"))
                                 (:shape-name "UpdateDimensionResponse"))

(smithy/sdk/shapes:define-input update-domain-configuration-request
                                common-lisp:nil
                                ((domain-configuration-name :target-type
                                  reserved-domain-configuration-name :required
                                  common-lisp:t :member-name
                                  "domainConfigurationName" :http-label
                                  common-lisp:t)
                                 (authorizer-config :target-type
                                  authorizer-config :member-name
                                  "authorizerConfig")
                                 (domain-configuration-status :target-type
                                  domain-configuration-status :member-name
                                  "domainConfigurationStatus")
                                 (remove-authorizer-config :target-type
                                  remove-authorizer-config :member-name
                                  "removeAuthorizerConfig")
                                 (tls-config :target-type tls-config
                                  :member-name "tlsConfig")
                                 (server-certificate-config :target-type
                                  server-certificate-config :member-name
                                  "serverCertificateConfig")
                                 (authentication-type :target-type
                                  authentication-type :member-name
                                  "authenticationType")
                                 (application-protocol :target-type
                                  application-protocol :member-name
                                  "applicationProtocol")
                                 (client-certificate-config :target-type
                                  client-certificate-config :member-name
                                  "clientCertificateConfig"))
                                (:shape-name
                                 "UpdateDomainConfigurationRequest"))

(smithy/sdk/shapes:define-output update-domain-configuration-response
                                 common-lisp:nil
                                 ((domain-configuration-name :target-type
                                   reserved-domain-configuration-name
                                   :member-name "domainConfigurationName")
                                  (domain-configuration-arn :target-type
                                   domain-configuration-arn :member-name
                                   "domainConfigurationArn"))
                                 (:shape-name
                                  "UpdateDomainConfigurationResponse"))

(smithy/sdk/shapes:define-input update-dynamic-thing-group-request
                                common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (thing-group-properties :target-type
                                  thing-group-properties :required
                                  common-lisp:t :member-name
                                  "thingGroupProperties")
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (query-string :target-type query-string
                                  :member-name "queryString")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion"))
                                (:shape-name "UpdateDynamicThingGroupRequest"))

(smithy/sdk/shapes:define-output update-dynamic-thing-group-response
                                 common-lisp:nil
                                 ((version :target-type version :member-name
                                   "version"))
                                 (:shape-name
                                  "UpdateDynamicThingGroupResponse"))

(smithy/sdk/shapes:define-input update-encryption-configuration-request
                                common-lisp:nil
                                ((encryption-type :target-type encryption-type
                                  :required common-lisp:t :member-name
                                  "encryptionType")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (kms-access-role-arn :target-type
                                  kms-access-role-arn :member-name
                                  "kmsAccessRoleArn"))
                                (:shape-name
                                 "UpdateEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output update-encryption-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input update-event-configurations-request
                                common-lisp:nil
                                ((event-configurations :target-type
                                  event-configurations :member-name
                                  "eventConfigurations"))
                                (:shape-name
                                 "UpdateEventConfigurationsRequest"))

(smithy/sdk/shapes:define-output update-event-configurations-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateEventConfigurationsResponse"))

(smithy/sdk/shapes:define-input update-fleet-metric-request common-lisp:nil
                                ((metric-name :target-type fleet-metric-name
                                  :required common-lisp:t :member-name
                                  "metricName" :http-label common-lisp:t)
                                 (query-string :target-type query-string
                                  :member-name "queryString")
                                 (aggregation-type :target-type
                                  aggregation-type :member-name
                                  "aggregationType")
                                 (period :target-type fleet-metric-period
                                  :member-name "period")
                                 (aggregation-field :target-type
                                  aggregation-field :member-name
                                  "aggregationField")
                                 (description :target-type
                                  fleet-metric-description :member-name
                                  "description")
                                 (query-version :target-type query-version
                                  :member-name "queryVersion")
                                 (index-name :target-type index-name :required
                                  common-lisp:t :member-name "indexName")
                                 (unit :target-type fleet-metric-unit
                                  :member-name "unit")
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion"))
                                (:shape-name "UpdateFleetMetricRequest"))

(smithy/sdk/shapes:define-input update-indexing-configuration-request
                                common-lisp:nil
                                ((thing-indexing-configuration :target-type
                                  thing-indexing-configuration :member-name
                                  "thingIndexingConfiguration")
                                 (thing-group-indexing-configuration
                                  :target-type
                                  thing-group-indexing-configuration
                                  :member-name
                                  "thingGroupIndexingConfiguration"))
                                (:shape-name
                                 "UpdateIndexingConfigurationRequest"))

(smithy/sdk/shapes:define-output update-indexing-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateIndexingConfigurationResponse"))

(smithy/sdk/shapes:define-input update-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (description :target-type job-description
                                  :member-name "description")
                                 (presigned-url-config :target-type
                                  presigned-url-config :member-name
                                  "presignedUrlConfig")
                                 (job-executions-rollout-config :target-type
                                  job-executions-rollout-config :member-name
                                  "jobExecutionsRolloutConfig")
                                 (abort-config :target-type abort-config
                                  :member-name "abortConfig")
                                 (timeout-config :target-type timeout-config
                                  :member-name "timeoutConfig")
                                 (namespace-id :target-type namespace-id
                                  :member-name "namespaceId" :http-query
                                  "namespaceId")
                                 (job-executions-retry-config :target-type
                                  job-executions-retry-config :member-name
                                  "jobExecutionsRetryConfig"))
                                (:shape-name "UpdateJobRequest"))

(smithy/sdk/shapes:define-input update-mitigation-action-request
                                common-lisp:nil
                                ((action-name :target-type
                                  mitigation-action-name :required
                                  common-lisp:t :member-name "actionName"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (action-params :target-type
                                  mitigation-action-params :member-name
                                  "actionParams"))
                                (:shape-name "UpdateMitigationActionRequest"))

(smithy/sdk/shapes:define-output update-mitigation-action-response
                                 common-lisp:nil
                                 ((action-arn :target-type
                                   mitigation-action-arn :member-name
                                   "actionArn")
                                  (action-id :target-type mitigation-action-id
                                   :member-name "actionId"))
                                 (:shape-name "UpdateMitigationActionResponse"))

(smithy/sdk/shapes:define-input update-package-configuration-request
                                common-lisp:nil
                                ((version-update-by-jobs-config :target-type
                                  version-update-by-jobs-config :member-name
                                  "versionUpdateByJobsConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name
                                 "UpdatePackageConfigurationRequest"))

(smithy/sdk/shapes:define-output update-package-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdatePackageConfigurationResponse"))

(smithy/sdk/shapes:define-input update-package-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (default-version-name :target-type
                                  version-name :member-name
                                  "defaultVersionName")
                                 (unset-default-version :target-type
                                  unset-default-version :member-name
                                  "unsetDefaultVersion")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "UpdatePackageRequest"))

(smithy/sdk/shapes:define-output update-package-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdatePackageResponse"))

(smithy/sdk/shapes:define-input update-package-version-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "packageName" :http-label common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName" :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (attributes :target-type resource-attributes
                                  :member-name "attributes")
                                 (artifact :target-type
                                  package-version-artifact :member-name
                                  "artifact")
                                 (action :target-type package-version-action
                                  :member-name "action")
                                 (recipe :target-type package-version-recipe
                                  :member-name "recipe")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "UpdatePackageVersionRequest"))

(smithy/sdk/shapes:define-output update-package-version-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdatePackageVersionResponse"))

(smithy/sdk/shapes:define-input update-provisioning-template-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-label common-lisp:t)
                                 (description :target-type template-description
                                  :member-name "description")
                                 (enabled :target-type enabled2 :member-name
                                  "enabled")
                                 (default-version-id :target-type
                                  template-version-id :member-name
                                  "defaultVersionId")
                                 (provisioning-role-arn :target-type role-arn
                                  :member-name "provisioningRoleArn")
                                 (pre-provisioning-hook :target-type
                                  provisioning-hook :member-name
                                  "preProvisioningHook")
                                 (remove-pre-provisioning-hook :target-type
                                  remove-hook :member-name
                                  "removePreProvisioningHook"))
                                (:shape-name
                                 "UpdateProvisioningTemplateRequest"))

(smithy/sdk/shapes:define-output update-provisioning-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateProvisioningTemplateResponse"))

(smithy/sdk/shapes:define-input update-role-alias-request common-lisp:nil
                                ((role-alias :target-type role-alias :required
                                  common-lisp:t :member-name "roleAlias"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (credential-duration-seconds :target-type
                                  credential-duration-seconds :member-name
                                  "credentialDurationSeconds"))
                                (:shape-name "UpdateRoleAliasRequest"))

(smithy/sdk/shapes:define-output update-role-alias-response common-lisp:nil
                                 ((role-alias :target-type role-alias
                                   :member-name "roleAlias")
                                  (role-alias-arn :target-type role-alias-arn
                                   :member-name "roleAliasArn"))
                                 (:shape-name "UpdateRoleAliasResponse"))

(smithy/sdk/shapes:define-input update-scheduled-audit-request common-lisp:nil
                                ((frequency :target-type audit-frequency
                                  :member-name "frequency")
                                 (day-of-month :target-type day-of-month
                                  :member-name "dayOfMonth")
                                 (day-of-week :target-type day-of-week
                                  :member-name "dayOfWeek")
                                 (target-check-names :target-type
                                  target-audit-check-names :member-name
                                  "targetCheckNames")
                                 (scheduled-audit-name :target-type
                                  scheduled-audit-name :required common-lisp:t
                                  :member-name "scheduledAuditName" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateScheduledAuditRequest"))

(smithy/sdk/shapes:define-output update-scheduled-audit-response
                                 common-lisp:nil
                                 ((scheduled-audit-arn :target-type
                                   scheduled-audit-arn :member-name
                                   "scheduledAuditArn"))
                                 (:shape-name "UpdateScheduledAuditResponse"))

(smithy/sdk/shapes:define-input update-security-profile-request common-lisp:nil
                                ((security-profile-name :target-type
                                  security-profile-name :required common-lisp:t
                                  :member-name "securityProfileName"
                                  :http-label common-lisp:t)
                                 (security-profile-description :target-type
                                  security-profile-description :member-name
                                  "securityProfileDescription")
                                 (behaviors :target-type behaviors :member-name
                                  "behaviors")
                                 (alert-targets :target-type alert-targets
                                  :member-name "alertTargets")
                                 (additional-metrics-to-retain :target-type
                                  additional-metrics-to-retain-list
                                  :member-name "additionalMetricsToRetain")
                                 (additional-metrics-to-retain-v2 :target-type
                                  additional-metrics-to-retain-v2list
                                  :member-name "additionalMetricsToRetainV2")
                                 (delete-behaviors :target-type
                                  delete-behaviors :member-name
                                  "deleteBehaviors")
                                 (delete-alert-targets :target-type
                                  delete-alert-targets :member-name
                                  "deleteAlertTargets")
                                 (delete-additional-metrics-to-retain
                                  :target-type
                                  delete-additional-metrics-to-retain
                                  :member-name
                                  "deleteAdditionalMetricsToRetain")
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion" :http-query
                                  "expectedVersion")
                                 (metrics-export-config :target-type
                                  metrics-export-config :member-name
                                  "metricsExportConfig")
                                 (delete-metrics-export-config :target-type
                                  delete-metrics-export-config :member-name
                                  "deleteMetricsExportConfig"))
                                (:shape-name "UpdateSecurityProfileRequest"))

(smithy/sdk/shapes:define-output update-security-profile-response
                                 common-lisp:nil
                                 ((security-profile-name :target-type
                                   security-profile-name :member-name
                                   "securityProfileName")
                                  (security-profile-arn :target-type
                                   security-profile-arn :member-name
                                   "securityProfileArn")
                                  (security-profile-description :target-type
                                   security-profile-description :member-name
                                   "securityProfileDescription")
                                  (behaviors :target-type behaviors
                                   :member-name "behaviors")
                                  (alert-targets :target-type alert-targets
                                   :member-name "alertTargets")
                                  (additional-metrics-to-retain :target-type
                                   additional-metrics-to-retain-list
                                   :member-name "additionalMetricsToRetain")
                                  (additional-metrics-to-retain-v2 :target-type
                                   additional-metrics-to-retain-v2list
                                   :member-name "additionalMetricsToRetainV2")
                                  (version :target-type version :member-name
                                   "version")
                                  (creation-date :target-type timestamp
                                   :member-name "creationDate")
                                  (last-modified-date :target-type timestamp
                                   :member-name "lastModifiedDate")
                                  (metrics-export-config :target-type
                                   metrics-export-config :member-name
                                   "metricsExportConfig"))
                                 (:shape-name "UpdateSecurityProfileResponse"))

(smithy/sdk/shapes:define-input update-stream-request common-lisp:nil
                                ((stream-id :target-type stream-id :required
                                  common-lisp:t :member-name "streamId"
                                  :http-label common-lisp:t)
                                 (description :target-type stream-description
                                  :member-name "description")
                                 (files :target-type stream-files :member-name
                                  "files")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn"))
                                (:shape-name "UpdateStreamRequest"))

(smithy/sdk/shapes:define-output update-stream-response common-lisp:nil
                                 ((stream-id :target-type stream-id
                                   :member-name "streamId")
                                  (stream-arn :target-type stream-arn
                                   :member-name "streamArn")
                                  (description :target-type stream-description
                                   :member-name "description")
                                  (stream-version :target-type stream-version
                                   :member-name "streamVersion"))
                                 (:shape-name "UpdateStreamResponse"))

(smithy/sdk/shapes:define-input update-thing-group-request common-lisp:nil
                                ((thing-group-name :target-type
                                  thing-group-name :required common-lisp:t
                                  :member-name "thingGroupName" :http-label
                                  common-lisp:t)
                                 (thing-group-properties :target-type
                                  thing-group-properties :required
                                  common-lisp:t :member-name
                                  "thingGroupProperties")
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion"))
                                (:shape-name "UpdateThingGroupRequest"))

(smithy/sdk/shapes:define-output update-thing-group-response common-lisp:nil
                                 ((version :target-type version :member-name
                                   "version"))
                                 (:shape-name "UpdateThingGroupResponse"))

(smithy/sdk/shapes:define-input update-thing-groups-for-thing-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name
                                  :member-name "thingName")
                                 (thing-groups-to-add :target-type
                                  thing-group-list :member-name
                                  "thingGroupsToAdd")
                                 (thing-groups-to-remove :target-type
                                  thing-group-list :member-name
                                  "thingGroupsToRemove")
                                 (override-dynamic-groups :target-type
                                  override-dynamic-groups :member-name
                                  "overrideDynamicGroups"))
                                (:shape-name
                                 "UpdateThingGroupsForThingRequest"))

(smithy/sdk/shapes:define-output update-thing-groups-for-thing-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateThingGroupsForThingResponse"))

(smithy/sdk/shapes:define-input update-thing-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (thing-type-name :target-type thing-type-name
                                  :member-name "thingTypeName")
                                 (attribute-payload :target-type
                                  attribute-payload :member-name
                                  "attributePayload")
                                 (expected-version :target-type
                                  optional-version :member-name
                                  "expectedVersion")
                                 (remove-thing-type :target-type
                                  remove-thing-type :member-name
                                  "removeThingType"))
                                (:shape-name "UpdateThingRequest"))

(smithy/sdk/shapes:define-output update-thing-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateThingResponse"))

(smithy/sdk/shapes:define-input update-thing-type-request common-lisp:nil
                                ((thing-type-name :target-type thing-type-name
                                  :required common-lisp:t :member-name
                                  "thingTypeName" :http-label common-lisp:t)
                                 (thing-type-properties :target-type
                                  thing-type-properties :member-name
                                  "thingTypeProperties"))
                                (:shape-name "UpdateThingTypeRequest"))

(smithy/sdk/shapes:define-output update-thing-type-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateThingTypeResponse"))

(smithy/sdk/shapes:define-input update-topic-rule-destination-request
                                common-lisp:nil
                                ((arn :target-type aws-arn :required
                                  common-lisp:t :member-name "arn")
                                 (status :target-type
                                  topic-rule-destination-status :required
                                  common-lisp:t :member-name "status"))
                                (:shape-name
                                 "UpdateTopicRuleDestinationRequest"))

(smithy/sdk/shapes:define-output update-topic-rule-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateTopicRuleDestinationResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type use-base64 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list user-properties :member user-property)

(smithy/sdk/shapes:define-structure user-property common-lisp:nil
                                    ((key :target-type user-property-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type user-property-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "UserProperty"))

(smithy/sdk/shapes:define-type user-property-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-property-key-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type valid smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input validate-security-profile-behaviors-request
                                common-lisp:nil
                                ((behaviors :target-type behaviors :required
                                  common-lisp:t :member-name "behaviors"))
                                (:shape-name
                                 "ValidateSecurityProfileBehaviorsRequest"))

(smithy/sdk/shapes:define-output validate-security-profile-behaviors-response
                                 common-lisp:nil
                                 ((valid :target-type valid :member-name
                                   "valid")
                                  (validation-errors :target-type
                                   validation-errors :member-name
                                   "validationErrors"))
                                 (:shape-name
                                  "ValidateSecurityProfileBehaviorsResponse"))

(smithy/sdk/shapes:define-structure validation-error common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "ValidationError"))

(smithy/sdk/shapes:define-list validation-errors :member validation-error)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variance smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum verification-state
    common-lisp:nil
  (:false-positive "FALSE_POSITIVE")
  (:benign-positive "BENIGN_POSITIVE")
  (:true-positive "TRUE_POSITIVE")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-type verification-state-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error version-conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "VersionConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type version-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure version-update-by-jobs-config
                                    common-lisp:nil
                                    ((enabled :target-type enabled-boolean
                                      :member-name "enabled")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn"))
                                    (:shape-name "VersionUpdateByJobsConfig"))

(smithy/sdk/shapes:define-error versions-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "VersionsLimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure violation-event common-lisp:nil
                                    ((violation-id :target-type violation-id
                                      :member-name "violationId")
                                     (thing-name :target-type
                                      device-defender-thing-name :member-name
                                      "thingName")
                                     (security-profile-name :target-type
                                      security-profile-name :member-name
                                      "securityProfileName")
                                     (behavior :target-type behavior
                                      :member-name "behavior")
                                     (metric-value :target-type metric-value
                                      :member-name "metricValue")
                                     (violation-event-additional-info
                                      :target-type
                                      violation-event-additional-info
                                      :member-name
                                      "violationEventAdditionalInfo")
                                     (violation-event-type :target-type
                                      violation-event-type :member-name
                                      "violationEventType")
                                     (verification-state :target-type
                                      verification-state :member-name
                                      "verificationState")
                                     (verification-state-description
                                      :target-type
                                      verification-state-description
                                      :member-name
                                      "verificationStateDescription")
                                     (violation-event-time :target-type
                                      timestamp :member-name
                                      "violationEventTime"))
                                    (:shape-name "ViolationEvent"))

(smithy/sdk/shapes:define-structure violation-event-additional-info
                                    common-lisp:nil
                                    ((confidence-level :target-type
                                      confidence-level :member-name
                                      "confidenceLevel"))
                                    (:shape-name
                                     "ViolationEventAdditionalInfo"))

(smithy/sdk/shapes:define-structure violation-event-occurrence-range
                                    common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "endTime"))
                                    (:shape-name
                                     "ViolationEventOccurrenceRange"))

(smithy/sdk/shapes:define-enum violation-event-type
    common-lisp:nil
  (:in-alarm "in-alarm")
  (:alarm-cleared "alarm-cleared")
  (:alarm-invalidated "alarm-invalidated"))

(smithy/sdk/shapes:define-list violation-events :member violation-event)

(smithy/sdk/shapes:define-type violation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-destination-configuration
                                    common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (security-groups :target-type
                                      security-group-list :member-name
                                      "securityGroups")
                                     (vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "vpcId")
                                     (role-arn :target-type aws-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "VpcDestinationConfiguration"))

(smithy/sdk/shapes:define-structure vpc-destination-properties common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (security-groups :target-type
                                      security-group-list :member-name
                                      "securityGroups")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (role-arn :target-type aws-arn
                                      :member-name "roleArn"))
                                    (:shape-name "VpcDestinationProperties"))

(smithy/sdk/shapes:define-structure vpc-destination-summary common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (security-groups :target-type
                                      security-group-list :member-name
                                      "securityGroups")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (role-arn :target-type aws-arn
                                      :member-name "roleArn"))
                                    (:shape-name "VpcDestinationSummary"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type waiting-for-data-collection-checks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type use-prefix-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation accept-certificate-transfer :shape-name
                                       "AcceptCertificateTransfer" :input
                                       accept-certificate-transfer-request
                                       :output common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        transfer-already-completed-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/accept-certificate-transfer/{certificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation add-thing-to-billing-group :shape-name
                                       "AddThingToBillingGroup" :input
                                       add-thing-to-billing-group-request
                                       :output
                                       add-thing-to-billing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/billing-groups/addThingToBillingGroup"
                                       :code 200)

(smithy/sdk/operation:define-operation add-thing-to-thing-group :shape-name
                                       "AddThingToThingGroup" :input
                                       add-thing-to-thing-group-request :output
                                       add-thing-to-thing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/thing-groups/addThingToThingGroup"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-sbom-with-package-version
                                       :shape-name
                                       "AssociateSbomWithPackageVersion" :input
                                       associate-sbom-with-package-version-request
                                       :output
                                       associate-sbom-with-package-version-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/packages/{packageName}/versions/{versionName}/sbom"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-targets-with-job :shape-name
                                       "AssociateTargetsWithJob" :input
                                       associate-targets-with-job-request
                                       :output
                                       associate-targets-with-job-response
                                       :errors
                                       (invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/jobs/{jobId}/targets" :code 200)

(smithy/sdk/operation:define-operation attach-policy :shape-name "AttachPolicy"
                                       :input attach-policy-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/target-policies/{policyName}" :code
                                       200)

(smithy/sdk/operation:define-operation attach-principal-policy :shape-name
                                       "AttachPrincipalPolicy" :input
                                       attach-principal-policy-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/principal-policies/{policyName}" :code
                                       200)

(smithy/sdk/operation:define-operation attach-security-profile :shape-name
                                       "AttachSecurityProfile" :input
                                       attach-security-profile-request :output
                                       attach-security-profile-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "PUT" :uri
                                       "/security-profiles/{securityProfileName}/targets"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-thing-principal :shape-name
                                       "AttachThingPrincipal" :input
                                       attach-thing-principal-request :output
                                       attach-thing-principal-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/things/{thingName}/principals" :code
                                       200)

(smithy/sdk/operation:define-operation cancel-audit-mitigation-actions-task
                                       :shape-name
                                       "CancelAuditMitigationActionsTask"
                                       :input
                                       cancel-audit-mitigation-actions-task-request
                                       :output
                                       cancel-audit-mitigation-actions-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/audit/mitigationactions/tasks/{taskId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-audit-task :shape-name
                                       "CancelAuditTask" :input
                                       cancel-audit-task-request :output
                                       cancel-audit-task-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/audit/tasks/{taskId}/cancel" :code 200)

(smithy/sdk/operation:define-operation cancel-certificate-transfer :shape-name
                                       "CancelCertificateTransfer" :input
                                       cancel-certificate-transfer-request
                                       :output common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        transfer-already-completed-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/cancel-certificate-transfer/{certificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-detect-mitigation-actions-task
                                       :shape-name
                                       "CancelDetectMitigationActionsTask"
                                       :input
                                       cancel-detect-mitigation-actions-task-request
                                       :output
                                       cancel-detect-mitigation-actions-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/detect/mitigationactions/tasks/{taskId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       cancel-job-response :errors
                                       (invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/jobs/{jobId}/cancel" :code 200)

(smithy/sdk/operation:define-operation cancel-job-execution :shape-name
                                       "CancelJobExecution" :input
                                       cancel-job-execution-request :output
                                       common-lisp:null :errors
                                       (invalid-request-exception
                                        invalid-state-transition-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "PUT" :uri
                                       "/things/{thingName}/jobs/{jobId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation clear-default-authorizer :shape-name
                                       "ClearDefaultAuthorizer" :input
                                       clear-default-authorizer-request :output
                                       clear-default-authorizer-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/default-authorizer" :code 200)

(smithy/sdk/operation:define-operation confirm-topic-rule-destination
                                       :shape-name
                                       "ConfirmTopicRuleDestination" :input
                                       confirm-topic-rule-destination-request
                                       :output
                                       confirm-topic-rule-destination-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/confirmdestination/{confirmationToken+}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-audit-suppression :shape-name
                                       "CreateAuditSuppression" :input
                                       create-audit-suppression-request :output
                                       create-audit-suppression-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/audit/suppressions/create" :code 200)

(smithy/sdk/operation:define-operation create-authorizer :shape-name
                                       "CreateAuthorizer" :input
                                       create-authorizer-request :output
                                       create-authorizer-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/authorizer/{authorizerName}" :code 200)

(smithy/sdk/operation:define-operation create-billing-group :shape-name
                                       "CreateBillingGroup" :input
                                       create-billing-group-request :output
                                       create-billing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/billing-groups/{billingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-certificate-from-csr :shape-name
                                       "CreateCertificateFromCsr" :input
                                       create-certificate-from-csr-request
                                       :output
                                       create-certificate-from-csr-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/certificates"
                                       :code 200)

(smithy/sdk/operation:define-operation create-certificate-provider :shape-name
                                       "CreateCertificateProvider" :input
                                       create-certificate-provider-request
                                       :output
                                       create-certificate-provider-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/certificate-providers/{certificateProviderName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-command :shape-name
                                       "CreateCommand" :input
                                       create-command-request :output
                                       create-command-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/commands/{commandId}" :code 200)

(smithy/sdk/operation:define-operation create-custom-metric :shape-name
                                       "CreateCustomMetric" :input
                                       create-custom-metric-request :output
                                       create-custom-metric-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/custom-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation create-dimension :shape-name
                                       "CreateDimension" :input
                                       create-dimension-request :output
                                       create-dimension-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri "/dimensions/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-domain-configuration :shape-name
                                       "CreateDomainConfiguration" :input
                                       create-domain-configuration-request
                                       :output
                                       create-domain-configuration-response
                                       :errors
                                       (certificate-validation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/domainConfigurations/{domainConfigurationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-dynamic-thing-group :shape-name
                                       "CreateDynamicThingGroup" :input
                                       create-dynamic-thing-group-request
                                       :output
                                       create-dynamic-thing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/dynamic-thing-groups/{thingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-fleet-metric :shape-name
                                       "CreateFleetMetric" :input
                                       create-fleet-metric-request :output
                                       create-fleet-metric-response :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-aggregation-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/fleet-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-response :errors
                                       (invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/jobs/{jobId}" :code
                                       200)

(smithy/sdk/operation:define-operation create-job-template :shape-name
                                       "CreateJobTemplate" :input
                                       create-job-template-request :output
                                       create-job-template-response :errors
                                       (conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/job-templates/{jobTemplateId}" :code
                                       200)

(smithy/sdk/operation:define-operation create-keys-and-certificate :shape-name
                                       "CreateKeysAndCertificate" :input
                                       create-keys-and-certificate-request
                                       :output
                                       create-keys-and-certificate-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/keys-and-certificate" :code 200)

(smithy/sdk/operation:define-operation create-mitigation-action :shape-name
                                       "CreateMitigationAction" :input
                                       create-mitigation-action-request :output
                                       create-mitigation-action-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/mitigationactions/actions/{actionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-otaupdate :shape-name
                                       "CreateOTAUpdate" :input
                                       create-otaupdate-request :output
                                       create-otaupdate-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/otaUpdates/{otaUpdateId}" :code 200)

(smithy/sdk/operation:define-operation create-package :shape-name
                                       "CreatePackage" :input
                                       create-package-request :output
                                       create-package-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/packages/{packageName}" :code 200)

(smithy/sdk/operation:define-operation create-package-version :shape-name
                                       "CreatePackageVersion" :input
                                       create-package-version-request :output
                                       create-package-version-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/packages/{packageName}/versions/{versionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-policy :shape-name "CreatePolicy"
                                       :input create-policy-request :output
                                       create-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        malformed-policy-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/policies/{policyName}" :code 200)

(smithy/sdk/operation:define-operation create-policy-version :shape-name
                                       "CreatePolicyVersion" :input
                                       create-policy-version-request :output
                                       create-policy-version-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        malformed-policy-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        versions-limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/policies/{policyName}/version" :code
                                       200)

(smithy/sdk/operation:define-operation create-provisioning-claim :shape-name
                                       "CreateProvisioningClaim" :input
                                       create-provisioning-claim-request
                                       :output
                                       create-provisioning-claim-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/provisioning-templates/{templateName}/provisioning-claim"
                                       :code 200)

(smithy/sdk/operation:define-operation create-provisioning-template :shape-name
                                       "CreateProvisioningTemplate" :input
                                       create-provisioning-template-request
                                       :output
                                       create-provisioning-template-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/provisioning-templates" :code 200)

(smithy/sdk/operation:define-operation create-provisioning-template-version
                                       :shape-name
                                       "CreateProvisioningTemplateVersion"
                                       :input
                                       create-provisioning-template-version-request
                                       :output
                                       create-provisioning-template-version-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        versions-limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/provisioning-templates/{templateName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-role-alias :shape-name
                                       "CreateRoleAlias" :input
                                       create-role-alias-request :output
                                       create-role-alias-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/role-aliases/{roleAlias}" :code 200)

(smithy/sdk/operation:define-operation create-scheduled-audit :shape-name
                                       "CreateScheduledAudit" :input
                                       create-scheduled-audit-request :output
                                       create-scheduled-audit-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/audit/scheduledaudits/{scheduledAuditName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-security-profile :shape-name
                                       "CreateSecurityProfile" :input
                                       create-security-profile-request :output
                                       create-security-profile-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/security-profiles/{securityProfileName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-stream :shape-name "CreateStream"
                                       :input create-stream-request :output
                                       create-stream-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/streams/{streamId}" :code 200)

(smithy/sdk/operation:define-operation create-thing :shape-name "CreateThing"
                                       :input create-thing-request :output
                                       create-thing-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/things/{thingName}" :code 200)

(smithy/sdk/operation:define-operation create-thing-group :shape-name
                                       "CreateThingGroup" :input
                                       create-thing-group-request :output
                                       create-thing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/thing-groups/{thingGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation create-thing-type :shape-name
                                       "CreateThingType" :input
                                       create-thing-type-request :output
                                       create-thing-type-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/thing-types/{thingTypeName}" :code 200)

(smithy/sdk/operation:define-operation create-topic-rule :shape-name
                                       "CreateTopicRule" :input
                                       create-topic-rule-request :output
                                       common-lisp:null :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        sql-parse-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/rules/{ruleName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-topic-rule-destination
                                       :shape-name "CreateTopicRuleDestination"
                                       :input
                                       create-topic-rule-destination-request
                                       :output
                                       create-topic-rule-destination-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/destinations"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-account-audit-configuration
                                       :shape-name
                                       "DeleteAccountAuditConfiguration" :input
                                       delete-account-audit-configuration-request
                                       :output
                                       delete-account-audit-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/audit/configuration" :code 200)

(smithy/sdk/operation:define-operation delete-audit-suppression :shape-name
                                       "DeleteAuditSuppression" :input
                                       delete-audit-suppression-request :output
                                       delete-audit-suppression-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/audit/suppressions/delete" :code 200)

(smithy/sdk/operation:define-operation delete-authorizer :shape-name
                                       "DeleteAuthorizer" :input
                                       delete-authorizer-request :output
                                       delete-authorizer-response :errors
                                       (delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/authorizer/{authorizerName}" :code 200)

(smithy/sdk/operation:define-operation delete-billing-group :shape-name
                                       "DeleteBillingGroup" :input
                                       delete-billing-group-request :output
                                       delete-billing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/billing-groups/{billingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cacertificate :shape-name
                                       "DeleteCACertificate" :input
                                       delete-cacertificate-request :output
                                       delete-cacertificate-response :errors
                                       (certificate-state-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/cacertificate/{certificateId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-certificate :shape-name
                                       "DeleteCertificate" :input
                                       delete-certificate-request :output
                                       common-lisp:null :errors
                                       (certificate-state-exception
                                        delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/certificates/{certificateId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-certificate-provider :shape-name
                                       "DeleteCertificateProvider" :input
                                       delete-certificate-provider-request
                                       :output
                                       delete-certificate-provider-response
                                       :errors
                                       (delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/certificate-providers/{certificateProviderName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-command :shape-name
                                       "DeleteCommand" :input
                                       delete-command-request :output
                                       delete-command-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/commands/{commandId}" :code 200)

(smithy/sdk/operation:define-operation delete-command-execution :shape-name
                                       "DeleteCommandExecution" :input
                                       delete-command-execution-request :output
                                       delete-command-execution-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/command-executions/{executionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-custom-metric :shape-name
                                       "DeleteCustomMetric" :input
                                       delete-custom-metric-request :output
                                       delete-custom-metric-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/custom-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation delete-dimension :shape-name
                                       "DeleteDimension" :input
                                       delete-dimension-request :output
                                       delete-dimension-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/dimensions/{name}" :code 200)

(smithy/sdk/operation:define-operation delete-domain-configuration :shape-name
                                       "DeleteDomainConfiguration" :input
                                       delete-domain-configuration-request
                                       :output
                                       delete-domain-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/domainConfigurations/{domainConfigurationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-dynamic-thing-group :shape-name
                                       "DeleteDynamicThingGroup" :input
                                       delete-dynamic-thing-group-request
                                       :output
                                       delete-dynamic-thing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/dynamic-thing-groups/{thingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-fleet-metric :shape-name
                                       "DeleteFleetMetric" :input
                                       delete-fleet-metric-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/fleet-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation delete-job :shape-name "DeleteJob"
                                       :input delete-job-request :output
                                       common-lisp:null :errors
                                       (invalid-request-exception
                                        invalid-state-transition-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri "/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-job-execution :shape-name
                                       "DeleteJobExecution" :input
                                       delete-job-execution-request :output
                                       common-lisp:null :errors
                                       (invalid-request-exception
                                        invalid-state-transition-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-job-template :shape-name
                                       "DeleteJobTemplate" :input
                                       delete-job-template-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/job-templates/{jobTemplateId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-mitigation-action :shape-name
                                       "DeleteMitigationAction" :input
                                       delete-mitigation-action-request :output
                                       delete-mitigation-action-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/mitigationactions/actions/{actionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-otaupdate :shape-name
                                       "DeleteOTAUpdate" :input
                                       delete-otaupdate-request :output
                                       delete-otaupdate-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/otaUpdates/{otaUpdateId}" :code 200)

(smithy/sdk/operation:define-operation delete-package :shape-name
                                       "DeletePackage" :input
                                       delete-package-request :output
                                       delete-package-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/packages/{packageName}" :code 200)

(smithy/sdk/operation:define-operation delete-package-version :shape-name
                                       "DeletePackageVersion" :input
                                       delete-package-version-request :output
                                       delete-package-version-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/packages/{packageName}/versions/{versionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-request :output
                                       common-lisp:null :errors
                                       (delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/policies/{policyName}" :code 200)

(smithy/sdk/operation:define-operation delete-policy-version :shape-name
                                       "DeletePolicyVersion" :input
                                       delete-policy-version-request :output
                                       common-lisp:null :errors
                                       (delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/policies/{policyName}/version/{policyVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-provisioning-template :shape-name
                                       "DeleteProvisioningTemplate" :input
                                       delete-provisioning-template-request
                                       :output
                                       delete-provisioning-template-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/provisioning-templates/{templateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-provisioning-template-version
                                       :shape-name
                                       "DeleteProvisioningTemplateVersion"
                                       :input
                                       delete-provisioning-template-version-request
                                       :output
                                       delete-provisioning-template-version-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/provisioning-templates/{templateName}/versions/{versionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-registration-code :shape-name
                                       "DeleteRegistrationCode" :input
                                       delete-registration-code-request :output
                                       delete-registration-code-response
                                       :errors
                                       (internal-failure-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/registrationcode" :code 200)

(smithy/sdk/operation:define-operation delete-role-alias :shape-name
                                       "DeleteRoleAlias" :input
                                       delete-role-alias-request :output
                                       delete-role-alias-response :errors
                                       (delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/role-aliases/{roleAlias}" :code 200)

(smithy/sdk/operation:define-operation delete-scheduled-audit :shape-name
                                       "DeleteScheduledAudit" :input
                                       delete-scheduled-audit-request :output
                                       delete-scheduled-audit-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/audit/scheduledaudits/{scheduledAuditName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-security-profile :shape-name
                                       "DeleteSecurityProfile" :input
                                       delete-security-profile-request :output
                                       delete-security-profile-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/security-profiles/{securityProfileName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-stream :shape-name "DeleteStream"
                                       :input delete-stream-request :output
                                       delete-stream-response :errors
                                       (delete-conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/streams/{streamId}" :code 200)

(smithy/sdk/operation:define-operation delete-thing :shape-name "DeleteThing"
                                       :input delete-thing-request :output
                                       delete-thing-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/things/{thingName}" :code 200)

(smithy/sdk/operation:define-operation delete-thing-group :shape-name
                                       "DeleteThingGroup" :input
                                       delete-thing-group-request :output
                                       delete-thing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "DELETE" :uri
                                       "/thing-groups/{thingGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-thing-type :shape-name
                                       "DeleteThingType" :input
                                       delete-thing-type-request :output
                                       delete-thing-type-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/thing-types/{thingTypeName}" :code 200)

(smithy/sdk/operation:define-operation delete-topic-rule :shape-name
                                       "DeleteTopicRule" :input
                                       delete-topic-rule-request :output
                                       common-lisp:null :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/rules/{ruleName}" :code 200)

(smithy/sdk/operation:define-operation delete-topic-rule-destination
                                       :shape-name "DeleteTopicRuleDestination"
                                       :input
                                       delete-topic-rule-destination-request
                                       :output
                                       delete-topic-rule-destination-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/destinations/{arn+}" :code 200)

(smithy/sdk/operation:define-operation delete-v2logging-level :shape-name
                                       "DeleteV2LoggingLevel" :input
                                       delete-v2logging-level-request :output
                                       common-lisp:null :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri "/v2LoggingLevel"
                                       :code 200)

(smithy/sdk/operation:define-operation deprecate-thing-type :shape-name
                                       "DeprecateThingType" :input
                                       deprecate-thing-type-request :output
                                       deprecate-thing-type-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/thing-types/{thingTypeName}/deprecate"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-account-audit-configuration
                                       :shape-name
                                       "DescribeAccountAuditConfiguration"
                                       :input
                                       describe-account-audit-configuration-request
                                       :output
                                       describe-account-audit-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/configuration" :code 200)

(smithy/sdk/operation:define-operation describe-audit-finding :shape-name
                                       "DescribeAuditFinding" :input
                                       describe-audit-finding-request :output
                                       describe-audit-finding-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/findings/{findingId}" :code 200)

(smithy/sdk/operation:define-operation describe-audit-mitigation-actions-task
                                       :shape-name
                                       "DescribeAuditMitigationActionsTask"
                                       :input
                                       describe-audit-mitigation-actions-task-request
                                       :output
                                       describe-audit-mitigation-actions-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/mitigationactions/tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-audit-suppression :shape-name
                                       "DescribeAuditSuppression" :input
                                       describe-audit-suppression-request
                                       :output
                                       describe-audit-suppression-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/audit/suppressions/describe" :code 200)

(smithy/sdk/operation:define-operation describe-audit-task :shape-name
                                       "DescribeAuditTask" :input
                                       describe-audit-task-request :output
                                       describe-audit-task-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/tasks/{taskId}" :code 200)

(smithy/sdk/operation:define-operation describe-authorizer :shape-name
                                       "DescribeAuthorizer" :input
                                       describe-authorizer-request :output
                                       describe-authorizer-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/authorizer/{authorizerName}" :code 200)

(smithy/sdk/operation:define-operation describe-billing-group :shape-name
                                       "DescribeBillingGroup" :input
                                       describe-billing-group-request :output
                                       describe-billing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/billing-groups/{billingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-cacertificate :shape-name
                                       "DescribeCACertificate" :input
                                       describe-cacertificate-request :output
                                       describe-cacertificate-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/cacertificate/{certificateId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-certificate :shape-name
                                       "DescribeCertificate" :input
                                       describe-certificate-request :output
                                       describe-certificate-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/certificates/{certificateId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-certificate-provider
                                       :shape-name
                                       "DescribeCertificateProvider" :input
                                       describe-certificate-provider-request
                                       :output
                                       describe-certificate-provider-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/certificate-providers/{certificateProviderName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-custom-metric :shape-name
                                       "DescribeCustomMetric" :input
                                       describe-custom-metric-request :output
                                       describe-custom-metric-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/custom-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation describe-default-authorizer :shape-name
                                       "DescribeDefaultAuthorizer" :input
                                       describe-default-authorizer-request
                                       :output
                                       describe-default-authorizer-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/default-authorizer"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-detect-mitigation-actions-task
                                       :shape-name
                                       "DescribeDetectMitigationActionsTask"
                                       :input
                                       describe-detect-mitigation-actions-task-request
                                       :output
                                       describe-detect-mitigation-actions-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/detect/mitigationactions/tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-dimension :shape-name
                                       "DescribeDimension" :input
                                       describe-dimension-request :output
                                       describe-dimension-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/dimensions/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain-configuration
                                       :shape-name
                                       "DescribeDomainConfiguration" :input
                                       describe-domain-configuration-request
                                       :output
                                       describe-domain-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/domainConfigurations/{domainConfigurationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-encryption-configuration
                                       :shape-name
                                       "DescribeEncryptionConfiguration" :input
                                       describe-encryption-configuration-request
                                       :output
                                       describe-encryption-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/encryption-configuration" :code 200)

(smithy/sdk/operation:define-operation describe-endpoint :shape-name
                                       "DescribeEndpoint" :input
                                       describe-endpoint-request :output
                                       describe-endpoint-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/endpoint" :code 200)

(smithy/sdk/operation:define-operation describe-event-configurations
                                       :shape-name
                                       "DescribeEventConfigurations" :input
                                       describe-event-configurations-request
                                       :output
                                       describe-event-configurations-response
                                       :errors
                                       (internal-failure-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/event-configurations" :code 200)

(smithy/sdk/operation:define-operation describe-fleet-metric :shape-name
                                       "DescribeFleetMetric" :input
                                       describe-fleet-metric-request :output
                                       describe-fleet-metric-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/fleet-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation describe-index :shape-name
                                       "DescribeIndex" :input
                                       describe-index-request :output
                                       describe-index-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/indices/{indexName}" :code 200)

(smithy/sdk/operation:define-operation describe-job :shape-name "DescribeJob"
                                       :input describe-job-request :output
                                       describe-job-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/jobs/{jobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-job-execution :shape-name
                                       "DescribeJobExecution" :input
                                       describe-job-execution-request :output
                                       describe-job-execution-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/jobs/{jobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-job-template :shape-name
                                       "DescribeJobTemplate" :input
                                       describe-job-template-request :output
                                       describe-job-template-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/job-templates/{jobTemplateId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-managed-job-template
                                       :shape-name "DescribeManagedJobTemplate"
                                       :input
                                       describe-managed-job-template-request
                                       :output
                                       describe-managed-job-template-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/managed-job-templates/{templateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-mitigation-action :shape-name
                                       "DescribeMitigationAction" :input
                                       describe-mitigation-action-request
                                       :output
                                       describe-mitigation-action-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/mitigationactions/actions/{actionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-provisioning-template
                                       :shape-name
                                       "DescribeProvisioningTemplate" :input
                                       describe-provisioning-template-request
                                       :output
                                       describe-provisioning-template-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/provisioning-templates/{templateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-provisioning-template-version
                                       :shape-name
                                       "DescribeProvisioningTemplateVersion"
                                       :input
                                       describe-provisioning-template-version-request
                                       :output
                                       describe-provisioning-template-version-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/provisioning-templates/{templateName}/versions/{versionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-role-alias :shape-name
                                       "DescribeRoleAlias" :input
                                       describe-role-alias-request :output
                                       describe-role-alias-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/role-aliases/{roleAlias}" :code 200)

(smithy/sdk/operation:define-operation describe-scheduled-audit :shape-name
                                       "DescribeScheduledAudit" :input
                                       describe-scheduled-audit-request :output
                                       describe-scheduled-audit-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/scheduledaudits/{scheduledAuditName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-security-profile :shape-name
                                       "DescribeSecurityProfile" :input
                                       describe-security-profile-request
                                       :output
                                       describe-security-profile-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/security-profiles/{securityProfileName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-stream :shape-name
                                       "DescribeStream" :input
                                       describe-stream-request :output
                                       describe-stream-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/streams/{streamId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-thing :shape-name
                                       "DescribeThing" :input
                                       describe-thing-request :output
                                       describe-thing-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/things/{thingName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-thing-group :shape-name
                                       "DescribeThingGroup" :input
                                       describe-thing-group-request :output
                                       describe-thing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/thing-groups/{thingGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-thing-registration-task
                                       :shape-name
                                       "DescribeThingRegistrationTask" :input
                                       describe-thing-registration-task-request
                                       :output
                                       describe-thing-registration-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/thing-registration-tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-thing-type :shape-name
                                       "DescribeThingType" :input
                                       describe-thing-type-request :output
                                       describe-thing-type-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/thing-types/{thingTypeName}" :code 200)

(smithy/sdk/operation:define-operation detach-policy :shape-name "DetachPolicy"
                                       :input detach-policy-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/target-policies/{policyName}" :code
                                       200)

(smithy/sdk/operation:define-operation detach-principal-policy :shape-name
                                       "DetachPrincipalPolicy" :input
                                       detach-principal-policy-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/principal-policies/{policyName}" :code
                                       200)

(smithy/sdk/operation:define-operation detach-security-profile :shape-name
                                       "DetachSecurityProfile" :input
                                       detach-security-profile-request :output
                                       detach-security-profile-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/security-profiles/{securityProfileName}/targets"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-thing-principal :shape-name
                                       "DetachThingPrincipal" :input
                                       detach-thing-principal-request :output
                                       detach-thing-principal-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/things/{thingName}/principals" :code
                                       200)

(smithy/sdk/operation:define-operation disable-topic-rule :shape-name
                                       "DisableTopicRule" :input
                                       disable-topic-rule-request :output
                                       common-lisp:null :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/rules/{ruleName}/disable" :code 200)

(smithy/sdk/operation:define-operation disassociate-sbom-from-package-version
                                       :shape-name
                                       "DisassociateSbomFromPackageVersion"
                                       :input
                                       disassociate-sbom-from-package-version-request
                                       :output
                                       disassociate-sbom-from-package-version-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/packages/{packageName}/versions/{versionName}/sbom"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-topic-rule :shape-name
                                       "EnableTopicRule" :input
                                       enable-topic-rule-request :output
                                       common-lisp:null :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/rules/{ruleName}/enable" :code 200)

(smithy/sdk/operation:define-operation get-behavior-model-training-summaries
                                       :shape-name
                                       "GetBehaviorModelTrainingSummaries"
                                       :input
                                       get-behavior-model-training-summaries-request
                                       :output
                                       get-behavior-model-training-summaries-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/behavior-model-training/summaries"
                                       :code 200)

(smithy/sdk/operation:define-operation get-buckets-aggregation :shape-name
                                       "GetBucketsAggregation" :input
                                       get-buckets-aggregation-request :output
                                       get-buckets-aggregation-response :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-aggregation-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/indices/buckets"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cardinality :shape-name
                                       "GetCardinality" :input
                                       get-cardinality-request :output
                                       get-cardinality-response :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-aggregation-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/indices/cardinality" :code 200)

(smithy/sdk/operation:define-operation get-command :shape-name "GetCommand"
                                       :input get-command-request :output
                                       get-command-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/commands/{commandId}" :code 200)

(smithy/sdk/operation:define-operation get-command-execution :shape-name
                                       "GetCommandExecution" :input
                                       get-command-execution-request :output
                                       get-command-execution-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/command-executions/{executionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-effective-policies :shape-name
                                       "GetEffectivePolicies" :input
                                       get-effective-policies-request :output
                                       get-effective-policies-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/effective-policies" :code 200)

(smithy/sdk/operation:define-operation get-indexing-configuration :shape-name
                                       "GetIndexingConfiguration" :input
                                       get-indexing-configuration-request
                                       :output
                                       get-indexing-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/indexing/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-job-document :shape-name
                                       "GetJobDocument" :input
                                       get-job-document-request :output
                                       get-job-document-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/jobs/{jobId}/job-document" :code 200)

(smithy/sdk/operation:define-operation get-logging-options :shape-name
                                       "GetLoggingOptions" :input
                                       get-logging-options-request :output
                                       get-logging-options-response :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/loggingOptions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-otaupdate :shape-name "GetOTAUpdate"
                                       :input get-otaupdate-request :output
                                       get-otaupdate-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/otaUpdates/{otaUpdateId}" :code 200)

(smithy/sdk/operation:define-operation get-package :shape-name "GetPackage"
                                       :input get-package-request :output
                                       get-package-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/{packageName}" :code 200)

(smithy/sdk/operation:define-operation get-package-configuration :shape-name
                                       "GetPackageConfiguration" :input
                                       get-package-configuration-request
                                       :output
                                       get-package-configuration-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/package-configuration" :code 200)

(smithy/sdk/operation:define-operation get-package-version :shape-name
                                       "GetPackageVersion" :input
                                       get-package-version-request :output
                                       get-package-version-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/{packageName}/versions/{versionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-percentiles :shape-name
                                       "GetPercentiles" :input
                                       get-percentiles-request :output
                                       get-percentiles-response :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-aggregation-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/indices/percentiles" :code 200)

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/policies/{policyName}" :code 200)

(smithy/sdk/operation:define-operation get-policy-version :shape-name
                                       "GetPolicyVersion" :input
                                       get-policy-version-request :output
                                       get-policy-version-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/policies/{policyName}/version/{policyVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-registration-code :shape-name
                                       "GetRegistrationCode" :input
                                       get-registration-code-request :output
                                       get-registration-code-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/registrationcode"
                                       :code 200)

(smithy/sdk/operation:define-operation get-statistics :shape-name
                                       "GetStatistics" :input
                                       get-statistics-request :output
                                       get-statistics-response :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-aggregation-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/indices/statistics" :code 200)

(smithy/sdk/operation:define-operation get-thing-connectivity-data :shape-name
                                       "GetThingConnectivityData" :input
                                       get-thing-connectivity-data-request
                                       :output
                                       get-thing-connectivity-data-response
                                       :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/things/{thingName}/connectivity-data"
                                       :code 200)

(smithy/sdk/operation:define-operation get-topic-rule :shape-name
                                       "GetTopicRule" :input
                                       get-topic-rule-request :output
                                       get-topic-rule-response :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/rules/{ruleName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-topic-rule-destination :shape-name
                                       "GetTopicRuleDestination" :input
                                       get-topic-rule-destination-request
                                       :output
                                       get-topic-rule-destination-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/destinations/{arn+}" :code 200)

(smithy/sdk/operation:define-operation get-v2logging-options :shape-name
                                       "GetV2LoggingOptions" :input
                                       get-v2logging-options-request :output
                                       get-v2logging-options-response :errors
                                       (internal-exception
                                        not-configured-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/v2LoggingOptions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-active-violations :shape-name
                                       "ListActiveViolations" :input
                                       list-active-violations-request :output
                                       list-active-violations-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/active-violations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-attached-policies :shape-name
                                       "ListAttachedPolicies" :input
                                       list-attached-policies-request :output
                                       list-attached-policies-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/attached-policies/{target}" :code 200)

(smithy/sdk/operation:define-operation list-audit-findings :shape-name
                                       "ListAuditFindings" :input
                                       list-audit-findings-request :output
                                       list-audit-findings-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "POST" :uri "/audit/findings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-audit-mitigation-actions-executions
                                       :shape-name
                                       "ListAuditMitigationActionsExecutions"
                                       :input
                                       list-audit-mitigation-actions-executions-request
                                       :output
                                       list-audit-mitigation-actions-executions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/mitigationactions/executions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-audit-mitigation-actions-tasks
                                       :shape-name
                                       "ListAuditMitigationActionsTasks" :input
                                       list-audit-mitigation-actions-tasks-request
                                       :output
                                       list-audit-mitigation-actions-tasks-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/mitigationactions/tasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-audit-suppressions :shape-name
                                       "ListAuditSuppressions" :input
                                       list-audit-suppressions-request :output
                                       list-audit-suppressions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/audit/suppressions/list" :code 200)

(smithy/sdk/operation:define-operation list-audit-tasks :shape-name
                                       "ListAuditTasks" :input
                                       list-audit-tasks-request :output
                                       list-audit-tasks-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/audit/tasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-authorizers :shape-name
                                       "ListAuthorizers" :input
                                       list-authorizers-request :output
                                       list-authorizers-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/authorizers" :code
                                       200)

(smithy/sdk/operation:define-operation list-billing-groups :shape-name
                                       "ListBillingGroups" :input
                                       list-billing-groups-request :output
                                       list-billing-groups-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/billing-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cacertificates :shape-name
                                       "ListCACertificates" :input
                                       list-cacertificates-request :output
                                       list-cacertificates-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/cacertificates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-certificate-providers :shape-name
                                       "ListCertificateProviders" :input
                                       list-certificate-providers-request
                                       :output
                                       list-certificate-providers-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/certificate-providers" :code 200)

(smithy/sdk/operation:define-operation list-certificates :shape-name
                                       "ListCertificates" :input
                                       list-certificates-request :output
                                       list-certificates-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/certificates" :code
                                       200)

(smithy/sdk/operation:define-operation list-certificates-by-ca :shape-name
                                       "ListCertificatesByCA" :input
                                       list-certificates-by-carequest :output
                                       list-certificates-by-caresponse :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/certificates-by-ca/{caCertificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-command-executions :shape-name
                                       "ListCommandExecutions" :input
                                       list-command-executions-request :output
                                       list-command-executions-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/command-executions" :code 200)

(smithy/sdk/operation:define-operation list-commands :shape-name "ListCommands"
                                       :input list-commands-request :output
                                       list-commands-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/commands" :code 200)

(smithy/sdk/operation:define-operation list-custom-metrics :shape-name
                                       "ListCustomMetrics" :input
                                       list-custom-metrics-request :output
                                       list-custom-metrics-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/custom-metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-detect-mitigation-actions-executions :shape-name
 "ListDetectMitigationActionsExecutions" :input
 list-detect-mitigation-actions-executions-request :output
 list-detect-mitigation-actions-executions-response :errors
 (internal-failure-exception invalid-request-exception throttling-exception)
 :method "GET" :uri "/detect/mitigationactions/executions" :code 200)

(smithy/sdk/operation:define-operation list-detect-mitigation-actions-tasks
                                       :shape-name
                                       "ListDetectMitigationActionsTasks"
                                       :input
                                       list-detect-mitigation-actions-tasks-request
                                       :output
                                       list-detect-mitigation-actions-tasks-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/detect/mitigationactions/tasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-dimensions :shape-name
                                       "ListDimensions" :input
                                       list-dimensions-request :output
                                       list-dimensions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/dimensions" :code
                                       200)

(smithy/sdk/operation:define-operation list-domain-configurations :shape-name
                                       "ListDomainConfigurations" :input
                                       list-domain-configurations-request
                                       :output
                                       list-domain-configurations-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/domainConfigurations" :code 200)

(smithy/sdk/operation:define-operation list-fleet-metrics :shape-name
                                       "ListFleetMetrics" :input
                                       list-fleet-metrics-request :output
                                       list-fleet-metrics-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/fleet-metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation list-indices :shape-name "ListIndices"
                                       :input list-indices-request :output
                                       list-indices-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/indices" :code 200)

(smithy/sdk/operation:define-operation list-job-executions-for-job :shape-name
                                       "ListJobExecutionsForJob" :input
                                       list-job-executions-for-job-request
                                       :output
                                       list-job-executions-for-job-response
                                       :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/jobs/{jobId}/things" :code 200)

(smithy/sdk/operation:define-operation list-job-executions-for-thing
                                       :shape-name "ListJobExecutionsForThing"
                                       :input
                                       list-job-executions-for-thing-request
                                       :output
                                       list-job-executions-for-thing-response
                                       :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/jobs" :code 200)

(smithy/sdk/operation:define-operation list-job-templates :shape-name
                                       "ListJobTemplates" :input
                                       list-job-templates-request :output
                                       list-job-templates-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/job-templates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/jobs" :code 200)

(smithy/sdk/operation:define-operation list-managed-job-templates :shape-name
                                       "ListManagedJobTemplates" :input
                                       list-managed-job-templates-request
                                       :output
                                       list-managed-job-templates-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/managed-job-templates" :code 200)

(smithy/sdk/operation:define-operation list-metric-values :shape-name
                                       "ListMetricValues" :input
                                       list-metric-values-request :output
                                       list-metric-values-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/metric-values"
                                       :code 200)

(smithy/sdk/operation:define-operation list-mitigation-actions :shape-name
                                       "ListMitigationActions" :input
                                       list-mitigation-actions-request :output
                                       list-mitigation-actions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/mitigationactions/actions" :code 200)

(smithy/sdk/operation:define-operation list-otaupdates :shape-name
                                       "ListOTAUpdates" :input
                                       list-otaupdates-request :output
                                       list-otaupdates-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/otaUpdates" :code
                                       200)

(smithy/sdk/operation:define-operation list-outgoing-certificates :shape-name
                                       "ListOutgoingCertificates" :input
                                       list-outgoing-certificates-request
                                       :output
                                       list-outgoing-certificates-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/certificates-out-going" :code 200)

(smithy/sdk/operation:define-operation list-package-versions :shape-name
                                       "ListPackageVersions" :input
                                       list-package-versions-request :output
                                       list-package-versions-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/{packageName}/versions" :code
                                       200)

(smithy/sdk/operation:define-operation list-packages :shape-name "ListPackages"
                                       :input list-packages-request :output
                                       list-packages-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/packages" :code 200)

(smithy/sdk/operation:define-operation list-policies :shape-name "ListPolicies"
                                       :input list-policies-request :output
                                       list-policies-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/policies" :code 200)

(smithy/sdk/operation:define-operation list-policy-principals :shape-name
                                       "ListPolicyPrincipals" :input
                                       list-policy-principals-request :output
                                       list-policy-principals-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/policy-principals"
                                       :code 200)

(smithy/sdk/operation:define-operation list-policy-versions :shape-name
                                       "ListPolicyVersions" :input
                                       list-policy-versions-request :output
                                       list-policy-versions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/policies/{policyName}/version" :code
                                       200)

(smithy/sdk/operation:define-operation list-principal-policies :shape-name
                                       "ListPrincipalPolicies" :input
                                       list-principal-policies-request :output
                                       list-principal-policies-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/principal-policies"
                                       :code 200)

(smithy/sdk/operation:define-operation list-principal-things :shape-name
                                       "ListPrincipalThings" :input
                                       list-principal-things-request :output
                                       list-principal-things-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/principals/things"
                                       :code 200)

(smithy/sdk/operation:define-operation list-principal-things-v2 :shape-name
                                       "ListPrincipalThingsV2" :input
                                       list-principal-things-v2request :output
                                       list-principal-things-v2response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/principals/things-v2" :code 200)

(smithy/sdk/operation:define-operation list-provisioning-template-versions
                                       :shape-name
                                       "ListProvisioningTemplateVersions"
                                       :input
                                       list-provisioning-template-versions-request
                                       :output
                                       list-provisioning-template-versions-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/provisioning-templates/{templateName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-provisioning-templates :shape-name
                                       "ListProvisioningTemplates" :input
                                       list-provisioning-templates-request
                                       :output
                                       list-provisioning-templates-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/provisioning-templates" :code 200)

(smithy/sdk/operation:define-operation list-related-resources-for-audit-finding
                                       :shape-name
                                       "ListRelatedResourcesForAuditFinding"
                                       :input
                                       list-related-resources-for-audit-finding-request
                                       :output
                                       list-related-resources-for-audit-finding-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/relatedResources" :code 200)

(smithy/sdk/operation:define-operation list-role-aliases :shape-name
                                       "ListRoleAliases" :input
                                       list-role-aliases-request :output
                                       list-role-aliases-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/role-aliases" :code
                                       200)

(smithy/sdk/operation:define-operation list-sbom-validation-results :shape-name
                                       "ListSbomValidationResults" :input
                                       list-sbom-validation-results-request
                                       :output
                                       list-sbom-validation-results-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/{packageName}/versions/{versionName}/sbom-validation-results"
                                       :code 200)

(smithy/sdk/operation:define-operation list-scheduled-audits :shape-name
                                       "ListScheduledAudits" :input
                                       list-scheduled-audits-request :output
                                       list-scheduled-audits-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/audit/scheduledaudits" :code 200)

(smithy/sdk/operation:define-operation list-security-profiles :shape-name
                                       "ListSecurityProfiles" :input
                                       list-security-profiles-request :output
                                       list-security-profiles-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/security-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-security-profiles-for-target
                                       :shape-name
                                       "ListSecurityProfilesForTarget" :input
                                       list-security-profiles-for-target-request
                                       :output
                                       list-security-profiles-for-target-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/security-profiles-for-target" :code
                                       200)

(smithy/sdk/operation:define-operation list-streams :shape-name "ListStreams"
                                       :input list-streams-request :output
                                       list-streams-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/streams" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation list-targets-for-policy :shape-name
                                       "ListTargetsForPolicy" :input
                                       list-targets-for-policy-request :output
                                       list-targets-for-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/policy-targets/{policyName}" :code 200)

(smithy/sdk/operation:define-operation list-targets-for-security-profile
                                       :shape-name
                                       "ListTargetsForSecurityProfile" :input
                                       list-targets-for-security-profile-request
                                       :output
                                       list-targets-for-security-profile-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/security-profiles/{securityProfileName}/targets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-thing-groups :shape-name
                                       "ListThingGroups" :input
                                       list-thing-groups-request :output
                                       list-thing-groups-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/thing-groups" :code
                                       200)

(smithy/sdk/operation:define-operation list-thing-groups-for-thing :shape-name
                                       "ListThingGroupsForThing" :input
                                       list-thing-groups-for-thing-request
                                       :output
                                       list-thing-groups-for-thing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/thing-groups" :code
                                       200)

(smithy/sdk/operation:define-operation list-thing-principals :shape-name
                                       "ListThingPrincipals" :input
                                       list-thing-principals-request :output
                                       list-thing-principals-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/principals" :code
                                       200)

(smithy/sdk/operation:define-operation list-thing-principals-v2 :shape-name
                                       "ListThingPrincipalsV2" :input
                                       list-thing-principals-v2request :output
                                       list-thing-principals-v2response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/principals-v2"
                                       :code 200)

(smithy/sdk/operation:define-operation list-thing-registration-task-reports
                                       :shape-name
                                       "ListThingRegistrationTaskReports"
                                       :input
                                       list-thing-registration-task-reports-request
                                       :output
                                       list-thing-registration-task-reports-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/thing-registration-tasks/{taskId}/reports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-thing-registration-tasks
                                       :shape-name "ListThingRegistrationTasks"
                                       :input
                                       list-thing-registration-tasks-request
                                       :output
                                       list-thing-registration-tasks-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/thing-registration-tasks" :code 200)

(smithy/sdk/operation:define-operation list-thing-types :shape-name
                                       "ListThingTypes" :input
                                       list-thing-types-request :output
                                       list-thing-types-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/thing-types" :code
                                       200)

(smithy/sdk/operation:define-operation list-things :shape-name "ListThings"
                                       :input list-things-request :output
                                       list-things-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/things" :code 200)

(smithy/sdk/operation:define-operation list-things-in-billing-group :shape-name
                                       "ListThingsInBillingGroup" :input
                                       list-things-in-billing-group-request
                                       :output
                                       list-things-in-billing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/billing-groups/{billingGroupName}/things"
                                       :code 200)

(smithy/sdk/operation:define-operation list-things-in-thing-group :shape-name
                                       "ListThingsInThingGroup" :input
                                       list-things-in-thing-group-request
                                       :output
                                       list-things-in-thing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/thing-groups/{thingGroupName}/things"
                                       :code 200)

(smithy/sdk/operation:define-operation list-topic-rule-destinations :shape-name
                                       "ListTopicRuleDestinations" :input
                                       list-topic-rule-destinations-request
                                       :output
                                       list-topic-rule-destinations-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/destinations" :code
                                       200)

(smithy/sdk/operation:define-operation list-topic-rules :shape-name
                                       "ListTopicRules" :input
                                       list-topic-rules-request :output
                                       list-topic-rules-response :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/rules" :code 200)

(smithy/sdk/operation:define-operation list-v2logging-levels :shape-name
                                       "ListV2LoggingLevels" :input
                                       list-v2logging-levels-request :output
                                       list-v2logging-levels-response :errors
                                       (internal-exception
                                        invalid-request-exception
                                        not-configured-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/v2LoggingLevel"
                                       :code 200)

(smithy/sdk/operation:define-operation list-violation-events :shape-name
                                       "ListViolationEvents" :input
                                       list-violation-events-request :output
                                       list-violation-events-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/violation-events"
                                       :code 200)

(smithy/sdk/operation:define-operation put-verification-state-on-violation
                                       :shape-name
                                       "PutVerificationStateOnViolation" :input
                                       put-verification-state-on-violation-request
                                       :output
                                       put-verification-state-on-violation-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/violations/verification-state/{violationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation register-cacertificate :shape-name
                                       "RegisterCACertificate" :input
                                       register-cacertificate-request :output
                                       register-cacertificate-response :errors
                                       (certificate-validation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        registration-code-validation-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/cacertificate"
                                       :code 200)

(smithy/sdk/operation:define-operation register-certificate :shape-name
                                       "RegisterCertificate" :input
                                       register-certificate-request :output
                                       register-certificate-response :errors
                                       (certificate-conflict-exception
                                        certificate-state-exception
                                        certificate-validation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/certificate/register" :code 200)

(smithy/sdk/operation:define-operation register-certificate-without-ca
                                       :shape-name
                                       "RegisterCertificateWithoutCA" :input
                                       register-certificate-without-carequest
                                       :output
                                       register-certificate-without-caresponse
                                       :errors
                                       (certificate-state-exception
                                        certificate-validation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/certificate/register-no-ca" :code 200)

(smithy/sdk/operation:define-operation register-thing :shape-name
                                       "RegisterThing" :input
                                       register-thing-request :output
                                       register-thing-response :errors
                                       (conflicting-resource-update-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-registration-failure-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/things" :code 200)

(smithy/sdk/operation:define-operation reject-certificate-transfer :shape-name
                                       "RejectCertificateTransfer" :input
                                       reject-certificate-transfer-request
                                       :output common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        transfer-already-completed-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/reject-certificate-transfer/{certificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-thing-from-billing-group
                                       :shape-name
                                       "RemoveThingFromBillingGroup" :input
                                       remove-thing-from-billing-group-request
                                       :output
                                       remove-thing-from-billing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/billing-groups/removeThingFromBillingGroup"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-thing-from-thing-group
                                       :shape-name "RemoveThingFromThingGroup"
                                       :input
                                       remove-thing-from-thing-group-request
                                       :output
                                       remove-thing-from-thing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/thing-groups/removeThingFromThingGroup"
                                       :code 200)

(smithy/sdk/operation:define-operation replace-topic-rule :shape-name
                                       "ReplaceTopicRule" :input
                                       replace-topic-rule-request :output
                                       common-lisp:null :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        sql-parse-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri "/rules/{ruleName}"
                                       :code 200)

(smithy/sdk/operation:define-operation search-index :shape-name "SearchIndex"
                                       :input search-index-request :output
                                       search-index-response :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/indices/search"
                                       :code 200)

(smithy/sdk/operation:define-operation set-default-authorizer :shape-name
                                       "SetDefaultAuthorizer" :input
                                       set-default-authorizer-request :output
                                       set-default-authorizer-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/default-authorizer" :code 200)

(smithy/sdk/operation:define-operation set-default-policy-version :shape-name
                                       "SetDefaultPolicyVersion" :input
                                       set-default-policy-version-request
                                       :output common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/policies/{policyName}/version/{policyVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation set-logging-options :shape-name
                                       "SetLoggingOptions" :input
                                       set-logging-options-request :output
                                       common-lisp:null :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/loggingOptions"
                                       :code 200)

(smithy/sdk/operation:define-operation set-v2logging-level :shape-name
                                       "SetV2LoggingLevel" :input
                                       set-v2logging-level-request :output
                                       common-lisp:null :errors
                                       (internal-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        not-configured-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/v2LoggingLevel"
                                       :code 200)

(smithy/sdk/operation:define-operation set-v2logging-options :shape-name
                                       "SetV2LoggingOptions" :input
                                       set-v2logging-options-request :output
                                       common-lisp:null :errors
                                       (internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/v2LoggingOptions"
                                       :code 200)

(smithy/sdk/operation:define-operation start-audit-mitigation-actions-task
                                       :shape-name
                                       "StartAuditMitigationActionsTask" :input
                                       start-audit-mitigation-actions-task-request
                                       :output
                                       start-audit-mitigation-actions-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        task-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/audit/mitigationactions/tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-detect-mitigation-actions-task
                                       :shape-name
                                       "StartDetectMitigationActionsTask"
                                       :input
                                       start-detect-mitigation-actions-task-request
                                       :output
                                       start-detect-mitigation-actions-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        task-already-exists-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/detect/mitigationactions/tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-on-demand-audit-task :shape-name
                                       "StartOnDemandAuditTask" :input
                                       start-on-demand-audit-task-request
                                       :output
                                       start-on-demand-audit-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/audit/tasks" :code
                                       200)

(smithy/sdk/operation:define-operation start-thing-registration-task
                                       :shape-name "StartThingRegistrationTask"
                                       :input
                                       start-thing-registration-task-request
                                       :output
                                       start-thing-registration-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/thing-registration-tasks" :code 200)

(smithy/sdk/operation:define-operation stop-thing-registration-task :shape-name
                                       "StopThingRegistrationTask" :input
                                       stop-thing-registration-task-request
                                       :output
                                       stop-thing-registration-task-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/thing-registration-tasks/{taskId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation test-authorization :shape-name
                                       "TestAuthorization" :input
                                       test-authorization-request :output
                                       test-authorization-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/test-authorization" :code 200)

(smithy/sdk/operation:define-operation test-invoke-authorizer :shape-name
                                       "TestInvokeAuthorizer" :input
                                       test-invoke-authorizer-request :output
                                       test-invoke-authorizer-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        invalid-response-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/authorizer/{authorizerName}/test"
                                       :code 200)

(smithy/sdk/operation:define-operation transfer-certificate :shape-name
                                       "TransferCertificate" :input
                                       transfer-certificate-request :output
                                       transfer-certificate-response :errors
                                       (certificate-state-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        transfer-conflict-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/transfer-certificate/{certificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/untag" :code 200)

(smithy/sdk/operation:define-operation update-account-audit-configuration
                                       :shape-name
                                       "UpdateAccountAuditConfiguration" :input
                                       update-account-audit-configuration-request
                                       :output
                                       update-account-audit-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/audit/configuration" :code 200)

(smithy/sdk/operation:define-operation update-audit-suppression :shape-name
                                       "UpdateAuditSuppression" :input
                                       update-audit-suppression-request :output
                                       update-audit-suppression-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/audit/suppressions/update" :code 200)

(smithy/sdk/operation:define-operation update-authorizer :shape-name
                                       "UpdateAuthorizer" :input
                                       update-authorizer-request :output
                                       update-authorizer-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/authorizer/{authorizerName}" :code 200)

(smithy/sdk/operation:define-operation update-billing-group :shape-name
                                       "UpdateBillingGroup" :input
                                       update-billing-group-request :output
                                       update-billing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "PATCH" :uri
                                       "/billing-groups/{billingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cacertificate :shape-name
                                       "UpdateCACertificate" :input
                                       update-cacertificate-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/cacertificate/{certificateId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-certificate :shape-name
                                       "UpdateCertificate" :input
                                       update-certificate-request :output
                                       common-lisp:null :errors
                                       (certificate-state-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/certificates/{certificateId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-certificate-provider :shape-name
                                       "UpdateCertificateProvider" :input
                                       update-certificate-provider-request
                                       :output
                                       update-certificate-provider-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/certificate-providers/{certificateProviderName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-command :shape-name
                                       "UpdateCommand" :input
                                       update-command-request :output
                                       update-command-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/commands/{commandId}" :code 200)

(smithy/sdk/operation:define-operation update-custom-metric :shape-name
                                       "UpdateCustomMetric" :input
                                       update-custom-metric-request :output
                                       update-custom-metric-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/custom-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation update-dimension :shape-name
                                       "UpdateDimension" :input
                                       update-dimension-request :output
                                       update-dimension-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/dimensions/{name}" :code 200)

(smithy/sdk/operation:define-operation update-domain-configuration :shape-name
                                       "UpdateDomainConfiguration" :input
                                       update-domain-configuration-request
                                       :output
                                       update-domain-configuration-response
                                       :errors
                                       (certificate-validation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/domainConfigurations/{domainConfigurationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-dynamic-thing-group :shape-name
                                       "UpdateDynamicThingGroup" :input
                                       update-dynamic-thing-group-request
                                       :output
                                       update-dynamic-thing-group-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "PATCH" :uri
                                       "/dynamic-thing-groups/{thingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-encryption-configuration
                                       :shape-name
                                       "UpdateEncryptionConfiguration" :input
                                       update-encryption-configuration-request
                                       :output
                                       update-encryption-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/encryption-configuration" :code 200)

(smithy/sdk/operation:define-operation update-event-configurations :shape-name
                                       "UpdateEventConfigurations" :input
                                       update-event-configurations-request
                                       :output
                                       update-event-configurations-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/event-configurations" :code 200)

(smithy/sdk/operation:define-operation update-fleet-metric :shape-name
                                       "UpdateFleetMetric" :input
                                       update-fleet-metric-request :output
                                       common-lisp:null :errors
                                       (index-not-ready-exception
                                        internal-failure-exception
                                        invalid-aggregation-exception
                                        invalid-query-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        version-conflict-exception)
                                       :method "PATCH" :uri
                                       "/fleet-metric/{metricName}" :code 200)

(smithy/sdk/operation:define-operation update-indexing-configuration
                                       :shape-name
                                       "UpdateIndexingConfiguration" :input
                                       update-indexing-configuration-request
                                       :output
                                       update-indexing-configuration-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/indexing/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-job :shape-name "UpdateJob"
                                       :input update-job-request :output
                                       common-lisp:null :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PATCH" :uri "/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-mitigation-action :shape-name
                                       "UpdateMitigationAction" :input
                                       update-mitigation-action-request :output
                                       update-mitigation-action-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/mitigationactions/actions/{actionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-package :shape-name
                                       "UpdatePackage" :input
                                       update-package-request :output
                                       update-package-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/packages/{packageName}" :code 200)

(smithy/sdk/operation:define-operation update-package-configuration :shape-name
                                       "UpdatePackageConfiguration" :input
                                       update-package-configuration-request
                                       :output
                                       update-package-configuration-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/package-configuration" :code 200)

(smithy/sdk/operation:define-operation update-package-version :shape-name
                                       "UpdatePackageVersion" :input
                                       update-package-version-request :output
                                       update-package-version-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/packages/{packageName}/versions/{versionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-provisioning-template :shape-name
                                       "UpdateProvisioningTemplate" :input
                                       update-provisioning-template-request
                                       :output
                                       update-provisioning-template-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/provisioning-templates/{templateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-role-alias :shape-name
                                       "UpdateRoleAlias" :input
                                       update-role-alias-request :output
                                       update-role-alias-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/role-aliases/{roleAlias}" :code 200)

(smithy/sdk/operation:define-operation update-scheduled-audit :shape-name
                                       "UpdateScheduledAudit" :input
                                       update-scheduled-audit-request :output
                                       update-scheduled-audit-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PATCH" :uri
                                       "/audit/scheduledaudits/{scheduledAuditName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-security-profile :shape-name
                                       "UpdateSecurityProfile" :input
                                       update-security-profile-request :output
                                       update-security-profile-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "PATCH" :uri
                                       "/security-profiles/{securityProfileName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-stream :shape-name "UpdateStream"
                                       :input update-stream-request :output
                                       update-stream-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri "/streams/{streamId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-thing :shape-name "UpdateThing"
                                       :input update-thing-request :output
                                       update-thing-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        version-conflict-exception)
                                       :method "PATCH" :uri
                                       "/things/{thingName}" :code 200)

(smithy/sdk/operation:define-operation update-thing-group :shape-name
                                       "UpdateThingGroup" :input
                                       update-thing-group-request :output
                                       update-thing-group-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        version-conflict-exception)
                                       :method "PATCH" :uri
                                       "/thing-groups/{thingGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation update-thing-groups-for-thing
                                       :shape-name "UpdateThingGroupsForThing"
                                       :input
                                       update-thing-groups-for-thing-request
                                       :output
                                       update-thing-groups-for-thing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/thing-groups/updateThingGroupsForThing"
                                       :code 200)

(smithy/sdk/operation:define-operation update-thing-type :shape-name
                                       "UpdateThingType" :input
                                       update-thing-type-request :output
                                       update-thing-type-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/thing-types/{thingTypeName}" :code 200)

(smithy/sdk/operation:define-operation update-topic-rule-destination
                                       :shape-name "UpdateTopicRuleDestination"
                                       :input
                                       update-topic-rule-destination-request
                                       :output
                                       update-topic-rule-destination-response
                                       :errors
                                       (conflicting-resource-update-exception
                                        internal-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri "/destinations"
                                       :code 200)

(smithy/sdk/operation:define-operation validate-security-profile-behaviors
                                       :shape-name
                                       "ValidateSecurityProfileBehaviors"
                                       :input
                                       validate-security-profile-behaviors-request
                                       :output
                                       validate-security-profile-behaviors-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/security-profile-behaviors/validate"
                                       :code 200)
