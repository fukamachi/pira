(uiop/package:define-package #:pira/dynamodb (:use)
                             (:export
                              #:approximate-creation-date-time-precision
                              #:archival-reason #:archival-summary
                              #:attribute-action #:attribute-definition
                              #:attribute-definitions #:attribute-map
                              #:attribute-name #:attribute-name-list
                              #:attribute-updates #:attribute-value
                              #:attribute-value-list #:attribute-value-update
                              #:auto-scaling-policy-description
                              #:auto-scaling-policy-description-list
                              #:auto-scaling-policy-name
                              #:auto-scaling-policy-update
                              #:auto-scaling-role-arn
                              #:auto-scaling-settings-description
                              #:auto-scaling-settings-update
                              #:auto-scaling-target-tracking-scaling-policy-configuration-description
                              #:auto-scaling-target-tracking-scaling-policy-configuration-update
                              #:backfilling #:backup-arn
                              #:backup-creation-date-time #:backup-description
                              #:backup-details #:backup-in-use-exception
                              #:backup-name #:backup-not-found-exception
                              #:backup-size-bytes #:backup-status
                              #:backup-summaries #:backup-summary #:backup-type
                              #:backup-type-filter #:backups-input-limit
                              #:batch-execute-statement
                              #:batch-execute-statement-input
                              #:batch-execute-statement-output #:batch-get-item
                              #:batch-get-item-input #:batch-get-item-output
                              #:batch-get-request-map #:batch-get-response-map
                              #:batch-statement-error
                              #:batch-statement-error-code-enum
                              #:batch-statement-request
                              #:batch-statement-response #:batch-write-item
                              #:batch-write-item-input
                              #:batch-write-item-output
                              #:batch-write-item-request-map
                              #:billed-size-bytes #:billing-mode
                              #:billing-mode-summary #:binary-attribute-value
                              #:binary-set-attribute-value
                              #:boolean-attribute-value #:boolean-object
                              #:cancellation-reason #:cancellation-reason-list
                              #:capacity #:client-request-token #:client-token
                              #:cloud-watch-log-group-arn #:code
                              #:comparison-operator #:condition
                              #:condition-check #:condition-expression
                              #:conditional-check-failed-exception
                              #:conditional-operator
                              #:confirm-remove-self-resource-access
                              #:consistent-read #:consumed-capacity
                              #:consumed-capacity-multiple
                              #:consumed-capacity-units
                              #:continuous-backups-description
                              #:continuous-backups-status
                              #:continuous-backups-unavailable-exception
                              #:contributor-insights-action
                              #:contributor-insights-rule
                              #:contributor-insights-rule-list
                              #:contributor-insights-status
                              #:contributor-insights-summaries
                              #:contributor-insights-summary #:create-backup
                              #:create-backup-input #:create-backup-output
                              #:create-global-secondary-index-action
                              #:create-global-table #:create-global-table-input
                              #:create-global-table-output
                              #:create-global-table-witness-group-member-action
                              #:create-replica-action
                              #:create-replication-group-member-action
                              #:create-table #:create-table-input
                              #:create-table-output #:csv-delimiter
                              #:csv-header #:csv-header-list #:csv-options
                              #:date #:delete #:delete-backup
                              #:delete-backup-input #:delete-backup-output
                              #:delete-global-secondary-index-action
                              #:delete-global-table-witness-group-member-action
                              #:delete-item #:delete-item-input
                              #:delete-item-output #:delete-replica-action
                              #:delete-replication-group-member-action
                              #:delete-request #:delete-resource-policy
                              #:delete-resource-policy-input
                              #:delete-resource-policy-output #:delete-table
                              #:delete-table-input #:delete-table-output
                              #:deletion-protection-enabled #:describe-backup
                              #:describe-backup-input #:describe-backup-output
                              #:describe-continuous-backups
                              #:describe-continuous-backups-input
                              #:describe-continuous-backups-output
                              #:describe-contributor-insights
                              #:describe-contributor-insights-input
                              #:describe-contributor-insights-output
                              #:describe-endpoints #:describe-endpoints-request
                              #:describe-endpoints-response #:describe-export
                              #:describe-export-input #:describe-export-output
                              #:describe-global-table
                              #:describe-global-table-input
                              #:describe-global-table-output
                              #:describe-global-table-settings
                              #:describe-global-table-settings-input
                              #:describe-global-table-settings-output
                              #:describe-import #:describe-import-input
                              #:describe-import-output
                              #:describe-kinesis-streaming-destination
                              #:describe-kinesis-streaming-destination-input
                              #:describe-kinesis-streaming-destination-output
                              #:describe-limits #:describe-limits-input
                              #:describe-limits-output #:describe-table
                              #:describe-table-input #:describe-table-output
                              #:describe-table-replica-auto-scaling
                              #:describe-table-replica-auto-scaling-input
                              #:describe-table-replica-auto-scaling-output
                              #:describe-time-to-live
                              #:describe-time-to-live-input
                              #:describe-time-to-live-output
                              #:destination-status
                              #:disable-kinesis-streaming-destination
                              #:double-object #:duplicate-item-exception
                              #:dynamo-db-20120810
                              #:enable-kinesis-streaming-configuration
                              #:enable-kinesis-streaming-destination #:endpoint
                              #:endpoints #:error-count #:error-message
                              #:exception-description #:exception-name
                              #:execute-statement #:execute-statement-input
                              #:execute-statement-output #:execute-transaction
                              #:execute-transaction-input
                              #:execute-transaction-output
                              #:expected-attribute-map
                              #:expected-attribute-value #:export-arn
                              #:export-conflict-exception #:export-description
                              #:export-end-time #:export-format
                              #:export-from-time #:export-manifest
                              #:export-next-token #:export-not-found-exception
                              #:export-start-time #:export-status
                              #:export-summaries #:export-summary
                              #:export-table-to-point-in-time
                              #:export-table-to-point-in-time-input
                              #:export-table-to-point-in-time-output
                              #:export-time #:export-to-time #:export-type
                              #:export-view-type
                              #:expression-attribute-name-map
                              #:expression-attribute-name-variable
                              #:expression-attribute-value-map
                              #:expression-attribute-value-variable
                              #:failure-code #:failure-exception
                              #:failure-message #:filter-condition-map #:get
                              #:get-item #:get-item-input #:get-item-output
                              #:get-resource-policy #:get-resource-policy-input
                              #:get-resource-policy-output
                              #:global-secondary-index
                              #:global-secondary-index-auto-scaling-update
                              #:global-secondary-index-auto-scaling-update-list
                              #:global-secondary-index-description
                              #:global-secondary-index-description-list
                              #:global-secondary-index-info
                              #:global-secondary-index-list
                              #:global-secondary-index-update
                              #:global-secondary-index-update-list
                              #:global-secondary-index-warm-throughput-description
                              #:global-secondary-indexes #:global-table
                              #:global-table-already-exists-exception
                              #:global-table-arn-string
                              #:global-table-description
                              #:global-table-global-secondary-index-settings-update
                              #:global-table-global-secondary-index-settings-update-list
                              #:global-table-list
                              #:global-table-not-found-exception
                              #:global-table-status
                              #:global-table-witness-description
                              #:global-table-witness-description-list
                              #:global-table-witness-group-update
                              #:global-table-witness-group-update-list
                              #:idempotent-parameter-mismatch-exception
                              #:import-arn #:import-conflict-exception
                              #:import-end-time #:import-next-token
                              #:import-not-found-exception #:import-start-time
                              #:import-status #:import-summary
                              #:import-summary-list #:import-table
                              #:import-table-description #:import-table-input
                              #:import-table-output #:imported-item-count
                              #:incremental-export-specification #:index-name
                              #:index-not-found-exception #:index-status
                              #:input-compression-type #:input-format
                              #:input-format-options #:integer #:integer-object
                              #:internal-server-error
                              #:invalid-endpoint-exception
                              #:invalid-export-time-exception
                              #:invalid-restore-time-exception
                              #:item-collection-key-attribute-map
                              #:item-collection-metrics
                              #:item-collection-metrics-multiple
                              #:item-collection-metrics-per-table
                              #:item-collection-size-estimate-bound
                              #:item-collection-size-estimate-range
                              #:item-collection-size-limit-exceeded-exception
                              #:item-count #:item-list #:item-response
                              #:item-response-list #:kmsmaster-key-arn
                              #:kmsmaster-key-id #:key #:key-conditions
                              #:key-expression #:key-list #:key-schema
                              #:key-schema-attribute-name #:key-schema-element
                              #:key-type #:keys-and-attributes
                              #:kinesis-data-stream-destination
                              #:kinesis-data-stream-destinations
                              #:kinesis-streaming-destination-input
                              #:kinesis-streaming-destination-output
                              #:last-update-date-time
                              #:limit-exceeded-exception #:list-attribute-value
                              #:list-backups #:list-backups-input
                              #:list-backups-output #:list-contributor-insights
                              #:list-contributor-insights-input
                              #:list-contributor-insights-limit
                              #:list-contributor-insights-output #:list-exports
                              #:list-exports-input #:list-exports-max-limit
                              #:list-exports-output #:list-global-tables
                              #:list-global-tables-input
                              #:list-global-tables-output #:list-imports
                              #:list-imports-input #:list-imports-max-limit
                              #:list-imports-output #:list-tables
                              #:list-tables-input #:list-tables-input-limit
                              #:list-tables-output #:list-tags-of-resource
                              #:list-tags-of-resource-input
                              #:list-tags-of-resource-output
                              #:local-secondary-index
                              #:local-secondary-index-description
                              #:local-secondary-index-description-list
                              #:local-secondary-index-info
                              #:local-secondary-index-list
                              #:local-secondary-indexes #:long #:long-object
                              #:map-attribute-value #:multi-region-consistency
                              #:next-token-string #:non-key-attribute-name
                              #:non-key-attribute-name-list
                              #:non-negative-long-object #:null-attribute-value
                              #:number-attribute-value
                              #:number-set-attribute-value
                              #:on-demand-throughput
                              #:on-demand-throughput-override
                              #:parameterized-statement
                              #:parameterized-statements
                              #:parti-qlbatch-request #:parti-qlbatch-response
                              #:parti-qlnext-token #:parti-qlstatement
                              #:point-in-time-recovery-description
                              #:point-in-time-recovery-specification
                              #:point-in-time-recovery-status
                              #:point-in-time-recovery-unavailable-exception
                              #:policy-not-found-exception #:policy-revision-id
                              #:positive-integer-object #:positive-long-object
                              #:prepared-statement-parameters
                              #:processed-item-count #:projection
                              #:projection-expression #:projection-type
                              #:provisioned-throughput
                              #:provisioned-throughput-description
                              #:provisioned-throughput-exceeded-exception
                              #:provisioned-throughput-override #:put
                              #:put-item #:put-item-input
                              #:put-item-input-attribute-map #:put-item-output
                              #:put-request #:put-resource-policy
                              #:put-resource-policy-input
                              #:put-resource-policy-output #:query
                              #:query-input #:query-output
                              #:recovery-period-in-days #:region-name #:replica
                              #:replica-already-exists-exception
                              #:replica-auto-scaling-description
                              #:replica-auto-scaling-description-list
                              #:replica-auto-scaling-update
                              #:replica-auto-scaling-update-list
                              #:replica-description #:replica-description-list
                              #:replica-global-secondary-index
                              #:replica-global-secondary-index-auto-scaling-description
                              #:replica-global-secondary-index-auto-scaling-description-list
                              #:replica-global-secondary-index-auto-scaling-update
                              #:replica-global-secondary-index-auto-scaling-update-list
                              #:replica-global-secondary-index-description
                              #:replica-global-secondary-index-description-list
                              #:replica-global-secondary-index-list
                              #:replica-global-secondary-index-settings-description
                              #:replica-global-secondary-index-settings-description-list
                              #:replica-global-secondary-index-settings-update
                              #:replica-global-secondary-index-settings-update-list
                              #:replica-list #:replica-not-found-exception
                              #:replica-settings-description
                              #:replica-settings-description-list
                              #:replica-settings-update
                              #:replica-settings-update-list #:replica-status
                              #:replica-status-description
                              #:replica-status-percent-progress
                              #:replica-update #:replica-update-list
                              #:replicated-write-conflict-exception
                              #:replication-group-update
                              #:replication-group-update-list
                              #:request-limit-exceeded #:resource-arn-string
                              #:resource-in-use-exception
                              #:resource-not-found-exception #:resource-policy
                              #:restore-in-progress #:restore-summary
                              #:restore-table-from-backup
                              #:restore-table-from-backup-input
                              #:restore-table-from-backup-output
                              #:restore-table-to-point-in-time
                              #:restore-table-to-point-in-time-input
                              #:restore-table-to-point-in-time-output
                              #:return-consumed-capacity
                              #:return-item-collection-metrics #:return-value
                              #:return-values-on-condition-check-failure
                              #:s3bucket #:s3bucket-owner #:s3bucket-source
                              #:s3prefix #:s3sse-algorithm #:s3sse-kms-key-id
                              #:ssedescription #:sseenabled #:ssespecification
                              #:ssestatus #:ssetype #:scalar-attribute-type
                              #:scan #:scan-input #:scan-output #:scan-segment
                              #:scan-total-segments
                              #:secondary-indexes-capacity-map #:select
                              #:source-table-details
                              #:source-table-feature-details #:stream-arn
                              #:stream-enabled #:stream-specification
                              #:stream-view-type #:string
                              #:string-attribute-value
                              #:string-set-attribute-value
                              #:table-already-exists-exception #:table-arn
                              #:table-auto-scaling-description #:table-class
                              #:table-class-summary #:table-creation-date-time
                              #:table-creation-parameters #:table-description
                              #:table-id #:table-in-use-exception #:table-name
                              #:table-name-list #:table-not-found-exception
                              #:table-status
                              #:table-warm-throughput-description #:tag
                              #:tag-key-list #:tag-key-string #:tag-list
                              #:tag-resource #:tag-resource-input
                              #:tag-value-string #:time-range-lower-bound
                              #:time-range-upper-bound
                              #:time-to-live-attribute-name
                              #:time-to-live-description #:time-to-live-enabled
                              #:time-to-live-specification
                              #:time-to-live-status #:transact-get-item
                              #:transact-get-item-list #:transact-get-items
                              #:transact-get-items-input
                              #:transact-get-items-output #:transact-write-item
                              #:transact-write-item-list #:transact-write-items
                              #:transact-write-items-input
                              #:transact-write-items-output
                              #:transaction-canceled-exception
                              #:transaction-conflict-exception
                              #:transaction-in-progress-exception
                              #:untag-resource #:untag-resource-input #:update
                              #:update-continuous-backups
                              #:update-continuous-backups-input
                              #:update-continuous-backups-output
                              #:update-contributor-insights
                              #:update-contributor-insights-input
                              #:update-contributor-insights-output
                              #:update-expression
                              #:update-global-secondary-index-action
                              #:update-global-table #:update-global-table-input
                              #:update-global-table-output
                              #:update-global-table-settings
                              #:update-global-table-settings-input
                              #:update-global-table-settings-output
                              #:update-item #:update-item-input
                              #:update-item-output
                              #:update-kinesis-streaming-configuration
                              #:update-kinesis-streaming-destination
                              #:update-kinesis-streaming-destination-input
                              #:update-kinesis-streaming-destination-output
                              #:update-replication-group-member-action
                              #:update-table #:update-table-input
                              #:update-table-output
                              #:update-table-replica-auto-scaling
                              #:update-table-replica-auto-scaling-input
                              #:update-table-replica-auto-scaling-output
                              #:update-time-to-live #:update-time-to-live-input
                              #:update-time-to-live-output #:warm-throughput
                              #:witness-status #:write-request
                              #:write-requests))
(common-lisp:in-package #:pira/dynamodb)

(smithy/sdk/service:define-service dynamo-db-20120810 :shape-name
                                   "DynamoDB_20120810" :version "2012-08-10"
                                   :title "Amazon DynamoDB" :xml-namespace
                                   '(:uri
                                     "http://dynamodb.amazonaws.com/doc/2012-08-10/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#clientEndpointDiscovery"
                                      ("operation"
                                       . "com.amazonaws.dynamodb#DescribeEndpoints")
                                      ("error"
                                       . "com.amazonaws.dynamodb#InvalidEndpointException"))
                                     ("aws.api#service" ("sdkId" . "DynamoDB")
                                      ("arnNamespace" . "dynamodb")
                                      ("cloudFormationName" . "DynamoDB")
                                      ("cloudTrailEventSource"
                                       . "dynamodb.amazonaws.com")
                                      ("endpointPrefix" . "dynamodb"))
                                     ("aws.auth#sigv4" ("name" . "dynamodb"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-enum approximate-creation-date-time-precision
    common-lisp:nil
  (:millisecond "MILLISECOND")
  (:microsecond "MICROSECOND"))

(smithy/sdk/shapes:define-type archival-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure archival-summary common-lisp:nil
                                    ((archival-date-time :target-type date
                                      :member-name "ArchivalDateTime")
                                     (archival-reason :target-type
                                      archival-reason :member-name
                                      "ArchivalReason")
                                     (archival-backup-arn :target-type
                                      backup-arn :member-name
                                      "ArchivalBackupArn"))
                                    (:shape-name "ArchivalSummary"))

(smithy/sdk/shapes:define-enum attribute-action
    common-lisp:nil
  (:add "ADD")
  (:put "PUT")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-structure attribute-definition common-lisp:nil
                                    ((attribute-name :target-type
                                      key-schema-attribute-name :required
                                      common-lisp:t :member-name
                                      "AttributeName")
                                     (attribute-type :target-type
                                      scalar-attribute-type :required
                                      common-lisp:t :member-name
                                      "AttributeType"))
                                    (:shape-name "AttributeDefinition"))

(smithy/sdk/shapes:define-list attribute-definitions :member
                               attribute-definition)

(smithy/sdk/shapes:define-map attribute-map :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-name-list :member attribute-name)

(smithy/sdk/shapes:define-map attribute-updates :key attribute-name :value
                              attribute-value-update)

(smithy/sdk/shapes:define-union attribute-value common-lisp:nil
                                ((s :target-type string-attribute-value
                                  :member-name "S")
                                 (n :target-type number-attribute-value
                                  :member-name "N")
                                 (b :target-type binary-attribute-value
                                  :member-name "B")
                                 (ss :target-type string-set-attribute-value
                                  :member-name "SS")
                                 (ns :target-type number-set-attribute-value
                                  :member-name "NS")
                                 (bs :target-type binary-set-attribute-value
                                  :member-name "BS")
                                 (m :target-type map-attribute-value
                                  :member-name "M")
                                 (l :target-type list-attribute-value
                                  :member-name "L")
                                 (null :target-type null-attribute-value
                                  :member-name "NULL")
                                 (bool :target-type boolean-attribute-value
                                  :member-name "BOOL"))
                                (:shape-name "AttributeValue"))

(smithy/sdk/shapes:define-list attribute-value-list :member attribute-value)

(smithy/sdk/shapes:define-structure attribute-value-update common-lisp:nil
                                    ((value :target-type attribute-value
                                      :member-name "Value")
                                     (action :target-type attribute-action
                                      :member-name "Action"))
                                    (:shape-name "AttributeValueUpdate"))

(smithy/sdk/shapes:define-structure auto-scaling-policy-description
                                    common-lisp:nil
                                    ((policy-name :target-type
                                      auto-scaling-policy-name :member-name
                                      "PolicyName")
                                     (target-tracking-scaling-policy-configuration
                                      :target-type
                                      auto-scaling-target-tracking-scaling-policy-configuration-description
                                      :member-name
                                      "TargetTrackingScalingPolicyConfiguration"))
                                    (:shape-name
                                     "AutoScalingPolicyDescription"))

(smithy/sdk/shapes:define-list auto-scaling-policy-description-list :member
                               auto-scaling-policy-description)

(smithy/sdk/shapes:define-type auto-scaling-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-scaling-policy-update common-lisp:nil
                                    ((policy-name :target-type
                                      auto-scaling-policy-name :member-name
                                      "PolicyName")
                                     (target-tracking-scaling-policy-configuration
                                      :target-type
                                      auto-scaling-target-tracking-scaling-policy-configuration-update
                                      :required common-lisp:t :member-name
                                      "TargetTrackingScalingPolicyConfiguration"))
                                    (:shape-name "AutoScalingPolicyUpdate"))

(smithy/sdk/shapes:define-type auto-scaling-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-scaling-settings-description
                                    common-lisp:nil
                                    ((minimum-units :target-type
                                      positive-long-object :member-name
                                      "MinimumUnits")
                                     (maximum-units :target-type
                                      positive-long-object :member-name
                                      "MaximumUnits")
                                     (auto-scaling-disabled :target-type
                                      boolean-object :member-name
                                      "AutoScalingDisabled")
                                     (auto-scaling-role-arn :target-type string
                                      :member-name "AutoScalingRoleArn")
                                     (scaling-policies :target-type
                                      auto-scaling-policy-description-list
                                      :member-name "ScalingPolicies"))
                                    (:shape-name
                                     "AutoScalingSettingsDescription"))

(smithy/sdk/shapes:define-structure auto-scaling-settings-update
                                    common-lisp:nil
                                    ((minimum-units :target-type
                                      positive-long-object :member-name
                                      "MinimumUnits")
                                     (maximum-units :target-type
                                      positive-long-object :member-name
                                      "MaximumUnits")
                                     (auto-scaling-disabled :target-type
                                      boolean-object :member-name
                                      "AutoScalingDisabled")
                                     (auto-scaling-role-arn :target-type
                                      auto-scaling-role-arn :member-name
                                      "AutoScalingRoleArn")
                                     (scaling-policy-update :target-type
                                      auto-scaling-policy-update :member-name
                                      "ScalingPolicyUpdate"))
                                    (:shape-name "AutoScalingSettingsUpdate"))

(smithy/sdk/shapes:define-structure
 auto-scaling-target-tracking-scaling-policy-configuration-description
 common-lisp:nil
 ((disable-scale-in :target-type boolean-object :member-name "DisableScaleIn")
  (scale-in-cooldown :target-type integer-object :member-name
   "ScaleInCooldown")
  (scale-out-cooldown :target-type integer-object :member-name
   "ScaleOutCooldown")
  (target-value :target-type double-object :required common-lisp:t :member-name
   "TargetValue"))
 (:shape-name "AutoScalingTargetTrackingScalingPolicyConfigurationDescription"))

(smithy/sdk/shapes:define-structure
 auto-scaling-target-tracking-scaling-policy-configuration-update
 common-lisp:nil
 ((disable-scale-in :target-type boolean-object :member-name "DisableScaleIn")
  (scale-in-cooldown :target-type integer-object :member-name
   "ScaleInCooldown")
  (scale-out-cooldown :target-type integer-object :member-name
   "ScaleOutCooldown")
  (target-value :target-type double-object :required common-lisp:t :member-name
   "TargetValue"))
 (:shape-name "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate"))

(smithy/sdk/shapes:define-type backfilling smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type backup-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type backup-creation-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure backup-description common-lisp:nil
                                    ((backup-details :target-type
                                      backup-details :member-name
                                      "BackupDetails")
                                     (source-table-details :target-type
                                      source-table-details :member-name
                                      "SourceTableDetails")
                                     (source-table-feature-details :target-type
                                      source-table-feature-details :member-name
                                      "SourceTableFeatureDetails"))
                                    (:shape-name "BackupDescription"))

(smithy/sdk/shapes:define-structure backup-details common-lisp:nil
                                    ((backup-arn :target-type backup-arn
                                      :required common-lisp:t :member-name
                                      "BackupArn")
                                     (backup-name :target-type backup-name
                                      :required common-lisp:t :member-name
                                      "BackupName")
                                     (backup-size-bytes :target-type
                                      backup-size-bytes :member-name
                                      "BackupSizeBytes")
                                     (backup-status :target-type backup-status
                                      :required common-lisp:t :member-name
                                      "BackupStatus")
                                     (backup-type :target-type backup-type
                                      :required common-lisp:t :member-name
                                      "BackupType")
                                     (backup-creation-date-time :target-type
                                      backup-creation-date-time :required
                                      common-lisp:t :member-name
                                      "BackupCreationDateTime")
                                     (backup-expiry-date-time :target-type date
                                      :member-name "BackupExpiryDateTime"))
                                    (:shape-name "BackupDetails"))

(smithy/sdk/shapes:define-error backup-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BackupInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type backup-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error backup-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BackupNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type backup-size-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum backup-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleted "DELETED")
  (:available "AVAILABLE"))

(smithy/sdk/shapes:define-list backup-summaries :member backup-summary)

(smithy/sdk/shapes:define-structure backup-summary common-lisp:nil
                                    ((table-name :target-type table-name
                                      :member-name "TableName")
                                     (table-id :target-type table-id
                                      :member-name "TableId")
                                     (table-arn :target-type table-arn
                                      :member-name "TableArn")
                                     (backup-arn :target-type backup-arn
                                      :member-name "BackupArn")
                                     (backup-name :target-type backup-name
                                      :member-name "BackupName")
                                     (backup-creation-date-time :target-type
                                      backup-creation-date-time :member-name
                                      "BackupCreationDateTime")
                                     (backup-expiry-date-time :target-type date
                                      :member-name "BackupExpiryDateTime")
                                     (backup-status :target-type backup-status
                                      :member-name "BackupStatus")
                                     (backup-type :target-type backup-type
                                      :member-name "BackupType")
                                     (backup-size-bytes :target-type
                                      backup-size-bytes :member-name
                                      "BackupSizeBytes"))
                                    (:shape-name "BackupSummary"))

(smithy/sdk/shapes:define-enum backup-type
    common-lisp:nil
  (:user "USER")
  (:system "SYSTEM")
  (:aws-backup "AWS_BACKUP"))

(smithy/sdk/shapes:define-enum backup-type-filter
    common-lisp:nil
  (:user "USER")
  (:system "SYSTEM")
  (:aws-backup "AWS_BACKUP")
  (:all "ALL"))

(smithy/sdk/shapes:define-type backups-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input batch-execute-statement-input common-lisp:nil
                                ((statements :target-type parti-qlbatch-request
                                  :required common-lisp:t :member-name
                                  "Statements")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity"))
                                (:shape-name "BatchExecuteStatementInput"))

(smithy/sdk/shapes:define-output batch-execute-statement-output common-lisp:nil
                                 ((responses :target-type
                                   parti-qlbatch-response :member-name
                                   "Responses")
                                  (consumed-capacity :target-type
                                   consumed-capacity-multiple :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "BatchExecuteStatementOutput"))

(smithy/sdk/shapes:define-input batch-get-item-input common-lisp:nil
                                ((request-items :target-type
                                  batch-get-request-map :required common-lisp:t
                                  :member-name "RequestItems")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity"))
                                (:shape-name "BatchGetItemInput"))

(smithy/sdk/shapes:define-output batch-get-item-output common-lisp:nil
                                 ((responses :target-type
                                   batch-get-response-map :member-name
                                   "Responses")
                                  (unprocessed-keys :target-type
                                   batch-get-request-map :member-name
                                   "UnprocessedKeys")
                                  (consumed-capacity :target-type
                                   consumed-capacity-multiple :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "BatchGetItemOutput"))

(smithy/sdk/shapes:define-map batch-get-request-map :key table-arn :value
                              keys-and-attributes)

(smithy/sdk/shapes:define-map batch-get-response-map :key table-arn :value
                              item-list)

(smithy/sdk/shapes:define-structure batch-statement-error common-lisp:nil
                                    ((code :target-type
                                      batch-statement-error-code-enum
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message")
                                     (item :target-type attribute-map
                                      :member-name "Item"))
                                    (:shape-name "BatchStatementError"))

(smithy/sdk/shapes:define-enum batch-statement-error-code-enum
    common-lisp:nil
  (:conditional-check-failed "ConditionalCheckFailed")
  (:item-collection-size-limit-exceeded "ItemCollectionSizeLimitExceeded")
  (:request-limit-exceeded "RequestLimitExceeded")
  (:validation-error "ValidationError")
  (:provisioned-throughput-exceeded "ProvisionedThroughputExceeded")
  (:transaction-conflict "TransactionConflict")
  (:throttling-error "ThrottlingError")
  (:internal-server-error "InternalServerError")
  (:resource-not-found "ResourceNotFound")
  (:access-denied "AccessDenied")
  (:duplicate-item "DuplicateItem"))

(smithy/sdk/shapes:define-structure batch-statement-request common-lisp:nil
                                    ((statement :target-type parti-qlstatement
                                      :required common-lisp:t :member-name
                                      "Statement")
                                     (parameters :target-type
                                      prepared-statement-parameters
                                      :member-name "Parameters")
                                     (consistent-read :target-type
                                      consistent-read :member-name
                                      "ConsistentRead")
                                     (return-values-on-condition-check-failure
                                      :target-type
                                      return-values-on-condition-check-failure
                                      :member-name
                                      "ReturnValuesOnConditionCheckFailure"))
                                    (:shape-name "BatchStatementRequest"))

(smithy/sdk/shapes:define-structure batch-statement-response common-lisp:nil
                                    ((error :target-type batch-statement-error
                                      :member-name "Error")
                                     (table-name :target-type table-name
                                      :member-name "TableName")
                                     (item :target-type attribute-map
                                      :member-name "Item"))
                                    (:shape-name "BatchStatementResponse"))

(smithy/sdk/shapes:define-input batch-write-item-input common-lisp:nil
                                ((request-items :target-type
                                  batch-write-item-request-map :required
                                  common-lisp:t :member-name "RequestItems")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (return-item-collection-metrics :target-type
                                  return-item-collection-metrics :member-name
                                  "ReturnItemCollectionMetrics"))
                                (:shape-name "BatchWriteItemInput"))

(smithy/sdk/shapes:define-output batch-write-item-output common-lisp:nil
                                 ((unprocessed-items :target-type
                                   batch-write-item-request-map :member-name
                                   "UnprocessedItems")
                                  (item-collection-metrics :target-type
                                   item-collection-metrics-per-table
                                   :member-name "ItemCollectionMetrics")
                                  (consumed-capacity :target-type
                                   consumed-capacity-multiple :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "BatchWriteItemOutput"))

(smithy/sdk/shapes:define-map batch-write-item-request-map :key table-arn
                              :value write-requests)

(smithy/sdk/shapes:define-type billed-size-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum billing-mode
    common-lisp:nil
  (:provisioned "PROVISIONED")
  (:pay-per-request "PAY_PER_REQUEST"))

(smithy/sdk/shapes:define-structure billing-mode-summary common-lisp:nil
                                    ((billing-mode :target-type billing-mode
                                      :member-name "BillingMode")
                                     (last-update-to-pay-per-request-date-time
                                      :target-type date :member-name
                                      "LastUpdateToPayPerRequestDateTime"))
                                    (:shape-name "BillingModeSummary"))

(smithy/sdk/shapes:define-type binary-attribute-value
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list binary-set-attribute-value :member
                               binary-attribute-value)

(smithy/sdk/shapes:define-type boolean-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cancellation-reason common-lisp:nil
                                    ((item :target-type attribute-map
                                      :member-name "Item")
                                     (code :target-type code :member-name
                                      "Code")
                                     (message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "CancellationReason"))

(smithy/sdk/shapes:define-list cancellation-reason-list :member
                               cancellation-reason)

(smithy/sdk/shapes:define-structure capacity common-lisp:nil
                                    ((read-capacity-units :target-type
                                      consumed-capacity-units :member-name
                                      "ReadCapacityUnits")
                                     (write-capacity-units :target-type
                                      consumed-capacity-units :member-name
                                      "WriteCapacityUnits")
                                     (capacity-units :target-type
                                      consumed-capacity-units :member-name
                                      "CapacityUnits"))
                                    (:shape-name "Capacity"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:eq "EQ")
  (:ne "NE")
  (:in "IN")
  (:le "LE")
  (:lt "LT")
  (:ge "GE")
  (:gt "GT")
  (:between "BETWEEN")
  (:not-null "NOT_NULL")
  (:null "NULL")
  (:contains "CONTAINS")
  (:not-contains "NOT_CONTAINS")
  (:begins-with "BEGINS_WITH"))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((attribute-value-list :target-type
                                      attribute-value-list :member-name
                                      "AttributeValueList")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-structure condition-check common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (table-name :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (condition-expression :target-type
                                      condition-expression :required
                                      common-lisp:t :member-name
                                      "ConditionExpression")
                                     (expression-attribute-names :target-type
                                      expression-attribute-name-map
                                      :member-name "ExpressionAttributeNames")
                                     (expression-attribute-values :target-type
                                      expression-attribute-value-map
                                      :member-name "ExpressionAttributeValues")
                                     (return-values-on-condition-check-failure
                                      :target-type
                                      return-values-on-condition-check-failure
                                      :member-name
                                      "ReturnValuesOnConditionCheckFailure"))
                                    (:shape-name "ConditionCheck"))

(smithy/sdk/shapes:define-type condition-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conditional-check-failed-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (item :target-type attribute-map :member-name
                                  "Item"))
                                (:shape-name "ConditionalCheckFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum conditional-operator
    common-lisp:nil
  (:and "AND")
  (:or "OR"))

(smithy/sdk/shapes:define-type confirm-remove-self-resource-access
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type consistent-read smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure consumed-capacity common-lisp:nil
                                    ((table-name :target-type table-arn
                                      :member-name "TableName")
                                     (capacity-units :target-type
                                      consumed-capacity-units :member-name
                                      "CapacityUnits")
                                     (read-capacity-units :target-type
                                      consumed-capacity-units :member-name
                                      "ReadCapacityUnits")
                                     (write-capacity-units :target-type
                                      consumed-capacity-units :member-name
                                      "WriteCapacityUnits")
                                     (table :target-type capacity :member-name
                                      "Table")
                                     (local-secondary-indexes :target-type
                                      secondary-indexes-capacity-map
                                      :member-name "LocalSecondaryIndexes")
                                     (global-secondary-indexes :target-type
                                      secondary-indexes-capacity-map
                                      :member-name "GlobalSecondaryIndexes"))
                                    (:shape-name "ConsumedCapacity"))

(smithy/sdk/shapes:define-list consumed-capacity-multiple :member
                               consumed-capacity)

(smithy/sdk/shapes:define-type consumed-capacity-units
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure continuous-backups-description
                                    common-lisp:nil
                                    ((continuous-backups-status :target-type
                                      continuous-backups-status :required
                                      common-lisp:t :member-name
                                      "ContinuousBackupsStatus")
                                     (point-in-time-recovery-description
                                      :target-type
                                      point-in-time-recovery-description
                                      :member-name
                                      "PointInTimeRecoveryDescription"))
                                    (:shape-name
                                     "ContinuousBackupsDescription"))

(smithy/sdk/shapes:define-enum continuous-backups-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error continuous-backups-unavailable-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ContinuousBackupsUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum contributor-insights-action
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-type contributor-insights-rule
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list contributor-insights-rule-list :member
                               contributor-insights-rule)

(smithy/sdk/shapes:define-enum contributor-insights-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list contributor-insights-summaries :member
                               contributor-insights-summary)

(smithy/sdk/shapes:define-structure contributor-insights-summary
                                    common-lisp:nil
                                    ((table-name :target-type table-name
                                      :member-name "TableName")
                                     (index-name :target-type index-name
                                      :member-name "IndexName")
                                     (contributor-insights-status :target-type
                                      contributor-insights-status :member-name
                                      "ContributorInsightsStatus"))
                                    (:shape-name "ContributorInsightsSummary"))

(smithy/sdk/shapes:define-input create-backup-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (backup-name :target-type backup-name
                                  :required common-lisp:t :member-name
                                  "BackupName"))
                                (:shape-name "CreateBackupInput"))

(smithy/sdk/shapes:define-output create-backup-output common-lisp:nil
                                 ((backup-details :target-type backup-details
                                   :member-name "BackupDetails"))
                                 (:shape-name "CreateBackupOutput"))

(smithy/sdk/shapes:define-structure create-global-secondary-index-action
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (key-schema :target-type key-schema
                                      :required common-lisp:t :member-name
                                      "KeySchema")
                                     (projection :target-type projection
                                      :required common-lisp:t :member-name
                                      "Projection")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (warm-throughput :target-type
                                      warm-throughput :member-name
                                      "WarmThroughput"))
                                    (:shape-name
                                     "CreateGlobalSecondaryIndexAction"))

(smithy/sdk/shapes:define-input create-global-table-input common-lisp:nil
                                ((global-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "GlobalTableName")
                                 (replication-group :target-type replica-list
                                  :required common-lisp:t :member-name
                                  "ReplicationGroup"))
                                (:shape-name "CreateGlobalTableInput"))

(smithy/sdk/shapes:define-output create-global-table-output common-lisp:nil
                                 ((global-table-description :target-type
                                   global-table-description :member-name
                                   "GlobalTableDescription"))
                                 (:shape-name "CreateGlobalTableOutput"))

(smithy/sdk/shapes:define-structure
 create-global-table-witness-group-member-action common-lisp:nil
 ((region-name :target-type region-name :required common-lisp:t :member-name
   "RegionName"))
 (:shape-name "CreateGlobalTableWitnessGroupMemberAction"))

(smithy/sdk/shapes:define-structure create-replica-action common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName"))
                                    (:shape-name "CreateReplicaAction"))

(smithy/sdk/shapes:define-structure create-replication-group-member-action
                                    common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName")
                                     (kmsmaster-key-id :target-type
                                      kmsmaster-key-id :member-name
                                      "KMSMasterKeyId")
                                     (provisioned-throughput-override
                                      :target-type
                                      provisioned-throughput-override
                                      :member-name
                                      "ProvisionedThroughputOverride")
                                     (on-demand-throughput-override
                                      :target-type
                                      on-demand-throughput-override
                                      :member-name
                                      "OnDemandThroughputOverride")
                                     (global-secondary-indexes :target-type
                                      replica-global-secondary-index-list
                                      :member-name "GlobalSecondaryIndexes")
                                     (table-class-override :target-type
                                      table-class :member-name
                                      "TableClassOverride"))
                                    (:shape-name
                                     "CreateReplicationGroupMemberAction"))

(smithy/sdk/shapes:define-input create-table-input common-lisp:nil
                                ((attribute-definitions :target-type
                                  attribute-definitions :required common-lisp:t
                                  :member-name "AttributeDefinitions")
                                 (table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (key-schema :target-type key-schema :required
                                  common-lisp:t :member-name "KeySchema")
                                 (local-secondary-indexes :target-type
                                  local-secondary-index-list :member-name
                                  "LocalSecondaryIndexes")
                                 (global-secondary-indexes :target-type
                                  global-secondary-index-list :member-name
                                  "GlobalSecondaryIndexes")
                                 (billing-mode :target-type billing-mode
                                  :member-name "BillingMode")
                                 (provisioned-throughput :target-type
                                  provisioned-throughput :member-name
                                  "ProvisionedThroughput")
                                 (stream-specification :target-type
                                  stream-specification :member-name
                                  "StreamSpecification")
                                 (ssespecification :target-type
                                  ssespecification :member-name
                                  "SSESpecification")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (table-class :target-type table-class
                                  :member-name "TableClass")
                                 (deletion-protection-enabled :target-type
                                  deletion-protection-enabled :member-name
                                  "DeletionProtectionEnabled")
                                 (warm-throughput :target-type warm-throughput
                                  :member-name "WarmThroughput")
                                 (resource-policy :target-type resource-policy
                                  :member-name "ResourcePolicy")
                                 (on-demand-throughput :target-type
                                  on-demand-throughput :member-name
                                  "OnDemandThroughput"))
                                (:shape-name "CreateTableInput"))

(smithy/sdk/shapes:define-output create-table-output common-lisp:nil
                                 ((table-description :target-type
                                   table-description :member-name
                                   "TableDescription"))
                                 (:shape-name "CreateTableOutput"))

(smithy/sdk/shapes:define-type csv-delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type csv-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list csv-header-list :member csv-header)

(smithy/sdk/shapes:define-structure csv-options common-lisp:nil
                                    ((delimiter :target-type csv-delimiter
                                      :member-name "Delimiter")
                                     (header-list :target-type csv-header-list
                                      :member-name "HeaderList"))
                                    (:shape-name "CsvOptions"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure delete common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (table-name :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (condition-expression :target-type
                                      condition-expression :member-name
                                      "ConditionExpression")
                                     (expression-attribute-names :target-type
                                      expression-attribute-name-map
                                      :member-name "ExpressionAttributeNames")
                                     (expression-attribute-values :target-type
                                      expression-attribute-value-map
                                      :member-name "ExpressionAttributeValues")
                                     (return-values-on-condition-check-failure
                                      :target-type
                                      return-values-on-condition-check-failure
                                      :member-name
                                      "ReturnValuesOnConditionCheckFailure"))
                                    (:shape-name "Delete"))

(smithy/sdk/shapes:define-input delete-backup-input common-lisp:nil
                                ((backup-arn :target-type backup-arn :required
                                  common-lisp:t :member-name "BackupArn"))
                                (:shape-name "DeleteBackupInput"))

(smithy/sdk/shapes:define-output delete-backup-output common-lisp:nil
                                 ((backup-description :target-type
                                   backup-description :member-name
                                   "BackupDescription"))
                                 (:shape-name "DeleteBackupOutput"))

(smithy/sdk/shapes:define-structure delete-global-secondary-index-action
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "IndexName"))
                                    (:shape-name
                                     "DeleteGlobalSecondaryIndexAction"))

(smithy/sdk/shapes:define-structure
 delete-global-table-witness-group-member-action common-lisp:nil
 ((region-name :target-type region-name :required common-lisp:t :member-name
   "RegionName"))
 (:shape-name "DeleteGlobalTableWitnessGroupMemberAction"))

(smithy/sdk/shapes:define-input delete-item-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (key :target-type key :required common-lisp:t
                                  :member-name "Key")
                                 (expected :target-type expected-attribute-map
                                  :member-name "Expected")
                                 (conditional-operator :target-type
                                  conditional-operator :member-name
                                  "ConditionalOperator")
                                 (return-values :target-type return-value
                                  :member-name "ReturnValues")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (return-item-collection-metrics :target-type
                                  return-item-collection-metrics :member-name
                                  "ReturnItemCollectionMetrics")
                                 (condition-expression :target-type
                                  condition-expression :member-name
                                  "ConditionExpression")
                                 (expression-attribute-names :target-type
                                  expression-attribute-name-map :member-name
                                  "ExpressionAttributeNames")
                                 (expression-attribute-values :target-type
                                  expression-attribute-value-map :member-name
                                  "ExpressionAttributeValues")
                                 (return-values-on-condition-check-failure
                                  :target-type
                                  return-values-on-condition-check-failure
                                  :member-name
                                  "ReturnValuesOnConditionCheckFailure"))
                                (:shape-name "DeleteItemInput"))

(smithy/sdk/shapes:define-output delete-item-output common-lisp:nil
                                 ((attributes :target-type attribute-map
                                   :member-name "Attributes")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity")
                                  (item-collection-metrics :target-type
                                   item-collection-metrics :member-name
                                   "ItemCollectionMetrics"))
                                 (:shape-name "DeleteItemOutput"))

(smithy/sdk/shapes:define-structure delete-replica-action common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName"))
                                    (:shape-name "DeleteReplicaAction"))

(smithy/sdk/shapes:define-structure delete-replication-group-member-action
                                    common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName"))
                                    (:shape-name
                                     "DeleteReplicationGroupMemberAction"))

(smithy/sdk/shapes:define-structure delete-request common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "DeleteRequest"))

(smithy/sdk/shapes:define-input delete-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (expected-revision-id :target-type
                                  policy-revision-id :member-name
                                  "ExpectedRevisionId"))
                                (:shape-name "DeleteResourcePolicyInput"))

(smithy/sdk/shapes:define-output delete-resource-policy-output common-lisp:nil
                                 ((revision-id :target-type policy-revision-id
                                   :member-name "RevisionId"))
                                 (:shape-name "DeleteResourcePolicyOutput"))

(smithy/sdk/shapes:define-input delete-table-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName"))
                                (:shape-name "DeleteTableInput"))

(smithy/sdk/shapes:define-output delete-table-output common-lisp:nil
                                 ((table-description :target-type
                                   table-description :member-name
                                   "TableDescription"))
                                 (:shape-name "DeleteTableOutput"))

(smithy/sdk/shapes:define-type deletion-protection-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input describe-backup-input common-lisp:nil
                                ((backup-arn :target-type backup-arn :required
                                  common-lisp:t :member-name "BackupArn"))
                                (:shape-name "DescribeBackupInput"))

(smithy/sdk/shapes:define-output describe-backup-output common-lisp:nil
                                 ((backup-description :target-type
                                   backup-description :member-name
                                   "BackupDescription"))
                                 (:shape-name "DescribeBackupOutput"))

(smithy/sdk/shapes:define-input describe-continuous-backups-input
                                common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName"))
                                (:shape-name "DescribeContinuousBackupsInput"))

(smithy/sdk/shapes:define-output describe-continuous-backups-output
                                 common-lisp:nil
                                 ((continuous-backups-description :target-type
                                   continuous-backups-description :member-name
                                   "ContinuousBackupsDescription"))
                                 (:shape-name
                                  "DescribeContinuousBackupsOutput"))

(smithy/sdk/shapes:define-input describe-contributor-insights-input
                                common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (index-name :target-type index-name
                                  :member-name "IndexName"))
                                (:shape-name
                                 "DescribeContributorInsightsInput"))

(smithy/sdk/shapes:define-output describe-contributor-insights-output
                                 common-lisp:nil
                                 ((table-name :target-type table-name
                                   :member-name "TableName")
                                  (index-name :target-type index-name
                                   :member-name "IndexName")
                                  (contributor-insights-rule-list :target-type
                                   contributor-insights-rule-list :member-name
                                   "ContributorInsightsRuleList")
                                  (contributor-insights-status :target-type
                                   contributor-insights-status :member-name
                                   "ContributorInsightsStatus")
                                  (last-update-date-time :target-type
                                   last-update-date-time :member-name
                                   "LastUpdateDateTime")
                                  (failure-exception :target-type
                                   failure-exception :member-name
                                   "FailureException"))
                                 (:shape-name
                                  "DescribeContributorInsightsOutput"))

(smithy/sdk/shapes:define-input describe-endpoints-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeEndpointsRequest"))

(smithy/sdk/shapes:define-output describe-endpoints-response common-lisp:nil
                                 ((endpoints :target-type endpoints :required
                                   common-lisp:t :member-name "Endpoints"))
                                 (:shape-name "DescribeEndpointsResponse"))

(smithy/sdk/shapes:define-input describe-export-input common-lisp:nil
                                ((export-arn :target-type export-arn :required
                                  common-lisp:t :member-name "ExportArn"))
                                (:shape-name "DescribeExportInput"))

(smithy/sdk/shapes:define-output describe-export-output common-lisp:nil
                                 ((export-description :target-type
                                   export-description :member-name
                                   "ExportDescription"))
                                 (:shape-name "DescribeExportOutput"))

(smithy/sdk/shapes:define-input describe-global-table-input common-lisp:nil
                                ((global-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "GlobalTableName"))
                                (:shape-name "DescribeGlobalTableInput"))

(smithy/sdk/shapes:define-output describe-global-table-output common-lisp:nil
                                 ((global-table-description :target-type
                                   global-table-description :member-name
                                   "GlobalTableDescription"))
                                 (:shape-name "DescribeGlobalTableOutput"))

(smithy/sdk/shapes:define-input describe-global-table-settings-input
                                common-lisp:nil
                                ((global-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "GlobalTableName"))
                                (:shape-name
                                 "DescribeGlobalTableSettingsInput"))

(smithy/sdk/shapes:define-output describe-global-table-settings-output
                                 common-lisp:nil
                                 ((global-table-name :target-type table-name
                                   :member-name "GlobalTableName")
                                  (replica-settings :target-type
                                   replica-settings-description-list
                                   :member-name "ReplicaSettings"))
                                 (:shape-name
                                  "DescribeGlobalTableSettingsOutput"))

(smithy/sdk/shapes:define-input describe-import-input common-lisp:nil
                                ((import-arn :target-type import-arn :required
                                  common-lisp:t :member-name "ImportArn"))
                                (:shape-name "DescribeImportInput"))

(smithy/sdk/shapes:define-output describe-import-output common-lisp:nil
                                 ((import-table-description :target-type
                                   import-table-description :required
                                   common-lisp:t :member-name
                                   "ImportTableDescription"))
                                 (:shape-name "DescribeImportOutput"))

(smithy/sdk/shapes:define-input describe-kinesis-streaming-destination-input
                                common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName"))
                                (:shape-name
                                 "DescribeKinesisStreamingDestinationInput"))

(smithy/sdk/shapes:define-output describe-kinesis-streaming-destination-output
                                 common-lisp:nil
                                 ((table-name :target-type table-name
                                   :member-name "TableName")
                                  (kinesis-data-stream-destinations
                                   :target-type
                                   kinesis-data-stream-destinations
                                   :member-name
                                   "KinesisDataStreamDestinations"))
                                 (:shape-name
                                  "DescribeKinesisStreamingDestinationOutput"))

(smithy/sdk/shapes:define-input describe-limits-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeLimitsInput"))

(smithy/sdk/shapes:define-output describe-limits-output common-lisp:nil
                                 ((account-max-read-capacity-units :target-type
                                   positive-long-object :member-name
                                   "AccountMaxReadCapacityUnits")
                                  (account-max-write-capacity-units
                                   :target-type positive-long-object
                                   :member-name "AccountMaxWriteCapacityUnits")
                                  (table-max-read-capacity-units :target-type
                                   positive-long-object :member-name
                                   "TableMaxReadCapacityUnits")
                                  (table-max-write-capacity-units :target-type
                                   positive-long-object :member-name
                                   "TableMaxWriteCapacityUnits"))
                                 (:shape-name "DescribeLimitsOutput"))

(smithy/sdk/shapes:define-input describe-table-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName"))
                                (:shape-name "DescribeTableInput"))

(smithy/sdk/shapes:define-output describe-table-output common-lisp:nil
                                 ((table :target-type table-description
                                   :member-name "Table"))
                                 (:shape-name "DescribeTableOutput"))

(smithy/sdk/shapes:define-input describe-table-replica-auto-scaling-input
                                common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName"))
                                (:shape-name
                                 "DescribeTableReplicaAutoScalingInput"))

(smithy/sdk/shapes:define-output describe-table-replica-auto-scaling-output
                                 common-lisp:nil
                                 ((table-auto-scaling-description :target-type
                                   table-auto-scaling-description :member-name
                                   "TableAutoScalingDescription"))
                                 (:shape-name
                                  "DescribeTableReplicaAutoScalingOutput"))

(smithy/sdk/shapes:define-input describe-time-to-live-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName"))
                                (:shape-name "DescribeTimeToLiveInput"))

(smithy/sdk/shapes:define-output describe-time-to-live-output common-lisp:nil
                                 ((time-to-live-description :target-type
                                   time-to-live-description :member-name
                                   "TimeToLiveDescription"))
                                 (:shape-name "DescribeTimeToLiveOutput"))

(smithy/sdk/shapes:define-enum destination-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:active "ACTIVE")
  (:disabling "DISABLING")
  (:disabled "DISABLED")
  (:enable-failed "ENABLE_FAILED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type double-object smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error duplicate-item-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DuplicateItemException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure enable-kinesis-streaming-configuration
                                    common-lisp:nil
                                    ((approximate-creation-date-time-precision
                                      :target-type
                                      approximate-creation-date-time-precision
                                      :member-name
                                      "ApproximateCreationDateTimePrecision"))
                                    (:shape-name
                                     "EnableKinesisStreamingConfiguration"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :required
                                      common-lisp:t :member-name "Address")
                                     (cache-period-in-minutes :target-type long
                                      :required common-lisp:t :member-name
                                      "CachePeriodInMinutes"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-list endpoints :member endpoint)

(smithy/sdk/shapes:define-type error-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input execute-statement-input common-lisp:nil
                                ((statement :target-type parti-qlstatement
                                  :required common-lisp:t :member-name
                                  "Statement")
                                 (parameters :target-type
                                  prepared-statement-parameters :member-name
                                  "Parameters")
                                 (consistent-read :target-type consistent-read
                                  :member-name "ConsistentRead")
                                 (next-token :target-type parti-qlnext-token
                                  :member-name "NextToken")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit")
                                 (return-values-on-condition-check-failure
                                  :target-type
                                  return-values-on-condition-check-failure
                                  :member-name
                                  "ReturnValuesOnConditionCheckFailure"))
                                (:shape-name "ExecuteStatementInput"))

(smithy/sdk/shapes:define-output execute-statement-output common-lisp:nil
                                 ((items :target-type item-list :member-name
                                   "Items")
                                  (next-token :target-type parti-qlnext-token
                                   :member-name "NextToken")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity")
                                  (last-evaluated-key :target-type key
                                   :member-name "LastEvaluatedKey"))
                                 (:shape-name "ExecuteStatementOutput"))

(smithy/sdk/shapes:define-input execute-transaction-input common-lisp:nil
                                ((transact-statements :target-type
                                  parameterized-statements :required
                                  common-lisp:t :member-name
                                  "TransactStatements")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity"))
                                (:shape-name "ExecuteTransactionInput"))

(smithy/sdk/shapes:define-output execute-transaction-output common-lisp:nil
                                 ((responses :target-type item-response-list
                                   :member-name "Responses")
                                  (consumed-capacity :target-type
                                   consumed-capacity-multiple :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "ExecuteTransactionOutput"))

(smithy/sdk/shapes:define-map expected-attribute-map :key attribute-name :value
                              expected-attribute-value)

(smithy/sdk/shapes:define-structure expected-attribute-value common-lisp:nil
                                    ((value :target-type attribute-value
                                      :member-name "Value")
                                     (exists :target-type boolean-object
                                      :member-name "Exists")
                                     (comparison-operator :target-type
                                      comparison-operator :member-name
                                      "ComparisonOperator")
                                     (attribute-value-list :target-type
                                      attribute-value-list :member-name
                                      "AttributeValueList"))
                                    (:shape-name "ExpectedAttributeValue"))

(smithy/sdk/shapes:define-type export-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error export-conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExportConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure export-description common-lisp:nil
                                    ((export-arn :target-type export-arn
                                      :member-name "ExportArn")
                                     (export-status :target-type export-status
                                      :member-name "ExportStatus")
                                     (start-time :target-type export-start-time
                                      :member-name "StartTime")
                                     (end-time :target-type export-end-time
                                      :member-name "EndTime")
                                     (export-manifest :target-type
                                      export-manifest :member-name
                                      "ExportManifest")
                                     (table-arn :target-type table-arn
                                      :member-name "TableArn")
                                     (table-id :target-type table-id
                                      :member-name "TableId")
                                     (export-time :target-type export-time
                                      :member-name "ExportTime")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (s3bucket :target-type s3bucket
                                      :member-name "S3Bucket")
                                     (s3bucket-owner :target-type
                                      s3bucket-owner :member-name
                                      "S3BucketOwner")
                                     (s3prefix :target-type s3prefix
                                      :member-name "S3Prefix")
                                     (s3sse-algorithm :target-type
                                      s3sse-algorithm :member-name
                                      "S3SseAlgorithm")
                                     (s3sse-kms-key-id :target-type
                                      s3sse-kms-key-id :member-name
                                      "S3SseKmsKeyId")
                                     (failure-code :target-type failure-code
                                      :member-name "FailureCode")
                                     (failure-message :target-type
                                      failure-message :member-name
                                      "FailureMessage")
                                     (export-format :target-type export-format
                                      :member-name "ExportFormat")
                                     (billed-size-bytes :target-type
                                      billed-size-bytes :member-name
                                      "BilledSizeBytes")
                                     (item-count :target-type item-count
                                      :member-name "ItemCount")
                                     (export-type :target-type export-type
                                      :member-name "ExportType")
                                     (incremental-export-specification
                                      :target-type
                                      incremental-export-specification
                                      :member-name
                                      "IncrementalExportSpecification"))
                                    (:shape-name "ExportDescription"))

(smithy/sdk/shapes:define-type export-end-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum export-format
    common-lisp:nil
  (:dynamodb-json "DYNAMODB_JSON")
  (:ion "ION"))

(smithy/sdk/shapes:define-type export-from-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type export-manifest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error export-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExportNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type export-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum export-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list export-summaries :member export-summary)

(smithy/sdk/shapes:define-structure export-summary common-lisp:nil
                                    ((export-arn :target-type export-arn
                                      :member-name "ExportArn")
                                     (export-status :target-type export-status
                                      :member-name "ExportStatus")
                                     (export-type :target-type export-type
                                      :member-name "ExportType"))
                                    (:shape-name "ExportSummary"))

(smithy/sdk/shapes:define-input export-table-to-point-in-time-input
                                common-lisp:nil
                                ((table-arn :target-type table-arn :required
                                  common-lisp:t :member-name "TableArn")
                                 (export-time :target-type export-time
                                  :member-name "ExportTime")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (s3bucket :target-type s3bucket :required
                                  common-lisp:t :member-name "S3Bucket")
                                 (s3bucket-owner :target-type s3bucket-owner
                                  :member-name "S3BucketOwner")
                                 (s3prefix :target-type s3prefix :member-name
                                  "S3Prefix")
                                 (s3sse-algorithm :target-type s3sse-algorithm
                                  :member-name "S3SseAlgorithm")
                                 (s3sse-kms-key-id :target-type
                                  s3sse-kms-key-id :member-name
                                  "S3SseKmsKeyId")
                                 (export-format :target-type export-format
                                  :member-name "ExportFormat")
                                 (export-type :target-type export-type
                                  :member-name "ExportType")
                                 (incremental-export-specification :target-type
                                  incremental-export-specification :member-name
                                  "IncrementalExportSpecification"))
                                (:shape-name "ExportTableToPointInTimeInput"))

(smithy/sdk/shapes:define-output export-table-to-point-in-time-output
                                 common-lisp:nil
                                 ((export-description :target-type
                                   export-description :member-name
                                   "ExportDescription"))
                                 (:shape-name "ExportTableToPointInTimeOutput"))

(smithy/sdk/shapes:define-type export-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type export-to-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum export-type
    common-lisp:nil
  (:full-export "FULL_EXPORT")
  (:incremental-export "INCREMENTAL_EXPORT"))

(smithy/sdk/shapes:define-enum export-view-type
    common-lisp:nil
  (:new-image "NEW_IMAGE")
  (:new-and-old-images "NEW_AND_OLD_IMAGES"))

(smithy/sdk/shapes:define-map expression-attribute-name-map :key
                              expression-attribute-name-variable :value
                              attribute-name)

(smithy/sdk/shapes:define-type expression-attribute-name-variable
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map expression-attribute-value-map :key
                              expression-attribute-value-variable :value
                              attribute-value)

(smithy/sdk/shapes:define-type expression-attribute-value-variable
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failure-exception common-lisp:nil
                                    ((exception-name :target-type
                                      exception-name :member-name
                                      "ExceptionName")
                                     (exception-description :target-type
                                      exception-description :member-name
                                      "ExceptionDescription"))
                                    (:shape-name "FailureException"))

(smithy/sdk/shapes:define-type failure-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map filter-condition-map :key attribute-name :value
                              condition)

(smithy/sdk/shapes:define-structure get common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (table-name :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (projection-expression :target-type
                                      projection-expression :member-name
                                      "ProjectionExpression")
                                     (expression-attribute-names :target-type
                                      expression-attribute-name-map
                                      :member-name "ExpressionAttributeNames"))
                                    (:shape-name "Get"))

(smithy/sdk/shapes:define-input get-item-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (key :target-type key :required common-lisp:t
                                  :member-name "Key")
                                 (attributes-to-get :target-type
                                  attribute-name-list :member-name
                                  "AttributesToGet")
                                 (consistent-read :target-type consistent-read
                                  :member-name "ConsistentRead")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (projection-expression :target-type
                                  projection-expression :member-name
                                  "ProjectionExpression")
                                 (expression-attribute-names :target-type
                                  expression-attribute-name-map :member-name
                                  "ExpressionAttributeNames"))
                                (:shape-name "GetItemInput"))

(smithy/sdk/shapes:define-output get-item-output common-lisp:nil
                                 ((item :target-type attribute-map :member-name
                                   "Item")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "GetItemOutput"))

(smithy/sdk/shapes:define-input get-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetResourcePolicyInput"))

(smithy/sdk/shapes:define-output get-resource-policy-output common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "Policy")
                                  (revision-id :target-type policy-revision-id
                                   :member-name "RevisionId"))
                                 (:shape-name "GetResourcePolicyOutput"))

(smithy/sdk/shapes:define-structure global-secondary-index common-lisp:nil
                                    ((index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (key-schema :target-type key-schema
                                      :required common-lisp:t :member-name
                                      "KeySchema")
                                     (projection :target-type projection
                                      :required common-lisp:t :member-name
                                      "Projection")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (warm-throughput :target-type
                                      warm-throughput :member-name
                                      "WarmThroughput"))
                                    (:shape-name "GlobalSecondaryIndex"))

(smithy/sdk/shapes:define-structure global-secondary-index-auto-scaling-update
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :member-name "IndexName")
                                     (provisioned-write-capacity-auto-scaling-update
                                      :target-type auto-scaling-settings-update
                                      :member-name
                                      "ProvisionedWriteCapacityAutoScalingUpdate"))
                                    (:shape-name
                                     "GlobalSecondaryIndexAutoScalingUpdate"))

(smithy/sdk/shapes:define-list global-secondary-index-auto-scaling-update-list
                               :member
                               global-secondary-index-auto-scaling-update)

(smithy/sdk/shapes:define-structure global-secondary-index-description
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :member-name "IndexName")
                                     (key-schema :target-type key-schema
                                      :member-name "KeySchema")
                                     (projection :target-type projection
                                      :member-name "Projection")
                                     (index-status :target-type index-status
                                      :member-name "IndexStatus")
                                     (backfilling :target-type backfilling
                                      :member-name "Backfilling")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput-description
                                      :member-name "ProvisionedThroughput")
                                     (index-size-bytes :target-type long-object
                                      :member-name "IndexSizeBytes")
                                     (item-count :target-type long-object
                                      :member-name "ItemCount")
                                     (index-arn :target-type string
                                      :member-name "IndexArn")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (warm-throughput :target-type
                                      global-secondary-index-warm-throughput-description
                                      :member-name "WarmThroughput"))
                                    (:shape-name
                                     "GlobalSecondaryIndexDescription"))

(smithy/sdk/shapes:define-list global-secondary-index-description-list :member
                               global-secondary-index-description)

(smithy/sdk/shapes:define-structure global-secondary-index-info common-lisp:nil
                                    ((index-name :target-type index-name
                                      :member-name "IndexName")
                                     (key-schema :target-type key-schema
                                      :member-name "KeySchema")
                                     (projection :target-type projection
                                      :member-name "Projection")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput"))
                                    (:shape-name "GlobalSecondaryIndexInfo"))

(smithy/sdk/shapes:define-list global-secondary-index-list :member
                               global-secondary-index)

(smithy/sdk/shapes:define-structure global-secondary-index-update
                                    common-lisp:nil
                                    ((update :target-type
                                      update-global-secondary-index-action
                                      :member-name "Update")
                                     (create :target-type
                                      create-global-secondary-index-action
                                      :member-name "Create")
                                     (delete :target-type
                                      delete-global-secondary-index-action
                                      :member-name "Delete"))
                                    (:shape-name "GlobalSecondaryIndexUpdate"))

(smithy/sdk/shapes:define-list global-secondary-index-update-list :member
                               global-secondary-index-update)

(smithy/sdk/shapes:define-structure
 global-secondary-index-warm-throughput-description common-lisp:nil
 ((read-units-per-second :target-type positive-long-object :member-name
   "ReadUnitsPerSecond")
  (write-units-per-second :target-type positive-long-object :member-name
   "WriteUnitsPerSecond")
  (status :target-type index-status :member-name "Status"))
 (:shape-name "GlobalSecondaryIndexWarmThroughputDescription"))

(smithy/sdk/shapes:define-list global-secondary-indexes :member
                               global-secondary-index-info)

(smithy/sdk/shapes:define-structure global-table common-lisp:nil
                                    ((global-table-name :target-type table-name
                                      :member-name "GlobalTableName")
                                     (replication-group :target-type
                                      replica-list :member-name
                                      "ReplicationGroup"))
                                    (:shape-name "GlobalTable"))

(smithy/sdk/shapes:define-error global-table-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "GlobalTableAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type global-table-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure global-table-description common-lisp:nil
                                    ((replication-group :target-type
                                      replica-description-list :member-name
                                      "ReplicationGroup")
                                     (global-table-arn :target-type
                                      global-table-arn-string :member-name
                                      "GlobalTableArn")
                                     (creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (global-table-status :target-type
                                      global-table-status :member-name
                                      "GlobalTableStatus")
                                     (global-table-name :target-type table-name
                                      :member-name "GlobalTableName"))
                                    (:shape-name "GlobalTableDescription"))

(smithy/sdk/shapes:define-structure
 global-table-global-secondary-index-settings-update common-lisp:nil
 ((index-name :target-type index-name :required common-lisp:t :member-name
   "IndexName")
  (provisioned-write-capacity-units :target-type positive-long-object
   :member-name "ProvisionedWriteCapacityUnits")
  (provisioned-write-capacity-auto-scaling-settings-update :target-type
   auto-scaling-settings-update :member-name
   "ProvisionedWriteCapacityAutoScalingSettingsUpdate"))
 (:shape-name "GlobalTableGlobalSecondaryIndexSettingsUpdate"))

(smithy/sdk/shapes:define-list
 global-table-global-secondary-index-settings-update-list :member
 global-table-global-secondary-index-settings-update)

(smithy/sdk/shapes:define-list global-table-list :member global-table)

(smithy/sdk/shapes:define-error global-table-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "GlobalTableNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum global-table-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-structure global-table-witness-description
                                    common-lisp:nil
                                    ((region-name :target-type region-name
                                      :member-name "RegionName")
                                     (witness-status :target-type
                                      witness-status :member-name
                                      "WitnessStatus"))
                                    (:shape-name
                                     "GlobalTableWitnessDescription"))

(smithy/sdk/shapes:define-list global-table-witness-description-list :member
                               global-table-witness-description)

(smithy/sdk/shapes:define-structure global-table-witness-group-update
                                    common-lisp:nil
                                    ((create :target-type
                                      create-global-table-witness-group-member-action
                                      :member-name "Create")
                                     (delete :target-type
                                      delete-global-table-witness-group-member-action
                                      :member-name "Delete"))
                                    (:shape-name
                                     "GlobalTableWitnessGroupUpdate"))

(smithy/sdk/shapes:define-list global-table-witness-group-update-list :member
                               global-table-witness-group-update)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type import-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error import-conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ImportConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type import-end-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type import-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error import-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ImportNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type import-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum import-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure import-summary common-lisp:nil
                                    ((import-arn :target-type import-arn
                                      :member-name "ImportArn")
                                     (import-status :target-type import-status
                                      :member-name "ImportStatus")
                                     (table-arn :target-type table-arn
                                      :member-name "TableArn")
                                     (s3bucket-source :target-type
                                      s3bucket-source :member-name
                                      "S3BucketSource")
                                     (cloud-watch-log-group-arn :target-type
                                      cloud-watch-log-group-arn :member-name
                                      "CloudWatchLogGroupArn")
                                     (input-format :target-type input-format
                                      :member-name "InputFormat")
                                     (start-time :target-type import-start-time
                                      :member-name "StartTime")
                                     (end-time :target-type import-end-time
                                      :member-name "EndTime"))
                                    (:shape-name "ImportSummary"))

(smithy/sdk/shapes:define-list import-summary-list :member import-summary)

(smithy/sdk/shapes:define-structure import-table-description common-lisp:nil
                                    ((import-arn :target-type import-arn
                                      :member-name "ImportArn")
                                     (import-status :target-type import-status
                                      :member-name "ImportStatus")
                                     (table-arn :target-type table-arn
                                      :member-name "TableArn")
                                     (table-id :target-type table-id
                                      :member-name "TableId")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (s3bucket-source :target-type
                                      s3bucket-source :member-name
                                      "S3BucketSource")
                                     (error-count :target-type error-count
                                      :member-name "ErrorCount")
                                     (cloud-watch-log-group-arn :target-type
                                      cloud-watch-log-group-arn :member-name
                                      "CloudWatchLogGroupArn")
                                     (input-format :target-type input-format
                                      :member-name "InputFormat")
                                     (input-format-options :target-type
                                      input-format-options :member-name
                                      "InputFormatOptions")
                                     (input-compression-type :target-type
                                      input-compression-type :member-name
                                      "InputCompressionType")
                                     (table-creation-parameters :target-type
                                      table-creation-parameters :member-name
                                      "TableCreationParameters")
                                     (start-time :target-type import-start-time
                                      :member-name "StartTime")
                                     (end-time :target-type import-end-time
                                      :member-name "EndTime")
                                     (processed-size-bytes :target-type
                                      long-object :member-name
                                      "ProcessedSizeBytes")
                                     (processed-item-count :target-type
                                      processed-item-count :member-name
                                      "ProcessedItemCount")
                                     (imported-item-count :target-type
                                      imported-item-count :member-name
                                      "ImportedItemCount")
                                     (failure-code :target-type failure-code
                                      :member-name "FailureCode")
                                     (failure-message :target-type
                                      failure-message :member-name
                                      "FailureMessage"))
                                    (:shape-name "ImportTableDescription"))

(smithy/sdk/shapes:define-input import-table-input common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (s3bucket-source :target-type s3bucket-source
                                  :required common-lisp:t :member-name
                                  "S3BucketSource")
                                 (input-format :target-type input-format
                                  :required common-lisp:t :member-name
                                  "InputFormat")
                                 (input-format-options :target-type
                                  input-format-options :member-name
                                  "InputFormatOptions")
                                 (input-compression-type :target-type
                                  input-compression-type :member-name
                                  "InputCompressionType")
                                 (table-creation-parameters :target-type
                                  table-creation-parameters :required
                                  common-lisp:t :member-name
                                  "TableCreationParameters"))
                                (:shape-name "ImportTableInput"))

(smithy/sdk/shapes:define-output import-table-output common-lisp:nil
                                 ((import-table-description :target-type
                                   import-table-description :required
                                   common-lisp:t :member-name
                                   "ImportTableDescription"))
                                 (:shape-name "ImportTableOutput"))

(smithy/sdk/shapes:define-type imported-item-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure incremental-export-specification
                                    common-lisp:nil
                                    ((export-from-time :target-type
                                      export-from-time :member-name
                                      "ExportFromTime")
                                     (export-to-time :target-type
                                      export-to-time :member-name
                                      "ExportToTime")
                                     (export-view-type :target-type
                                      export-view-type :member-name
                                      "ExportViewType"))
                                    (:shape-name
                                     "IncrementalExportSpecification"))

(smithy/sdk/shapes:define-type index-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error index-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "IndexNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum index-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-enum input-compression-type
    common-lisp:nil
  (:gzip "GZIP")
  (:zstd "ZSTD")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum input-format
    common-lisp:nil
  (:dynamodb-json "DYNAMODB_JSON")
  (:ion "ION")
  (:csv "CSV"))

(smithy/sdk/shapes:define-structure input-format-options common-lisp:nil
                                    ((csv :target-type csv-options :member-name
                                      "Csv"))
                                    (:shape-name "InputFormatOptions"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-object smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-endpoint-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidEndpointException")
                                (:error-code 421))

(smithy/sdk/shapes:define-error invalid-export-time-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidExportTimeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-restore-time-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRestoreTimeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map item-collection-key-attribute-map :key
                              attribute-name :value attribute-value)

(smithy/sdk/shapes:define-structure item-collection-metrics common-lisp:nil
                                    ((item-collection-key :target-type
                                      item-collection-key-attribute-map
                                      :member-name "ItemCollectionKey")
                                     (size-estimate-range-gb :target-type
                                      item-collection-size-estimate-range
                                      :member-name "SizeEstimateRangeGB"))
                                    (:shape-name "ItemCollectionMetrics"))

(smithy/sdk/shapes:define-list item-collection-metrics-multiple :member
                               item-collection-metrics)

(smithy/sdk/shapes:define-map item-collection-metrics-per-table :key table-arn
                              :value item-collection-metrics-multiple)

(smithy/sdk/shapes:define-type item-collection-size-estimate-bound
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list item-collection-size-estimate-range :member
                               item-collection-size-estimate-bound)

(smithy/sdk/shapes:define-error item-collection-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ItemCollectionSizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type item-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list item-list :member attribute-map)

(smithy/sdk/shapes:define-structure item-response common-lisp:nil
                                    ((item :target-type attribute-map
                                      :member-name "Item"))
                                    (:shape-name "ItemResponse"))

(smithy/sdk/shapes:define-list item-response-list :member item-response)

(smithy/sdk/shapes:define-type kmsmaster-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kmsmaster-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map key :key attribute-name :value attribute-value)

(smithy/sdk/shapes:define-map key-conditions :key attribute-name :value
                              condition)

(smithy/sdk/shapes:define-type key-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list key-list :member key)

(smithy/sdk/shapes:define-list key-schema :member key-schema-element)

(smithy/sdk/shapes:define-type key-schema-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-schema-element common-lisp:nil
                                    ((attribute-name :target-type
                                      key-schema-attribute-name :required
                                      common-lisp:t :member-name
                                      "AttributeName")
                                     (key-type :target-type key-type :required
                                      common-lisp:t :member-name "KeyType"))
                                    (:shape-name "KeySchemaElement"))

(smithy/sdk/shapes:define-enum key-type
    common-lisp:nil
  (:hash "HASH")
  (:range "RANGE"))

(smithy/sdk/shapes:define-structure keys-and-attributes common-lisp:nil
                                    ((keys :target-type key-list :required
                                      common-lisp:t :member-name "Keys")
                                     (attributes-to-get :target-type
                                      attribute-name-list :member-name
                                      "AttributesToGet")
                                     (consistent-read :target-type
                                      consistent-read :member-name
                                      "ConsistentRead")
                                     (projection-expression :target-type
                                      projection-expression :member-name
                                      "ProjectionExpression")
                                     (expression-attribute-names :target-type
                                      expression-attribute-name-map
                                      :member-name "ExpressionAttributeNames"))
                                    (:shape-name "KeysAndAttributes"))

(smithy/sdk/shapes:define-structure kinesis-data-stream-destination
                                    common-lisp:nil
                                    ((stream-arn :target-type stream-arn
                                      :member-name "StreamArn")
                                     (destination-status :target-type
                                      destination-status :member-name
                                      "DestinationStatus")
                                     (destination-status-description
                                      :target-type string :member-name
                                      "DestinationStatusDescription")
                                     (approximate-creation-date-time-precision
                                      :target-type
                                      approximate-creation-date-time-precision
                                      :member-name
                                      "ApproximateCreationDateTimePrecision"))
                                    (:shape-name
                                     "KinesisDataStreamDestination"))

(smithy/sdk/shapes:define-list kinesis-data-stream-destinations :member
                               kinesis-data-stream-destination)

(smithy/sdk/shapes:define-structure kinesis-streaming-destination-input
                                    common-lisp:nil
                                    ((table-name :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (stream-arn :target-type stream-arn
                                      :required common-lisp:t :member-name
                                      "StreamArn")
                                     (enable-kinesis-streaming-configuration
                                      :target-type
                                      enable-kinesis-streaming-configuration
                                      :member-name
                                      "EnableKinesisStreamingConfiguration"))
                                    (:shape-name
                                     "KinesisStreamingDestinationInput"))

(smithy/sdk/shapes:define-structure kinesis-streaming-destination-output
                                    common-lisp:nil
                                    ((table-name :target-type table-name
                                      :member-name "TableName")
                                     (stream-arn :target-type stream-arn
                                      :member-name "StreamArn")
                                     (destination-status :target-type
                                      destination-status :member-name
                                      "DestinationStatus")
                                     (enable-kinesis-streaming-configuration
                                      :target-type
                                      enable-kinesis-streaming-configuration
                                      :member-name
                                      "EnableKinesisStreamingConfiguration"))
                                    (:shape-name
                                     "KinesisStreamingDestinationOutput"))

(smithy/sdk/shapes:define-type last-update-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list list-attribute-value :member attribute-value)

(smithy/sdk/shapes:define-input list-backups-input common-lisp:nil
                                ((table-name :target-type table-arn
                                  :member-name "TableName")
                                 (limit :target-type backups-input-limit
                                  :member-name "Limit")
                                 (time-range-lower-bound :target-type
                                  time-range-lower-bound :member-name
                                  "TimeRangeLowerBound")
                                 (time-range-upper-bound :target-type
                                  time-range-upper-bound :member-name
                                  "TimeRangeUpperBound")
                                 (exclusive-start-backup-arn :target-type
                                  backup-arn :member-name
                                  "ExclusiveStartBackupArn")
                                 (backup-type :target-type backup-type-filter
                                  :member-name "BackupType"))
                                (:shape-name "ListBackupsInput"))

(smithy/sdk/shapes:define-output list-backups-output common-lisp:nil
                                 ((backup-summaries :target-type
                                   backup-summaries :member-name
                                   "BackupSummaries")
                                  (last-evaluated-backup-arn :target-type
                                   backup-arn :member-name
                                   "LastEvaluatedBackupArn"))
                                 (:shape-name "ListBackupsOutput"))

(smithy/sdk/shapes:define-input list-contributor-insights-input common-lisp:nil
                                ((table-name :target-type table-arn
                                  :member-name "TableName")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-contributor-insights-limit :member-name
                                  "MaxResults"))
                                (:shape-name "ListContributorInsightsInput"))

(smithy/sdk/shapes:define-type list-contributor-insights-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-contributor-insights-output
                                 common-lisp:nil
                                 ((contributor-insights-summaries :target-type
                                   contributor-insights-summaries :member-name
                                   "ContributorInsightsSummaries")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListContributorInsightsOutput"))

(smithy/sdk/shapes:define-input list-exports-input common-lisp:nil
                                ((table-arn :target-type table-arn :member-name
                                  "TableArn")
                                 (max-results :target-type
                                  list-exports-max-limit :member-name
                                  "MaxResults")
                                 (next-token :target-type export-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListExportsInput"))

(smithy/sdk/shapes:define-type list-exports-max-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-exports-output common-lisp:nil
                                 ((export-summaries :target-type
                                   export-summaries :member-name
                                   "ExportSummaries")
                                  (next-token :target-type export-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExportsOutput"))

(smithy/sdk/shapes:define-input list-global-tables-input common-lisp:nil
                                ((exclusive-start-global-table-name
                                  :target-type table-name :member-name
                                  "ExclusiveStartGlobalTableName")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit")
                                 (region-name :target-type region-name
                                  :member-name "RegionName"))
                                (:shape-name "ListGlobalTablesInput"))

(smithy/sdk/shapes:define-output list-global-tables-output common-lisp:nil
                                 ((global-tables :target-type global-table-list
                                   :member-name "GlobalTables")
                                  (last-evaluated-global-table-name
                                   :target-type table-name :member-name
                                   "LastEvaluatedGlobalTableName"))
                                 (:shape-name "ListGlobalTablesOutput"))

(smithy/sdk/shapes:define-input list-imports-input common-lisp:nil
                                ((table-arn :target-type table-arn :member-name
                                  "TableArn")
                                 (page-size :target-type list-imports-max-limit
                                  :member-name "PageSize")
                                 (next-token :target-type import-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListImportsInput"))

(smithy/sdk/shapes:define-type list-imports-max-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-imports-output common-lisp:nil
                                 ((import-summary-list :target-type
                                   import-summary-list :member-name
                                   "ImportSummaryList")
                                  (next-token :target-type import-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListImportsOutput"))

(smithy/sdk/shapes:define-input list-tables-input common-lisp:nil
                                ((exclusive-start-table-name :target-type
                                  table-name :member-name
                                  "ExclusiveStartTableName")
                                 (limit :target-type list-tables-input-limit
                                  :member-name "Limit"))
                                (:shape-name "ListTablesInput"))

(smithy/sdk/shapes:define-type list-tables-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-tables-output common-lisp:nil
                                 ((table-names :target-type table-name-list
                                   :member-name "TableNames")
                                  (last-evaluated-table-name :target-type
                                   table-name :member-name
                                   "LastEvaluatedTableName"))
                                 (:shape-name "ListTablesOutput"))

(smithy/sdk/shapes:define-input list-tags-of-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsOfResourceInput"))

(smithy/sdk/shapes:define-output list-tags-of-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsOfResourceOutput"))

(smithy/sdk/shapes:define-structure local-secondary-index common-lisp:nil
                                    ((index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (key-schema :target-type key-schema
                                      :required common-lisp:t :member-name
                                      "KeySchema")
                                     (projection :target-type projection
                                      :required common-lisp:t :member-name
                                      "Projection"))
                                    (:shape-name "LocalSecondaryIndex"))

(smithy/sdk/shapes:define-structure local-secondary-index-description
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :member-name "IndexName")
                                     (key-schema :target-type key-schema
                                      :member-name "KeySchema")
                                     (projection :target-type projection
                                      :member-name "Projection")
                                     (index-size-bytes :target-type long-object
                                      :member-name "IndexSizeBytes")
                                     (item-count :target-type long-object
                                      :member-name "ItemCount")
                                     (index-arn :target-type string
                                      :member-name "IndexArn"))
                                    (:shape-name
                                     "LocalSecondaryIndexDescription"))

(smithy/sdk/shapes:define-list local-secondary-index-description-list :member
                               local-secondary-index-description)

(smithy/sdk/shapes:define-structure local-secondary-index-info common-lisp:nil
                                    ((index-name :target-type index-name
                                      :member-name "IndexName")
                                     (key-schema :target-type key-schema
                                      :member-name "KeySchema")
                                     (projection :target-type projection
                                      :member-name "Projection"))
                                    (:shape-name "LocalSecondaryIndexInfo"))

(smithy/sdk/shapes:define-list local-secondary-index-list :member
                               local-secondary-index)

(smithy/sdk/shapes:define-list local-secondary-indexes :member
                               local-secondary-index-info)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-object smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map map-attribute-value :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-enum multi-region-consistency
    common-lisp:nil
  (:eventual "EVENTUAL")
  (:strong "STRONG"))

(smithy/sdk/shapes:define-type next-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-key-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-key-attribute-name-list :member
                               non-key-attribute-name)

(smithy/sdk/shapes:define-type non-negative-long-object
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type null-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type number-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list number-set-attribute-value :member
                               number-attribute-value)

(smithy/sdk/shapes:define-structure on-demand-throughput common-lisp:nil
                                    ((max-read-request-units :target-type
                                      long-object :member-name
                                      "MaxReadRequestUnits")
                                     (max-write-request-units :target-type
                                      long-object :member-name
                                      "MaxWriteRequestUnits"))
                                    (:shape-name "OnDemandThroughput"))

(smithy/sdk/shapes:define-structure on-demand-throughput-override
                                    common-lisp:nil
                                    ((max-read-request-units :target-type
                                      long-object :member-name
                                      "MaxReadRequestUnits"))
                                    (:shape-name "OnDemandThroughputOverride"))

(smithy/sdk/shapes:define-structure parameterized-statement common-lisp:nil
                                    ((statement :target-type parti-qlstatement
                                      :required common-lisp:t :member-name
                                      "Statement")
                                     (parameters :target-type
                                      prepared-statement-parameters
                                      :member-name "Parameters")
                                     (return-values-on-condition-check-failure
                                      :target-type
                                      return-values-on-condition-check-failure
                                      :member-name
                                      "ReturnValuesOnConditionCheckFailure"))
                                    (:shape-name "ParameterizedStatement"))

(smithy/sdk/shapes:define-list parameterized-statements :member
                               parameterized-statement)

(smithy/sdk/shapes:define-list parti-qlbatch-request :member
                               batch-statement-request)

(smithy/sdk/shapes:define-list parti-qlbatch-response :member
                               batch-statement-response)

(smithy/sdk/shapes:define-type parti-qlnext-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parti-qlstatement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure point-in-time-recovery-description
                                    common-lisp:nil
                                    ((point-in-time-recovery-status
                                      :target-type
                                      point-in-time-recovery-status
                                      :member-name "PointInTimeRecoveryStatus")
                                     (recovery-period-in-days :target-type
                                      recovery-period-in-days :member-name
                                      "RecoveryPeriodInDays")
                                     (earliest-restorable-date-time
                                      :target-type date :member-name
                                      "EarliestRestorableDateTime")
                                     (latest-restorable-date-time :target-type
                                      date :member-name
                                      "LatestRestorableDateTime"))
                                    (:shape-name
                                     "PointInTimeRecoveryDescription"))

(smithy/sdk/shapes:define-structure point-in-time-recovery-specification
                                    common-lisp:nil
                                    ((point-in-time-recovery-enabled
                                      :target-type boolean-object :required
                                      common-lisp:t :member-name
                                      "PointInTimeRecoveryEnabled")
                                     (recovery-period-in-days :target-type
                                      recovery-period-in-days :member-name
                                      "RecoveryPeriodInDays"))
                                    (:shape-name
                                     "PointInTimeRecoverySpecification"))

(smithy/sdk/shapes:define-enum point-in-time-recovery-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error point-in-time-recovery-unavailable-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "PointInTimeRecoveryUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error policy-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type positive-integer-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-long-object
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list prepared-statement-parameters :member
                               attribute-value)

(smithy/sdk/shapes:define-type processed-item-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure projection common-lisp:nil
                                    ((projection-type :target-type
                                      projection-type :member-name
                                      "ProjectionType")
                                     (non-key-attributes :target-type
                                      non-key-attribute-name-list :member-name
                                      "NonKeyAttributes"))
                                    (:shape-name "Projection"))

(smithy/sdk/shapes:define-type projection-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum projection-type
    common-lisp:nil
  (:all "ALL")
  (:keys-only "KEYS_ONLY")
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-structure provisioned-throughput common-lisp:nil
                                    ((read-capacity-units :target-type
                                      positive-long-object :required
                                      common-lisp:t :member-name
                                      "ReadCapacityUnits")
                                     (write-capacity-units :target-type
                                      positive-long-object :required
                                      common-lisp:t :member-name
                                      "WriteCapacityUnits"))
                                    (:shape-name "ProvisionedThroughput"))

(smithy/sdk/shapes:define-structure provisioned-throughput-description
                                    common-lisp:nil
                                    ((last-increase-date-time :target-type date
                                      :member-name "LastIncreaseDateTime")
                                     (last-decrease-date-time :target-type date
                                      :member-name "LastDecreaseDateTime")
                                     (number-of-decreases-today :target-type
                                      positive-long-object :member-name
                                      "NumberOfDecreasesToday")
                                     (read-capacity-units :target-type
                                      non-negative-long-object :member-name
                                      "ReadCapacityUnits")
                                     (write-capacity-units :target-type
                                      non-negative-long-object :member-name
                                      "WriteCapacityUnits"))
                                    (:shape-name
                                     "ProvisionedThroughputDescription"))

(smithy/sdk/shapes:define-error provisioned-throughput-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ProvisionedThroughputExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure provisioned-throughput-override
                                    common-lisp:nil
                                    ((read-capacity-units :target-type
                                      positive-long-object :member-name
                                      "ReadCapacityUnits"))
                                    (:shape-name
                                     "ProvisionedThroughputOverride"))

(smithy/sdk/shapes:define-structure put common-lisp:nil
                                    ((item :target-type
                                      put-item-input-attribute-map :required
                                      common-lisp:t :member-name "Item")
                                     (table-name :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (condition-expression :target-type
                                      condition-expression :member-name
                                      "ConditionExpression")
                                     (expression-attribute-names :target-type
                                      expression-attribute-name-map
                                      :member-name "ExpressionAttributeNames")
                                     (expression-attribute-values :target-type
                                      expression-attribute-value-map
                                      :member-name "ExpressionAttributeValues")
                                     (return-values-on-condition-check-failure
                                      :target-type
                                      return-values-on-condition-check-failure
                                      :member-name
                                      "ReturnValuesOnConditionCheckFailure"))
                                    (:shape-name "Put"))

(smithy/sdk/shapes:define-input put-item-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (item :target-type
                                  put-item-input-attribute-map :required
                                  common-lisp:t :member-name "Item")
                                 (expected :target-type expected-attribute-map
                                  :member-name "Expected")
                                 (return-values :target-type return-value
                                  :member-name "ReturnValues")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (return-item-collection-metrics :target-type
                                  return-item-collection-metrics :member-name
                                  "ReturnItemCollectionMetrics")
                                 (conditional-operator :target-type
                                  conditional-operator :member-name
                                  "ConditionalOperator")
                                 (condition-expression :target-type
                                  condition-expression :member-name
                                  "ConditionExpression")
                                 (expression-attribute-names :target-type
                                  expression-attribute-name-map :member-name
                                  "ExpressionAttributeNames")
                                 (expression-attribute-values :target-type
                                  expression-attribute-value-map :member-name
                                  "ExpressionAttributeValues")
                                 (return-values-on-condition-check-failure
                                  :target-type
                                  return-values-on-condition-check-failure
                                  :member-name
                                  "ReturnValuesOnConditionCheckFailure"))
                                (:shape-name "PutItemInput"))

(smithy/sdk/shapes:define-map put-item-input-attribute-map :key attribute-name
                              :value attribute-value)

(smithy/sdk/shapes:define-output put-item-output common-lisp:nil
                                 ((attributes :target-type attribute-map
                                   :member-name "Attributes")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity")
                                  (item-collection-metrics :target-type
                                   item-collection-metrics :member-name
                                   "ItemCollectionMetrics"))
                                 (:shape-name "PutItemOutput"))

(smithy/sdk/shapes:define-structure put-request common-lisp:nil
                                    ((item :target-type
                                      put-item-input-attribute-map :required
                                      common-lisp:t :member-name "Item"))
                                    (:shape-name "PutRequest"))

(smithy/sdk/shapes:define-input put-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy :target-type resource-policy :required
                                  common-lisp:t :member-name "Policy")
                                 (expected-revision-id :target-type
                                  policy-revision-id :member-name
                                  "ExpectedRevisionId")
                                 (confirm-remove-self-resource-access
                                  :target-type
                                  confirm-remove-self-resource-access
                                  :member-name
                                  "ConfirmRemoveSelfResourceAccess"
                                  :http-header
                                  "x-amz-confirm-remove-self-resource-access"))
                                (:shape-name "PutResourcePolicyInput"))

(smithy/sdk/shapes:define-output put-resource-policy-output common-lisp:nil
                                 ((revision-id :target-type policy-revision-id
                                   :member-name "RevisionId"))
                                 (:shape-name "PutResourcePolicyOutput"))

(smithy/sdk/shapes:define-input query-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (index-name :target-type index-name
                                  :member-name "IndexName")
                                 (select :target-type select :member-name
                                  "Select")
                                 (attributes-to-get :target-type
                                  attribute-name-list :member-name
                                  "AttributesToGet")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit")
                                 (consistent-read :target-type consistent-read
                                  :member-name "ConsistentRead")
                                 (key-conditions :target-type key-conditions
                                  :member-name "KeyConditions")
                                 (query-filter :target-type
                                  filter-condition-map :member-name
                                  "QueryFilter")
                                 (conditional-operator :target-type
                                  conditional-operator :member-name
                                  "ConditionalOperator")
                                 (scan-index-forward :target-type
                                  boolean-object :member-name
                                  "ScanIndexForward")
                                 (exclusive-start-key :target-type key
                                  :member-name "ExclusiveStartKey")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (projection-expression :target-type
                                  projection-expression :member-name
                                  "ProjectionExpression")
                                 (filter-expression :target-type
                                  condition-expression :member-name
                                  "FilterExpression")
                                 (key-condition-expression :target-type
                                  key-expression :member-name
                                  "KeyConditionExpression")
                                 (expression-attribute-names :target-type
                                  expression-attribute-name-map :member-name
                                  "ExpressionAttributeNames")
                                 (expression-attribute-values :target-type
                                  expression-attribute-value-map :member-name
                                  "ExpressionAttributeValues"))
                                (:shape-name "QueryInput"))

(smithy/sdk/shapes:define-output query-output common-lisp:nil
                                 ((items :target-type item-list :member-name
                                   "Items")
                                  (count :target-type integer :member-name
                                   "Count")
                                  (scanned-count :target-type integer
                                   :member-name "ScannedCount")
                                  (last-evaluated-key :target-type key
                                   :member-name "LastEvaluatedKey")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "QueryOutput"))

(smithy/sdk/shapes:define-type recovery-period-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replica common-lisp:nil
                                    ((region-name :target-type region-name
                                      :member-name "RegionName"))
                                    (:shape-name "Replica"))

(smithy/sdk/shapes:define-error replica-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ReplicaAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure replica-auto-scaling-description
                                    common-lisp:nil
                                    ((region-name :target-type region-name
                                      :member-name "RegionName")
                                     (global-secondary-indexes :target-type
                                      replica-global-secondary-index-auto-scaling-description-list
                                      :member-name "GlobalSecondaryIndexes")
                                     (replica-provisioned-read-capacity-auto-scaling-settings
                                      :target-type
                                      auto-scaling-settings-description
                                      :member-name
                                      "ReplicaProvisionedReadCapacityAutoScalingSettings")
                                     (replica-provisioned-write-capacity-auto-scaling-settings
                                      :target-type
                                      auto-scaling-settings-description
                                      :member-name
                                      "ReplicaProvisionedWriteCapacityAutoScalingSettings")
                                     (replica-status :target-type
                                      replica-status :member-name
                                      "ReplicaStatus"))
                                    (:shape-name
                                     "ReplicaAutoScalingDescription"))

(smithy/sdk/shapes:define-list replica-auto-scaling-description-list :member
                               replica-auto-scaling-description)

(smithy/sdk/shapes:define-structure replica-auto-scaling-update common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName")
                                     (replica-global-secondary-index-updates
                                      :target-type
                                      replica-global-secondary-index-auto-scaling-update-list
                                      :member-name
                                      "ReplicaGlobalSecondaryIndexUpdates")
                                     (replica-provisioned-read-capacity-auto-scaling-update
                                      :target-type auto-scaling-settings-update
                                      :member-name
                                      "ReplicaProvisionedReadCapacityAutoScalingUpdate"))
                                    (:shape-name "ReplicaAutoScalingUpdate"))

(smithy/sdk/shapes:define-list replica-auto-scaling-update-list :member
                               replica-auto-scaling-update)

(smithy/sdk/shapes:define-structure replica-description common-lisp:nil
                                    ((region-name :target-type region-name
                                      :member-name "RegionName")
                                     (replica-status :target-type
                                      replica-status :member-name
                                      "ReplicaStatus")
                                     (replica-status-description :target-type
                                      replica-status-description :member-name
                                      "ReplicaStatusDescription")
                                     (replica-status-percent-progress
                                      :target-type
                                      replica-status-percent-progress
                                      :member-name
                                      "ReplicaStatusPercentProgress")
                                     (kmsmaster-key-id :target-type
                                      kmsmaster-key-id :member-name
                                      "KMSMasterKeyId")
                                     (provisioned-throughput-override
                                      :target-type
                                      provisioned-throughput-override
                                      :member-name
                                      "ProvisionedThroughputOverride")
                                     (on-demand-throughput-override
                                      :target-type
                                      on-demand-throughput-override
                                      :member-name
                                      "OnDemandThroughputOverride")
                                     (warm-throughput :target-type
                                      table-warm-throughput-description
                                      :member-name "WarmThroughput")
                                     (global-secondary-indexes :target-type
                                      replica-global-secondary-index-description-list
                                      :member-name "GlobalSecondaryIndexes")
                                     (replica-inaccessible-date-time
                                      :target-type date :member-name
                                      "ReplicaInaccessibleDateTime")
                                     (replica-table-class-summary :target-type
                                      table-class-summary :member-name
                                      "ReplicaTableClassSummary"))
                                    (:shape-name "ReplicaDescription"))

(smithy/sdk/shapes:define-list replica-description-list :member
                               replica-description)

(smithy/sdk/shapes:define-structure replica-global-secondary-index
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (provisioned-throughput-override
                                      :target-type
                                      provisioned-throughput-override
                                      :member-name
                                      "ProvisionedThroughputOverride")
                                     (on-demand-throughput-override
                                      :target-type
                                      on-demand-throughput-override
                                      :member-name
                                      "OnDemandThroughputOverride"))
                                    (:shape-name "ReplicaGlobalSecondaryIndex"))

(smithy/sdk/shapes:define-structure
 replica-global-secondary-index-auto-scaling-description common-lisp:nil
 ((index-name :target-type index-name :member-name "IndexName")
  (index-status :target-type index-status :member-name "IndexStatus")
  (provisioned-read-capacity-auto-scaling-settings :target-type
   auto-scaling-settings-description :member-name
   "ProvisionedReadCapacityAutoScalingSettings")
  (provisioned-write-capacity-auto-scaling-settings :target-type
   auto-scaling-settings-description :member-name
   "ProvisionedWriteCapacityAutoScalingSettings"))
 (:shape-name "ReplicaGlobalSecondaryIndexAutoScalingDescription"))

(smithy/sdk/shapes:define-list
 replica-global-secondary-index-auto-scaling-description-list :member
 replica-global-secondary-index-auto-scaling-description)

(smithy/sdk/shapes:define-structure
 replica-global-secondary-index-auto-scaling-update common-lisp:nil
 ((index-name :target-type index-name :member-name "IndexName")
  (provisioned-read-capacity-auto-scaling-update :target-type
   auto-scaling-settings-update :member-name
   "ProvisionedReadCapacityAutoScalingUpdate"))
 (:shape-name "ReplicaGlobalSecondaryIndexAutoScalingUpdate"))

(smithy/sdk/shapes:define-list
 replica-global-secondary-index-auto-scaling-update-list :member
 replica-global-secondary-index-auto-scaling-update)

(smithy/sdk/shapes:define-structure replica-global-secondary-index-description
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :member-name "IndexName")
                                     (provisioned-throughput-override
                                      :target-type
                                      provisioned-throughput-override
                                      :member-name
                                      "ProvisionedThroughputOverride")
                                     (on-demand-throughput-override
                                      :target-type
                                      on-demand-throughput-override
                                      :member-name
                                      "OnDemandThroughputOverride")
                                     (warm-throughput :target-type
                                      global-secondary-index-warm-throughput-description
                                      :member-name "WarmThroughput"))
                                    (:shape-name
                                     "ReplicaGlobalSecondaryIndexDescription"))

(smithy/sdk/shapes:define-list replica-global-secondary-index-description-list
                               :member
                               replica-global-secondary-index-description)

(smithy/sdk/shapes:define-list replica-global-secondary-index-list :member
                               replica-global-secondary-index)

(smithy/sdk/shapes:define-structure
 replica-global-secondary-index-settings-description common-lisp:nil
 ((index-name :target-type index-name :required common-lisp:t :member-name
   "IndexName")
  (index-status :target-type index-status :member-name "IndexStatus")
  (provisioned-read-capacity-units :target-type positive-long-object
   :member-name "ProvisionedReadCapacityUnits")
  (provisioned-read-capacity-auto-scaling-settings :target-type
   auto-scaling-settings-description :member-name
   "ProvisionedReadCapacityAutoScalingSettings")
  (provisioned-write-capacity-units :target-type positive-long-object
   :member-name "ProvisionedWriteCapacityUnits")
  (provisioned-write-capacity-auto-scaling-settings :target-type
   auto-scaling-settings-description :member-name
   "ProvisionedWriteCapacityAutoScalingSettings"))
 (:shape-name "ReplicaGlobalSecondaryIndexSettingsDescription"))

(smithy/sdk/shapes:define-list
 replica-global-secondary-index-settings-description-list :member
 replica-global-secondary-index-settings-description)

(smithy/sdk/shapes:define-structure
 replica-global-secondary-index-settings-update common-lisp:nil
 ((index-name :target-type index-name :required common-lisp:t :member-name
   "IndexName")
  (provisioned-read-capacity-units :target-type positive-long-object
   :member-name "ProvisionedReadCapacityUnits")
  (provisioned-read-capacity-auto-scaling-settings-update :target-type
   auto-scaling-settings-update :member-name
   "ProvisionedReadCapacityAutoScalingSettingsUpdate"))
 (:shape-name "ReplicaGlobalSecondaryIndexSettingsUpdate"))

(smithy/sdk/shapes:define-list
 replica-global-secondary-index-settings-update-list :member
 replica-global-secondary-index-settings-update)

(smithy/sdk/shapes:define-list replica-list :member replica)

(smithy/sdk/shapes:define-error replica-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ReplicaNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure replica-settings-description
                                    common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName")
                                     (replica-status :target-type
                                      replica-status :member-name
                                      "ReplicaStatus")
                                     (replica-billing-mode-summary :target-type
                                      billing-mode-summary :member-name
                                      "ReplicaBillingModeSummary")
                                     (replica-provisioned-read-capacity-units
                                      :target-type non-negative-long-object
                                      :member-name
                                      "ReplicaProvisionedReadCapacityUnits")
                                     (replica-provisioned-read-capacity-auto-scaling-settings
                                      :target-type
                                      auto-scaling-settings-description
                                      :member-name
                                      "ReplicaProvisionedReadCapacityAutoScalingSettings")
                                     (replica-provisioned-write-capacity-units
                                      :target-type non-negative-long-object
                                      :member-name
                                      "ReplicaProvisionedWriteCapacityUnits")
                                     (replica-provisioned-write-capacity-auto-scaling-settings
                                      :target-type
                                      auto-scaling-settings-description
                                      :member-name
                                      "ReplicaProvisionedWriteCapacityAutoScalingSettings")
                                     (replica-global-secondary-index-settings
                                      :target-type
                                      replica-global-secondary-index-settings-description-list
                                      :member-name
                                      "ReplicaGlobalSecondaryIndexSettings")
                                     (replica-table-class-summary :target-type
                                      table-class-summary :member-name
                                      "ReplicaTableClassSummary"))
                                    (:shape-name "ReplicaSettingsDescription"))

(smithy/sdk/shapes:define-list replica-settings-description-list :member
                               replica-settings-description)

(smithy/sdk/shapes:define-structure replica-settings-update common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName")
                                     (replica-provisioned-read-capacity-units
                                      :target-type positive-long-object
                                      :member-name
                                      "ReplicaProvisionedReadCapacityUnits")
                                     (replica-provisioned-read-capacity-auto-scaling-settings-update
                                      :target-type auto-scaling-settings-update
                                      :member-name
                                      "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate")
                                     (replica-global-secondary-index-settings-update
                                      :target-type
                                      replica-global-secondary-index-settings-update-list
                                      :member-name
                                      "ReplicaGlobalSecondaryIndexSettingsUpdate")
                                     (replica-table-class :target-type
                                      table-class :member-name
                                      "ReplicaTableClass"))
                                    (:shape-name "ReplicaSettingsUpdate"))

(smithy/sdk/shapes:define-list replica-settings-update-list :member
                               replica-settings-update)

(smithy/sdk/shapes:define-enum replica-status
    common-lisp:nil
  (:creating "CREATING")
  (:creation-failed "CREATION_FAILED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:active "ACTIVE")
  (:region-disabled "REGION_DISABLED")
  (:inaccessible-encryption-credentials "INACCESSIBLE_ENCRYPTION_CREDENTIALS")
  (:archiving "ARCHIVING")
  (:archived "ARCHIVED")
  (:replication-not-authorized "REPLICATION_NOT_AUTHORIZED"))

(smithy/sdk/shapes:define-type replica-status-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replica-status-percent-progress
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replica-update common-lisp:nil
                                    ((create :target-type create-replica-action
                                      :member-name "Create")
                                     (delete :target-type delete-replica-action
                                      :member-name "Delete"))
                                    (:shape-name "ReplicaUpdate"))

(smithy/sdk/shapes:define-list replica-update-list :member replica-update)

(smithy/sdk/shapes:define-error replicated-write-conflict-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReplicatedWriteConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure replication-group-update common-lisp:nil
                                    ((create :target-type
                                      create-replication-group-member-action
                                      :member-name "Create")
                                     (update :target-type
                                      update-replication-group-member-action
                                      :member-name "Update")
                                     (delete :target-type
                                      delete-replication-group-member-action
                                      :member-name "Delete"))
                                    (:shape-name "ReplicationGroupUpdate"))

(smithy/sdk/shapes:define-list replication-group-update-list :member
                               replication-group-update)

(smithy/sdk/shapes:define-error request-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "RequestLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type restore-in-progress
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure restore-summary common-lisp:nil
                                    ((source-backup-arn :target-type backup-arn
                                      :member-name "SourceBackupArn")
                                     (source-table-arn :target-type table-arn
                                      :member-name "SourceTableArn")
                                     (restore-date-time :target-type date
                                      :required common-lisp:t :member-name
                                      "RestoreDateTime")
                                     (restore-in-progress :target-type
                                      restore-in-progress :required
                                      common-lisp:t :member-name
                                      "RestoreInProgress"))
                                    (:shape-name "RestoreSummary"))

(smithy/sdk/shapes:define-input restore-table-from-backup-input common-lisp:nil
                                ((target-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "TargetTableName")
                                 (backup-arn :target-type backup-arn :required
                                  common-lisp:t :member-name "BackupArn")
                                 (billing-mode-override :target-type
                                  billing-mode :member-name
                                  "BillingModeOverride")
                                 (global-secondary-index-override :target-type
                                  global-secondary-index-list :member-name
                                  "GlobalSecondaryIndexOverride")
                                 (local-secondary-index-override :target-type
                                  local-secondary-index-list :member-name
                                  "LocalSecondaryIndexOverride")
                                 (provisioned-throughput-override :target-type
                                  provisioned-throughput :member-name
                                  "ProvisionedThroughputOverride")
                                 (on-demand-throughput-override :target-type
                                  on-demand-throughput :member-name
                                  "OnDemandThroughputOverride")
                                 (ssespecification-override :target-type
                                  ssespecification :member-name
                                  "SSESpecificationOverride"))
                                (:shape-name "RestoreTableFromBackupInput"))

(smithy/sdk/shapes:define-output restore-table-from-backup-output
                                 common-lisp:nil
                                 ((table-description :target-type
                                   table-description :member-name
                                   "TableDescription"))
                                 (:shape-name "RestoreTableFromBackupOutput"))

(smithy/sdk/shapes:define-input restore-table-to-point-in-time-input
                                common-lisp:nil
                                ((source-table-arn :target-type table-arn
                                  :member-name "SourceTableArn")
                                 (source-table-name :target-type table-name
                                  :member-name "SourceTableName")
                                 (target-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "TargetTableName")
                                 (use-latest-restorable-time :target-type
                                  boolean-object :member-name
                                  "UseLatestRestorableTime")
                                 (restore-date-time :target-type date
                                  :member-name "RestoreDateTime")
                                 (billing-mode-override :target-type
                                  billing-mode :member-name
                                  "BillingModeOverride")
                                 (global-secondary-index-override :target-type
                                  global-secondary-index-list :member-name
                                  "GlobalSecondaryIndexOverride")
                                 (local-secondary-index-override :target-type
                                  local-secondary-index-list :member-name
                                  "LocalSecondaryIndexOverride")
                                 (provisioned-throughput-override :target-type
                                  provisioned-throughput :member-name
                                  "ProvisionedThroughputOverride")
                                 (on-demand-throughput-override :target-type
                                  on-demand-throughput :member-name
                                  "OnDemandThroughputOverride")
                                 (ssespecification-override :target-type
                                  ssespecification :member-name
                                  "SSESpecificationOverride"))
                                (:shape-name "RestoreTableToPointInTimeInput"))

(smithy/sdk/shapes:define-output restore-table-to-point-in-time-output
                                 common-lisp:nil
                                 ((table-description :target-type
                                   table-description :member-name
                                   "TableDescription"))
                                 (:shape-name
                                  "RestoreTableToPointInTimeOutput"))

(smithy/sdk/shapes:define-enum return-consumed-capacity
    common-lisp:nil
  (:indexes "INDEXES")
  (:total "TOTAL")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum return-item-collection-metrics
    common-lisp:nil
  (:size "SIZE")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum return-value
    common-lisp:nil
  (:none "NONE")
  (:all-old "ALL_OLD")
  (:updated-old "UPDATED_OLD")
  (:all-new "ALL_NEW")
  (:updated-new "UPDATED_NEW"))

(smithy/sdk/shapes:define-enum return-values-on-condition-check-failure
    common-lisp:nil
  (:all-old "ALL_OLD")
  (:none "NONE"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-source common-lisp:nil
                                    ((s3bucket-owner :target-type
                                      s3bucket-owner :member-name
                                      "S3BucketOwner")
                                     (s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3key-prefix :target-type s3prefix
                                      :member-name "S3KeyPrefix"))
                                    (:shape-name "S3BucketSource"))

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3sse-algorithm
    common-lisp:nil
  (:aes256 "AES256")
  (:kms "KMS"))

(smithy/sdk/shapes:define-type s3sse-kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssedescription common-lisp:nil
                                    ((status :target-type ssestatus
                                      :member-name "Status")
                                     (ssetype :target-type ssetype :member-name
                                      "SSEType")
                                     (kmsmaster-key-arn :target-type
                                      kmsmaster-key-arn :member-name
                                      "KMSMasterKeyArn")
                                     (inaccessible-encryption-date-time
                                      :target-type date :member-name
                                      "InaccessibleEncryptionDateTime"))
                                    (:shape-name "SSEDescription"))

(smithy/sdk/shapes:define-type sseenabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure ssespecification common-lisp:nil
                                    ((enabled :target-type sseenabled
                                      :member-name "Enabled")
                                     (ssetype :target-type ssetype :member-name
                                      "SSEType")
                                     (kmsmaster-key-id :target-type
                                      kmsmaster-key-id :member-name
                                      "KMSMasterKeyId"))
                                    (:shape-name "SSESpecification"))

(smithy/sdk/shapes:define-enum ssestatus
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum ssetype
    common-lisp:nil
  (:aes256 "AES256")
  (:kms "KMS"))

(smithy/sdk/shapes:define-enum scalar-attribute-type
    common-lisp:nil
  (:s "S")
  (:n "N")
  (:b "B"))

(smithy/sdk/shapes:define-input scan-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (index-name :target-type index-name
                                  :member-name "IndexName")
                                 (attributes-to-get :target-type
                                  attribute-name-list :member-name
                                  "AttributesToGet")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit")
                                 (select :target-type select :member-name
                                  "Select")
                                 (scan-filter :target-type filter-condition-map
                                  :member-name "ScanFilter")
                                 (conditional-operator :target-type
                                  conditional-operator :member-name
                                  "ConditionalOperator")
                                 (exclusive-start-key :target-type key
                                  :member-name "ExclusiveStartKey")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (total-segments :target-type
                                  scan-total-segments :member-name
                                  "TotalSegments")
                                 (segment :target-type scan-segment
                                  :member-name "Segment")
                                 (projection-expression :target-type
                                  projection-expression :member-name
                                  "ProjectionExpression")
                                 (filter-expression :target-type
                                  condition-expression :member-name
                                  "FilterExpression")
                                 (expression-attribute-names :target-type
                                  expression-attribute-name-map :member-name
                                  "ExpressionAttributeNames")
                                 (expression-attribute-values :target-type
                                  expression-attribute-value-map :member-name
                                  "ExpressionAttributeValues")
                                 (consistent-read :target-type consistent-read
                                  :member-name "ConsistentRead"))
                                (:shape-name "ScanInput"))

(smithy/sdk/shapes:define-output scan-output common-lisp:nil
                                 ((items :target-type item-list :member-name
                                   "Items")
                                  (count :target-type integer :member-name
                                   "Count")
                                  (scanned-count :target-type integer
                                   :member-name "ScannedCount")
                                  (last-evaluated-key :target-type key
                                   :member-name "LastEvaluatedKey")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity"))
                                 (:shape-name "ScanOutput"))

(smithy/sdk/shapes:define-type scan-segment smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type scan-total-segments
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map secondary-indexes-capacity-map :key index-name
                              :value capacity)

(smithy/sdk/shapes:define-enum select
    common-lisp:nil
  (:all-attributes "ALL_ATTRIBUTES")
  (:all-projected-attributes "ALL_PROJECTED_ATTRIBUTES")
  (:specific-attributes "SPECIFIC_ATTRIBUTES")
  (:count "COUNT"))

(smithy/sdk/shapes:define-structure source-table-details common-lisp:nil
                                    ((table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (table-id :target-type table-id :required
                                      common-lisp:t :member-name "TableId")
                                     (table-arn :target-type table-arn
                                      :member-name "TableArn")
                                     (table-size-bytes :target-type long-object
                                      :member-name "TableSizeBytes")
                                     (key-schema :target-type key-schema
                                      :required common-lisp:t :member-name
                                      "KeySchema")
                                     (table-creation-date-time :target-type
                                      table-creation-date-time :required
                                      common-lisp:t :member-name
                                      "TableCreationDateTime")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :required
                                      common-lisp:t :member-name
                                      "ProvisionedThroughput")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (item-count :target-type item-count
                                      :member-name "ItemCount")
                                     (billing-mode :target-type billing-mode
                                      :member-name "BillingMode"))
                                    (:shape-name "SourceTableDetails"))

(smithy/sdk/shapes:define-structure source-table-feature-details
                                    common-lisp:nil
                                    ((local-secondary-indexes :target-type
                                      local-secondary-indexes :member-name
                                      "LocalSecondaryIndexes")
                                     (global-secondary-indexes :target-type
                                      global-secondary-indexes :member-name
                                      "GlobalSecondaryIndexes")
                                     (stream-description :target-type
                                      stream-specification :member-name
                                      "StreamDescription")
                                     (time-to-live-description :target-type
                                      time-to-live-description :member-name
                                      "TimeToLiveDescription")
                                     (ssedescription :target-type
                                      ssedescription :member-name
                                      "SSEDescription"))
                                    (:shape-name "SourceTableFeatureDetails"))

(smithy/sdk/shapes:define-type stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stream-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure stream-specification common-lisp:nil
                                    ((stream-enabled :target-type
                                      stream-enabled :required common-lisp:t
                                      :member-name "StreamEnabled")
                                     (stream-view-type :target-type
                                      stream-view-type :member-name
                                      "StreamViewType"))
                                    (:shape-name "StreamSpecification"))

(smithy/sdk/shapes:define-enum stream-view-type
    common-lisp:nil
  (:new-image "NEW_IMAGE")
  (:old-image "OLD_IMAGE")
  (:new-and-old-images "NEW_AND_OLD_IMAGES")
  (:keys-only "KEYS_ONLY"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-set-attribute-value :member
                               string-attribute-value)

(smithy/sdk/shapes:define-error table-already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TableAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type table-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure table-auto-scaling-description
                                    common-lisp:nil
                                    ((table-name :target-type table-name
                                      :member-name "TableName")
                                     (table-status :target-type table-status
                                      :member-name "TableStatus")
                                     (replicas :target-type
                                      replica-auto-scaling-description-list
                                      :member-name "Replicas"))
                                    (:shape-name "TableAutoScalingDescription"))

(smithy/sdk/shapes:define-enum table-class
    common-lisp:nil
  (:standard "STANDARD")
  (:standard-infrequent-access "STANDARD_INFREQUENT_ACCESS"))

(smithy/sdk/shapes:define-structure table-class-summary common-lisp:nil
                                    ((table-class :target-type table-class
                                      :member-name "TableClass")
                                     (last-update-date-time :target-type date
                                      :member-name "LastUpdateDateTime"))
                                    (:shape-name "TableClassSummary"))

(smithy/sdk/shapes:define-type table-creation-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure table-creation-parameters common-lisp:nil
                                    ((table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (attribute-definitions :target-type
                                      attribute-definitions :required
                                      common-lisp:t :member-name
                                      "AttributeDefinitions")
                                     (key-schema :target-type key-schema
                                      :required common-lisp:t :member-name
                                      "KeySchema")
                                     (billing-mode :target-type billing-mode
                                      :member-name "BillingMode")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (ssespecification :target-type
                                      ssespecification :member-name
                                      "SSESpecification")
                                     (global-secondary-indexes :target-type
                                      global-secondary-index-list :member-name
                                      "GlobalSecondaryIndexes"))
                                    (:shape-name "TableCreationParameters"))

(smithy/sdk/shapes:define-structure table-description common-lisp:nil
                                    ((attribute-definitions :target-type
                                      attribute-definitions :member-name
                                      "AttributeDefinitions")
                                     (table-name :target-type table-name
                                      :member-name "TableName")
                                     (key-schema :target-type key-schema
                                      :member-name "KeySchema")
                                     (table-status :target-type table-status
                                      :member-name "TableStatus")
                                     (creation-date-time :target-type date
                                      :member-name "CreationDateTime")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput-description
                                      :member-name "ProvisionedThroughput")
                                     (table-size-bytes :target-type long-object
                                      :member-name "TableSizeBytes")
                                     (item-count :target-type long-object
                                      :member-name "ItemCount")
                                     (table-arn :target-type string
                                      :member-name "TableArn")
                                     (table-id :target-type table-id
                                      :member-name "TableId")
                                     (billing-mode-summary :target-type
                                      billing-mode-summary :member-name
                                      "BillingModeSummary")
                                     (local-secondary-indexes :target-type
                                      local-secondary-index-description-list
                                      :member-name "LocalSecondaryIndexes")
                                     (global-secondary-indexes :target-type
                                      global-secondary-index-description-list
                                      :member-name "GlobalSecondaryIndexes")
                                     (stream-specification :target-type
                                      stream-specification :member-name
                                      "StreamSpecification")
                                     (latest-stream-label :target-type string
                                      :member-name "LatestStreamLabel")
                                     (latest-stream-arn :target-type stream-arn
                                      :member-name "LatestStreamArn")
                                     (global-table-version :target-type string
                                      :member-name "GlobalTableVersion")
                                     (replicas :target-type
                                      replica-description-list :member-name
                                      "Replicas")
                                     (global-table-witnesses :target-type
                                      global-table-witness-description-list
                                      :member-name "GlobalTableWitnesses")
                                     (restore-summary :target-type
                                      restore-summary :member-name
                                      "RestoreSummary")
                                     (ssedescription :target-type
                                      ssedescription :member-name
                                      "SSEDescription")
                                     (archival-summary :target-type
                                      archival-summary :member-name
                                      "ArchivalSummary")
                                     (table-class-summary :target-type
                                      table-class-summary :member-name
                                      "TableClassSummary")
                                     (deletion-protection-enabled :target-type
                                      deletion-protection-enabled :member-name
                                      "DeletionProtectionEnabled")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (warm-throughput :target-type
                                      table-warm-throughput-description
                                      :member-name "WarmThroughput")
                                     (multi-region-consistency :target-type
                                      multi-region-consistency :member-name
                                      "MultiRegionConsistency"))
                                    (:shape-name "TableDescription"))

(smithy/sdk/shapes:define-type table-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error table-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TableInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list table-name-list :member table-name)

(smithy/sdk/shapes:define-error table-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TableNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum table-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:active "ACTIVE")
  (:inaccessible-encryption-credentials "INACCESSIBLE_ENCRYPTION_CREDENTIALS")
  (:archiving "ARCHIVING")
  (:archived "ARCHIVED")
  (:replication-not-authorized "REPLICATION_NOT_AUTHORIZED"))

(smithy/sdk/shapes:define-structure table-warm-throughput-description
                                    common-lisp:nil
                                    ((read-units-per-second :target-type
                                      positive-long-object :member-name
                                      "ReadUnitsPerSecond")
                                     (write-units-per-second :target-type
                                      positive-long-object :member-name
                                      "WriteUnitsPerSecond")
                                     (status :target-type table-status
                                      :member-name "Status"))
                                    (:shape-name
                                     "TableWarmThroughputDescription"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key-string :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value-string
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-key-list :member tag-key-string)

(smithy/sdk/shapes:define-type tag-key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-type tag-value-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-range-lower-bound
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type time-range-upper-bound
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type time-to-live-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-to-live-description common-lisp:nil
                                    ((time-to-live-status :target-type
                                      time-to-live-status :member-name
                                      "TimeToLiveStatus")
                                     (attribute-name :target-type
                                      time-to-live-attribute-name :member-name
                                      "AttributeName"))
                                    (:shape-name "TimeToLiveDescription"))

(smithy/sdk/shapes:define-type time-to-live-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure time-to-live-specification common-lisp:nil
                                    ((enabled :target-type time-to-live-enabled
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (attribute-name :target-type
                                      time-to-live-attribute-name :required
                                      common-lisp:t :member-name
                                      "AttributeName"))
                                    (:shape-name "TimeToLiveSpecification"))

(smithy/sdk/shapes:define-enum time-to-live-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:disabling "DISABLING")
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure transact-get-item common-lisp:nil
                                    ((get :target-type get :required
                                      common-lisp:t :member-name "Get"))
                                    (:shape-name "TransactGetItem"))

(smithy/sdk/shapes:define-list transact-get-item-list :member transact-get-item)

(smithy/sdk/shapes:define-input transact-get-items-input common-lisp:nil
                                ((transact-items :target-type
                                  transact-get-item-list :required
                                  common-lisp:t :member-name "TransactItems")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity"))
                                (:shape-name "TransactGetItemsInput"))

(smithy/sdk/shapes:define-output transact-get-items-output common-lisp:nil
                                 ((consumed-capacity :target-type
                                   consumed-capacity-multiple :member-name
                                   "ConsumedCapacity")
                                  (responses :target-type item-response-list
                                   :member-name "Responses"))
                                 (:shape-name "TransactGetItemsOutput"))

(smithy/sdk/shapes:define-structure transact-write-item common-lisp:nil
                                    ((condition-check :target-type
                                      condition-check :member-name
                                      "ConditionCheck")
                                     (put :target-type put :member-name "Put")
                                     (delete :target-type delete :member-name
                                      "Delete")
                                     (update :target-type update :member-name
                                      "Update"))
                                    (:shape-name "TransactWriteItem"))

(smithy/sdk/shapes:define-list transact-write-item-list :member
                               transact-write-item)

(smithy/sdk/shapes:define-input transact-write-items-input common-lisp:nil
                                ((transact-items :target-type
                                  transact-write-item-list :required
                                  common-lisp:t :member-name "TransactItems")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (return-item-collection-metrics :target-type
                                  return-item-collection-metrics :member-name
                                  "ReturnItemCollectionMetrics")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "TransactWriteItemsInput"))

(smithy/sdk/shapes:define-output transact-write-items-output common-lisp:nil
                                 ((consumed-capacity :target-type
                                   consumed-capacity-multiple :member-name
                                   "ConsumedCapacity")
                                  (item-collection-metrics :target-type
                                   item-collection-metrics-per-table
                                   :member-name "ItemCollectionMetrics"))
                                 (:shape-name "TransactWriteItemsOutput"))

(smithy/sdk/shapes:define-error transaction-canceled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (cancellation-reasons :target-type
                                  cancellation-reason-list :member-name
                                  "CancellationReasons"))
                                (:shape-name "TransactionCanceledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error transaction-conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TransactionConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error transaction-in-progress-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TransactionInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure update common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (update-expression :target-type
                                      update-expression :required common-lisp:t
                                      :member-name "UpdateExpression")
                                     (table-name :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (condition-expression :target-type
                                      condition-expression :member-name
                                      "ConditionExpression")
                                     (expression-attribute-names :target-type
                                      expression-attribute-name-map
                                      :member-name "ExpressionAttributeNames")
                                     (expression-attribute-values :target-type
                                      expression-attribute-value-map
                                      :member-name "ExpressionAttributeValues")
                                     (return-values-on-condition-check-failure
                                      :target-type
                                      return-values-on-condition-check-failure
                                      :member-name
                                      "ReturnValuesOnConditionCheckFailure"))
                                    (:shape-name "Update"))

(smithy/sdk/shapes:define-input update-continuous-backups-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (point-in-time-recovery-specification
                                  :target-type
                                  point-in-time-recovery-specification
                                  :required common-lisp:t :member-name
                                  "PointInTimeRecoverySpecification"))
                                (:shape-name "UpdateContinuousBackupsInput"))

(smithy/sdk/shapes:define-output update-continuous-backups-output
                                 common-lisp:nil
                                 ((continuous-backups-description :target-type
                                   continuous-backups-description :member-name
                                   "ContinuousBackupsDescription"))
                                 (:shape-name "UpdateContinuousBackupsOutput"))

(smithy/sdk/shapes:define-input update-contributor-insights-input
                                common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (index-name :target-type index-name
                                  :member-name "IndexName")
                                 (contributor-insights-action :target-type
                                  contributor-insights-action :required
                                  common-lisp:t :member-name
                                  "ContributorInsightsAction"))
                                (:shape-name "UpdateContributorInsightsInput"))

(smithy/sdk/shapes:define-output update-contributor-insights-output
                                 common-lisp:nil
                                 ((table-name :target-type table-name
                                   :member-name "TableName")
                                  (index-name :target-type index-name
                                   :member-name "IndexName")
                                  (contributor-insights-status :target-type
                                   contributor-insights-status :member-name
                                   "ContributorInsightsStatus"))
                                 (:shape-name
                                  "UpdateContributorInsightsOutput"))

(smithy/sdk/shapes:define-type update-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-global-secondary-index-action
                                    common-lisp:nil
                                    ((index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (provisioned-throughput :target-type
                                      provisioned-throughput :member-name
                                      "ProvisionedThroughput")
                                     (on-demand-throughput :target-type
                                      on-demand-throughput :member-name
                                      "OnDemandThroughput")
                                     (warm-throughput :target-type
                                      warm-throughput :member-name
                                      "WarmThroughput"))
                                    (:shape-name
                                     "UpdateGlobalSecondaryIndexAction"))

(smithy/sdk/shapes:define-input update-global-table-input common-lisp:nil
                                ((global-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "GlobalTableName")
                                 (replica-updates :target-type
                                  replica-update-list :required common-lisp:t
                                  :member-name "ReplicaUpdates"))
                                (:shape-name "UpdateGlobalTableInput"))

(smithy/sdk/shapes:define-output update-global-table-output common-lisp:nil
                                 ((global-table-description :target-type
                                   global-table-description :member-name
                                   "GlobalTableDescription"))
                                 (:shape-name "UpdateGlobalTableOutput"))

(smithy/sdk/shapes:define-input update-global-table-settings-input
                                common-lisp:nil
                                ((global-table-name :target-type table-name
                                  :required common-lisp:t :member-name
                                  "GlobalTableName")
                                 (global-table-billing-mode :target-type
                                  billing-mode :member-name
                                  "GlobalTableBillingMode")
                                 (global-table-provisioned-write-capacity-units
                                  :target-type positive-long-object
                                  :member-name
                                  "GlobalTableProvisionedWriteCapacityUnits")
                                 (global-table-provisioned-write-capacity-auto-scaling-settings-update
                                  :target-type auto-scaling-settings-update
                                  :member-name
                                  "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate")
                                 (global-table-global-secondary-index-settings-update
                                  :target-type
                                  global-table-global-secondary-index-settings-update-list
                                  :member-name
                                  "GlobalTableGlobalSecondaryIndexSettingsUpdate")
                                 (replica-settings-update :target-type
                                  replica-settings-update-list :member-name
                                  "ReplicaSettingsUpdate"))
                                (:shape-name "UpdateGlobalTableSettingsInput"))

(smithy/sdk/shapes:define-output update-global-table-settings-output
                                 common-lisp:nil
                                 ((global-table-name :target-type table-name
                                   :member-name "GlobalTableName")
                                  (replica-settings :target-type
                                   replica-settings-description-list
                                   :member-name "ReplicaSettings"))
                                 (:shape-name
                                  "UpdateGlobalTableSettingsOutput"))

(smithy/sdk/shapes:define-input update-item-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (key :target-type key :required common-lisp:t
                                  :member-name "Key")
                                 (attribute-updates :target-type
                                  attribute-updates :member-name
                                  "AttributeUpdates")
                                 (expected :target-type expected-attribute-map
                                  :member-name "Expected")
                                 (conditional-operator :target-type
                                  conditional-operator :member-name
                                  "ConditionalOperator")
                                 (return-values :target-type return-value
                                  :member-name "ReturnValues")
                                 (return-consumed-capacity :target-type
                                  return-consumed-capacity :member-name
                                  "ReturnConsumedCapacity")
                                 (return-item-collection-metrics :target-type
                                  return-item-collection-metrics :member-name
                                  "ReturnItemCollectionMetrics")
                                 (update-expression :target-type
                                  update-expression :member-name
                                  "UpdateExpression")
                                 (condition-expression :target-type
                                  condition-expression :member-name
                                  "ConditionExpression")
                                 (expression-attribute-names :target-type
                                  expression-attribute-name-map :member-name
                                  "ExpressionAttributeNames")
                                 (expression-attribute-values :target-type
                                  expression-attribute-value-map :member-name
                                  "ExpressionAttributeValues")
                                 (return-values-on-condition-check-failure
                                  :target-type
                                  return-values-on-condition-check-failure
                                  :member-name
                                  "ReturnValuesOnConditionCheckFailure"))
                                (:shape-name "UpdateItemInput"))

(smithy/sdk/shapes:define-output update-item-output common-lisp:nil
                                 ((attributes :target-type attribute-map
                                   :member-name "Attributes")
                                  (consumed-capacity :target-type
                                   consumed-capacity :member-name
                                   "ConsumedCapacity")
                                  (item-collection-metrics :target-type
                                   item-collection-metrics :member-name
                                   "ItemCollectionMetrics"))
                                 (:shape-name "UpdateItemOutput"))

(smithy/sdk/shapes:define-structure update-kinesis-streaming-configuration
                                    common-lisp:nil
                                    ((approximate-creation-date-time-precision
                                      :target-type
                                      approximate-creation-date-time-precision
                                      :member-name
                                      "ApproximateCreationDateTimePrecision"))
                                    (:shape-name
                                     "UpdateKinesisStreamingConfiguration"))

(smithy/sdk/shapes:define-input update-kinesis-streaming-destination-input
                                common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "StreamArn")
                                 (update-kinesis-streaming-configuration
                                  :target-type
                                  update-kinesis-streaming-configuration
                                  :member-name
                                  "UpdateKinesisStreamingConfiguration"))
                                (:shape-name
                                 "UpdateKinesisStreamingDestinationInput"))

(smithy/sdk/shapes:define-output update-kinesis-streaming-destination-output
                                 common-lisp:nil
                                 ((table-name :target-type table-name
                                   :member-name "TableName")
                                  (stream-arn :target-type stream-arn
                                   :member-name "StreamArn")
                                  (destination-status :target-type
                                   destination-status :member-name
                                   "DestinationStatus")
                                  (update-kinesis-streaming-configuration
                                   :target-type
                                   update-kinesis-streaming-configuration
                                   :member-name
                                   "UpdateKinesisStreamingConfiguration"))
                                 (:shape-name
                                  "UpdateKinesisStreamingDestinationOutput"))

(smithy/sdk/shapes:define-structure update-replication-group-member-action
                                    common-lisp:nil
                                    ((region-name :target-type region-name
                                      :required common-lisp:t :member-name
                                      "RegionName")
                                     (kmsmaster-key-id :target-type
                                      kmsmaster-key-id :member-name
                                      "KMSMasterKeyId")
                                     (provisioned-throughput-override
                                      :target-type
                                      provisioned-throughput-override
                                      :member-name
                                      "ProvisionedThroughputOverride")
                                     (on-demand-throughput-override
                                      :target-type
                                      on-demand-throughput-override
                                      :member-name
                                      "OnDemandThroughputOverride")
                                     (global-secondary-indexes :target-type
                                      replica-global-secondary-index-list
                                      :member-name "GlobalSecondaryIndexes")
                                     (table-class-override :target-type
                                      table-class :member-name
                                      "TableClassOverride"))
                                    (:shape-name
                                     "UpdateReplicationGroupMemberAction"))

(smithy/sdk/shapes:define-input update-table-input common-lisp:nil
                                ((attribute-definitions :target-type
                                  attribute-definitions :member-name
                                  "AttributeDefinitions")
                                 (table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (billing-mode :target-type billing-mode
                                  :member-name "BillingMode")
                                 (provisioned-throughput :target-type
                                  provisioned-throughput :member-name
                                  "ProvisionedThroughput")
                                 (global-secondary-index-updates :target-type
                                  global-secondary-index-update-list
                                  :member-name "GlobalSecondaryIndexUpdates")
                                 (stream-specification :target-type
                                  stream-specification :member-name
                                  "StreamSpecification")
                                 (ssespecification :target-type
                                  ssespecification :member-name
                                  "SSESpecification")
                                 (replica-updates :target-type
                                  replication-group-update-list :member-name
                                  "ReplicaUpdates")
                                 (table-class :target-type table-class
                                  :member-name "TableClass")
                                 (deletion-protection-enabled :target-type
                                  deletion-protection-enabled :member-name
                                  "DeletionProtectionEnabled")
                                 (multi-region-consistency :target-type
                                  multi-region-consistency :member-name
                                  "MultiRegionConsistency")
                                 (global-table-witness-updates :target-type
                                  global-table-witness-group-update-list
                                  :member-name "GlobalTableWitnessUpdates")
                                 (on-demand-throughput :target-type
                                  on-demand-throughput :member-name
                                  "OnDemandThroughput")
                                 (warm-throughput :target-type warm-throughput
                                  :member-name "WarmThroughput"))
                                (:shape-name "UpdateTableInput"))

(smithy/sdk/shapes:define-output update-table-output common-lisp:nil
                                 ((table-description :target-type
                                   table-description :member-name
                                   "TableDescription"))
                                 (:shape-name "UpdateTableOutput"))

(smithy/sdk/shapes:define-input update-table-replica-auto-scaling-input
                                common-lisp:nil
                                ((global-secondary-index-updates :target-type
                                  global-secondary-index-auto-scaling-update-list
                                  :member-name "GlobalSecondaryIndexUpdates")
                                 (table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (provisioned-write-capacity-auto-scaling-update
                                  :target-type auto-scaling-settings-update
                                  :member-name
                                  "ProvisionedWriteCapacityAutoScalingUpdate")
                                 (replica-updates :target-type
                                  replica-auto-scaling-update-list :member-name
                                  "ReplicaUpdates"))
                                (:shape-name
                                 "UpdateTableReplicaAutoScalingInput"))

(smithy/sdk/shapes:define-output update-table-replica-auto-scaling-output
                                 common-lisp:nil
                                 ((table-auto-scaling-description :target-type
                                   table-auto-scaling-description :member-name
                                   "TableAutoScalingDescription"))
                                 (:shape-name
                                  "UpdateTableReplicaAutoScalingOutput"))

(smithy/sdk/shapes:define-input update-time-to-live-input common-lisp:nil
                                ((table-name :target-type table-arn :required
                                  common-lisp:t :member-name "TableName")
                                 (time-to-live-specification :target-type
                                  time-to-live-specification :required
                                  common-lisp:t :member-name
                                  "TimeToLiveSpecification"))
                                (:shape-name "UpdateTimeToLiveInput"))

(smithy/sdk/shapes:define-output update-time-to-live-output common-lisp:nil
                                 ((time-to-live-specification :target-type
                                   time-to-live-specification :member-name
                                   "TimeToLiveSpecification"))
                                 (:shape-name "UpdateTimeToLiveOutput"))

(smithy/sdk/shapes:define-structure warm-throughput common-lisp:nil
                                    ((read-units-per-second :target-type
                                      long-object :member-name
                                      "ReadUnitsPerSecond")
                                     (write-units-per-second :target-type
                                      long-object :member-name
                                      "WriteUnitsPerSecond"))
                                    (:shape-name "WarmThroughput"))

(smithy/sdk/shapes:define-enum witness-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure write-request common-lisp:nil
                                    ((put-request :target-type put-request
                                      :member-name "PutRequest")
                                     (delete-request :target-type
                                      delete-request :member-name
                                      "DeleteRequest"))
                                    (:shape-name "WriteRequest"))

(smithy/sdk/shapes:define-list write-requests :member write-request)

(smithy/sdk/operation:define-operation batch-execute-statement :shape-name
                                       "BatchExecuteStatement" :input
                                       batch-execute-statement-input :output
                                       batch-execute-statement-output :errors
                                       (internal-server-error
                                        request-limit-exceeded))

(smithy/sdk/operation:define-operation batch-get-item :shape-name
                                       "BatchGetItem" :input
                                       batch-get-item-input :output
                                       batch-get-item-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation batch-write-item :shape-name
                                       "BatchWriteItem" :input
                                       batch-write-item-input :output
                                       batch-write-item-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        item-collection-size-limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        replicated-write-conflict-exception
                                        request-limit-exceeded
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-backup :shape-name "CreateBackup"
                                       :input create-backup-input :output
                                       create-backup-output :errors
                                       (backup-in-use-exception
                                        continuous-backups-unavailable-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        table-in-use-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation create-global-table :shape-name
                                       "CreateGlobalTable" :input
                                       create-global-table-input :output
                                       create-global-table-output :errors
                                       (global-table-already-exists-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation create-table :shape-name "CreateTable"
                                       :input create-table-input :output
                                       create-table-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-backup :shape-name "DeleteBackup"
                                       :input delete-backup-input :output
                                       delete-backup-output :errors
                                       (backup-in-use-exception
                                        backup-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation delete-item :shape-name "DeleteItem"
                                       :input delete-item-input :output
                                       delete-item-output :errors
                                       (conditional-check-failed-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        item-collection-size-limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        replicated-write-conflict-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-conflict-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-input :output
                                       delete-resource-policy-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        policy-not-found-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-table :shape-name "DeleteTable"
                                       :input delete-table-input :output
                                       delete-table-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-backup :shape-name
                                       "DescribeBackup" :input
                                       describe-backup-input :output
                                       describe-backup-output :errors
                                       (backup-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation describe-continuous-backups :shape-name
                                       "DescribeContinuousBackups" :input
                                       describe-continuous-backups-input
                                       :output
                                       describe-continuous-backups-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation describe-contributor-insights
                                       :shape-name
                                       "DescribeContributorInsights" :input
                                       describe-contributor-insights-input
                                       :output
                                       describe-contributor-insights-output
                                       :errors
                                       (internal-server-error
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-endpoints :shape-name
                                       "DescribeEndpoints" :input
                                       describe-endpoints-request :output
                                       describe-endpoints-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-export :shape-name
                                       "DescribeExport" :input
                                       describe-export-input :output
                                       describe-export-output :errors
                                       (export-not-found-exception
                                        internal-server-error
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation describe-global-table :shape-name
                                       "DescribeGlobalTable" :input
                                       describe-global-table-input :output
                                       describe-global-table-output :errors
                                       (global-table-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation describe-global-table-settings
                                       :shape-name
                                       "DescribeGlobalTableSettings" :input
                                       describe-global-table-settings-input
                                       :output
                                       describe-global-table-settings-output
                                       :errors
                                       (global-table-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation describe-import :shape-name
                                       "DescribeImport" :input
                                       describe-import-input :output
                                       describe-import-output :errors
                                       (import-not-found-exception))

(smithy/sdk/operation:define-operation describe-kinesis-streaming-destination
                                       :shape-name
                                       "DescribeKinesisStreamingDestination"
                                       :input
                                       describe-kinesis-streaming-destination-input
                                       :output
                                       describe-kinesis-streaming-destination-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-limits :shape-name
                                       "DescribeLimits" :input
                                       describe-limits-input :output
                                       describe-limits-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation describe-table :shape-name
                                       "DescribeTable" :input
                                       describe-table-input :output
                                       describe-table-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-table-replica-auto-scaling
                                       :shape-name
                                       "DescribeTableReplicaAutoScaling" :input
                                       describe-table-replica-auto-scaling-input
                                       :output
                                       describe-table-replica-auto-scaling-output
                                       :errors
                                       (internal-server-error
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-time-to-live :shape-name
                                       "DescribeTimeToLive" :input
                                       describe-time-to-live-input :output
                                       describe-time-to-live-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disable-kinesis-streaming-destination
                                       :shape-name
                                       "DisableKinesisStreamingDestination"
                                       :input
                                       kinesis-streaming-destination-input
                                       :output
                                       kinesis-streaming-destination-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation enable-kinesis-streaming-destination
                                       :shape-name
                                       "EnableKinesisStreamingDestination"
                                       :input
                                       kinesis-streaming-destination-input
                                       :output
                                       kinesis-streaming-destination-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation execute-statement :shape-name
                                       "ExecuteStatement" :input
                                       execute-statement-input :output
                                       execute-statement-output :errors
                                       (conditional-check-failed-exception
                                        duplicate-item-exception
                                        internal-server-error
                                        item-collection-size-limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-conflict-exception))

(smithy/sdk/operation:define-operation execute-transaction :shape-name
                                       "ExecuteTransaction" :input
                                       execute-transaction-input :output
                                       execute-transaction-output :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-canceled-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation export-table-to-point-in-time
                                       :shape-name "ExportTableToPointInTime"
                                       :input
                                       export-table-to-point-in-time-input
                                       :output
                                       export-table-to-point-in-time-output
                                       :errors
                                       (export-conflict-exception
                                        internal-server-error
                                        invalid-export-time-exception
                                        limit-exceeded-exception
                                        point-in-time-recovery-unavailable-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation get-item :shape-name "GetItem" :input
                                       get-item-input :output get-item-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-input :output
                                       get-resource-policy-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        policy-not-found-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation import-table :shape-name "ImportTable"
                                       :input import-table-input :output
                                       import-table-output :errors
                                       (import-conflict-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation list-backups :shape-name "ListBackups"
                                       :input list-backups-input :output
                                       list-backups-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation list-contributor-insights :shape-name
                                       "ListContributorInsights" :input
                                       list-contributor-insights-input :output
                                       list-contributor-insights-output :errors
                                       (internal-server-error
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-exports :shape-name "ListExports"
                                       :input list-exports-input :output
                                       list-exports-output :errors
                                       (internal-server-error
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation list-global-tables :shape-name
                                       "ListGlobalTables" :input
                                       list-global-tables-input :output
                                       list-global-tables-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation list-imports :shape-name "ListImports"
                                       :input list-imports-input :output
                                       list-imports-output :errors
                                       (limit-exceeded-exception))

(smithy/sdk/operation:define-operation list-tables :shape-name "ListTables"
                                       :input list-tables-input :output
                                       list-tables-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception))

(smithy/sdk/operation:define-operation list-tags-of-resource :shape-name
                                       "ListTagsOfResource" :input
                                       list-tags-of-resource-input :output
                                       list-tags-of-resource-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-item :shape-name "PutItem" :input
                                       put-item-input :output put-item-output
                                       :errors
                                       (conditional-check-failed-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        item-collection-size-limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        replicated-write-conflict-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-conflict-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-input :output
                                       put-resource-policy-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        policy-not-found-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation query :shape-name "Query" :input
                                       query-input :output query-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation restore-table-from-backup :shape-name
                                       "RestoreTableFromBackup" :input
                                       restore-table-from-backup-input :output
                                       restore-table-from-backup-output :errors
                                       (backup-in-use-exception
                                        backup-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        table-already-exists-exception
                                        table-in-use-exception))

(smithy/sdk/operation:define-operation restore-table-to-point-in-time
                                       :shape-name "RestoreTableToPointInTime"
                                       :input
                                       restore-table-to-point-in-time-input
                                       :output
                                       restore-table-to-point-in-time-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        invalid-restore-time-exception
                                        limit-exceeded-exception
                                        point-in-time-recovery-unavailable-exception
                                        table-already-exists-exception
                                        table-in-use-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation scan :shape-name "Scan" :input
                                       scan-input :output scan-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation transact-get-items :shape-name
                                       "TransactGetItems" :input
                                       transact-get-items-input :output
                                       transact-get-items-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-canceled-exception))

(smithy/sdk/operation:define-operation transact-write-items :shape-name
                                       "TransactWriteItems" :input
                                       transact-write-items-input :output
                                       transact-write-items-output :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        provisioned-throughput-exceeded-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-canceled-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-continuous-backups :shape-name
                                       "UpdateContinuousBackups" :input
                                       update-continuous-backups-input :output
                                       update-continuous-backups-output :errors
                                       (continuous-backups-unavailable-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation update-contributor-insights :shape-name
                                       "UpdateContributorInsights" :input
                                       update-contributor-insights-input
                                       :output
                                       update-contributor-insights-output
                                       :errors
                                       (internal-server-error
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-global-table :shape-name
                                       "UpdateGlobalTable" :input
                                       update-global-table-input :output
                                       update-global-table-output :errors
                                       (global-table-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        replica-already-exists-exception
                                        replica-not-found-exception
                                        table-not-found-exception))

(smithy/sdk/operation:define-operation update-global-table-settings :shape-name
                                       "UpdateGlobalTableSettings" :input
                                       update-global-table-settings-input
                                       :output
                                       update-global-table-settings-output
                                       :errors
                                       (global-table-not-found-exception
                                        index-not-found-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        replica-not-found-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation update-item :shape-name "UpdateItem"
                                       :input update-item-input :output
                                       update-item-output :errors
                                       (conditional-check-failed-exception
                                        internal-server-error
                                        invalid-endpoint-exception
                                        item-collection-size-limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        replicated-write-conflict-exception
                                        request-limit-exceeded
                                        resource-not-found-exception
                                        transaction-conflict-exception))

(smithy/sdk/operation:define-operation update-kinesis-streaming-destination
                                       :shape-name
                                       "UpdateKinesisStreamingDestination"
                                       :input
                                       update-kinesis-streaming-destination-input
                                       :output
                                       update-kinesis-streaming-destination-output
                                       :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-table :shape-name "UpdateTable"
                                       :input update-table-input :output
                                       update-table-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-table-replica-auto-scaling
                                       :shape-name
                                       "UpdateTableReplicaAutoScaling" :input
                                       update-table-replica-auto-scaling-input
                                       :output
                                       update-table-replica-auto-scaling-output
                                       :errors
                                       (internal-server-error
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-time-to-live :shape-name
                                       "UpdateTimeToLive" :input
                                       update-time-to-live-input :output
                                       update-time-to-live-output :errors
                                       (internal-server-error
                                        invalid-endpoint-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))
