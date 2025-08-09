(uiop/package:define-package #:pira/config-service (:use)
                             (:export #:arn #:account-aggregation-source
                              #:account-aggregation-source-account-list
                              #:account-aggregation-source-list #:account-id
                              #:aggregate-compliance-by-config-rule
                              #:aggregate-compliance-by-config-rule-list
                              #:aggregate-compliance-by-conformance-pack
                              #:aggregate-compliance-by-conformance-pack-list
                              #:aggregate-compliance-count
                              #:aggregate-compliance-count-list
                              #:aggregate-conformance-pack-compliance
                              #:aggregate-conformance-pack-compliance-count
                              #:aggregate-conformance-pack-compliance-filters
                              #:aggregate-conformance-pack-compliance-summary
                              #:aggregate-conformance-pack-compliance-summary-filters
                              #:aggregate-conformance-pack-compliance-summary-group-key
                              #:aggregate-conformance-pack-compliance-summary-list
                              #:aggregate-evaluation-result
                              #:aggregate-evaluation-result-list
                              #:aggregate-resource-identifier
                              #:aggregated-source-status
                              #:aggregated-source-status-list
                              #:aggregated-source-status-type
                              #:aggregated-source-status-type-list
                              #:aggregated-source-type
                              #:aggregation-authorization
                              #:aggregation-authorization-list
                              #:aggregator-filter-resource-type
                              #:aggregator-filter-service-principal
                              #:aggregator-filter-type #:aggregator-filters
                              #:aggregator-region-list #:all-supported
                              #:amazon-resource-name #:annotation
                              #:associate-resource-types
                              #:auto-remediation-attempt-seconds
                              #:auto-remediation-attempts #:availability-zone
                              #:aws-region #:base-configuration-item
                              #:base-configuration-items #:base-resource-id
                              #:batch-get-aggregate-resource-config
                              #:batch-get-resource-config #:boolean
                              #:channel-name #:chronological-order
                              #:client-token #:compliance
                              #:compliance-by-config-rule
                              #:compliance-by-config-rules
                              #:compliance-by-resource
                              #:compliance-by-resources
                              #:compliance-contributor-count
                              #:compliance-resource-types #:compliance-score
                              #:compliance-summaries-by-resource-type
                              #:compliance-summary
                              #:compliance-summary-by-resource-type
                              #:compliance-type #:compliance-types
                              #:config-export-delivery-info #:config-rule
                              #:config-rule-compliance-filters
                              #:config-rule-compliance-summary-filters
                              #:config-rule-compliance-summary-group-key
                              #:config-rule-evaluation-status
                              #:config-rule-evaluation-status-list
                              #:config-rule-name #:config-rule-names
                              #:config-rule-state #:config-rules
                              #:config-snapshot-delivery-properties
                              #:config-stream-delivery-info #:configuration
                              #:configuration-aggregator
                              #:configuration-aggregator-arn
                              #:configuration-aggregator-list
                              #:configuration-aggregator-name
                              #:configuration-aggregator-name-list
                              #:configuration-item
                              #:configuration-item-capture-time
                              #:configuration-item-delivery-time
                              #:configuration-item-list
                              #:configuration-item-md5hash
                              #:configuration-item-status
                              #:configuration-recorder
                              #:configuration-recorder-filter
                              #:configuration-recorder-filter-list
                              #:configuration-recorder-filter-name
                              #:configuration-recorder-filter-value
                              #:configuration-recorder-filter-values
                              #:configuration-recorder-list
                              #:configuration-recorder-name-list
                              #:configuration-recorder-status
                              #:configuration-recorder-status-list
                              #:configuration-recorder-summaries
                              #:configuration-recorder-summary
                              #:configuration-state-id #:conformance-pack-arn
                              #:conformance-pack-compliance-filters
                              #:conformance-pack-compliance-resource-ids
                              #:conformance-pack-compliance-score
                              #:conformance-pack-compliance-scores
                              #:conformance-pack-compliance-scores-filters
                              #:conformance-pack-compliance-summary
                              #:conformance-pack-compliance-summary-list
                              #:conformance-pack-compliance-type
                              #:conformance-pack-config-rule-names
                              #:conformance-pack-detail
                              #:conformance-pack-detail-list
                              #:conformance-pack-evaluation-filters
                              #:conformance-pack-evaluation-result
                              #:conformance-pack-id
                              #:conformance-pack-input-parameter
                              #:conformance-pack-input-parameters
                              #:conformance-pack-name
                              #:conformance-pack-name-filter
                              #:conformance-pack-names-list
                              #:conformance-pack-names-to-summarize-list
                              #:conformance-pack-rule-compliance
                              #:conformance-pack-rule-compliance-list
                              #:conformance-pack-rule-evaluation-results-list
                              #:conformance-pack-state
                              #:conformance-pack-status-detail
                              #:conformance-pack-status-details-list
                              #:conformance-pack-status-reason #:controls-list
                              #:cosmos-page-limit #:custom-policy-details
                              #:date #:debug-log-delivery-accounts
                              #:delete-aggregation-authorization
                              #:delete-config-rule
                              #:delete-configuration-aggregator
                              #:delete-configuration-recorder
                              #:delete-conformance-pack
                              #:delete-delivery-channel
                              #:delete-evaluation-results
                              #:delete-organization-config-rule
                              #:delete-organization-conformance-pack
                              #:delete-pending-aggregation-request
                              #:delete-remediation-configuration
                              #:delete-remediation-exceptions
                              #:delete-resource-config
                              #:delete-retention-configuration
                              #:delete-service-linked-configuration-recorder
                              #:delete-stored-query #:deliver-config-snapshot
                              #:delivery-channel #:delivery-channel-list
                              #:delivery-channel-name-list
                              #:delivery-channel-status
                              #:delivery-channel-status-list
                              #:delivery-s3bucket #:delivery-s3key-prefix
                              #:delivery-status
                              #:describe-aggregate-compliance-by-config-rules
                              #:describe-aggregate-compliance-by-conformance-packs
                              #:describe-aggregation-authorizations
                              #:describe-compliance-by-config-rule
                              #:describe-compliance-by-resource
                              #:describe-config-rule-evaluation-status
                              #:describe-config-rules
                              #:describe-config-rules-filters
                              #:describe-configuration-aggregator-sources-status
                              #:describe-configuration-aggregators
                              #:describe-configuration-recorder-status
                              #:describe-configuration-recorders
                              #:describe-conformance-pack-compliance
                              #:describe-conformance-pack-compliance-limit
                              #:describe-conformance-pack-status
                              #:describe-conformance-packs
                              #:describe-delivery-channel-status
                              #:describe-delivery-channels
                              #:describe-organization-config-rule-statuses
                              #:describe-organization-config-rules
                              #:describe-organization-conformance-pack-statuses
                              #:describe-organization-conformance-packs
                              #:describe-pending-aggregation-requests
                              #:describe-pending-aggregation-requests-limit
                              #:describe-remediation-configurations
                              #:describe-remediation-exceptions
                              #:describe-remediation-execution-status
                              #:describe-retention-configurations #:description
                              #:disassociate-resource-types
                              #:discovered-resource-identifier-list
                              #:earlier-time
                              #:emptiable-string-with-char-limit256
                              #:error-message #:evaluation #:evaluation-context
                              #:evaluation-context-identifier #:evaluation-mode
                              #:evaluation-mode-configuration
                              #:evaluation-modes #:evaluation-result
                              #:evaluation-result-identifier
                              #:evaluation-result-qualifier
                              #:evaluation-results #:evaluation-status
                              #:evaluation-timeout #:evaluations #:event-source
                              #:excluded-accounts #:exclusion-by-resource-types
                              #:execution-controls #:expression
                              #:external-evaluation
                              #:failed-delete-remediation-exceptions-batch
                              #:failed-delete-remediation-exceptions-batches
                              #:failed-remediation-batch
                              #:failed-remediation-batches
                              #:failed-remediation-exception-batch
                              #:failed-remediation-exception-batches
                              #:field-info #:field-info-list #:field-name
                              #:get-aggregate-compliance-details-by-config-rule
                              #:get-aggregate-config-rule-compliance-summary
                              #:get-aggregate-conformance-pack-compliance-summary
                              #:get-aggregate-discovered-resource-counts
                              #:get-aggregate-resource-config
                              #:get-compliance-details-by-config-rule
                              #:get-compliance-details-by-resource
                              #:get-compliance-summary-by-config-rule
                              #:get-compliance-summary-by-resource-type
                              #:get-conformance-pack-compliance-details
                              #:get-conformance-pack-compliance-details-limit
                              #:get-conformance-pack-compliance-summary
                              #:get-custom-rule-policy
                              #:get-discovered-resource-counts
                              #:get-organization-config-rule-detailed-status
                              #:get-organization-conformance-pack-detailed-status
                              #:get-organization-custom-rule-policy
                              #:get-resource-config-history
                              #:get-resource-evaluation-summary
                              #:get-stored-query #:group-by-apilimit
                              #:grouped-resource-count
                              #:grouped-resource-count-list
                              #:include-global-resource-types #:integer
                              #:last-updated-time #:later-time #:limit
                              #:list-aggregate-discovered-resources
                              #:list-configuration-recorders
                              #:list-conformance-pack-compliance-scores
                              #:list-discovered-resources
                              #:list-resource-evaluations
                              #:list-resource-evaluations-page-item-limit
                              #:list-stored-queries #:list-tags-for-resource
                              #:long #:max-results
                              #:maximum-execution-frequency
                              #:member-account-rule-status
                              #:member-account-status #:message-type #:name
                              #:next-token #:ordering-timestamp
                              #:organization-aggregation-source
                              #:organization-config-rule
                              #:organization-config-rule-detailed-status
                              #:organization-config-rule-name
                              #:organization-config-rule-names
                              #:organization-config-rule-status
                              #:organization-config-rule-statuses
                              #:organization-config-rule-trigger-type
                              #:organization-config-rule-trigger-type-no-sn
                              #:organization-config-rule-trigger-type-no-sns
                              #:organization-config-rule-trigger-types
                              #:organization-config-rules
                              #:organization-conformance-pack
                              #:organization-conformance-pack-detailed-status
                              #:organization-conformance-pack-detailed-statuses
                              #:organization-conformance-pack-name
                              #:organization-conformance-pack-names
                              #:organization-conformance-pack-status
                              #:organization-conformance-pack-statuses
                              #:organization-conformance-packs
                              #:organization-custom-policy-rule-metadata
                              #:organization-custom-policy-rule-metadata-no-policy
                              #:organization-custom-rule-metadata
                              #:organization-managed-rule-metadata
                              #:organization-resource-detailed-status
                              #:organization-resource-detailed-status-filters
                              #:organization-resource-status
                              #:organization-rule-status #:owner
                              #:page-size-limit #:parameter-name
                              #:parameter-value #:pending-aggregation-request
                              #:pending-aggregation-request-list #:percentage
                              #:policy-runtime #:policy-text
                              #:put-aggregation-authorization #:put-config-rule
                              #:put-configuration-aggregator
                              #:put-configuration-recorder
                              #:put-conformance-pack #:put-delivery-channel
                              #:put-evaluations #:put-external-evaluation
                              #:put-organization-config-rule
                              #:put-organization-conformance-pack
                              #:put-remediation-configurations
                              #:put-remediation-exceptions
                              #:put-resource-config
                              #:put-retention-configuration
                              #:put-service-linked-configuration-recorder
                              #:put-stored-query #:query-arn
                              #:query-description #:query-expression #:query-id
                              #:query-info #:query-name #:recorder-name
                              #:recorder-status #:recording-frequency
                              #:recording-group #:recording-mode
                              #:recording-mode-override
                              #:recording-mode-overrides
                              #:recording-mode-resource-types-list
                              #:recording-scope #:recording-strategy
                              #:recording-strategy-type
                              #:reevaluate-config-rule-names #:related-event
                              #:related-event-list #:relationship
                              #:relationship-list #:relationship-name
                              #:remediation-configuration
                              #:remediation-configurations
                              #:remediation-exception
                              #:remediation-exception-resource-key
                              #:remediation-exception-resource-keys
                              #:remediation-exceptions
                              #:remediation-execution-state
                              #:remediation-execution-status
                              #:remediation-execution-statuses
                              #:remediation-execution-step
                              #:remediation-execution-step-state
                              #:remediation-execution-steps
                              #:remediation-parameter-value
                              #:remediation-parameters
                              #:remediation-target-type
                              #:resource-configuration
                              #:resource-configuration-schema-type
                              #:resource-count #:resource-count-filters
                              #:resource-count-group-key #:resource-counts
                              #:resource-creation-time #:resource-deletion-time
                              #:resource-details #:resource-evaluation
                              #:resource-evaluation-filters
                              #:resource-evaluation-id
                              #:resource-evaluation-status
                              #:resource-evaluations #:resource-filters
                              #:resource-id #:resource-id-list
                              #:resource-identifier #:resource-identifier-list
                              #:resource-identifiers-list #:resource-key
                              #:resource-keys #:resource-name #:resource-type
                              #:resource-type-list #:resource-type-string
                              #:resource-type-value #:resource-type-value-list
                              #:resource-types #:resource-types-scope
                              #:resource-value #:resource-value-type #:results
                              #:retention-configuration
                              #:retention-configuration-list
                              #:retention-configuration-name
                              #:retention-configuration-name-list
                              #:retention-period-in-days #:rule-limit
                              #:ssmdocument-name #:ssmdocument-version
                              #:schema-version-id #:scope
                              #:select-aggregate-resource-config
                              #:select-resource-config #:service-principal
                              #:service-principal-value
                              #:service-principal-value-list #:sort-by
                              #:sort-order #:source #:source-detail
                              #:source-details #:ssm-controls #:stack-arn
                              #:starling-dove-service
                              #:start-config-rules-evaluation
                              #:start-configuration-recorder
                              #:start-remediation-execution
                              #:start-resource-evaluation
                              #:static-parameter-values #:static-value
                              #:status-detail-filters
                              #:stop-configuration-recorder #:stored-query
                              #:stored-query-metadata
                              #:stored-query-metadata-list #:string
                              #:string-with-char-limit1024
                              #:string-with-char-limit128
                              #:string-with-char-limit2048
                              #:string-with-char-limit256
                              #:string-with-char-limit256min0
                              #:string-with-char-limit64
                              #:string-with-char-limit768
                              #:supplementary-configuration
                              #:supplementary-configuration-name
                              #:supplementary-configuration-value #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:tags #:tags-list
                              #:template-body #:template-s3uri
                              #:template-ssmdocument-details #:time-window
                              #:unprocessed-resource-identifier-list
                              #:untag-resource #:value #:version))
(common-lisp:in-package #:pira/config-service)

(smithy/sdk/service:define-service starling-dove-service :shape-name
                                   "StarlingDoveService" :version "2014-11-12"
                                   :title "AWS Config" :xml-namespace
                                   '(:uri
                                     "http://config.amazonaws.com/doc/2014-11-12/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Config Service")
                                      ("arnNamespace" . "config")
                                      ("cloudFormationName" . "Config")
                                      ("cloudTrailEventSource"
                                       . "configservice.amazonaws.com")
                                      ("docId" . "config-2014-11-12")
                                      ("endpointPrefix" . "config"))
                                     ("aws.auth#sigv4" ("name" . "config"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-aggregation-source common-lisp:nil
                                    ((account-ids :target-type
                                      account-aggregation-source-account-list
                                      :required common-lisp:t :member-name
                                      "AccountIds")
                                     (all-aws-regions :target-type boolean
                                      :member-name "AllAwsRegions")
                                     (aws-regions :target-type
                                      aggregator-region-list :member-name
                                      "AwsRegions"))
                                    (:shape-name "AccountAggregationSource"))

(smithy/sdk/shapes:define-list account-aggregation-source-account-list :member
                               account-id)

(smithy/sdk/shapes:define-list account-aggregation-source-list :member
                               account-aggregation-source)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregate-compliance-by-config-rule
                                    common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :member-name
                                      "ConfigRuleName")
                                     (compliance :target-type compliance
                                      :member-name "Compliance")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion"))
                                    (:shape-name
                                     "AggregateComplianceByConfigRule"))

(smithy/sdk/shapes:define-list aggregate-compliance-by-config-rule-list :member
                               aggregate-compliance-by-config-rule)

(smithy/sdk/shapes:define-structure aggregate-compliance-by-conformance-pack
                                    common-lisp:nil
                                    ((conformance-pack-name :target-type
                                      conformance-pack-name :member-name
                                      "ConformancePackName")
                                     (compliance :target-type
                                      aggregate-conformance-pack-compliance
                                      :member-name "Compliance")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion"))
                                    (:shape-name
                                     "AggregateComplianceByConformancePack"))

(smithy/sdk/shapes:define-list aggregate-compliance-by-conformance-pack-list
                               :member aggregate-compliance-by-conformance-pack)

(smithy/sdk/shapes:define-structure aggregate-compliance-count common-lisp:nil
                                    ((group-name :target-type
                                      string-with-char-limit256 :member-name
                                      "GroupName")
                                     (compliance-summary :target-type
                                      compliance-summary :member-name
                                      "ComplianceSummary"))
                                    (:shape-name "AggregateComplianceCount"))

(smithy/sdk/shapes:define-list aggregate-compliance-count-list :member
                               aggregate-compliance-count)

(smithy/sdk/shapes:define-structure aggregate-conformance-pack-compliance
                                    common-lisp:nil
                                    ((compliance-type :target-type
                                      conformance-pack-compliance-type
                                      :member-name "ComplianceType")
                                     (compliant-rule-count :target-type integer
                                      :member-name "CompliantRuleCount")
                                     (non-compliant-rule-count :target-type
                                      integer :member-name
                                      "NonCompliantRuleCount")
                                     (total-rule-count :target-type integer
                                      :member-name "TotalRuleCount"))
                                    (:shape-name
                                     "AggregateConformancePackCompliance"))

(smithy/sdk/shapes:define-structure aggregate-conformance-pack-compliance-count
                                    common-lisp:nil
                                    ((compliant-conformance-pack-count
                                      :target-type integer :member-name
                                      "CompliantConformancePackCount")
                                     (non-compliant-conformance-pack-count
                                      :target-type integer :member-name
                                      "NonCompliantConformancePackCount"))
                                    (:shape-name
                                     "AggregateConformancePackComplianceCount"))

(smithy/sdk/shapes:define-structure
 aggregate-conformance-pack-compliance-filters common-lisp:nil
 ((conformance-pack-name :target-type conformance-pack-name :member-name
   "ConformancePackName")
  (compliance-type :target-type conformance-pack-compliance-type :member-name
   "ComplianceType")
  (account-id :target-type account-id :member-name "AccountId")
  (aws-region :target-type aws-region :member-name "AwsRegion"))
 (:shape-name "AggregateConformancePackComplianceFilters"))

(smithy/sdk/shapes:define-structure
 aggregate-conformance-pack-compliance-summary common-lisp:nil
 ((compliance-summary :target-type aggregate-conformance-pack-compliance-count
   :member-name "ComplianceSummary")
  (group-name :target-type string-with-char-limit256 :member-name "GroupName"))
 (:shape-name "AggregateConformancePackComplianceSummary"))

(smithy/sdk/shapes:define-structure
 aggregate-conformance-pack-compliance-summary-filters common-lisp:nil
 ((account-id :target-type account-id :member-name "AccountId")
  (aws-region :target-type aws-region :member-name "AwsRegion"))
 (:shape-name "AggregateConformancePackComplianceSummaryFilters"))

(smithy/sdk/shapes:define-enum aggregate-conformance-pack-compliance-summary-group-key
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:aws-region "AWS_REGION"))

(smithy/sdk/shapes:define-list
 aggregate-conformance-pack-compliance-summary-list :member
 aggregate-conformance-pack-compliance-summary)

(smithy/sdk/shapes:define-structure aggregate-evaluation-result common-lisp:nil
                                    ((evaluation-result-identifier :target-type
                                      evaluation-result-identifier :member-name
                                      "EvaluationResultIdentifier")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "ComplianceType")
                                     (result-recorded-time :target-type date
                                      :member-name "ResultRecordedTime")
                                     (config-rule-invoked-time :target-type
                                      date :member-name
                                      "ConfigRuleInvokedTime")
                                     (annotation :target-type
                                      string-with-char-limit256 :member-name
                                      "Annotation")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion"))
                                    (:shape-name "AggregateEvaluationResult"))

(smithy/sdk/shapes:define-list aggregate-evaluation-result-list :member
                               aggregate-evaluation-result)

(smithy/sdk/shapes:define-structure aggregate-resource-identifier
                                    common-lisp:nil
                                    ((source-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "SourceAccountId")
                                     (source-region :target-type aws-region
                                      :required common-lisp:t :member-name
                                      "SourceRegion")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "ResourceId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-name :target-type resource-name
                                      :member-name "ResourceName"))
                                    (:shape-name "AggregateResourceIdentifier"))

(smithy/sdk/shapes:define-structure aggregated-source-status common-lisp:nil
                                    ((source-id :target-type string
                                      :member-name "SourceId")
                                     (source-type :target-type
                                      aggregated-source-type :member-name
                                      "SourceType")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion")
                                     (last-update-status :target-type
                                      aggregated-source-status-type
                                      :member-name "LastUpdateStatus")
                                     (last-update-time :target-type date
                                      :member-name "LastUpdateTime")
                                     (last-error-code :target-type string
                                      :member-name "LastErrorCode")
                                     (last-error-message :target-type string
                                      :member-name "LastErrorMessage"))
                                    (:shape-name "AggregatedSourceStatus"))

(smithy/sdk/shapes:define-list aggregated-source-status-list :member
                               aggregated-source-status)

(smithy/sdk/shapes:define-enum aggregated-source-status-type
    common-lisp:nil
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:outdated "OUTDATED"))

(smithy/sdk/shapes:define-list aggregated-source-status-type-list :member
                               aggregated-source-status-type)

(smithy/sdk/shapes:define-enum aggregated-source-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:organization "ORGANIZATION"))

(smithy/sdk/shapes:define-structure aggregation-authorization common-lisp:nil
                                    ((aggregation-authorization-arn
                                      :target-type string :member-name
                                      "AggregationAuthorizationArn")
                                     (authorized-account-id :target-type
                                      account-id :member-name
                                      "AuthorizedAccountId")
                                     (authorized-aws-region :target-type
                                      aws-region :member-name
                                      "AuthorizedAwsRegion")
                                     (creation-time :target-type date
                                      :member-name "CreationTime"))
                                    (:shape-name "AggregationAuthorization"))

(smithy/sdk/shapes:define-list aggregation-authorization-list :member
                               aggregation-authorization)

(smithy/sdk/shapes:define-structure aggregator-filter-resource-type
                                    common-lisp:nil
                                    ((type :target-type aggregator-filter-type
                                      :member-name "Type")
                                     (value :target-type
                                      resource-type-value-list :member-name
                                      "Value"))
                                    (:shape-name
                                     "AggregatorFilterResourceType"))

(smithy/sdk/shapes:define-structure aggregator-filter-service-principal
                                    common-lisp:nil
                                    ((type :target-type aggregator-filter-type
                                      :member-name "Type")
                                     (value :target-type
                                      service-principal-value-list :member-name
                                      "Value"))
                                    (:shape-name
                                     "AggregatorFilterServicePrincipal"))

(smithy/sdk/shapes:define-enum aggregator-filter-type
    common-lisp:nil
  (:include "INCLUDE"))

(smithy/sdk/shapes:define-structure aggregator-filters common-lisp:nil
                                    ((resource-type :target-type
                                      aggregator-filter-resource-type
                                      :member-name "ResourceType")
                                     (service-principal :target-type
                                      aggregator-filter-service-principal
                                      :member-name "ServicePrincipal"))
                                    (:shape-name "AggregatorFilters"))

(smithy/sdk/shapes:define-list aggregator-region-list :member string)

(smithy/sdk/shapes:define-type all-supported smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type annotation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-resource-types-request
                                common-lisp:nil
                                ((configuration-recorder-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ConfigurationRecorderArn")
                                 (resource-types :target-type
                                  resource-type-list :required common-lisp:t
                                  :member-name "ResourceTypes"))
                                (:shape-name "AssociateResourceTypesRequest"))

(smithy/sdk/shapes:define-output associate-resource-types-response
                                 common-lisp:nil
                                 ((configuration-recorder :target-type
                                   configuration-recorder :required
                                   common-lisp:t :member-name
                                   "ConfigurationRecorder"))
                                 (:shape-name "AssociateResourceTypesResponse"))

(smithy/sdk/shapes:define-type auto-remediation-attempt-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type auto-remediation-attempts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure base-configuration-item common-lisp:nil
                                    ((version :target-type version :member-name
                                      "version")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (configuration-item-capture-time
                                      :target-type
                                      configuration-item-capture-time
                                      :member-name
                                      "configurationItemCaptureTime")
                                     (configuration-item-status :target-type
                                      configuration-item-status :member-name
                                      "configurationItemStatus")
                                     (configuration-state-id :target-type
                                      configuration-state-id :member-name
                                      "configurationStateId")
                                     (arn :target-type arn :member-name "arn")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-id :target-type resource-id
                                      :member-name "resourceId")
                                     (resource-name :target-type resource-name
                                      :member-name "resourceName")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "availabilityZone")
                                     (resource-creation-time :target-type
                                      resource-creation-time :member-name
                                      "resourceCreationTime")
                                     (configuration :target-type configuration
                                      :member-name "configuration")
                                     (supplementary-configuration :target-type
                                      supplementary-configuration :member-name
                                      "supplementaryConfiguration")
                                     (recording-frequency :target-type
                                      recording-frequency :member-name
                                      "recordingFrequency")
                                     (configuration-item-delivery-time
                                      :target-type
                                      configuration-item-delivery-time
                                      :member-name
                                      "configurationItemDeliveryTime"))
                                    (:shape-name "BaseConfigurationItem"))

(smithy/sdk/shapes:define-list base-configuration-items :member
                               base-configuration-item)

(smithy/sdk/shapes:define-type base-resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-get-aggregate-resource-config-request
                                common-lisp:nil
                                ((configuration-aggregator-name :target-type
                                  configuration-aggregator-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationAggregatorName")
                                 (resource-identifiers :target-type
                                  resource-identifiers-list :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifiers"))
                                (:shape-name
                                 "BatchGetAggregateResourceConfigRequest"))

(smithy/sdk/shapes:define-output batch-get-aggregate-resource-config-response
                                 common-lisp:nil
                                 ((base-configuration-items :target-type
                                   base-configuration-items :member-name
                                   "BaseConfigurationItems")
                                  (unprocessed-resource-identifiers
                                   :target-type
                                   unprocessed-resource-identifier-list
                                   :member-name
                                   "UnprocessedResourceIdentifiers"))
                                 (:shape-name
                                  "BatchGetAggregateResourceConfigResponse"))

(smithy/sdk/shapes:define-input batch-get-resource-config-request
                                common-lisp:nil
                                ((resource-keys :target-type resource-keys
                                  :required common-lisp:t :member-name
                                  "resourceKeys"))
                                (:shape-name "BatchGetResourceConfigRequest"))

(smithy/sdk/shapes:define-output batch-get-resource-config-response
                                 common-lisp:nil
                                 ((base-configuration-items :target-type
                                   base-configuration-items :member-name
                                   "baseConfigurationItems")
                                  (unprocessed-resource-keys :target-type
                                   resource-keys :member-name
                                   "unprocessedResourceKeys"))
                                 (:shape-name "BatchGetResourceConfigResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum chronological-order
    common-lisp:nil
  (:reverse "Reverse")
  (:forward "Forward"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compliance common-lisp:nil
                                    ((compliance-type :target-type
                                      compliance-type :member-name
                                      "ComplianceType")
                                     (compliance-contributor-count :target-type
                                      compliance-contributor-count :member-name
                                      "ComplianceContributorCount"))
                                    (:shape-name "Compliance"))

(smithy/sdk/shapes:define-structure compliance-by-config-rule common-lisp:nil
                                    ((config-rule-name :target-type
                                      string-with-char-limit64 :member-name
                                      "ConfigRuleName")
                                     (compliance :target-type compliance
                                      :member-name "Compliance"))
                                    (:shape-name "ComplianceByConfigRule"))

(smithy/sdk/shapes:define-list compliance-by-config-rules :member
                               compliance-by-config-rule)

(smithy/sdk/shapes:define-structure compliance-by-resource common-lisp:nil
                                    ((resource-type :target-type
                                      string-with-char-limit256 :member-name
                                      "ResourceType")
                                     (resource-id :target-type base-resource-id
                                      :member-name "ResourceId")
                                     (compliance :target-type compliance
                                      :member-name "Compliance"))
                                    (:shape-name "ComplianceByResource"))

(smithy/sdk/shapes:define-list compliance-by-resources :member
                               compliance-by-resource)

(smithy/sdk/shapes:define-structure compliance-contributor-count
                                    common-lisp:nil
                                    ((capped-count :target-type integer
                                      :member-name "CappedCount")
                                     (cap-exceeded :target-type boolean
                                      :member-name "CapExceeded"))
                                    (:shape-name "ComplianceContributorCount"))

(smithy/sdk/shapes:define-list compliance-resource-types :member
                               string-with-char-limit256)

(smithy/sdk/shapes:define-type compliance-score smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compliance-summaries-by-resource-type :member
                               compliance-summary-by-resource-type)

(smithy/sdk/shapes:define-structure compliance-summary common-lisp:nil
                                    ((compliant-resource-count :target-type
                                      compliance-contributor-count :member-name
                                      "CompliantResourceCount")
                                     (non-compliant-resource-count :target-type
                                      compliance-contributor-count :member-name
                                      "NonCompliantResourceCount")
                                     (compliance-summary-timestamp :target-type
                                      date :member-name
                                      "ComplianceSummaryTimestamp"))
                                    (:shape-name "ComplianceSummary"))

(smithy/sdk/shapes:define-structure compliance-summary-by-resource-type
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      string-with-char-limit256 :member-name
                                      "ResourceType")
                                     (compliance-summary :target-type
                                      compliance-summary :member-name
                                      "ComplianceSummary"))
                                    (:shape-name
                                     "ComplianceSummaryByResourceType"))

(smithy/sdk/shapes:define-enum compliance-type
    common-lisp:nil
  (:compliant "COMPLIANT")
  (:non-compliant "NON_COMPLIANT")
  (:not-applicable "NOT_APPLICABLE")
  (:insufficient-data "INSUFFICIENT_DATA"))

(smithy/sdk/shapes:define-list compliance-types :member compliance-type)

(smithy/sdk/shapes:define-structure config-export-delivery-info common-lisp:nil
                                    ((last-status :target-type delivery-status
                                      :member-name "lastStatus")
                                     (last-error-code :target-type string
                                      :member-name "lastErrorCode")
                                     (last-error-message :target-type string
                                      :member-name "lastErrorMessage")
                                     (last-attempt-time :target-type date
                                      :member-name "lastAttemptTime")
                                     (last-successful-time :target-type date
                                      :member-name "lastSuccessfulTime")
                                     (next-delivery-time :target-type date
                                      :member-name "nextDeliveryTime"))
                                    (:shape-name "ConfigExportDeliveryInfo"))

(smithy/sdk/shapes:define-structure config-rule common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :member-name
                                      "ConfigRuleName")
                                     (config-rule-arn :target-type
                                      string-with-char-limit256 :member-name
                                      "ConfigRuleArn")
                                     (config-rule-id :target-type
                                      string-with-char-limit64 :member-name
                                      "ConfigRuleId")
                                     (description :target-type
                                      emptiable-string-with-char-limit256
                                      :member-name "Description")
                                     (scope :target-type scope :member-name
                                      "Scope")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "Source")
                                     (input-parameters :target-type
                                      string-with-char-limit1024 :member-name
                                      "InputParameters")
                                     (maximum-execution-frequency :target-type
                                      maximum-execution-frequency :member-name
                                      "MaximumExecutionFrequency")
                                     (config-rule-state :target-type
                                      config-rule-state :member-name
                                      "ConfigRuleState")
                                     (created-by :target-type
                                      string-with-char-limit256 :member-name
                                      "CreatedBy")
                                     (evaluation-modes :target-type
                                      evaluation-modes :member-name
                                      "EvaluationModes"))
                                    (:shape-name "ConfigRule"))

(smithy/sdk/shapes:define-structure config-rule-compliance-filters
                                    common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :member-name
                                      "ConfigRuleName")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "ComplianceType")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion"))
                                    (:shape-name "ConfigRuleComplianceFilters"))

(smithy/sdk/shapes:define-structure config-rule-compliance-summary-filters
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion"))
                                    (:shape-name
                                     "ConfigRuleComplianceSummaryFilters"))

(smithy/sdk/shapes:define-enum config-rule-compliance-summary-group-key
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:aws-region "AWS_REGION"))

(smithy/sdk/shapes:define-structure config-rule-evaluation-status
                                    common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :member-name
                                      "ConfigRuleName")
                                     (config-rule-arn :target-type string
                                      :member-name "ConfigRuleArn")
                                     (config-rule-id :target-type string
                                      :member-name "ConfigRuleId")
                                     (last-successful-invocation-time
                                      :target-type date :member-name
                                      "LastSuccessfulInvocationTime")
                                     (last-failed-invocation-time :target-type
                                      date :member-name
                                      "LastFailedInvocationTime")
                                     (last-successful-evaluation-time
                                      :target-type date :member-name
                                      "LastSuccessfulEvaluationTime")
                                     (last-failed-evaluation-time :target-type
                                      date :member-name
                                      "LastFailedEvaluationTime")
                                     (first-activated-time :target-type date
                                      :member-name "FirstActivatedTime")
                                     (last-deactivated-time :target-type date
                                      :member-name "LastDeactivatedTime")
                                     (last-error-code :target-type string
                                      :member-name "LastErrorCode")
                                     (last-error-message :target-type string
                                      :member-name "LastErrorMessage")
                                     (first-evaluation-started :target-type
                                      boolean :member-name
                                      "FirstEvaluationStarted")
                                     (last-debug-log-delivery-status
                                      :target-type string :member-name
                                      "LastDebugLogDeliveryStatus")
                                     (last-debug-log-delivery-status-reason
                                      :target-type string :member-name
                                      "LastDebugLogDeliveryStatusReason")
                                     (last-debug-log-delivery-time :target-type
                                      date :member-name
                                      "LastDebugLogDeliveryTime"))
                                    (:shape-name "ConfigRuleEvaluationStatus"))

(smithy/sdk/shapes:define-list config-rule-evaluation-status-list :member
                               config-rule-evaluation-status)

(smithy/sdk/shapes:define-type config-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list config-rule-names :member config-rule-name)

(smithy/sdk/shapes:define-enum config-rule-state
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:deleting-results "DELETING_RESULTS")
  (:evaluating "EVALUATING"))

(smithy/sdk/shapes:define-list config-rules :member config-rule)

(smithy/sdk/shapes:define-structure config-snapshot-delivery-properties
                                    common-lisp:nil
                                    ((delivery-frequency :target-type
                                      maximum-execution-frequency :member-name
                                      "deliveryFrequency"))
                                    (:shape-name
                                     "ConfigSnapshotDeliveryProperties"))

(smithy/sdk/shapes:define-structure config-stream-delivery-info common-lisp:nil
                                    ((last-status :target-type delivery-status
                                      :member-name "lastStatus")
                                     (last-error-code :target-type string
                                      :member-name "lastErrorCode")
                                     (last-error-message :target-type string
                                      :member-name "lastErrorMessage")
                                     (last-status-change-time :target-type date
                                      :member-name "lastStatusChangeTime"))
                                    (:shape-name "ConfigStreamDeliveryInfo"))

(smithy/sdk/shapes:define-type configuration smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-aggregator common-lisp:nil
                                    ((configuration-aggregator-name
                                      :target-type
                                      configuration-aggregator-name
                                      :member-name
                                      "ConfigurationAggregatorName")
                                     (configuration-aggregator-arn :target-type
                                      configuration-aggregator-arn :member-name
                                      "ConfigurationAggregatorArn")
                                     (account-aggregation-sources :target-type
                                      account-aggregation-source-list
                                      :member-name "AccountAggregationSources")
                                     (organization-aggregation-source
                                      :target-type
                                      organization-aggregation-source
                                      :member-name
                                      "OrganizationAggregationSource")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime")
                                     (created-by :target-type
                                      string-with-char-limit256 :member-name
                                      "CreatedBy")
                                     (aggregator-filters :target-type
                                      aggregator-filters :member-name
                                      "AggregatorFilters"))
                                    (:shape-name "ConfigurationAggregator"))

(smithy/sdk/shapes:define-type configuration-aggregator-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-aggregator-list :member
                               configuration-aggregator)

(smithy/sdk/shapes:define-type configuration-aggregator-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-aggregator-name-list :member
                               configuration-aggregator-name)

(smithy/sdk/shapes:define-structure configuration-item common-lisp:nil
                                    ((version :target-type version :member-name
                                      "version")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (configuration-item-capture-time
                                      :target-type
                                      configuration-item-capture-time
                                      :member-name
                                      "configurationItemCaptureTime")
                                     (configuration-item-status :target-type
                                      configuration-item-status :member-name
                                      "configurationItemStatus")
                                     (configuration-state-id :target-type
                                      configuration-state-id :member-name
                                      "configurationStateId")
                                     (configuration-item-md5hash :target-type
                                      configuration-item-md5hash :member-name
                                      "configurationItemMD5Hash")
                                     (arn :target-type arn :member-name "arn")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-id :target-type resource-id
                                      :member-name "resourceId")
                                     (resource-name :target-type resource-name
                                      :member-name "resourceName")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "availabilityZone")
                                     (resource-creation-time :target-type
                                      resource-creation-time :member-name
                                      "resourceCreationTime")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (related-events :target-type
                                      related-event-list :member-name
                                      "relatedEvents")
                                     (relationships :target-type
                                      relationship-list :member-name
                                      "relationships")
                                     (configuration :target-type configuration
                                      :member-name "configuration")
                                     (supplementary-configuration :target-type
                                      supplementary-configuration :member-name
                                      "supplementaryConfiguration")
                                     (recording-frequency :target-type
                                      recording-frequency :member-name
                                      "recordingFrequency")
                                     (configuration-item-delivery-time
                                      :target-type
                                      configuration-item-delivery-time
                                      :member-name
                                      "configurationItemDeliveryTime"))
                                    (:shape-name "ConfigurationItem"))

(smithy/sdk/shapes:define-type configuration-item-capture-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type configuration-item-delivery-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list configuration-item-list :member
                               configuration-item)

(smithy/sdk/shapes:define-type configuration-item-md5hash
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-item-status
    common-lisp:nil
  (:ok "OK")
  (:resource-discovered "ResourceDiscovered")
  (:resource-not-recorded "ResourceNotRecorded")
  (:resource-deleted "ResourceDeleted")
  (:resource-deleted-not-recorded "ResourceDeletedNotRecorded"))

(smithy/sdk/shapes:define-structure configuration-recorder common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type recorder-name
                                      :member-name "name")
                                     (role-arn :target-type string :member-name
                                      "roleARN")
                                     (recording-group :target-type
                                      recording-group :member-name
                                      "recordingGroup")
                                     (recording-mode :target-type
                                      recording-mode :member-name
                                      "recordingMode")
                                     (recording-scope :target-type
                                      recording-scope :member-name
                                      "recordingScope")
                                     (service-principal :target-type
                                      service-principal :member-name
                                      "servicePrincipal"))
                                    (:shape-name "ConfigurationRecorder"))

(smithy/sdk/shapes:define-structure configuration-recorder-filter
                                    common-lisp:nil
                                    ((filter-name :target-type
                                      configuration-recorder-filter-name
                                      :member-name "filterName")
                                     (filter-value :target-type
                                      configuration-recorder-filter-values
                                      :member-name "filterValue"))
                                    (:shape-name "ConfigurationRecorderFilter"))

(smithy/sdk/shapes:define-list configuration-recorder-filter-list :member
                               configuration-recorder-filter)

(smithy/sdk/shapes:define-enum configuration-recorder-filter-name
    common-lisp:nil
  (:recording-scope "recordingScope"))

(smithy/sdk/shapes:define-type configuration-recorder-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-recorder-filter-values :member
                               configuration-recorder-filter-value)

(smithy/sdk/shapes:define-list configuration-recorder-list :member
                               configuration-recorder)

(smithy/sdk/shapes:define-list configuration-recorder-name-list :member
                               recorder-name)

(smithy/sdk/shapes:define-structure configuration-recorder-status
                                    common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :member-name "arn")
                                     (name :target-type string :member-name
                                      "name")
                                     (last-start-time :target-type date
                                      :member-name "lastStartTime")
                                     (last-stop-time :target-type date
                                      :member-name "lastStopTime")
                                     (recording :target-type boolean
                                      :member-name "recording")
                                     (last-status :target-type recorder-status
                                      :member-name "lastStatus")
                                     (last-error-code :target-type string
                                      :member-name "lastErrorCode")
                                     (last-error-message :target-type string
                                      :member-name "lastErrorMessage")
                                     (last-status-change-time :target-type date
                                      :member-name "lastStatusChangeTime")
                                     (service-principal :target-type
                                      service-principal :member-name
                                      "servicePrincipal"))
                                    (:shape-name "ConfigurationRecorderStatus"))

(smithy/sdk/shapes:define-list configuration-recorder-status-list :member
                               configuration-recorder-status)

(smithy/sdk/shapes:define-list configuration-recorder-summaries :member
                               configuration-recorder-summary)

(smithy/sdk/shapes:define-structure configuration-recorder-summary
                                    common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type recorder-name :required
                                      common-lisp:t :member-name "name")
                                     (service-principal :target-type
                                      service-principal :member-name
                                      "servicePrincipal")
                                     (recording-scope :target-type
                                      recording-scope :required common-lisp:t
                                      :member-name "recordingScope"))
                                    (:shape-name
                                     "ConfigurationRecorderSummary"))

(smithy/sdk/shapes:define-type configuration-state-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type conformance-pack-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conformance-pack-compliance-filters
                                    common-lisp:nil
                                    ((config-rule-names :target-type
                                      conformance-pack-config-rule-names
                                      :member-name "ConfigRuleNames")
                                     (compliance-type :target-type
                                      conformance-pack-compliance-type
                                      :member-name "ComplianceType"))
                                    (:shape-name
                                     "ConformancePackComplianceFilters"))

(smithy/sdk/shapes:define-list conformance-pack-compliance-resource-ids :member
                               string-with-char-limit256)

(smithy/sdk/shapes:define-structure conformance-pack-compliance-score
                                    common-lisp:nil
                                    ((score :target-type compliance-score
                                      :member-name "Score")
                                     (conformance-pack-name :target-type
                                      conformance-pack-name :member-name
                                      "ConformancePackName")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime"))
                                    (:shape-name
                                     "ConformancePackComplianceScore"))

(smithy/sdk/shapes:define-list conformance-pack-compliance-scores :member
                               conformance-pack-compliance-score)

(smithy/sdk/shapes:define-structure conformance-pack-compliance-scores-filters
                                    common-lisp:nil
                                    ((conformance-pack-names :target-type
                                      conformance-pack-name-filter :required
                                      common-lisp:t :member-name
                                      "ConformancePackNames"))
                                    (:shape-name
                                     "ConformancePackComplianceScoresFilters"))

(smithy/sdk/shapes:define-structure conformance-pack-compliance-summary
                                    common-lisp:nil
                                    ((conformance-pack-name :target-type
                                      conformance-pack-name :required
                                      common-lisp:t :member-name
                                      "ConformancePackName")
                                     (conformance-pack-compliance-status
                                      :target-type
                                      conformance-pack-compliance-type
                                      :required common-lisp:t :member-name
                                      "ConformancePackComplianceStatus"))
                                    (:shape-name
                                     "ConformancePackComplianceSummary"))

(smithy/sdk/shapes:define-list conformance-pack-compliance-summary-list :member
                               conformance-pack-compliance-summary)

(smithy/sdk/shapes:define-enum conformance-pack-compliance-type
    common-lisp:nil
  (:compliant "COMPLIANT")
  (:non-compliant "NON_COMPLIANT")
  (:insufficient-data "INSUFFICIENT_DATA"))

(smithy/sdk/shapes:define-list conformance-pack-config-rule-names :member
                               string-with-char-limit64)

(smithy/sdk/shapes:define-structure conformance-pack-detail common-lisp:nil
                                    ((conformance-pack-name :target-type
                                      conformance-pack-name :required
                                      common-lisp:t :member-name
                                      "ConformancePackName")
                                     (conformance-pack-arn :target-type
                                      conformance-pack-arn :required
                                      common-lisp:t :member-name
                                      "ConformancePackArn")
                                     (conformance-pack-id :target-type
                                      conformance-pack-id :required
                                      common-lisp:t :member-name
                                      "ConformancePackId")
                                     (delivery-s3bucket :target-type
                                      delivery-s3bucket :member-name
                                      "DeliveryS3Bucket")
                                     (delivery-s3key-prefix :target-type
                                      delivery-s3key-prefix :member-name
                                      "DeliveryS3KeyPrefix")
                                     (conformance-pack-input-parameters
                                      :target-type
                                      conformance-pack-input-parameters
                                      :member-name
                                      "ConformancePackInputParameters")
                                     (last-update-requested-time :target-type
                                      date :member-name
                                      "LastUpdateRequestedTime")
                                     (created-by :target-type
                                      string-with-char-limit256 :member-name
                                      "CreatedBy")
                                     (template-ssmdocument-details :target-type
                                      template-ssmdocument-details :member-name
                                      "TemplateSSMDocumentDetails"))
                                    (:shape-name "ConformancePackDetail"))

(smithy/sdk/shapes:define-list conformance-pack-detail-list :member
                               conformance-pack-detail)

(smithy/sdk/shapes:define-structure conformance-pack-evaluation-filters
                                    common-lisp:nil
                                    ((config-rule-names :target-type
                                      conformance-pack-config-rule-names
                                      :member-name "ConfigRuleNames")
                                     (compliance-type :target-type
                                      conformance-pack-compliance-type
                                      :member-name "ComplianceType")
                                     (resource-type :target-type
                                      string-with-char-limit256 :member-name
                                      "ResourceType")
                                     (resource-ids :target-type
                                      conformance-pack-compliance-resource-ids
                                      :member-name "ResourceIds"))
                                    (:shape-name
                                     "ConformancePackEvaluationFilters"))

(smithy/sdk/shapes:define-structure conformance-pack-evaluation-result
                                    common-lisp:nil
                                    ((compliance-type :target-type
                                      conformance-pack-compliance-type
                                      :required common-lisp:t :member-name
                                      "ComplianceType")
                                     (evaluation-result-identifier :target-type
                                      evaluation-result-identifier :required
                                      common-lisp:t :member-name
                                      "EvaluationResultIdentifier")
                                     (config-rule-invoked-time :target-type
                                      date :required common-lisp:t :member-name
                                      "ConfigRuleInvokedTime")
                                     (result-recorded-time :target-type date
                                      :required common-lisp:t :member-name
                                      "ResultRecordedTime")
                                     (annotation :target-type annotation
                                      :member-name "Annotation"))
                                    (:shape-name
                                     "ConformancePackEvaluationResult"))

(smithy/sdk/shapes:define-type conformance-pack-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conformance-pack-input-parameter
                                    common-lisp:nil
                                    ((parameter-name :target-type
                                      parameter-name :required common-lisp:t
                                      :member-name "ParameterName")
                                     (parameter-value :target-type
                                      parameter-value :required common-lisp:t
                                      :member-name "ParameterValue"))
                                    (:shape-name
                                     "ConformancePackInputParameter"))

(smithy/sdk/shapes:define-list conformance-pack-input-parameters :member
                               conformance-pack-input-parameter)

(smithy/sdk/shapes:define-type conformance-pack-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list conformance-pack-name-filter :member
                               conformance-pack-name)

(smithy/sdk/shapes:define-list conformance-pack-names-list :member
                               conformance-pack-name)

(smithy/sdk/shapes:define-list conformance-pack-names-to-summarize-list :member
                               conformance-pack-name)

(smithy/sdk/shapes:define-structure conformance-pack-rule-compliance
                                    common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :member-name
                                      "ConfigRuleName")
                                     (compliance-type :target-type
                                      conformance-pack-compliance-type
                                      :member-name "ComplianceType")
                                     (controls :target-type controls-list
                                      :member-name "Controls"))
                                    (:shape-name
                                     "ConformancePackRuleCompliance"))

(smithy/sdk/shapes:define-list conformance-pack-rule-compliance-list :member
                               conformance-pack-rule-compliance)

(smithy/sdk/shapes:define-list conformance-pack-rule-evaluation-results-list
                               :member conformance-pack-evaluation-result)

(smithy/sdk/shapes:define-enum conformance-pack-state
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure conformance-pack-status-detail
                                    common-lisp:nil
                                    ((conformance-pack-name :target-type
                                      conformance-pack-name :required
                                      common-lisp:t :member-name
                                      "ConformancePackName")
                                     (conformance-pack-id :target-type
                                      conformance-pack-id :required
                                      common-lisp:t :member-name
                                      "ConformancePackId")
                                     (conformance-pack-arn :target-type
                                      conformance-pack-arn :required
                                      common-lisp:t :member-name
                                      "ConformancePackArn")
                                     (conformance-pack-state :target-type
                                      conformance-pack-state :required
                                      common-lisp:t :member-name
                                      "ConformancePackState")
                                     (stack-arn :target-type stack-arn
                                      :required common-lisp:t :member-name
                                      "StackArn")
                                     (conformance-pack-status-reason
                                      :target-type
                                      conformance-pack-status-reason
                                      :member-name
                                      "ConformancePackStatusReason")
                                     (last-update-requested-time :target-type
                                      date :required common-lisp:t :member-name
                                      "LastUpdateRequestedTime")
                                     (last-update-completed-time :target-type
                                      date :member-name
                                      "LastUpdateCompletedTime"))
                                    (:shape-name "ConformancePackStatusDetail"))

(smithy/sdk/shapes:define-list conformance-pack-status-details-list :member
                               conformance-pack-status-detail)

(smithy/sdk/shapes:define-type conformance-pack-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conformance-pack-template-validation-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ConformancePackTemplateValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list controls-list :member string-with-char-limit128)

(smithy/sdk/shapes:define-type cosmos-page-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure custom-policy-details common-lisp:nil
                                    ((policy-runtime :target-type
                                      policy-runtime :required common-lisp:t
                                      :member-name "PolicyRuntime")
                                     (policy-text :target-type policy-text
                                      :required common-lisp:t :member-name
                                      "PolicyText")
                                     (enable-debug-log-delivery :target-type
                                      boolean :member-name
                                      "EnableDebugLogDelivery"))
                                    (:shape-name "CustomPolicyDetails"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list debug-log-delivery-accounts :member account-id)

(smithy/sdk/shapes:define-input delete-aggregation-authorization-request
                                common-lisp:nil
                                ((authorized-account-id :target-type account-id
                                  :required common-lisp:t :member-name
                                  "AuthorizedAccountId")
                                 (authorized-aws-region :target-type aws-region
                                  :required common-lisp:t :member-name
                                  "AuthorizedAwsRegion"))
                                (:shape-name
                                 "DeleteAggregationAuthorizationRequest"))

(smithy/sdk/shapes:define-input delete-config-rule-request common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName"))
                                (:shape-name "DeleteConfigRuleRequest"))

(smithy/sdk/shapes:define-input delete-configuration-aggregator-request
                                common-lisp:nil
                                ((configuration-aggregator-name :target-type
                                  configuration-aggregator-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationAggregatorName"))
                                (:shape-name
                                 "DeleteConfigurationAggregatorRequest"))

(smithy/sdk/shapes:define-input delete-configuration-recorder-request
                                common-lisp:nil
                                ((configuration-recorder-name :target-type
                                  recorder-name :required common-lisp:t
                                  :member-name "ConfigurationRecorderName"))
                                (:shape-name
                                 "DeleteConfigurationRecorderRequest"))

(smithy/sdk/shapes:define-input delete-conformance-pack-request common-lisp:nil
                                ((conformance-pack-name :target-type
                                  conformance-pack-name :required common-lisp:t
                                  :member-name "ConformancePackName"))
                                (:shape-name "DeleteConformancePackRequest"))

(smithy/sdk/shapes:define-input delete-delivery-channel-request common-lisp:nil
                                ((delivery-channel-name :target-type
                                  channel-name :required common-lisp:t
                                  :member-name "DeliveryChannelName"))
                                (:shape-name "DeleteDeliveryChannelRequest"))

(smithy/sdk/shapes:define-input delete-evaluation-results-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  string-with-char-limit64 :required
                                  common-lisp:t :member-name "ConfigRuleName"))
                                (:shape-name "DeleteEvaluationResultsRequest"))

(smithy/sdk/shapes:define-output delete-evaluation-results-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteEvaluationResultsResponse"))

(smithy/sdk/shapes:define-input delete-organization-config-rule-request
                                common-lisp:nil
                                ((organization-config-rule-name :target-type
                                  organization-config-rule-name :required
                                  common-lisp:t :member-name
                                  "OrganizationConfigRuleName"))
                                (:shape-name
                                 "DeleteOrganizationConfigRuleRequest"))

(smithy/sdk/shapes:define-input delete-organization-conformance-pack-request
                                common-lisp:nil
                                ((organization-conformance-pack-name
                                  :target-type
                                  organization-conformance-pack-name :required
                                  common-lisp:t :member-name
                                  "OrganizationConformancePackName"))
                                (:shape-name
                                 "DeleteOrganizationConformancePackRequest"))

(smithy/sdk/shapes:define-input delete-pending-aggregation-request-request
                                common-lisp:nil
                                ((requester-account-id :target-type account-id
                                  :required common-lisp:t :member-name
                                  "RequesterAccountId")
                                 (requester-aws-region :target-type aws-region
                                  :required common-lisp:t :member-name
                                  "RequesterAwsRegion"))
                                (:shape-name
                                 "DeletePendingAggregationRequestRequest"))

(smithy/sdk/shapes:define-input delete-remediation-configuration-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name
                                 "DeleteRemediationConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-remediation-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteRemediationConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-remediation-exceptions-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (resource-keys :target-type
                                  remediation-exception-resource-keys :required
                                  common-lisp:t :member-name "ResourceKeys"))
                                (:shape-name
                                 "DeleteRemediationExceptionsRequest"))

(smithy/sdk/shapes:define-output delete-remediation-exceptions-response
                                 common-lisp:nil
                                 ((failed-batches :target-type
                                   failed-delete-remediation-exceptions-batches
                                   :member-name "FailedBatches"))
                                 (:shape-name
                                  "DeleteRemediationExceptionsResponse"))

(smithy/sdk/shapes:define-input delete-resource-config-request common-lisp:nil
                                ((resource-type :target-type
                                  resource-type-string :required common-lisp:t
                                  :member-name "ResourceType")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "DeleteResourceConfigRequest"))

(smithy/sdk/shapes:define-input delete-retention-configuration-request
                                common-lisp:nil
                                ((retention-configuration-name :target-type
                                  retention-configuration-name :required
                                  common-lisp:t :member-name
                                  "RetentionConfigurationName"))
                                (:shape-name
                                 "DeleteRetentionConfigurationRequest"))

(smithy/sdk/shapes:define-input
 delete-service-linked-configuration-recorder-request common-lisp:nil
 ((service-principal :target-type service-principal :required common-lisp:t
   :member-name "ServicePrincipal"))
 (:shape-name "DeleteServiceLinkedConfigurationRecorderRequest"))

(smithy/sdk/shapes:define-output
 delete-service-linked-configuration-recorder-response common-lisp:nil
 ((arn :target-type amazon-resource-name :required common-lisp:t :member-name
   "Arn")
  (name :target-type recorder-name :required common-lisp:t :member-name
   "Name"))
 (:shape-name "DeleteServiceLinkedConfigurationRecorderResponse"))

(smithy/sdk/shapes:define-input delete-stored-query-request common-lisp:nil
                                ((query-name :target-type query-name :required
                                  common-lisp:t :member-name "QueryName"))
                                (:shape-name "DeleteStoredQueryRequest"))

(smithy/sdk/shapes:define-output delete-stored-query-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteStoredQueryResponse"))

(smithy/sdk/shapes:define-input deliver-config-snapshot-request common-lisp:nil
                                ((delivery-channel-name :target-type
                                  channel-name :required common-lisp:t
                                  :member-name "deliveryChannelName"))
                                (:shape-name "DeliverConfigSnapshotRequest"))

(smithy/sdk/shapes:define-output deliver-config-snapshot-response
                                 common-lisp:nil
                                 ((config-snapshot-id :target-type string
                                   :member-name "configSnapshotId"))
                                 (:shape-name "DeliverConfigSnapshotResponse"))

(smithy/sdk/shapes:define-structure delivery-channel common-lisp:nil
                                    ((name :target-type channel-name
                                      :member-name "name")
                                     (s3bucket-name :target-type string
                                      :member-name "s3BucketName")
                                     (s3key-prefix :target-type string
                                      :member-name "s3KeyPrefix")
                                     (s3kms-key-arn :target-type string
                                      :member-name "s3KmsKeyArn")
                                     (sns-topic-arn :target-type string
                                      :member-name "snsTopicARN")
                                     (config-snapshot-delivery-properties
                                      :target-type
                                      config-snapshot-delivery-properties
                                      :member-name
                                      "configSnapshotDeliveryProperties"))
                                    (:shape-name "DeliveryChannel"))

(smithy/sdk/shapes:define-list delivery-channel-list :member delivery-channel)

(smithy/sdk/shapes:define-list delivery-channel-name-list :member channel-name)

(smithy/sdk/shapes:define-structure delivery-channel-status common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (config-snapshot-delivery-info
                                      :target-type config-export-delivery-info
                                      :member-name
                                      "configSnapshotDeliveryInfo")
                                     (config-history-delivery-info :target-type
                                      config-export-delivery-info :member-name
                                      "configHistoryDeliveryInfo")
                                     (config-stream-delivery-info :target-type
                                      config-stream-delivery-info :member-name
                                      "configStreamDeliveryInfo"))
                                    (:shape-name "DeliveryChannelStatus"))

(smithy/sdk/shapes:define-list delivery-channel-status-list :member
                               delivery-channel-status)

(smithy/sdk/shapes:define-type delivery-s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type delivery-s3key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum delivery-status
    common-lisp:nil
  (:success "Success")
  (:failure "Failure")
  (:not-applicable "Not_Applicable"))

(smithy/sdk/shapes:define-input
 describe-aggregate-compliance-by-config-rules-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (filters :target-type config-rule-compliance-filters :member-name "Filters")
  (limit :target-type group-by-apilimit :member-name "Limit")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeAggregateComplianceByConfigRulesRequest"))

(smithy/sdk/shapes:define-output
 describe-aggregate-compliance-by-config-rules-response common-lisp:nil
 ((aggregate-compliance-by-config-rules :target-type
   aggregate-compliance-by-config-rule-list :member-name
   "AggregateComplianceByConfigRules")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeAggregateComplianceByConfigRulesResponse"))

(smithy/sdk/shapes:define-input
 describe-aggregate-compliance-by-conformance-packs-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (filters :target-type aggregate-conformance-pack-compliance-filters
   :member-name "Filters")
  (limit :target-type limit :member-name "Limit")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeAggregateComplianceByConformancePacksRequest"))

(smithy/sdk/shapes:define-output
 describe-aggregate-compliance-by-conformance-packs-response common-lisp:nil
 ((aggregate-compliance-by-conformance-packs :target-type
   aggregate-compliance-by-conformance-pack-list :member-name
   "AggregateComplianceByConformancePacks")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeAggregateComplianceByConformancePacksResponse"))

(smithy/sdk/shapes:define-input describe-aggregation-authorizations-request
                                common-lisp:nil
                                ((limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeAggregationAuthorizationsRequest"))

(smithy/sdk/shapes:define-output describe-aggregation-authorizations-response
                                 common-lisp:nil
                                 ((aggregation-authorizations :target-type
                                   aggregation-authorization-list :member-name
                                   "AggregationAuthorizations")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeAggregationAuthorizationsResponse"))

(smithy/sdk/shapes:define-input describe-compliance-by-config-rule-request
                                common-lisp:nil
                                ((config-rule-names :target-type
                                  config-rule-names :member-name
                                  "ConfigRuleNames")
                                 (compliance-types :target-type
                                  compliance-types :member-name
                                  "ComplianceTypes")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeComplianceByConfigRuleRequest"))

(smithy/sdk/shapes:define-output describe-compliance-by-config-rule-response
                                 common-lisp:nil
                                 ((compliance-by-config-rules :target-type
                                   compliance-by-config-rules :member-name
                                   "ComplianceByConfigRules")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeComplianceByConfigRuleResponse"))

(smithy/sdk/shapes:define-input describe-compliance-by-resource-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  string-with-char-limit256 :member-name
                                  "ResourceType")
                                 (resource-id :target-type base-resource-id
                                  :member-name "ResourceId")
                                 (compliance-types :target-type
                                  compliance-types :member-name
                                  "ComplianceTypes")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeComplianceByResourceRequest"))

(smithy/sdk/shapes:define-output describe-compliance-by-resource-response
                                 common-lisp:nil
                                 ((compliance-by-resources :target-type
                                   compliance-by-resources :member-name
                                   "ComplianceByResources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeComplianceByResourceResponse"))

(smithy/sdk/shapes:define-input describe-config-rule-evaluation-status-request
                                common-lisp:nil
                                ((config-rule-names :target-type
                                  config-rule-names :member-name
                                  "ConfigRuleNames")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (limit :target-type rule-limit :member-name
                                  "Limit"))
                                (:shape-name
                                 "DescribeConfigRuleEvaluationStatusRequest"))

(smithy/sdk/shapes:define-output
 describe-config-rule-evaluation-status-response common-lisp:nil
 ((config-rules-evaluation-status :target-type
   config-rule-evaluation-status-list :member-name
   "ConfigRulesEvaluationStatus")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeConfigRuleEvaluationStatusResponse"))

(smithy/sdk/shapes:define-structure describe-config-rules-filters
                                    common-lisp:nil
                                    ((evaluation-mode :target-type
                                      evaluation-mode :member-name
                                      "EvaluationMode"))
                                    (:shape-name "DescribeConfigRulesFilters"))

(smithy/sdk/shapes:define-input describe-config-rules-request common-lisp:nil
                                ((config-rule-names :target-type
                                  config-rule-names :member-name
                                  "ConfigRuleNames")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (filters :target-type
                                  describe-config-rules-filters :member-name
                                  "Filters"))
                                (:shape-name "DescribeConfigRulesRequest"))

(smithy/sdk/shapes:define-output describe-config-rules-response common-lisp:nil
                                 ((config-rules :target-type config-rules
                                   :member-name "ConfigRules")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeConfigRulesResponse"))

(smithy/sdk/shapes:define-input
 describe-configuration-aggregator-sources-status-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (update-status :target-type aggregated-source-status-type-list :member-name
   "UpdateStatus")
  (next-token :target-type string :member-name "NextToken")
  (limit :target-type limit :member-name "Limit"))
 (:shape-name "DescribeConfigurationAggregatorSourcesStatusRequest"))

(smithy/sdk/shapes:define-output
 describe-configuration-aggregator-sources-status-response common-lisp:nil
 ((aggregated-source-status-list :target-type aggregated-source-status-list
   :member-name "AggregatedSourceStatusList")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeConfigurationAggregatorSourcesStatusResponse"))

(smithy/sdk/shapes:define-input describe-configuration-aggregators-request
                                common-lisp:nil
                                ((configuration-aggregator-names :target-type
                                  configuration-aggregator-name-list
                                  :member-name "ConfigurationAggregatorNames")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name
                                 "DescribeConfigurationAggregatorsRequest"))

(smithy/sdk/shapes:define-output describe-configuration-aggregators-response
                                 common-lisp:nil
                                 ((configuration-aggregators :target-type
                                   configuration-aggregator-list :member-name
                                   "ConfigurationAggregators")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeConfigurationAggregatorsResponse"))

(smithy/sdk/shapes:define-input describe-configuration-recorder-status-request
                                common-lisp:nil
                                ((configuration-recorder-names :target-type
                                  configuration-recorder-name-list :member-name
                                  "ConfigurationRecorderNames")
                                 (service-principal :target-type
                                  service-principal :member-name
                                  "ServicePrincipal")
                                 (arn :target-type amazon-resource-name
                                  :member-name "Arn"))
                                (:shape-name
                                 "DescribeConfigurationRecorderStatusRequest"))

(smithy/sdk/shapes:define-output
 describe-configuration-recorder-status-response common-lisp:nil
 ((configuration-recorders-status :target-type
   configuration-recorder-status-list :member-name
   "ConfigurationRecordersStatus"))
 (:shape-name "DescribeConfigurationRecorderStatusResponse"))

(smithy/sdk/shapes:define-input describe-configuration-recorders-request
                                common-lisp:nil
                                ((configuration-recorder-names :target-type
                                  configuration-recorder-name-list :member-name
                                  "ConfigurationRecorderNames")
                                 (service-principal :target-type
                                  service-principal :member-name
                                  "ServicePrincipal")
                                 (arn :target-type amazon-resource-name
                                  :member-name "Arn"))
                                (:shape-name
                                 "DescribeConfigurationRecordersRequest"))

(smithy/sdk/shapes:define-output describe-configuration-recorders-response
                                 common-lisp:nil
                                 ((configuration-recorders :target-type
                                   configuration-recorder-list :member-name
                                   "ConfigurationRecorders"))
                                 (:shape-name
                                  "DescribeConfigurationRecordersResponse"))

(smithy/sdk/shapes:define-type describe-conformance-pack-compliance-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-conformance-pack-compliance-request
                                common-lisp:nil
                                ((conformance-pack-name :target-type
                                  conformance-pack-name :required common-lisp:t
                                  :member-name "ConformancePackName")
                                 (filters :target-type
                                  conformance-pack-compliance-filters
                                  :member-name "Filters")
                                 (limit :target-type
                                  describe-conformance-pack-compliance-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeConformancePackComplianceRequest"))

(smithy/sdk/shapes:define-output describe-conformance-pack-compliance-response
                                 common-lisp:nil
                                 ((conformance-pack-name :target-type
                                   conformance-pack-name :required
                                   common-lisp:t :member-name
                                   "ConformancePackName")
                                  (conformance-pack-rule-compliance-list
                                   :target-type
                                   conformance-pack-rule-compliance-list
                                   :required common-lisp:t :member-name
                                   "ConformancePackRuleComplianceList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConformancePackComplianceResponse"))

(smithy/sdk/shapes:define-input describe-conformance-pack-status-request
                                common-lisp:nil
                                ((conformance-pack-names :target-type
                                  conformance-pack-names-list :member-name
                                  "ConformancePackNames")
                                 (limit :target-type page-size-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeConformancePackStatusRequest"))

(smithy/sdk/shapes:define-output describe-conformance-pack-status-response
                                 common-lisp:nil
                                 ((conformance-pack-status-details :target-type
                                   conformance-pack-status-details-list
                                   :member-name "ConformancePackStatusDetails")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConformancePackStatusResponse"))

(smithy/sdk/shapes:define-input describe-conformance-packs-request
                                common-lisp:nil
                                ((conformance-pack-names :target-type
                                  conformance-pack-names-list :member-name
                                  "ConformancePackNames")
                                 (limit :target-type page-size-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeConformancePacksRequest"))

(smithy/sdk/shapes:define-output describe-conformance-packs-response
                                 common-lisp:nil
                                 ((conformance-pack-details :target-type
                                   conformance-pack-detail-list :member-name
                                   "ConformancePackDetails")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConformancePacksResponse"))

(smithy/sdk/shapes:define-input describe-delivery-channel-status-request
                                common-lisp:nil
                                ((delivery-channel-names :target-type
                                  delivery-channel-name-list :member-name
                                  "DeliveryChannelNames"))
                                (:shape-name
                                 "DescribeDeliveryChannelStatusRequest"))

(smithy/sdk/shapes:define-output describe-delivery-channel-status-response
                                 common-lisp:nil
                                 ((delivery-channels-status :target-type
                                   delivery-channel-status-list :member-name
                                   "DeliveryChannelsStatus"))
                                 (:shape-name
                                  "DescribeDeliveryChannelStatusResponse"))

(smithy/sdk/shapes:define-input describe-delivery-channels-request
                                common-lisp:nil
                                ((delivery-channel-names :target-type
                                  delivery-channel-name-list :member-name
                                  "DeliveryChannelNames"))
                                (:shape-name "DescribeDeliveryChannelsRequest"))

(smithy/sdk/shapes:define-output describe-delivery-channels-response
                                 common-lisp:nil
                                 ((delivery-channels :target-type
                                   delivery-channel-list :member-name
                                   "DeliveryChannels"))
                                 (:shape-name
                                  "DescribeDeliveryChannelsResponse"))

(smithy/sdk/shapes:define-input
 describe-organization-config-rule-statuses-request common-lisp:nil
 ((organization-config-rule-names :target-type organization-config-rule-names
   :member-name "OrganizationConfigRuleNames")
  (limit :target-type cosmos-page-limit :member-name "Limit")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeOrganizationConfigRuleStatusesRequest"))

(smithy/sdk/shapes:define-output
 describe-organization-config-rule-statuses-response common-lisp:nil
 ((organization-config-rule-statuses :target-type
   organization-config-rule-statuses :member-name
   "OrganizationConfigRuleStatuses")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeOrganizationConfigRuleStatusesResponse"))

(smithy/sdk/shapes:define-input describe-organization-config-rules-request
                                common-lisp:nil
                                ((organization-config-rule-names :target-type
                                  organization-config-rule-names :member-name
                                  "OrganizationConfigRuleNames")
                                 (limit :target-type cosmos-page-limit
                                  :member-name "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeOrganizationConfigRulesRequest"))

(smithy/sdk/shapes:define-output describe-organization-config-rules-response
                                 common-lisp:nil
                                 ((organization-config-rules :target-type
                                   organization-config-rules :member-name
                                   "OrganizationConfigRules")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeOrganizationConfigRulesResponse"))

(smithy/sdk/shapes:define-input
 describe-organization-conformance-pack-statuses-request common-lisp:nil
 ((organization-conformance-pack-names :target-type
   organization-conformance-pack-names :member-name
   "OrganizationConformancePackNames")
  (limit :target-type cosmos-page-limit :member-name "Limit")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeOrganizationConformancePackStatusesRequest"))

(smithy/sdk/shapes:define-output
 describe-organization-conformance-pack-statuses-response common-lisp:nil
 ((organization-conformance-pack-statuses :target-type
   organization-conformance-pack-statuses :member-name
   "OrganizationConformancePackStatuses")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeOrganizationConformancePackStatusesResponse"))

(smithy/sdk/shapes:define-input describe-organization-conformance-packs-request
                                common-lisp:nil
                                ((organization-conformance-pack-names
                                  :target-type
                                  organization-conformance-pack-names
                                  :member-name
                                  "OrganizationConformancePackNames")
                                 (limit :target-type cosmos-page-limit
                                  :member-name "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeOrganizationConformancePacksRequest"))

(smithy/sdk/shapes:define-output
 describe-organization-conformance-packs-response common-lisp:nil
 ((organization-conformance-packs :target-type organization-conformance-packs
   :member-name "OrganizationConformancePacks")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeOrganizationConformancePacksResponse"))

(smithy/sdk/shapes:define-type describe-pending-aggregation-requests-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-pending-aggregation-requests-request
                                common-lisp:nil
                                ((limit :target-type
                                  describe-pending-aggregation-requests-limit
                                  :member-name "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribePendingAggregationRequestsRequest"))

(smithy/sdk/shapes:define-output describe-pending-aggregation-requests-response
                                 common-lisp:nil
                                 ((pending-aggregation-requests :target-type
                                   pending-aggregation-request-list
                                   :member-name "PendingAggregationRequests")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribePendingAggregationRequestsResponse"))

(smithy/sdk/shapes:define-input describe-remediation-configurations-request
                                common-lisp:nil
                                ((config-rule-names :target-type
                                  config-rule-names :required common-lisp:t
                                  :member-name "ConfigRuleNames"))
                                (:shape-name
                                 "DescribeRemediationConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-remediation-configurations-response
                                 common-lisp:nil
                                 ((remediation-configurations :target-type
                                   remediation-configurations :member-name
                                   "RemediationConfigurations"))
                                 (:shape-name
                                  "DescribeRemediationConfigurationsResponse"))

(smithy/sdk/shapes:define-input describe-remediation-exceptions-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (resource-keys :target-type
                                  remediation-exception-resource-keys
                                  :member-name "ResourceKeys")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeRemediationExceptionsRequest"))

(smithy/sdk/shapes:define-output describe-remediation-exceptions-response
                                 common-lisp:nil
                                 ((remediation-exceptions :target-type
                                   remediation-exceptions :member-name
                                   "RemediationExceptions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeRemediationExceptionsResponse"))

(smithy/sdk/shapes:define-input describe-remediation-execution-status-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (resource-keys :target-type resource-keys
                                  :member-name "ResourceKeys")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeRemediationExecutionStatusRequest"))

(smithy/sdk/shapes:define-output describe-remediation-execution-status-response
                                 common-lisp:nil
                                 ((remediation-execution-statuses :target-type
                                   remediation-execution-statuses :member-name
                                   "RemediationExecutionStatuses")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeRemediationExecutionStatusResponse"))

(smithy/sdk/shapes:define-input describe-retention-configurations-request
                                common-lisp:nil
                                ((retention-configuration-names :target-type
                                  retention-configuration-name-list
                                  :member-name "RetentionConfigurationNames")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeRetentionConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-retention-configurations-response
                                 common-lisp:nil
                                 ((retention-configurations :target-type
                                   retention-configuration-list :member-name
                                   "RetentionConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeRetentionConfigurationsResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-resource-types-request
                                common-lisp:nil
                                ((configuration-recorder-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ConfigurationRecorderArn")
                                 (resource-types :target-type
                                  resource-type-list :required common-lisp:t
                                  :member-name "ResourceTypes"))
                                (:shape-name
                                 "DisassociateResourceTypesRequest"))

(smithy/sdk/shapes:define-output disassociate-resource-types-response
                                 common-lisp:nil
                                 ((configuration-recorder :target-type
                                   configuration-recorder :required
                                   common-lisp:t :member-name
                                   "ConfigurationRecorder"))
                                 (:shape-name
                                  "DisassociateResourceTypesResponse"))

(smithy/sdk/shapes:define-list discovered-resource-identifier-list :member
                               aggregate-resource-identifier)

(smithy/sdk/shapes:define-type earlier-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type emptiable-string-with-char-limit256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation common-lisp:nil
                                    ((compliance-resource-type :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "ComplianceResourceType")
                                     (compliance-resource-id :target-type
                                      base-resource-id :required common-lisp:t
                                      :member-name "ComplianceResourceId")
                                     (compliance-type :target-type
                                      compliance-type :required common-lisp:t
                                      :member-name "ComplianceType")
                                     (annotation :target-type
                                      string-with-char-limit256 :member-name
                                      "Annotation")
                                     (ordering-timestamp :target-type
                                      ordering-timestamp :required
                                      common-lisp:t :member-name
                                      "OrderingTimestamp"))
                                    (:shape-name "Evaluation"))

(smithy/sdk/shapes:define-structure evaluation-context common-lisp:nil
                                    ((evaluation-context-identifier
                                      :target-type
                                      evaluation-context-identifier
                                      :member-name
                                      "EvaluationContextIdentifier"))
                                    (:shape-name "EvaluationContext"))

(smithy/sdk/shapes:define-type evaluation-context-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum evaluation-mode
    common-lisp:nil
  (:detective "DETECTIVE")
  (:proactive "PROACTIVE"))

(smithy/sdk/shapes:define-structure evaluation-mode-configuration
                                    common-lisp:nil
                                    ((mode :target-type evaluation-mode
                                      :member-name "Mode"))
                                    (:shape-name "EvaluationModeConfiguration"))

(smithy/sdk/shapes:define-list evaluation-modes :member
                               evaluation-mode-configuration)

(smithy/sdk/shapes:define-structure evaluation-result common-lisp:nil
                                    ((evaluation-result-identifier :target-type
                                      evaluation-result-identifier :member-name
                                      "EvaluationResultIdentifier")
                                     (compliance-type :target-type
                                      compliance-type :member-name
                                      "ComplianceType")
                                     (result-recorded-time :target-type date
                                      :member-name "ResultRecordedTime")
                                     (config-rule-invoked-time :target-type
                                      date :member-name
                                      "ConfigRuleInvokedTime")
                                     (annotation :target-type
                                      string-with-char-limit256 :member-name
                                      "Annotation")
                                     (result-token :target-type string
                                      :member-name "ResultToken"))
                                    (:shape-name "EvaluationResult"))

(smithy/sdk/shapes:define-structure evaluation-result-identifier
                                    common-lisp:nil
                                    ((evaluation-result-qualifier :target-type
                                      evaluation-result-qualifier :member-name
                                      "EvaluationResultQualifier")
                                     (ordering-timestamp :target-type date
                                      :member-name "OrderingTimestamp")
                                     (resource-evaluation-id :target-type
                                      resource-evaluation-id :member-name
                                      "ResourceEvaluationId"))
                                    (:shape-name "EvaluationResultIdentifier"))

(smithy/sdk/shapes:define-structure evaluation-result-qualifier common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :member-name
                                      "ConfigRuleName")
                                     (resource-type :target-type
                                      string-with-char-limit256 :member-name
                                      "ResourceType")
                                     (resource-id :target-type base-resource-id
                                      :member-name "ResourceId")
                                     (evaluation-mode :target-type
                                      evaluation-mode :member-name
                                      "EvaluationMode"))
                                    (:shape-name "EvaluationResultQualifier"))

(smithy/sdk/shapes:define-list evaluation-results :member evaluation-result)

(smithy/sdk/shapes:define-structure evaluation-status common-lisp:nil
                                    ((status :target-type
                                      resource-evaluation-status :required
                                      common-lisp:t :member-name "Status")
                                     (failure-reason :target-type
                                      string-with-char-limit1024 :member-name
                                      "FailureReason"))
                                    (:shape-name "EvaluationStatus"))

(smithy/sdk/shapes:define-type evaluation-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list evaluations :member evaluation)

(smithy/sdk/shapes:define-enum event-source
    common-lisp:nil
  (:aws-config "aws.config"))

(smithy/sdk/shapes:define-list excluded-accounts :member account-id)

(smithy/sdk/shapes:define-structure exclusion-by-resource-types common-lisp:nil
                                    ((resource-types :target-type
                                      resource-type-list :member-name
                                      "resourceTypes"))
                                    (:shape-name "ExclusionByResourceTypes"))

(smithy/sdk/shapes:define-structure execution-controls common-lisp:nil
                                    ((ssm-controls :target-type ssm-controls
                                      :member-name "SsmControls"))
                                    (:shape-name "ExecutionControls"))

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure external-evaluation common-lisp:nil
                                    ((compliance-resource-type :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "ComplianceResourceType")
                                     (compliance-resource-id :target-type
                                      base-resource-id :required common-lisp:t
                                      :member-name "ComplianceResourceId")
                                     (compliance-type :target-type
                                      compliance-type :required common-lisp:t
                                      :member-name "ComplianceType")
                                     (annotation :target-type
                                      string-with-char-limit256 :member-name
                                      "Annotation")
                                     (ordering-timestamp :target-type
                                      ordering-timestamp :required
                                      common-lisp:t :member-name
                                      "OrderingTimestamp"))
                                    (:shape-name "ExternalEvaluation"))

(smithy/sdk/shapes:define-structure failed-delete-remediation-exceptions-batch
                                    common-lisp:nil
                                    ((failure-message :target-type string
                                      :member-name "FailureMessage")
                                     (failed-items :target-type
                                      remediation-exception-resource-keys
                                      :member-name "FailedItems"))
                                    (:shape-name
                                     "FailedDeleteRemediationExceptionsBatch"))

(smithy/sdk/shapes:define-list failed-delete-remediation-exceptions-batches
                               :member
                               failed-delete-remediation-exceptions-batch)

(smithy/sdk/shapes:define-structure failed-remediation-batch common-lisp:nil
                                    ((failure-message :target-type string
                                      :member-name "FailureMessage")
                                     (failed-items :target-type
                                      remediation-configurations :member-name
                                      "FailedItems"))
                                    (:shape-name "FailedRemediationBatch"))

(smithy/sdk/shapes:define-list failed-remediation-batches :member
                               failed-remediation-batch)

(smithy/sdk/shapes:define-structure failed-remediation-exception-batch
                                    common-lisp:nil
                                    ((failure-message :target-type string
                                      :member-name "FailureMessage")
                                     (failed-items :target-type
                                      remediation-exceptions :member-name
                                      "FailedItems"))
                                    (:shape-name
                                     "FailedRemediationExceptionBatch"))

(smithy/sdk/shapes:define-list failed-remediation-exception-batches :member
                               failed-remediation-exception-batch)

(smithy/sdk/shapes:define-structure field-info common-lisp:nil
                                    ((name :target-type field-name :member-name
                                      "Name"))
                                    (:shape-name "FieldInfo"))

(smithy/sdk/shapes:define-list field-info-list :member field-info)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 get-aggregate-compliance-details-by-config-rule-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (config-rule-name :target-type config-rule-name :required common-lisp:t
   :member-name "ConfigRuleName")
  (account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId")
  (aws-region :target-type aws-region :required common-lisp:t :member-name
   "AwsRegion")
  (compliance-type :target-type compliance-type :member-name "ComplianceType")
  (limit :target-type limit :member-name "Limit")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateComplianceDetailsByConfigRuleRequest"))

(smithy/sdk/shapes:define-output
 get-aggregate-compliance-details-by-config-rule-response common-lisp:nil
 ((aggregate-evaluation-results :target-type aggregate-evaluation-result-list
   :member-name "AggregateEvaluationResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateComplianceDetailsByConfigRuleResponse"))

(smithy/sdk/shapes:define-input
 get-aggregate-config-rule-compliance-summary-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (filters :target-type config-rule-compliance-summary-filters :member-name
   "Filters")
  (group-by-key :target-type config-rule-compliance-summary-group-key
   :member-name "GroupByKey")
  (limit :target-type group-by-apilimit :member-name "Limit")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateConfigRuleComplianceSummaryRequest"))

(smithy/sdk/shapes:define-output
 get-aggregate-config-rule-compliance-summary-response common-lisp:nil
 ((group-by-key :target-type string-with-char-limit256 :member-name
   "GroupByKey")
  (aggregate-compliance-counts :target-type aggregate-compliance-count-list
   :member-name "AggregateComplianceCounts")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateConfigRuleComplianceSummaryResponse"))

(smithy/sdk/shapes:define-input
 get-aggregate-conformance-pack-compliance-summary-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (filters :target-type aggregate-conformance-pack-compliance-summary-filters
   :member-name "Filters")
  (group-by-key :target-type
   aggregate-conformance-pack-compliance-summary-group-key :member-name
   "GroupByKey")
  (limit :target-type limit :member-name "Limit")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateConformancePackComplianceSummaryRequest"))

(smithy/sdk/shapes:define-output
 get-aggregate-conformance-pack-compliance-summary-response common-lisp:nil
 ((aggregate-conformance-pack-compliance-summaries :target-type
   aggregate-conformance-pack-compliance-summary-list :member-name
   "AggregateConformancePackComplianceSummaries")
  (group-by-key :target-type string-with-char-limit256 :member-name
   "GroupByKey")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateConformancePackComplianceSummaryResponse"))

(smithy/sdk/shapes:define-input
 get-aggregate-discovered-resource-counts-request common-lisp:nil
 ((configuration-aggregator-name :target-type configuration-aggregator-name
   :required common-lisp:t :member-name "ConfigurationAggregatorName")
  (filters :target-type resource-count-filters :member-name "Filters")
  (group-by-key :target-type resource-count-group-key :member-name
   "GroupByKey")
  (limit :target-type group-by-apilimit :member-name "Limit")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateDiscoveredResourceCountsRequest"))

(smithy/sdk/shapes:define-output
 get-aggregate-discovered-resource-counts-response common-lisp:nil
 ((total-discovered-resources :target-type long :required common-lisp:t
   :member-name "TotalDiscoveredResources")
  (group-by-key :target-type string-with-char-limit256 :member-name
   "GroupByKey")
  (grouped-resource-counts :target-type grouped-resource-count-list
   :member-name "GroupedResourceCounts")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetAggregateDiscoveredResourceCountsResponse"))

(smithy/sdk/shapes:define-input get-aggregate-resource-config-request
                                common-lisp:nil
                                ((configuration-aggregator-name :target-type
                                  configuration-aggregator-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationAggregatorName")
                                 (resource-identifier :target-type
                                  aggregate-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier"))
                                (:shape-name
                                 "GetAggregateResourceConfigRequest"))

(smithy/sdk/shapes:define-output get-aggregate-resource-config-response
                                 common-lisp:nil
                                 ((configuration-item :target-type
                                   configuration-item :member-name
                                   "ConfigurationItem"))
                                 (:shape-name
                                  "GetAggregateResourceConfigResponse"))

(smithy/sdk/shapes:define-input get-compliance-details-by-config-rule-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  string-with-char-limit64 :required
                                  common-lisp:t :member-name "ConfigRuleName")
                                 (compliance-types :target-type
                                  compliance-types :member-name
                                  "ComplianceTypes")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "GetComplianceDetailsByConfigRuleRequest"))

(smithy/sdk/shapes:define-output get-compliance-details-by-config-rule-response
                                 common-lisp:nil
                                 ((evaluation-results :target-type
                                   evaluation-results :member-name
                                   "EvaluationResults")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetComplianceDetailsByConfigRuleResponse"))

(smithy/sdk/shapes:define-input get-compliance-details-by-resource-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  string-with-char-limit256 :member-name
                                  "ResourceType")
                                 (resource-id :target-type base-resource-id
                                  :member-name "ResourceId")
                                 (compliance-types :target-type
                                  compliance-types :member-name
                                  "ComplianceTypes")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (resource-evaluation-id :target-type
                                  resource-evaluation-id :member-name
                                  "ResourceEvaluationId"))
                                (:shape-name
                                 "GetComplianceDetailsByResourceRequest"))

(smithy/sdk/shapes:define-output get-compliance-details-by-resource-response
                                 common-lisp:nil
                                 ((evaluation-results :target-type
                                   evaluation-results :member-name
                                   "EvaluationResults")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetComplianceDetailsByResourceResponse"))

(smithy/sdk/shapes:define-output get-compliance-summary-by-config-rule-response
                                 common-lisp:nil
                                 ((compliance-summary :target-type
                                   compliance-summary :member-name
                                   "ComplianceSummary"))
                                 (:shape-name
                                  "GetComplianceSummaryByConfigRuleResponse"))

(smithy/sdk/shapes:define-input get-compliance-summary-by-resource-type-request
                                common-lisp:nil
                                ((resource-types :target-type resource-types
                                  :member-name "ResourceTypes"))
                                (:shape-name
                                 "GetComplianceSummaryByResourceTypeRequest"))

(smithy/sdk/shapes:define-output
 get-compliance-summary-by-resource-type-response common-lisp:nil
 ((compliance-summaries-by-resource-type :target-type
   compliance-summaries-by-resource-type :member-name
   "ComplianceSummariesByResourceType"))
 (:shape-name "GetComplianceSummaryByResourceTypeResponse"))

(smithy/sdk/shapes:define-type get-conformance-pack-compliance-details-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-conformance-pack-compliance-details-request
                                common-lisp:nil
                                ((conformance-pack-name :target-type
                                  conformance-pack-name :required common-lisp:t
                                  :member-name "ConformancePackName")
                                 (filters :target-type
                                  conformance-pack-evaluation-filters
                                  :member-name "Filters")
                                 (limit :target-type
                                  get-conformance-pack-compliance-details-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "GetConformancePackComplianceDetailsRequest"))

(smithy/sdk/shapes:define-output
 get-conformance-pack-compliance-details-response common-lisp:nil
 ((conformance-pack-name :target-type conformance-pack-name :required
   common-lisp:t :member-name "ConformancePackName")
  (conformance-pack-rule-evaluation-results :target-type
   conformance-pack-rule-evaluation-results-list :member-name
   "ConformancePackRuleEvaluationResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetConformancePackComplianceDetailsResponse"))

(smithy/sdk/shapes:define-input get-conformance-pack-compliance-summary-request
                                common-lisp:nil
                                ((conformance-pack-names :target-type
                                  conformance-pack-names-to-summarize-list
                                  :required common-lisp:t :member-name
                                  "ConformancePackNames")
                                 (limit :target-type page-size-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "GetConformancePackComplianceSummaryRequest"))

(smithy/sdk/shapes:define-output
 get-conformance-pack-compliance-summary-response common-lisp:nil
 ((conformance-pack-compliance-summary-list :target-type
   conformance-pack-compliance-summary-list :member-name
   "ConformancePackComplianceSummaryList")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetConformancePackComplianceSummaryResponse"))

(smithy/sdk/shapes:define-input get-custom-rule-policy-request common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :member-name
                                  "ConfigRuleName"))
                                (:shape-name "GetCustomRulePolicyRequest"))

(smithy/sdk/shapes:define-output get-custom-rule-policy-response
                                 common-lisp:nil
                                 ((policy-text :target-type policy-text
                                   :member-name "PolicyText"))
                                 (:shape-name "GetCustomRulePolicyResponse"))

(smithy/sdk/shapes:define-input get-discovered-resource-counts-request
                                common-lisp:nil
                                ((resource-types :target-type resource-types
                                  :member-name "resourceTypes")
                                 (limit :target-type limit :member-name
                                  "limit")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "GetDiscoveredResourceCountsRequest"))

(smithy/sdk/shapes:define-output get-discovered-resource-counts-response
                                 common-lisp:nil
                                 ((total-discovered-resources :target-type long
                                   :member-name "totalDiscoveredResources")
                                  (resource-counts :target-type resource-counts
                                   :member-name "resourceCounts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetDiscoveredResourceCountsResponse"))

(smithy/sdk/shapes:define-input
 get-organization-config-rule-detailed-status-request common-lisp:nil
 ((organization-config-rule-name :target-type organization-config-rule-name
   :required common-lisp:t :member-name "OrganizationConfigRuleName")
  (filters :target-type status-detail-filters :member-name "Filters")
  (limit :target-type cosmos-page-limit :member-name "Limit")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "GetOrganizationConfigRuleDetailedStatusRequest"))

(smithy/sdk/shapes:define-output
 get-organization-config-rule-detailed-status-response common-lisp:nil
 ((organization-config-rule-detailed-status :target-type
   organization-config-rule-detailed-status :member-name
   "OrganizationConfigRuleDetailedStatus")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "GetOrganizationConfigRuleDetailedStatusResponse"))

(smithy/sdk/shapes:define-input
 get-organization-conformance-pack-detailed-status-request common-lisp:nil
 ((organization-conformance-pack-name :target-type
   organization-conformance-pack-name :required common-lisp:t :member-name
   "OrganizationConformancePackName")
  (filters :target-type organization-resource-detailed-status-filters
   :member-name "Filters")
  (limit :target-type cosmos-page-limit :member-name "Limit")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "GetOrganizationConformancePackDetailedStatusRequest"))

(smithy/sdk/shapes:define-output
 get-organization-conformance-pack-detailed-status-response common-lisp:nil
 ((organization-conformance-pack-detailed-statuses :target-type
   organization-conformance-pack-detailed-statuses :member-name
   "OrganizationConformancePackDetailedStatuses")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "GetOrganizationConformancePackDetailedStatusResponse"))

(smithy/sdk/shapes:define-input get-organization-custom-rule-policy-request
                                common-lisp:nil
                                ((organization-config-rule-name :target-type
                                  organization-config-rule-name :required
                                  common-lisp:t :member-name
                                  "OrganizationConfigRuleName"))
                                (:shape-name
                                 "GetOrganizationCustomRulePolicyRequest"))

(smithy/sdk/shapes:define-output get-organization-custom-rule-policy-response
                                 common-lisp:nil
                                 ((policy-text :target-type policy-text
                                   :member-name "PolicyText"))
                                 (:shape-name
                                  "GetOrganizationCustomRulePolicyResponse"))

(smithy/sdk/shapes:define-input get-resource-config-history-request
                                common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (later-time :target-type later-time
                                  :member-name "laterTime")
                                 (earlier-time :target-type earlier-time
                                  :member-name "earlierTime")
                                 (chronological-order :target-type
                                  chronological-order :member-name
                                  "chronologicalOrder")
                                 (limit :target-type limit :member-name
                                  "limit")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetResourceConfigHistoryRequest"))

(smithy/sdk/shapes:define-output get-resource-config-history-response
                                 common-lisp:nil
                                 ((configuration-items :target-type
                                   configuration-item-list :member-name
                                   "configurationItems")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetResourceConfigHistoryResponse"))

(smithy/sdk/shapes:define-input get-resource-evaluation-summary-request
                                common-lisp:nil
                                ((resource-evaluation-id :target-type
                                  resource-evaluation-id :required
                                  common-lisp:t :member-name
                                  "ResourceEvaluationId"))
                                (:shape-name
                                 "GetResourceEvaluationSummaryRequest"))

(smithy/sdk/shapes:define-output get-resource-evaluation-summary-response
                                 common-lisp:nil
                                 ((resource-evaluation-id :target-type
                                   resource-evaluation-id :member-name
                                   "ResourceEvaluationId")
                                  (evaluation-mode :target-type evaluation-mode
                                   :member-name "EvaluationMode")
                                  (evaluation-status :target-type
                                   evaluation-status :member-name
                                   "EvaluationStatus")
                                  (evaluation-start-timestamp :target-type date
                                   :member-name "EvaluationStartTimestamp")
                                  (compliance :target-type compliance-type
                                   :member-name "Compliance")
                                  (evaluation-context :target-type
                                   evaluation-context :member-name
                                   "EvaluationContext")
                                  (resource-details :target-type
                                   resource-details :member-name
                                   "ResourceDetails"))
                                 (:shape-name
                                  "GetResourceEvaluationSummaryResponse"))

(smithy/sdk/shapes:define-input get-stored-query-request common-lisp:nil
                                ((query-name :target-type query-name :required
                                  common-lisp:t :member-name "QueryName"))
                                (:shape-name "GetStoredQueryRequest"))

(smithy/sdk/shapes:define-output get-stored-query-response common-lisp:nil
                                 ((stored-query :target-type stored-query
                                   :member-name "StoredQuery"))
                                 (:shape-name "GetStoredQueryResponse"))

(smithy/sdk/shapes:define-type group-by-apilimit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure grouped-resource-count common-lisp:nil
                                    ((group-name :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name "GroupName")
                                     (resource-count :target-type long
                                      :required common-lisp:t :member-name
                                      "ResourceCount"))
                                    (:shape-name "GroupedResourceCount"))

(smithy/sdk/shapes:define-list grouped-resource-count-list :member
                               grouped-resource-count)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "IdempotentParameterMismatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-type include-global-resource-types
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error insufficient-delivery-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientDeliveryPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-permissions-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientPermissionsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-configuration-recorder-name-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidConfigurationRecorderNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-delivery-channel-name-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidDeliveryChannelNameException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-expression-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidExpressionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-limit-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidLimitException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-recording-group-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRecordingGroupException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-result-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidResultTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-role-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRoleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3key-prefix-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3KeyPrefixException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3kms-key-arn-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3KmsKeyArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-snstopic-arnexception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSNSTopicARNException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-time-range-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTimeRangeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error last-delivery-channel-delete-failed-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "LastDeliveryChannelDeleteFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type last-updated-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type later-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-aggregate-discovered-resources-request
                                common-lisp:nil
                                ((configuration-aggregator-name :target-type
                                  configuration-aggregator-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationAggregatorName")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (filters :target-type resource-filters
                                  :member-name "Filters")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAggregateDiscoveredResourcesRequest"))

(smithy/sdk/shapes:define-output list-aggregate-discovered-resources-response
                                 common-lisp:nil
                                 ((resource-identifiers :target-type
                                   discovered-resource-identifier-list
                                   :member-name "ResourceIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAggregateDiscoveredResourcesResponse"))

(smithy/sdk/shapes:define-input list-configuration-recorders-request
                                common-lisp:nil
                                ((filters :target-type
                                  configuration-recorder-filter-list
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListConfigurationRecordersRequest"))

(smithy/sdk/shapes:define-output list-configuration-recorders-response
                                 common-lisp:nil
                                 ((configuration-recorder-summaries
                                   :target-type
                                   configuration-recorder-summaries :required
                                   common-lisp:t :member-name
                                   "ConfigurationRecorderSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListConfigurationRecordersResponse"))

(smithy/sdk/shapes:define-input list-conformance-pack-compliance-scores-request
                                common-lisp:nil
                                ((filters :target-type
                                  conformance-pack-compliance-scores-filters
                                  :member-name "Filters")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (sort-by :target-type sort-by :member-name
                                  "SortBy")
                                 (limit :target-type page-size-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListConformancePackComplianceScoresRequest"))

(smithy/sdk/shapes:define-output
 list-conformance-pack-compliance-scores-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (conformance-pack-compliance-scores :target-type
   conformance-pack-compliance-scores :required common-lisp:t :member-name
   "ConformancePackComplianceScores"))
 (:shape-name "ListConformancePackComplianceScoresResponse"))

(smithy/sdk/shapes:define-input list-discovered-resources-request
                                common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (resource-ids :target-type resource-id-list
                                  :member-name "resourceIds")
                                 (resource-name :target-type resource-name
                                  :member-name "resourceName")
                                 (limit :target-type limit :member-name
                                  "limit")
                                 (include-deleted-resources :target-type
                                  boolean :member-name
                                  "includeDeletedResources")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDiscoveredResourcesRequest"))

(smithy/sdk/shapes:define-output list-discovered-resources-response
                                 common-lisp:nil
                                 ((resource-identifiers :target-type
                                   resource-identifier-list :member-name
                                   "resourceIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDiscoveredResourcesResponse"))

(smithy/sdk/shapes:define-type list-resource-evaluations-page-item-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-resource-evaluations-request
                                common-lisp:nil
                                ((filters :target-type
                                  resource-evaluation-filters :member-name
                                  "Filters")
                                 (limit :target-type
                                  list-resource-evaluations-page-item-limit
                                  :member-name "Limit")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListResourceEvaluationsRequest"))

(smithy/sdk/shapes:define-output list-resource-evaluations-response
                                 common-lisp:nil
                                 ((resource-evaluations :target-type
                                   resource-evaluations :member-name
                                   "ResourceEvaluations")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListResourceEvaluationsResponse"))

(smithy/sdk/shapes:define-input list-stored-queries-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name "ListStoredQueriesRequest"))

(smithy/sdk/shapes:define-output list-stored-queries-response common-lisp:nil
                                 ((stored-query-metadata :target-type
                                   stored-query-metadata-list :member-name
                                   "StoredQueryMetadata")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListStoredQueriesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error max-active-resources-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MaxActiveResourcesExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error max-number-of-config-rules-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MaxNumberOfConfigRulesExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 max-number-of-configuration-recorders-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "MaxNumberOfConfigurationRecordersExceededException")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 max-number-of-conformance-packs-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "MaxNumberOfConformancePacksExceededException") (:error-code 400))

(smithy/sdk/shapes:define-error
 max-number-of-delivery-channels-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "MaxNumberOfDeliveryChannelsExceededException") (:error-code 400))

(smithy/sdk/shapes:define-error
 max-number-of-organization-config-rules-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "MaxNumberOfOrganizationConfigRulesExceededException")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 max-number-of-organization-conformance-packs-exceeded-exception
 common-lisp:nil ((message :target-type error-message :member-name "message"))
 (:shape-name "MaxNumberOfOrganizationConformancePacksExceededException")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 max-number-of-retention-configurations-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "MaxNumberOfRetentionConfigurationsExceededException")
 (:error-code 400))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum maximum-execution-frequency
    common-lisp:nil
  (:one-hour "One_Hour")
  (:three-hours "Three_Hours")
  (:six-hours "Six_Hours")
  (:twelve-hours "Twelve_Hours")
  (:twenty-four-hours "TwentyFour_Hours"))

(smithy/sdk/shapes:define-enum member-account-rule-status
    common-lisp:nil
  (:create-successful "CREATE_SUCCESSFUL")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:delete-successful "DELETE_SUCCESSFUL")
  (:delete-failed "DELETE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:update-successful "UPDATE_SUCCESSFUL")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure member-account-status common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId")
                                     (config-rule-name :target-type
                                      string-with-char-limit64 :required
                                      common-lisp:t :member-name
                                      "ConfigRuleName")
                                     (member-account-rule-status :target-type
                                      member-account-rule-status :required
                                      common-lisp:t :member-name
                                      "MemberAccountRuleStatus")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (last-update-time :target-type date
                                      :member-name "LastUpdateTime"))
                                    (:shape-name "MemberAccountStatus"))

(smithy/sdk/shapes:define-enum message-type
    common-lisp:nil
  (:configuration-item-change-notification
   "ConfigurationItemChangeNotification")
  (:configuration-snapshot-delivery-completed
   "ConfigurationSnapshotDeliveryCompleted")
  (:scheduled-notification "ScheduledNotification")
  (:oversized-configuration-item-change-notification
   "OversizedConfigurationItemChangeNotification"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-available-configuration-recorder-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoAvailableConfigurationRecorderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-available-delivery-channel-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoAvailableDeliveryChannelException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-available-organization-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoAvailableOrganizationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-running-configuration-recorder-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoRunningConfigurationRecorderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-bucket-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchBucketException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-config-rule-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchConfigRuleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 no-such-config-rule-in-conformance-pack-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "NoSuchConfigRuleInConformancePackException") (:error-code 400))

(smithy/sdk/shapes:define-error no-such-configuration-aggregator-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchConfigurationAggregatorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-configuration-recorder-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchConfigurationRecorderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-conformance-pack-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchConformancePackException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-delivery-channel-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchDeliveryChannelException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-organization-config-rule-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchOrganizationConfigRuleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-organization-conformance-pack-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchOrganizationConformancePackException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-remediation-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchRemediationConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-remediation-exception-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchRemediationExceptionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-retention-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "NoSuchRetentionConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ordering-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error organization-access-denied-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "OrganizationAccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure organization-aggregation-source
                                    common-lisp:nil
                                    ((role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (aws-regions :target-type
                                      aggregator-region-list :member-name
                                      "AwsRegions")
                                     (all-aws-regions :target-type boolean
                                      :member-name "AllAwsRegions"))
                                    (:shape-name
                                     "OrganizationAggregationSource"))

(smithy/sdk/shapes:define-error organization-all-features-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "OrganizationAllFeaturesNotEnabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure organization-config-rule common-lisp:nil
                                    ((organization-config-rule-name
                                      :target-type
                                      organization-config-rule-name :required
                                      common-lisp:t :member-name
                                      "OrganizationConfigRuleName")
                                     (organization-config-rule-arn :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "OrganizationConfigRuleArn")
                                     (organization-managed-rule-metadata
                                      :target-type
                                      organization-managed-rule-metadata
                                      :member-name
                                      "OrganizationManagedRuleMetadata")
                                     (organization-custom-rule-metadata
                                      :target-type
                                      organization-custom-rule-metadata
                                      :member-name
                                      "OrganizationCustomRuleMetadata")
                                     (excluded-accounts :target-type
                                      excluded-accounts :member-name
                                      "ExcludedAccounts")
                                     (last-update-time :target-type date
                                      :member-name "LastUpdateTime")
                                     (organization-custom-policy-rule-metadata
                                      :target-type
                                      organization-custom-policy-rule-metadata-no-policy
                                      :member-name
                                      "OrganizationCustomPolicyRuleMetadata"))
                                    (:shape-name "OrganizationConfigRule"))

(smithy/sdk/shapes:define-list organization-config-rule-detailed-status :member
                               member-account-status)

(smithy/sdk/shapes:define-type organization-config-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organization-config-rule-names :member
                               string-with-char-limit64)

(smithy/sdk/shapes:define-structure organization-config-rule-status
                                    common-lisp:nil
                                    ((organization-config-rule-name
                                      :target-type
                                      organization-config-rule-name :required
                                      common-lisp:t :member-name
                                      "OrganizationConfigRuleName")
                                     (organization-rule-status :target-type
                                      organization-rule-status :required
                                      common-lisp:t :member-name
                                      "OrganizationRuleStatus")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (last-update-time :target-type date
                                      :member-name "LastUpdateTime"))
                                    (:shape-name
                                     "OrganizationConfigRuleStatus"))

(smithy/sdk/shapes:define-list organization-config-rule-statuses :member
                               organization-config-rule-status)

(smithy/sdk/shapes:define-enum organization-config-rule-trigger-type
    common-lisp:nil
  (:configuration-item-change-notification
   "ConfigurationItemChangeNotification")
  (:oversized-configuration-item-change-notifcation
   "OversizedConfigurationItemChangeNotification")
  (:scheduled-notification "ScheduledNotification"))

(smithy/sdk/shapes:define-enum organization-config-rule-trigger-type-no-sn
    common-lisp:nil
  (:configuration-item-change-notification
   "ConfigurationItemChangeNotification")
  (:oversized-configuration-item-change-notifcation
   "OversizedConfigurationItemChangeNotification"))

(smithy/sdk/shapes:define-list organization-config-rule-trigger-type-no-sns
                               :member
                               organization-config-rule-trigger-type-no-sn)

(smithy/sdk/shapes:define-list organization-config-rule-trigger-types :member
                               organization-config-rule-trigger-type)

(smithy/sdk/shapes:define-list organization-config-rules :member
                               organization-config-rule)

(smithy/sdk/shapes:define-structure organization-conformance-pack
                                    common-lisp:nil
                                    ((organization-conformance-pack-name
                                      :target-type
                                      organization-conformance-pack-name
                                      :required common-lisp:t :member-name
                                      "OrganizationConformancePackName")
                                     (organization-conformance-pack-arn
                                      :target-type string-with-char-limit256
                                      :required common-lisp:t :member-name
                                      "OrganizationConformancePackArn")
                                     (delivery-s3bucket :target-type
                                      delivery-s3bucket :member-name
                                      "DeliveryS3Bucket")
                                     (delivery-s3key-prefix :target-type
                                      delivery-s3key-prefix :member-name
                                      "DeliveryS3KeyPrefix")
                                     (conformance-pack-input-parameters
                                      :target-type
                                      conformance-pack-input-parameters
                                      :member-name
                                      "ConformancePackInputParameters")
                                     (excluded-accounts :target-type
                                      excluded-accounts :member-name
                                      "ExcludedAccounts")
                                     (last-update-time :target-type date
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime"))
                                    (:shape-name "OrganizationConformancePack"))

(smithy/sdk/shapes:define-structure
 organization-conformance-pack-detailed-status common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId")
  (conformance-pack-name :target-type string-with-char-limit256 :required
   common-lisp:t :member-name "ConformancePackName")
  (status :target-type organization-resource-detailed-status :required
   common-lisp:t :member-name "Status")
  (error-code :target-type string :member-name "ErrorCode")
  (error-message :target-type string :member-name "ErrorMessage")
  (last-update-time :target-type date :member-name "LastUpdateTime"))
 (:shape-name "OrganizationConformancePackDetailedStatus"))

(smithy/sdk/shapes:define-list organization-conformance-pack-detailed-statuses
                               :member
                               organization-conformance-pack-detailed-status)

(smithy/sdk/shapes:define-type organization-conformance-pack-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organization-conformance-pack-names :member
                               organization-conformance-pack-name)

(smithy/sdk/shapes:define-structure organization-conformance-pack-status
                                    common-lisp:nil
                                    ((organization-conformance-pack-name
                                      :target-type
                                      organization-conformance-pack-name
                                      :required common-lisp:t :member-name
                                      "OrganizationConformancePackName")
                                     (status :target-type
                                      organization-resource-status :required
                                      common-lisp:t :member-name "Status")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (last-update-time :target-type date
                                      :member-name "LastUpdateTime"))
                                    (:shape-name
                                     "OrganizationConformancePackStatus"))

(smithy/sdk/shapes:define-list organization-conformance-pack-statuses :member
                               organization-conformance-pack-status)

(smithy/sdk/shapes:define-error
 organization-conformance-pack-template-validation-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "OrganizationConformancePackTemplateValidationException")
 (:error-code 400))

(smithy/sdk/shapes:define-list organization-conformance-packs :member
                               organization-conformance-pack)

(smithy/sdk/shapes:define-structure organization-custom-policy-rule-metadata
                                    common-lisp:nil
                                    ((description :target-type
                                      string-with-char-limit256min0
                                      :member-name "Description")
                                     (organization-config-rule-trigger-types
                                      :target-type
                                      organization-config-rule-trigger-type-no-sns
                                      :member-name
                                      "OrganizationConfigRuleTriggerTypes")
                                     (input-parameters :target-type
                                      string-with-char-limit2048 :member-name
                                      "InputParameters")
                                     (maximum-execution-frequency :target-type
                                      maximum-execution-frequency :member-name
                                      "MaximumExecutionFrequency")
                                     (resource-types-scope :target-type
                                      resource-types-scope :member-name
                                      "ResourceTypesScope")
                                     (resource-id-scope :target-type
                                      string-with-char-limit768 :member-name
                                      "ResourceIdScope")
                                     (tag-key-scope :target-type
                                      string-with-char-limit128 :member-name
                                      "TagKeyScope")
                                     (tag-value-scope :target-type
                                      string-with-char-limit256 :member-name
                                      "TagValueScope")
                                     (policy-runtime :target-type
                                      policy-runtime :required common-lisp:t
                                      :member-name "PolicyRuntime")
                                     (policy-text :target-type policy-text
                                      :required common-lisp:t :member-name
                                      "PolicyText")
                                     (debug-log-delivery-accounts :target-type
                                      debug-log-delivery-accounts :member-name
                                      "DebugLogDeliveryAccounts"))
                                    (:shape-name
                                     "OrganizationCustomPolicyRuleMetadata"))

(smithy/sdk/shapes:define-structure
 organization-custom-policy-rule-metadata-no-policy common-lisp:nil
 ((description :target-type string-with-char-limit256min0 :member-name
   "Description")
  (organization-config-rule-trigger-types :target-type
   organization-config-rule-trigger-type-no-sns :member-name
   "OrganizationConfigRuleTriggerTypes")
  (input-parameters :target-type string-with-char-limit2048 :member-name
   "InputParameters")
  (maximum-execution-frequency :target-type maximum-execution-frequency
   :member-name "MaximumExecutionFrequency")
  (resource-types-scope :target-type resource-types-scope :member-name
   "ResourceTypesScope")
  (resource-id-scope :target-type string-with-char-limit768 :member-name
   "ResourceIdScope")
  (tag-key-scope :target-type string-with-char-limit128 :member-name
   "TagKeyScope")
  (tag-value-scope :target-type string-with-char-limit256 :member-name
   "TagValueScope")
  (policy-runtime :target-type policy-runtime :member-name "PolicyRuntime")
  (debug-log-delivery-accounts :target-type debug-log-delivery-accounts
   :member-name "DebugLogDeliveryAccounts"))
 (:shape-name "OrganizationCustomPolicyRuleMetadataNoPolicy"))

(smithy/sdk/shapes:define-structure organization-custom-rule-metadata
                                    common-lisp:nil
                                    ((description :target-type
                                      string-with-char-limit256min0
                                      :member-name "Description")
                                     (lambda-function-arn :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "LambdaFunctionArn")
                                     (organization-config-rule-trigger-types
                                      :target-type
                                      organization-config-rule-trigger-types
                                      :required common-lisp:t :member-name
                                      "OrganizationConfigRuleTriggerTypes")
                                     (input-parameters :target-type
                                      string-with-char-limit2048 :member-name
                                      "InputParameters")
                                     (maximum-execution-frequency :target-type
                                      maximum-execution-frequency :member-name
                                      "MaximumExecutionFrequency")
                                     (resource-types-scope :target-type
                                      resource-types-scope :member-name
                                      "ResourceTypesScope")
                                     (resource-id-scope :target-type
                                      string-with-char-limit768 :member-name
                                      "ResourceIdScope")
                                     (tag-key-scope :target-type
                                      string-with-char-limit128 :member-name
                                      "TagKeyScope")
                                     (tag-value-scope :target-type
                                      string-with-char-limit256 :member-name
                                      "TagValueScope"))
                                    (:shape-name
                                     "OrganizationCustomRuleMetadata"))

(smithy/sdk/shapes:define-structure organization-managed-rule-metadata
                                    common-lisp:nil
                                    ((description :target-type
                                      string-with-char-limit256min0
                                      :member-name "Description")
                                     (rule-identifier :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "RuleIdentifier")
                                     (input-parameters :target-type
                                      string-with-char-limit2048 :member-name
                                      "InputParameters")
                                     (maximum-execution-frequency :target-type
                                      maximum-execution-frequency :member-name
                                      "MaximumExecutionFrequency")
                                     (resource-types-scope :target-type
                                      resource-types-scope :member-name
                                      "ResourceTypesScope")
                                     (resource-id-scope :target-type
                                      string-with-char-limit768 :member-name
                                      "ResourceIdScope")
                                     (tag-key-scope :target-type
                                      string-with-char-limit128 :member-name
                                      "TagKeyScope")
                                     (tag-value-scope :target-type
                                      string-with-char-limit256 :member-name
                                      "TagValueScope"))
                                    (:shape-name
                                     "OrganizationManagedRuleMetadata"))

(smithy/sdk/shapes:define-enum organization-resource-detailed-status
    common-lisp:nil
  (:create-successful "CREATE_SUCCESSFUL")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:delete-successful "DELETE_SUCCESSFUL")
  (:delete-failed "DELETE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:update-successful "UPDATE_SUCCESSFUL")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure
 organization-resource-detailed-status-filters common-lisp:nil
 ((account-id :target-type account-id :member-name "AccountId")
  (status :target-type organization-resource-detailed-status :member-name
   "Status"))
 (:shape-name "OrganizationResourceDetailedStatusFilters"))

(smithy/sdk/shapes:define-enum organization-resource-status
    common-lisp:nil
  (:create-successful "CREATE_SUCCESSFUL")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:delete-successful "DELETE_SUCCESSFUL")
  (:delete-failed "DELETE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:update-successful "UPDATE_SUCCESSFUL")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-enum organization-rule-status
    common-lisp:nil
  (:create-successful "CREATE_SUCCESSFUL")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:delete-successful "DELETE_SUCCESSFUL")
  (:delete-failed "DELETE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:update-successful "UPDATE_SUCCESSFUL")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-error oversized-configuration-item-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "OversizedConfigurationItemException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum owner
    common-lisp:nil
  (:custom-lambda "CUSTOM_LAMBDA")
  (:aws "AWS")
  (:custom-policy "CUSTOM_POLICY"))

(smithy/sdk/shapes:define-type page-size-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-aggregation-request common-lisp:nil
                                    ((requester-account-id :target-type
                                      account-id :member-name
                                      "RequesterAccountId")
                                     (requester-aws-region :target-type
                                      aws-region :member-name
                                      "RequesterAwsRegion"))
                                    (:shape-name "PendingAggregationRequest"))

(smithy/sdk/shapes:define-list pending-aggregation-request-list :member
                               pending-aggregation-request)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type policy-runtime smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-aggregation-authorization-request
                                common-lisp:nil
                                ((authorized-account-id :target-type account-id
                                  :required common-lisp:t :member-name
                                  "AuthorizedAccountId")
                                 (authorized-aws-region :target-type aws-region
                                  :required common-lisp:t :member-name
                                  "AuthorizedAwsRegion")
                                 (tags :target-type tags-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "PutAggregationAuthorizationRequest"))

(smithy/sdk/shapes:define-output put-aggregation-authorization-response
                                 common-lisp:nil
                                 ((aggregation-authorization :target-type
                                   aggregation-authorization :member-name
                                   "AggregationAuthorization"))
                                 (:shape-name
                                  "PutAggregationAuthorizationResponse"))

(smithy/sdk/shapes:define-input put-config-rule-request common-lisp:nil
                                ((config-rule :target-type config-rule
                                  :required common-lisp:t :member-name
                                  "ConfigRule")
                                 (tags :target-type tags-list :member-name
                                  "Tags"))
                                (:shape-name "PutConfigRuleRequest"))

(smithy/sdk/shapes:define-input put-configuration-aggregator-request
                                common-lisp:nil
                                ((configuration-aggregator-name :target-type
                                  configuration-aggregator-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationAggregatorName")
                                 (account-aggregation-sources :target-type
                                  account-aggregation-source-list :member-name
                                  "AccountAggregationSources")
                                 (organization-aggregation-source :target-type
                                  organization-aggregation-source :member-name
                                  "OrganizationAggregationSource")
                                 (tags :target-type tags-list :member-name
                                  "Tags")
                                 (aggregator-filters :target-type
                                  aggregator-filters :member-name
                                  "AggregatorFilters"))
                                (:shape-name
                                 "PutConfigurationAggregatorRequest"))

(smithy/sdk/shapes:define-output put-configuration-aggregator-response
                                 common-lisp:nil
                                 ((configuration-aggregator :target-type
                                   configuration-aggregator :member-name
                                   "ConfigurationAggregator"))
                                 (:shape-name
                                  "PutConfigurationAggregatorResponse"))

(smithy/sdk/shapes:define-input put-configuration-recorder-request
                                common-lisp:nil
                                ((configuration-recorder :target-type
                                  configuration-recorder :required
                                  common-lisp:t :member-name
                                  "ConfigurationRecorder")
                                 (tags :target-type tags-list :member-name
                                  "Tags"))
                                (:shape-name "PutConfigurationRecorderRequest"))

(smithy/sdk/shapes:define-input put-conformance-pack-request common-lisp:nil
                                ((conformance-pack-name :target-type
                                  conformance-pack-name :required common-lisp:t
                                  :member-name "ConformancePackName")
                                 (template-s3uri :target-type template-s3uri
                                  :member-name "TemplateS3Uri")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (delivery-s3bucket :target-type
                                  delivery-s3bucket :member-name
                                  "DeliveryS3Bucket")
                                 (delivery-s3key-prefix :target-type
                                  delivery-s3key-prefix :member-name
                                  "DeliveryS3KeyPrefix")
                                 (conformance-pack-input-parameters
                                  :target-type
                                  conformance-pack-input-parameters
                                  :member-name
                                  "ConformancePackInputParameters")
                                 (template-ssmdocument-details :target-type
                                  template-ssmdocument-details :member-name
                                  "TemplateSSMDocumentDetails"))
                                (:shape-name "PutConformancePackRequest"))

(smithy/sdk/shapes:define-output put-conformance-pack-response common-lisp:nil
                                 ((conformance-pack-arn :target-type
                                   conformance-pack-arn :member-name
                                   "ConformancePackArn"))
                                 (:shape-name "PutConformancePackResponse"))

(smithy/sdk/shapes:define-input put-delivery-channel-request common-lisp:nil
                                ((delivery-channel :target-type
                                  delivery-channel :required common-lisp:t
                                  :member-name "DeliveryChannel"))
                                (:shape-name "PutDeliveryChannelRequest"))

(smithy/sdk/shapes:define-input put-evaluations-request common-lisp:nil
                                ((evaluations :target-type evaluations
                                  :member-name "Evaluations")
                                 (result-token :target-type string :required
                                  common-lisp:t :member-name "ResultToken")
                                 (test-mode :target-type boolean :member-name
                                  "TestMode"))
                                (:shape-name "PutEvaluationsRequest"))

(smithy/sdk/shapes:define-output put-evaluations-response common-lisp:nil
                                 ((failed-evaluations :target-type evaluations
                                   :member-name "FailedEvaluations"))
                                 (:shape-name "PutEvaluationsResponse"))

(smithy/sdk/shapes:define-input put-external-evaluation-request common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (external-evaluation :target-type
                                  external-evaluation :required common-lisp:t
                                  :member-name "ExternalEvaluation"))
                                (:shape-name "PutExternalEvaluationRequest"))

(smithy/sdk/shapes:define-output put-external-evaluation-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutExternalEvaluationResponse"))

(smithy/sdk/shapes:define-input put-organization-config-rule-request
                                common-lisp:nil
                                ((organization-config-rule-name :target-type
                                  organization-config-rule-name :required
                                  common-lisp:t :member-name
                                  "OrganizationConfigRuleName")
                                 (organization-managed-rule-metadata
                                  :target-type
                                  organization-managed-rule-metadata
                                  :member-name
                                  "OrganizationManagedRuleMetadata")
                                 (organization-custom-rule-metadata
                                  :target-type
                                  organization-custom-rule-metadata
                                  :member-name
                                  "OrganizationCustomRuleMetadata")
                                 (excluded-accounts :target-type
                                  excluded-accounts :member-name
                                  "ExcludedAccounts")
                                 (organization-custom-policy-rule-metadata
                                  :target-type
                                  organization-custom-policy-rule-metadata
                                  :member-name
                                  "OrganizationCustomPolicyRuleMetadata"))
                                (:shape-name
                                 "PutOrganizationConfigRuleRequest"))

(smithy/sdk/shapes:define-output put-organization-config-rule-response
                                 common-lisp:nil
                                 ((organization-config-rule-arn :target-type
                                   string-with-char-limit256 :member-name
                                   "OrganizationConfigRuleArn"))
                                 (:shape-name
                                  "PutOrganizationConfigRuleResponse"))

(smithy/sdk/shapes:define-input put-organization-conformance-pack-request
                                common-lisp:nil
                                ((organization-conformance-pack-name
                                  :target-type
                                  organization-conformance-pack-name :required
                                  common-lisp:t :member-name
                                  "OrganizationConformancePackName")
                                 (template-s3uri :target-type template-s3uri
                                  :member-name "TemplateS3Uri")
                                 (template-body :target-type template-body
                                  :member-name "TemplateBody")
                                 (delivery-s3bucket :target-type
                                  delivery-s3bucket :member-name
                                  "DeliveryS3Bucket")
                                 (delivery-s3key-prefix :target-type
                                  delivery-s3key-prefix :member-name
                                  "DeliveryS3KeyPrefix")
                                 (conformance-pack-input-parameters
                                  :target-type
                                  conformance-pack-input-parameters
                                  :member-name
                                  "ConformancePackInputParameters")
                                 (excluded-accounts :target-type
                                  excluded-accounts :member-name
                                  "ExcludedAccounts"))
                                (:shape-name
                                 "PutOrganizationConformancePackRequest"))

(smithy/sdk/shapes:define-output put-organization-conformance-pack-response
                                 common-lisp:nil
                                 ((organization-conformance-pack-arn
                                   :target-type string-with-char-limit256
                                   :member-name
                                   "OrganizationConformancePackArn"))
                                 (:shape-name
                                  "PutOrganizationConformancePackResponse"))

(smithy/sdk/shapes:define-input put-remediation-configurations-request
                                common-lisp:nil
                                ((remediation-configurations :target-type
                                  remediation-configurations :required
                                  common-lisp:t :member-name
                                  "RemediationConfigurations"))
                                (:shape-name
                                 "PutRemediationConfigurationsRequest"))

(smithy/sdk/shapes:define-output put-remediation-configurations-response
                                 common-lisp:nil
                                 ((failed-batches :target-type
                                   failed-remediation-batches :member-name
                                   "FailedBatches"))
                                 (:shape-name
                                  "PutRemediationConfigurationsResponse"))

(smithy/sdk/shapes:define-input put-remediation-exceptions-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (resource-keys :target-type
                                  remediation-exception-resource-keys :required
                                  common-lisp:t :member-name "ResourceKeys")
                                 (message :target-type
                                  string-with-char-limit1024 :member-name
                                  "Message")
                                 (expiration-time :target-type date
                                  :member-name "ExpirationTime"))
                                (:shape-name "PutRemediationExceptionsRequest"))

(smithy/sdk/shapes:define-output put-remediation-exceptions-response
                                 common-lisp:nil
                                 ((failed-batches :target-type
                                   failed-remediation-exception-batches
                                   :member-name "FailedBatches"))
                                 (:shape-name
                                  "PutRemediationExceptionsResponse"))

(smithy/sdk/shapes:define-input put-resource-config-request common-lisp:nil
                                ((resource-type :target-type
                                  resource-type-string :required common-lisp:t
                                  :member-name "ResourceType")
                                 (schema-version-id :target-type
                                  schema-version-id :required common-lisp:t
                                  :member-name "SchemaVersionId")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-name :target-type resource-name
                                  :member-name "ResourceName")
                                 (configuration :target-type configuration
                                  :required common-lisp:t :member-name
                                  "Configuration")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "PutResourceConfigRequest"))

(smithy/sdk/shapes:define-input put-retention-configuration-request
                                common-lisp:nil
                                ((retention-period-in-days :target-type
                                  retention-period-in-days :required
                                  common-lisp:t :member-name
                                  "RetentionPeriodInDays"))
                                (:shape-name
                                 "PutRetentionConfigurationRequest"))

(smithy/sdk/shapes:define-output put-retention-configuration-response
                                 common-lisp:nil
                                 ((retention-configuration :target-type
                                   retention-configuration :member-name
                                   "RetentionConfiguration"))
                                 (:shape-name
                                  "PutRetentionConfigurationResponse"))

(smithy/sdk/shapes:define-input
 put-service-linked-configuration-recorder-request common-lisp:nil
 ((service-principal :target-type service-principal :required common-lisp:t
   :member-name "ServicePrincipal")
  (tags :target-type tags-list :member-name "Tags"))
 (:shape-name "PutServiceLinkedConfigurationRecorderRequest"))

(smithy/sdk/shapes:define-output
 put-service-linked-configuration-recorder-response common-lisp:nil
 ((arn :target-type amazon-resource-name :member-name "Arn")
  (name :target-type recorder-name :member-name "Name"))
 (:shape-name "PutServiceLinkedConfigurationRecorderResponse"))

(smithy/sdk/shapes:define-input put-stored-query-request common-lisp:nil
                                ((stored-query :target-type stored-query
                                  :required common-lisp:t :member-name
                                  "StoredQuery")
                                 (tags :target-type tags-list :member-name
                                  "Tags"))
                                (:shape-name "PutStoredQueryRequest"))

(smithy/sdk/shapes:define-output put-stored-query-response common-lisp:nil
                                 ((query-arn :target-type query-arn
                                   :member-name "QueryArn"))
                                 (:shape-name "PutStoredQueryResponse"))

(smithy/sdk/shapes:define-type query-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-info common-lisp:nil
                                    ((select-fields :target-type
                                      field-info-list :member-name
                                      "SelectFields"))
                                    (:shape-name "QueryInfo"))

(smithy/sdk/shapes:define-type query-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recorder-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum recorder-status
    common-lisp:nil
  (:pending "Pending")
  (:success "Success")
  (:failure "Failure")
  (:not-applicable "NotApplicable"))

(smithy/sdk/shapes:define-enum recording-frequency
    common-lisp:nil
  (:continuous "CONTINUOUS")
  (:daily "DAILY"))

(smithy/sdk/shapes:define-structure recording-group common-lisp:nil
                                    ((all-supported :target-type all-supported
                                      :member-name "allSupported")
                                     (include-global-resource-types
                                      :target-type
                                      include-global-resource-types
                                      :member-name
                                      "includeGlobalResourceTypes")
                                     (resource-types :target-type
                                      resource-type-list :member-name
                                      "resourceTypes")
                                     (exclusion-by-resource-types :target-type
                                      exclusion-by-resource-types :member-name
                                      "exclusionByResourceTypes")
                                     (recording-strategy :target-type
                                      recording-strategy :member-name
                                      "recordingStrategy"))
                                    (:shape-name "RecordingGroup"))

(smithy/sdk/shapes:define-structure recording-mode common-lisp:nil
                                    ((recording-frequency :target-type
                                      recording-frequency :required
                                      common-lisp:t :member-name
                                      "recordingFrequency")
                                     (recording-mode-overrides :target-type
                                      recording-mode-overrides :member-name
                                      "recordingModeOverrides"))
                                    (:shape-name "RecordingMode"))

(smithy/sdk/shapes:define-structure recording-mode-override common-lisp:nil
                                    ((description :target-type description
                                      :member-name "description")
                                     (resource-types :target-type
                                      recording-mode-resource-types-list
                                      :required common-lisp:t :member-name
                                      "resourceTypes")
                                     (recording-frequency :target-type
                                      recording-frequency :required
                                      common-lisp:t :member-name
                                      "recordingFrequency"))
                                    (:shape-name "RecordingModeOverride"))

(smithy/sdk/shapes:define-list recording-mode-overrides :member
                               recording-mode-override)

(smithy/sdk/shapes:define-list recording-mode-resource-types-list :member
                               resource-type)

(smithy/sdk/shapes:define-enum recording-scope
    common-lisp:nil
  (:internal "INTERNAL")
  (:paid "PAID"))

(smithy/sdk/shapes:define-structure recording-strategy common-lisp:nil
                                    ((use-only :target-type
                                      recording-strategy-type :member-name
                                      "useOnly"))
                                    (:shape-name "RecordingStrategy"))

(smithy/sdk/shapes:define-enum recording-strategy-type
    common-lisp:nil
  (:all-supported-resource-types "ALL_SUPPORTED_RESOURCE_TYPES")
  (:inclusion-by-resource-types "INCLUSION_BY_RESOURCE_TYPES")
  (:exclusion-by-resource-types "EXCLUSION_BY_RESOURCE_TYPES"))

(smithy/sdk/shapes:define-list reevaluate-config-rule-names :member
                               config-rule-name)

(smithy/sdk/shapes:define-type related-event smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list related-event-list :member related-event)

(smithy/sdk/shapes:define-structure relationship common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-id :target-type resource-id
                                      :member-name "resourceId")
                                     (resource-name :target-type resource-name
                                      :member-name "resourceName")
                                     (relationship-name :target-type
                                      relationship-name :member-name
                                      "relationshipName"))
                                    (:shape-name "Relationship"))

(smithy/sdk/shapes:define-list relationship-list :member relationship)

(smithy/sdk/shapes:define-type relationship-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure remediation-configuration common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :required common-lisp:t
                                      :member-name "ConfigRuleName")
                                     (target-type :target-type
                                      remediation-target-type :required
                                      common-lisp:t :member-name "TargetType")
                                     (target-id :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name "TargetId")
                                     (target-version :target-type string
                                      :member-name "TargetVersion")
                                     (parameters :target-type
                                      remediation-parameters :member-name
                                      "Parameters")
                                     (resource-type :target-type string
                                      :member-name "ResourceType")
                                     (automatic :target-type boolean
                                      :member-name "Automatic")
                                     (execution-controls :target-type
                                      execution-controls :member-name
                                      "ExecutionControls")
                                     (maximum-automatic-attempts :target-type
                                      auto-remediation-attempts :member-name
                                      "MaximumAutomaticAttempts")
                                     (retry-attempt-seconds :target-type
                                      auto-remediation-attempt-seconds
                                      :member-name "RetryAttemptSeconds")
                                     (arn :target-type
                                      string-with-char-limit1024 :member-name
                                      "Arn")
                                     (created-by-service :target-type
                                      string-with-char-limit1024 :member-name
                                      "CreatedByService"))
                                    (:shape-name "RemediationConfiguration"))

(smithy/sdk/shapes:define-list remediation-configurations :member
                               remediation-configuration)

(smithy/sdk/shapes:define-structure remediation-exception common-lisp:nil
                                    ((config-rule-name :target-type
                                      config-rule-name :required common-lisp:t
                                      :member-name "ConfigRuleName")
                                     (resource-type :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      string-with-char-limit1024 :required
                                      common-lisp:t :member-name "ResourceId")
                                     (message :target-type
                                      string-with-char-limit1024 :member-name
                                      "Message")
                                     (expiration-time :target-type date
                                      :member-name "ExpirationTime"))
                                    (:shape-name "RemediationException"))

(smithy/sdk/shapes:define-structure remediation-exception-resource-key
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      string-with-char-limit256 :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      string-with-char-limit1024 :member-name
                                      "ResourceId"))
                                    (:shape-name
                                     "RemediationExceptionResourceKey"))

(smithy/sdk/shapes:define-list remediation-exception-resource-keys :member
                               remediation-exception-resource-key)

(smithy/sdk/shapes:define-list remediation-exceptions :member
                               remediation-exception)

(smithy/sdk/shapes:define-enum remediation-execution-state
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure remediation-execution-status
                                    common-lisp:nil
                                    ((resource-key :target-type resource-key
                                      :member-name "ResourceKey")
                                     (state :target-type
                                      remediation-execution-state :member-name
                                      "State")
                                     (step-details :target-type
                                      remediation-execution-steps :member-name
                                      "StepDetails")
                                     (invocation-time :target-type date
                                      :member-name "InvocationTime")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "RemediationExecutionStatus"))

(smithy/sdk/shapes:define-list remediation-execution-statuses :member
                               remediation-execution-status)

(smithy/sdk/shapes:define-structure remediation-execution-step common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (state :target-type
                                      remediation-execution-step-state
                                      :member-name "State")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (start-time :target-type date :member-name
                                      "StartTime")
                                     (stop-time :target-type date :member-name
                                      "StopTime"))
                                    (:shape-name "RemediationExecutionStep"))

(smithy/sdk/shapes:define-enum remediation-execution-step-state
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:pending "PENDING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list remediation-execution-steps :member
                               remediation-execution-step)

(smithy/sdk/shapes:define-error remediation-in-progress-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "RemediationInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure remediation-parameter-value common-lisp:nil
                                    ((resource-value :target-type
                                      resource-value :member-name
                                      "ResourceValue")
                                     (static-value :target-type static-value
                                      :member-name "StaticValue"))
                                    (:shape-name "RemediationParameterValue"))

(smithy/sdk/shapes:define-map remediation-parameters :key
                              string-with-char-limit256 :value
                              remediation-parameter-value)

(smithy/sdk/shapes:define-enum remediation-target-type
    common-lisp:nil
  (:ssm-document "SSM_DOCUMENT"))

(smithy/sdk/shapes:define-error resource-concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ResourceConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-configuration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-configuration-schema-type
    common-lisp:nil
  (:cfn-resource-schema "CFN_RESOURCE_SCHEMA"))

(smithy/sdk/shapes:define-structure resource-count common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (count :target-type long :member-name
                                      "count"))
                                    (:shape-name "ResourceCount"))

(smithy/sdk/shapes:define-structure resource-count-filters common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (region :target-type aws-region
                                      :member-name "Region"))
                                    (:shape-name "ResourceCountFilters"))

(smithy/sdk/shapes:define-enum resource-count-group-key
    common-lisp:nil
  (:resource-type "RESOURCE_TYPE")
  (:account-id "ACCOUNT_ID")
  (:aws-region "AWS_REGION"))

(smithy/sdk/shapes:define-list resource-counts :member resource-count)

(smithy/sdk/shapes:define-type resource-creation-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type resource-deletion-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure resource-details common-lisp:nil
                                    ((resource-id :target-type base-resource-id
                                      :required common-lisp:t :member-name
                                      "ResourceId")
                                     (resource-type :target-type
                                      string-with-char-limit256 :required
                                      common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-configuration :target-type
                                      resource-configuration :required
                                      common-lisp:t :member-name
                                      "ResourceConfiguration")
                                     (resource-configuration-schema-type
                                      :target-type
                                      resource-configuration-schema-type
                                      :member-name
                                      "ResourceConfigurationSchemaType"))
                                    (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-structure resource-evaluation common-lisp:nil
                                    ((resource-evaluation-id :target-type
                                      resource-evaluation-id :member-name
                                      "ResourceEvaluationId")
                                     (evaluation-mode :target-type
                                      evaluation-mode :member-name
                                      "EvaluationMode")
                                     (evaluation-start-timestamp :target-type
                                      date :member-name
                                      "EvaluationStartTimestamp"))
                                    (:shape-name "ResourceEvaluation"))

(smithy/sdk/shapes:define-structure resource-evaluation-filters common-lisp:nil
                                    ((evaluation-mode :target-type
                                      evaluation-mode :member-name
                                      "EvaluationMode")
                                     (time-window :target-type time-window
                                      :member-name "TimeWindow")
                                     (evaluation-context-identifier
                                      :target-type
                                      evaluation-context-identifier
                                      :member-name
                                      "EvaluationContextIdentifier"))
                                    (:shape-name "ResourceEvaluationFilters"))

(smithy/sdk/shapes:define-type resource-evaluation-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-evaluation-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-list resource-evaluations :member resource-evaluation)

(smithy/sdk/shapes:define-structure resource-filters common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (resource-name :target-type resource-name
                                      :member-name "ResourceName")
                                     (region :target-type aws-region
                                      :member-name "Region"))
                                    (:shape-name "ResourceFilters"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-id-list :member resource-id)

(smithy/sdk/shapes:define-structure resource-identifier common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-id :target-type resource-id
                                      :member-name "resourceId")
                                     (resource-name :target-type resource-name
                                      :member-name "resourceName")
                                     (resource-deletion-time :target-type
                                      resource-deletion-time :member-name
                                      "resourceDeletionTime"))
                                    (:shape-name "ResourceIdentifier"))

(smithy/sdk/shapes:define-list resource-identifier-list :member
                               resource-identifier)

(smithy/sdk/shapes:define-list resource-identifiers-list :member
                               aggregate-resource-identifier)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-key common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "resourceId"))
                                    (:shape-name "ResourceKey"))

(smithy/sdk/shapes:define-list resource-keys :member resource-key)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-discovered-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotDiscoveredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:customer-gateway "AWS::EC2::CustomerGateway")
  (:eip "AWS::EC2::EIP")
  (:host "AWS::EC2::Host")
  (:instance "AWS::EC2::Instance")
  (:internet-gateway "AWS::EC2::InternetGateway")
  (:network-acl "AWS::EC2::NetworkAcl")
  (:network-interface "AWS::EC2::NetworkInterface")
  (:route-table "AWS::EC2::RouteTable")
  (:security-group "AWS::EC2::SecurityGroup")
  (:subnet "AWS::EC2::Subnet")
  (:trail "AWS::CloudTrail::Trail")
  (:volume "AWS::EC2::Volume")
  (:vpc "AWS::EC2::VPC")
  (:vpnconnection "AWS::EC2::VPNConnection")
  (:vpngateway "AWS::EC2::VPNGateway")
  (:registered-hainstance "AWS::EC2::RegisteredHAInstance")
  (:nat-gateway "AWS::EC2::NatGateway")
  (:egress-only-internet-gateway "AWS::EC2::EgressOnlyInternetGateway")
  (:vpcendpoint "AWS::EC2::VPCEndpoint")
  (:vpcendpoint-service "AWS::EC2::VPCEndpointService")
  (:flow-log "AWS::EC2::FlowLog")
  (:vpcpeering-connection "AWS::EC2::VPCPeeringConnection")
  (:domain "AWS::Elasticsearch::Domain")
  (:group "AWS::IAM::Group")
  (:policy "AWS::IAM::Policy")
  (:role "AWS::IAM::Role")
  (:user "AWS::IAM::User")
  (:load-balancer-v2 "AWS::ElasticLoadBalancingV2::LoadBalancer")
  (:certificate "AWS::ACM::Certificate")
  (:dbinstance "AWS::RDS::DBInstance")
  (:dbsubnet-group "AWS::RDS::DBSubnetGroup")
  (:dbsecurity-group "AWS::RDS::DBSecurityGroup")
  (:dbsnapshot "AWS::RDS::DBSnapshot")
  (:dbcluster "AWS::RDS::DBCluster")
  (:dbcluster-snapshot "AWS::RDS::DBClusterSnapshot")
  (:event-subscription "AWS::RDS::EventSubscription")
  (:bucket "AWS::S3::Bucket")
  (:account-public-access-block "AWS::S3::AccountPublicAccessBlock")
  (:cluster "AWS::Redshift::Cluster")
  (:cluster-snapshot "AWS::Redshift::ClusterSnapshot")
  (:cluster-parameter-group "AWS::Redshift::ClusterParameterGroup")
  (:cluster-security-group "AWS::Redshift::ClusterSecurityGroup")
  (:cluster-subnet-group "AWS::Redshift::ClusterSubnetGroup")
  (:redshift-event-subscription "AWS::Redshift::EventSubscription")
  (:managed-instance-inventory "AWS::SSM::ManagedInstanceInventory")
  (:alarm "AWS::CloudWatch::Alarm")
  (:stack "AWS::CloudFormation::Stack")
  (:load-balancer "AWS::ElasticLoadBalancing::LoadBalancer")
  (:auto-scaling-group "AWS::AutoScaling::AutoScalingGroup")
  (:launch-configuration "AWS::AutoScaling::LaunchConfiguration")
  (:scaling-policy "AWS::AutoScaling::ScalingPolicy")
  (:scheduled-action "AWS::AutoScaling::ScheduledAction")
  (:table "AWS::DynamoDB::Table")
  (:project "AWS::CodeBuild::Project")
  (:rate-based-rule "AWS::WAF::RateBasedRule")
  (:rule "AWS::WAF::Rule")
  (:rule-group "AWS::WAF::RuleGroup")
  (:web-acl "AWS::WAF::WebACL")
  (:regional-rate-based-rule "AWS::WAFRegional::RateBasedRule")
  (:regional-rule "AWS::WAFRegional::Rule")
  (:regional-rule-group "AWS::WAFRegional::RuleGroup")
  (:regional-web-acl "AWS::WAFRegional::WebACL")
  (:distribution "AWS::CloudFront::Distribution")
  (:streaming-distribution "AWS::CloudFront::StreamingDistribution")
  (:function "AWS::Lambda::Function")
  (:network-firewall-firewall "AWS::NetworkFirewall::Firewall")
  (:network-firewall-firewall-policy "AWS::NetworkFirewall::FirewallPolicy")
  (:network-firewall-rule-group "AWS::NetworkFirewall::RuleGroup")
  (:application "AWS::ElasticBeanstalk::Application")
  (:application-version "AWS::ElasticBeanstalk::ApplicationVersion")
  (:environment "AWS::ElasticBeanstalk::Environment")
  (:web-aclv2 "AWS::WAFv2::WebACL")
  (:rule-group-v2 "AWS::WAFv2::RuleGroup")
  (:ipset-v2 "AWS::WAFv2::IPSet")
  (:regex-pattern-set-v2 "AWS::WAFv2::RegexPatternSet")
  (:managed-rule-set-v2 "AWS::WAFv2::ManagedRuleSet")
  (:encryption-config "AWS::XRay::EncryptionConfig")
  (:association-compliance "AWS::SSM::AssociationCompliance")
  (:patch-compliance "AWS::SSM::PatchCompliance")
  (:protection "AWS::Shield::Protection")
  (:regional-protection "AWS::ShieldRegional::Protection")
  (:conformance-pack-compliance "AWS::Config::ConformancePackCompliance")
  (:resource-compliance "AWS::Config::ResourceCompliance")
  (:stage "AWS::ApiGateway::Stage")
  (:rest-api "AWS::ApiGateway::RestApi")
  (:stage-v2 "AWS::ApiGatewayV2::Stage")
  (:api "AWS::ApiGatewayV2::Api")
  (:pipeline "AWS::CodePipeline::Pipeline")
  (:cloud-formation-provisioned-product
   "AWS::ServiceCatalog::CloudFormationProvisionedProduct")
  (:cloud-formation-product "AWS::ServiceCatalog::CloudFormationProduct")
  (:portfolio "AWS::ServiceCatalog::Portfolio")
  (:queue "AWS::SQS::Queue")
  (:key "AWS::KMS::Key")
  (:qldbledger "AWS::QLDB::Ledger")
  (:secret "AWS::SecretsManager::Secret")
  (:topic "AWS::SNS::Topic")
  (:file-data "AWS::SSM::FileData")
  (:backup-plan "AWS::Backup::BackupPlan")
  (:backup-selection "AWS::Backup::BackupSelection")
  (:backup-vault "AWS::Backup::BackupVault")
  (:backup-recovery-point "AWS::Backup::RecoveryPoint")
  (:ecrrepository "AWS::ECR::Repository")
  (:ecscluster "AWS::ECS::Cluster")
  (:ecsservice "AWS::ECS::Service")
  (:ecstask-definition "AWS::ECS::TaskDefinition")
  (:efsaccess-point "AWS::EFS::AccessPoint")
  (:efsfile-system "AWS::EFS::FileSystem")
  (:ekscluster "AWS::EKS::Cluster")
  (:open-search-domain "AWS::OpenSearch::Domain")
  (:transit-gateway "AWS::EC2::TransitGateway")
  (:kinesis-stream "AWS::Kinesis::Stream")
  (:kinesis-stream-consumer "AWS::Kinesis::StreamConsumer")
  (:code-deploy-application "AWS::CodeDeploy::Application")
  (:code-deploy-deployment-config "AWS::CodeDeploy::DeploymentConfig")
  (:code-deploy-deployment-group "AWS::CodeDeploy::DeploymentGroup")
  (:launch-template "AWS::EC2::LaunchTemplate")
  (:ecrpublic-repository "AWS::ECR::PublicRepository")
  (:guard-duty-detector "AWS::GuardDuty::Detector")
  (:emrsecurity-configuration "AWS::EMR::SecurityConfiguration")
  (:sage-maker-code-repository "AWS::SageMaker::CodeRepository")
  (:route53resolver-resolver-endpoint "AWS::Route53Resolver::ResolverEndpoint")
  (:route53resolver-resolver-rule "AWS::Route53Resolver::ResolverRule")
  (:route53resolver-resolver-rule-association
   "AWS::Route53Resolver::ResolverRuleAssociation")
  (:dmsreplication-subnet-group "AWS::DMS::ReplicationSubnetGroup")
  (:dmsevent-subscription "AWS::DMS::EventSubscription")
  (:mskcluster "AWS::MSK::Cluster")
  (:step-functions-activity "AWS::StepFunctions::Activity")
  (:work-spaces-workspace "AWS::WorkSpaces::Workspace")
  (:work-spaces-connection-alias "AWS::WorkSpaces::ConnectionAlias")
  (:sage-maker-model "AWS::SageMaker::Model")
  (:listener-v2 "AWS::ElasticLoadBalancingV2::Listener")
  (:step-functions-state-machine "AWS::StepFunctions::StateMachine")
  (:batch-job-queue "AWS::Batch::JobQueue")
  (:batch-compute-environment "AWS::Batch::ComputeEnvironment")
  (:access-analyzer-analyzer "AWS::AccessAnalyzer::Analyzer")
  (:athena-work-group "AWS::Athena::WorkGroup")
  (:athena-data-catalog "AWS::Athena::DataCatalog")
  (:detective-graph "AWS::Detective::Graph")
  (:global-accelerator-accelerator "AWS::GlobalAccelerator::Accelerator")
  (:global-accelerator-endpoint-group "AWS::GlobalAccelerator::EndpointGroup")
  (:global-accelerator-listener "AWS::GlobalAccelerator::Listener")
  (:transit-gateway-attachment "AWS::EC2::TransitGatewayAttachment")
  (:transit-gateway-route-table "AWS::EC2::TransitGatewayRouteTable")
  (:dmscertificate "AWS::DMS::Certificate")
  (:app-config-application "AWS::AppConfig::Application")
  (:app-sync-graph-qlapi "AWS::AppSync::GraphQLApi")
  (:data-sync-location-smb "AWS::DataSync::LocationSMB")
  (:data-sync-location-fsx-lustre "AWS::DataSync::LocationFSxLustre")
  (:data-sync-location-s3 "AWS::DataSync::LocationS3")
  (:data-sync-location-efs "AWS::DataSync::LocationEFS")
  (:data-sync-task "AWS::DataSync::Task")
  (:data-sync-location-nfs "AWS::DataSync::LocationNFS")
  (:network-insights-access-scope-analysis
   "AWS::EC2::NetworkInsightsAccessScopeAnalysis")
  (:eksfargate-profile "AWS::EKS::FargateProfile")
  (:glue-job "AWS::Glue::Job")
  (:guard-duty-threat-intel-set "AWS::GuardDuty::ThreatIntelSet")
  (:guard-duty-ipset "AWS::GuardDuty::IPSet")
  (:sage-maker-workteam "AWS::SageMaker::Workteam")
  (:sage-maker-notebook-instance-lifecycle-config
   "AWS::SageMaker::NotebookInstanceLifecycleConfig")
  (:service-discovery-service "AWS::ServiceDiscovery::Service")
  (:service-discovery-public-dns-namespace
   "AWS::ServiceDiscovery::PublicDnsNamespace")
  (:sescontact-list "AWS::SES::ContactList")
  (:sesconfiguration-set "AWS::SES::ConfigurationSet")
  (:route53hosted-zone "AWS::Route53::HostedZone")
  (:io-tevents-input "AWS::IoTEvents::Input")
  (:io-tevents-detector-model "AWS::IoTEvents::DetectorModel")
  (:io-tevents-alarm-model "AWS::IoTEvents::AlarmModel")
  (:service-discovery-http-namespace "AWS::ServiceDiscovery::HttpNamespace")
  (:events-event-bus "AWS::Events::EventBus")
  (:image-builder-container-recipe "AWS::ImageBuilder::ContainerRecipe")
  (:image-builder-distribution-configuration
   "AWS::ImageBuilder::DistributionConfiguration")
  (:image-builder-infrastructure-configuration
   "AWS::ImageBuilder::InfrastructureConfiguration")
  (:data-sync-location-object-storage "AWS::DataSync::LocationObjectStorage")
  (:data-sync-location-hdfs "AWS::DataSync::LocationHDFS")
  (:glue-classifier "AWS::Glue::Classifier")
  (:route53recovery-readiness-cell "AWS::Route53RecoveryReadiness::Cell")
  (:route53recovery-readiness-readiness-check
   "AWS::Route53RecoveryReadiness::ReadinessCheck")
  (:ecrregistry-policy "AWS::ECR::RegistryPolicy")
  (:backup-report-plan "AWS::Backup::ReportPlan")
  (:lightsail-certificate "AWS::Lightsail::Certificate")
  (:rumapp-monitor "AWS::RUM::AppMonitor")
  (:events-endpoint "AWS::Events::Endpoint")
  (:sesreceipt-rule-set "AWS::SES::ReceiptRuleSet")
  (:events-archive "AWS::Events::Archive")
  (:events-api-destination "AWS::Events::ApiDestination")
  (:lightsail-disk "AWS::Lightsail::Disk")
  (:fisexperiment-template "AWS::FIS::ExperimentTemplate")
  (:data-sync-location-fsx-windows "AWS::DataSync::LocationFSxWindows")
  (:sesreceipt-filter "AWS::SES::ReceiptFilter")
  (:guard-duty-filter "AWS::GuardDuty::Filter")
  (:sestemplate "AWS::SES::Template")
  (:amazon-mqbroker "AWS::AmazonMQ::Broker")
  (:app-config-environment "AWS::AppConfig::Environment")
  (:app-config-configuration-profile "AWS::AppConfig::ConfigurationProfile")
  (:cloud9environment-ec2 "AWS::Cloud9::EnvironmentEC2")
  (:event-schemas-registry "AWS::EventSchemas::Registry")
  (:event-schemas-registry-policy "AWS::EventSchemas::RegistryPolicy")
  (:event-schemas-discoverer "AWS::EventSchemas::Discoverer")
  (:fraud-detector-label "AWS::FraudDetector::Label")
  (:fraud-detector-entity-type "AWS::FraudDetector::EntityType")
  (:fraud-detector-variable "AWS::FraudDetector::Variable")
  (:fraud-detector-outcome "AWS::FraudDetector::Outcome")
  (:io-tauthorizer "AWS::IoT::Authorizer")
  (:io-tsecurity-profile "AWS::IoT::SecurityProfile")
  (:io-trole-alias "AWS::IoT::RoleAlias")
  (:io-tdimension "AWS::IoT::Dimension")
  (:io-tanalytics-datastore "AWS::IoTAnalytics::Datastore")
  (:lightsail-bucket "AWS::Lightsail::Bucket")
  (:lightsail-static-ip "AWS::Lightsail::StaticIp")
  (:media-package-packaging-group "AWS::MediaPackage::PackagingGroup")
  (:route53recovery-readiness-recovery-group
   "AWS::Route53RecoveryReadiness::RecoveryGroup")
  (:resilience-hub-resiliency-policy "AWS::ResilienceHub::ResiliencyPolicy")
  (:transfer-workflow "AWS::Transfer::Workflow")
  (:eksidentity-provider-config "AWS::EKS::IdentityProviderConfig")
  (:eksaddon "AWS::EKS::Addon")
  (:glue-mltransform "AWS::Glue::MLTransform")
  (:io-tpolicy "AWS::IoT::Policy")
  (:io-tmitigation-action "AWS::IoT::MitigationAction")
  (:io-ttwin-maker-workspace "AWS::IoTTwinMaker::Workspace")
  (:io-ttwin-maker-entity "AWS::IoTTwinMaker::Entity")
  (:io-tanalytics-dataset "AWS::IoTAnalytics::Dataset")
  (:io-tanalytics-pipeline "AWS::IoTAnalytics::Pipeline")
  (:io-tanalytics-channel "AWS::IoTAnalytics::Channel")
  (:io-tsite-wise-dashboard "AWS::IoTSiteWise::Dashboard")
  (:io-tsite-wise-project "AWS::IoTSiteWise::Project")
  (:io-tsite-wise-portal "AWS::IoTSiteWise::Portal")
  (:io-tsite-wise-asset-model "AWS::IoTSiteWise::AssetModel")
  (:ivschannel "AWS::IVS::Channel")
  (:ivsrecording-configuration "AWS::IVS::RecordingConfiguration")
  (:ivsplayback-key-pair "AWS::IVS::PlaybackKeyPair")
  (:kinesis-analytics-v2application "AWS::KinesisAnalyticsV2::Application")
  (:rdsglobal-cluster "AWS::RDS::GlobalCluster")
  (:s3multi-region-access-point "AWS::S3::MultiRegionAccessPoint")
  (:device-farm-test-grid-project "AWS::DeviceFarm::TestGridProject")
  (:budgets-budgets-action "AWS::Budgets::BudgetsAction")
  (:lex-bot "AWS::Lex::Bot")
  (:code-guru-reviewer-repository-association
   "AWS::CodeGuruReviewer::RepositoryAssociation")
  (:io-tcustom-metric "AWS::IoT::CustomMetric")
  (:route53resolver-firewall-domain-list
   "AWS::Route53Resolver::FirewallDomainList")
  (:robo-maker-robot-application-version
   "AWS::RoboMaker::RobotApplicationVersion")
  (:ec2traffic-mirror-session "AWS::EC2::TrafficMirrorSession")
  (:io-tsite-wise-gateway "AWS::IoTSiteWise::Gateway")
  (:lex-bot-alias "AWS::Lex::BotAlias")
  (:lookout-metrics-alert "AWS::LookoutMetrics::Alert")
  (:io-taccount-audit-configuration "AWS::IoT::AccountAuditConfiguration")
  (:ec2traffic-mirror-target "AWS::EC2::TrafficMirrorTarget")
  (:s3storage-lens "AWS::S3::StorageLens")
  (:io-tscheduled-audit "AWS::IoT::ScheduledAudit")
  (:events-connection "AWS::Events::Connection")
  (:event-schemas-schema "AWS::EventSchemas::Schema")
  (:media-package-packaging-configuration
   "AWS::MediaPackage::PackagingConfiguration")
  (:kinesis-video-signaling-channel "AWS::KinesisVideo::SignalingChannel")
  (:app-stream-directory-config "AWS::AppStream::DirectoryConfig")
  (:lookout-vision-project "AWS::LookoutVision::Project")
  (:route53recovery-control-cluster "AWS::Route53RecoveryControl::Cluster")
  (:route53recovery-control-safety-rule
   "AWS::Route53RecoveryControl::SafetyRule")
  (:route53recovery-control-control-panel
   "AWS::Route53RecoveryControl::ControlPanel")
  (:route53recovery-control-routing-control
   "AWS::Route53RecoveryControl::RoutingControl")
  (:route53recovery-readiness-resource-set
   "AWS::Route53RecoveryReadiness::ResourceSet")
  (:robo-maker-simulation-application "AWS::RoboMaker::SimulationApplication")
  (:robo-maker-robot-application "AWS::RoboMaker::RobotApplication")
  (:health-lake-fhirdatastore "AWS::HealthLake::FHIRDatastore")
  (:pinpoint-segment "AWS::Pinpoint::Segment")
  (:pinpoint-application-settings "AWS::Pinpoint::ApplicationSettings")
  (:events-rule "AWS::Events::Rule")
  (:ec2dhcpoptions "AWS::EC2::DHCPOptions")
  (:ec2network-insights-path "AWS::EC2::NetworkInsightsPath")
  (:ec2traffic-mirror-filter "AWS::EC2::TrafficMirrorFilter")
  (:ec2ipam "AWS::EC2::IPAM")
  (:io-ttwin-maker-scene "AWS::IoTTwinMaker::Scene")
  (:network-manager-transit-gateway-registration
   "AWS::NetworkManager::TransitGatewayRegistration")
  (:customer-profiles-domain "AWS::CustomerProfiles::Domain")
  (:auto-scaling-warm-pool "AWS::AutoScaling::WarmPool")
  (:connect-phone-number "AWS::Connect::PhoneNumber")
  (:app-config-deployment-strategy "AWS::AppConfig::DeploymentStrategy")
  (:app-flow-flow "AWS::AppFlow::Flow")
  (:audit-manager-assessment "AWS::AuditManager::Assessment")
  (:cloud-watch-metric-stream "AWS::CloudWatch::MetricStream")
  (:device-farm-instance-profile "AWS::DeviceFarm::InstanceProfile")
  (:device-farm-project "AWS::DeviceFarm::Project")
  (:ec2ec2fleet "AWS::EC2::EC2Fleet")
  (:ec2subnet-route-table-association "AWS::EC2::SubnetRouteTableAssociation")
  (:ecrpull-through-cache-rule "AWS::ECR::PullThroughCacheRule")
  (:ground-station-config "AWS::GroundStation::Config")
  (:image-builder-image-pipeline "AWS::ImageBuilder::ImagePipeline")
  (:io-tfleet-metric "AWS::IoT::FleetMetric")
  (:io-twireless-service-profile "AWS::IoTWireless::ServiceProfile")
  (:network-manager-device "AWS::NetworkManager::Device")
  (:network-manager-global-network "AWS::NetworkManager::GlobalNetwork")
  (:network-manager-link "AWS::NetworkManager::Link")
  (:network-manager-site "AWS::NetworkManager::Site")
  (:panorama-package "AWS::Panorama::Package")
  (:pinpoint-app "AWS::Pinpoint::App")
  (:redshift-scheduled-action "AWS::Redshift::ScheduledAction")
  (:route53resolver-firewall-rule-group-association
   "AWS::Route53Resolver::FirewallRuleGroupAssociation")
  (:sage-maker-app-image-config "AWS::SageMaker::AppImageConfig")
  (:sage-maker-image "AWS::SageMaker::Image")
  (:ecstask-set "AWS::ECS::TaskSet")
  (:cassandra-keyspace "AWS::Cassandra::Keyspace")
  (:signer-signing-profile "AWS::Signer::SigningProfile")
  (:amplify-app "AWS::Amplify::App")
  (:app-mesh-virtual-node "AWS::AppMesh::VirtualNode")
  (:app-mesh-virtual-service "AWS::AppMesh::VirtualService")
  (:app-runner-vpc-connector "AWS::AppRunner::VpcConnector")
  (:app-stream-application "AWS::AppStream::Application")
  (:code-artifact-repository "AWS::CodeArtifact::Repository")
  (:ec2prefix-list "AWS::EC2::PrefixList")
  (:ec2spot-fleet "AWS::EC2::SpotFleet")
  (:evidently-project "AWS::Evidently::Project")
  (:forecast-dataset "AWS::Forecast::Dataset")
  (:iamsamlprovider "AWS::IAM::SAMLProvider")
  (:iamserver-certificate "AWS::IAM::ServerCertificate")
  (:pinpoint-campaign "AWS::Pinpoint::Campaign")
  (:pinpoint-in-app-template "AWS::Pinpoint::InAppTemplate")
  (:sage-maker-domain "AWS::SageMaker::Domain")
  (:transfer-agreement "AWS::Transfer::Agreement")
  (:transfer-connector "AWS::Transfer::Connector")
  (:kinesis-firehose-delivery-stream "AWS::KinesisFirehose::DeliveryStream")
  (:amplify-branch "AWS::Amplify::Branch")
  (:app-integrations-event-integration "AWS::AppIntegrations::EventIntegration")
  (:app-mesh-route "AWS::AppMesh::Route")
  (:athena-prepared-statement "AWS::Athena::PreparedStatement")
  (:ec2ipamscope "AWS::EC2::IPAMScope")
  (:evidently-launch "AWS::Evidently::Launch")
  (:forecast-dataset-group "AWS::Forecast::DatasetGroup")
  (:greengrass-v2component-version "AWS::GreengrassV2::ComponentVersion")
  (:ground-station-mission-profile "AWS::GroundStation::MissionProfile")
  (:media-connect-flow-entitlement "AWS::MediaConnect::FlowEntitlement")
  (:media-connect-flow-vpc-interface "AWS::MediaConnect::FlowVpcInterface")
  (:media-tailor-playback-configuration
   "AWS::MediaTailor::PlaybackConfiguration")
  (:mskconfiguration "AWS::MSK::Configuration")
  (:personalize-dataset "AWS::Personalize::Dataset")
  (:personalize-schema "AWS::Personalize::Schema")
  (:personalize-solution "AWS::Personalize::Solution")
  (:pinpoint-email-template "AWS::Pinpoint::EmailTemplate")
  (:pinpoint-event-stream "AWS::Pinpoint::EventStream")
  (:resilience-hub-app "AWS::ResilienceHub::App")
  (:acmpcacertificate-authority "AWS::ACMPCA::CertificateAuthority")
  (:app-config-hosted-configuration-version
   "AWS::AppConfig::HostedConfigurationVersion")
  (:app-mesh-virtual-gateway "AWS::AppMesh::VirtualGateway")
  (:app-mesh-virtual-router "AWS::AppMesh::VirtualRouter")
  (:app-runner-service "AWS::AppRunner::Service")
  (:customer-profiles-object-type "AWS::CustomerProfiles::ObjectType")
  (:dmsendpoint "AWS::DMS::Endpoint")
  (:ec2capacity-reservation "AWS::EC2::CapacityReservation")
  (:ec2client-vpn-endpoint "AWS::EC2::ClientVpnEndpoint")
  (:kendra-index "AWS::Kendra::Index")
  (:kinesis-video-stream "AWS::KinesisVideo::Stream")
  (:logs-destination "AWS::Logs::Destination")
  (:pinpoint-email-channel "AWS::Pinpoint::EmailChannel")
  (:s3access-point "AWS::S3::AccessPoint")
  (:network-manager-customer-gateway-association
   "AWS::NetworkManager::CustomerGatewayAssociation")
  (:network-manager-link-association "AWS::NetworkManager::LinkAssociation")
  (:io-twireless-multicast-group "AWS::IoTWireless::MulticastGroup")
  (:personalize-dataset-group "AWS::Personalize::DatasetGroup")
  (:io-ttwin-maker-component-type "AWS::IoTTwinMaker::ComponentType")
  (:code-build-report-group "AWS::CodeBuild::ReportGroup")
  (:sage-maker-feature-group "AWS::SageMaker::FeatureGroup")
  (:mskbatch-scram-secret "AWS::MSK::BatchScramSecret")
  (:app-stream-stack "AWS::AppStream::Stack")
  (:io-tjob-template "AWS::IoT::JobTemplate")
  (:io-twireless-fuota-task "AWS::IoTWireless::FuotaTask")
  (:io-tprovisioning-template "AWS::IoT::ProvisioningTemplate")
  (:inspector-v2filter "AWS::InspectorV2::Filter")
  (:route53resolver-resolver-query-logging-config-association
   "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation")
  (:service-discovery-instance "AWS::ServiceDiscovery::Instance")
  (:transfer-certificate "AWS::Transfer::Certificate")
  (:media-connect-flow-source "AWS::MediaConnect::FlowSource")
  (:apsrule-groups-namespace "AWS::APS::RuleGroupsNamespace")
  (:code-guru-profiler-profiling-group "AWS::CodeGuruProfiler::ProfilingGroup")
  (:route53resolver-resolver-query-logging-config
   "AWS::Route53Resolver::ResolverQueryLoggingConfig")
  (:batch-scheduling-policy "AWS::Batch::SchedulingPolicy")
  (:acmpcacertificate-authority-activation
   "AWS::ACMPCA::CertificateAuthorityActivation")
  (:app-mesh-gateway-route "AWS::AppMesh::GatewayRoute")
  (:app-mesh-mesh "AWS::AppMesh::Mesh")
  (:connect-instance "AWS::Connect::Instance")
  (:connect-quick-connect "AWS::Connect::QuickConnect")
  (:ec2carrier-gateway "AWS::EC2::CarrierGateway")
  (:ec2ipampool "AWS::EC2::IPAMPool")
  (:ec2transit-gateway-connect "AWS::EC2::TransitGatewayConnect")
  (:ec2transit-gateway-multicast-domain
   "AWS::EC2::TransitGatewayMulticastDomain")
  (:ecscapacity-provider "AWS::ECS::CapacityProvider")
  (:iaminstance-profile "AWS::IAM::InstanceProfile")
  (:io-tcacertificate "AWS::IoT::CACertificate")
  (:io-ttwin-maker-sync-job "AWS::IoTTwinMaker::SyncJob")
  (:kafka-connect-connector "AWS::KafkaConnect::Connector")
  (:lambda-code-signing-config "AWS::Lambda::CodeSigningConfig")
  (:network-manager-connect-peer "AWS::NetworkManager::ConnectPeer")
  (:resource-explorer2index "AWS::ResourceExplorer2::Index")
  (:app-stream-fleet "AWS::AppStream::Fleet")
  (:cognito-user-pool "AWS::Cognito::UserPool")
  (:cognito-user-pool-client "AWS::Cognito::UserPoolClient")
  (:cognito-user-pool-group "AWS::Cognito::UserPoolGroup")
  (:ec2network-insights-access-scope "AWS::EC2::NetworkInsightsAccessScope")
  (:ec2network-insights-analysis "AWS::EC2::NetworkInsightsAnalysis")
  (:grafana-workspace "AWS::Grafana::Workspace")
  (:ground-station-dataflow-endpoint-group
   "AWS::GroundStation::DataflowEndpointGroup")
  (:image-builder-image-recipe "AWS::ImageBuilder::ImageRecipe")
  (:kmsalias "AWS::KMS::Alias")
  (:m2environment "AWS::M2::Environment")
  (:quick-sight-data-source "AWS::QuickSight::DataSource")
  (:quick-sight-template "AWS::QuickSight::Template")
  (:quick-sight-theme "AWS::QuickSight::Theme")
  (:rdsoption-group "AWS::RDS::OptionGroup")
  (:redshift-endpoint-access "AWS::Redshift::EndpointAccess")
  (:route53resolver-firewall-rule-group
   "AWS::Route53Resolver::FirewallRuleGroup")
  (:ssmdocument "AWS::SSM::Document")
  (:app-config-extension-association "AWS::AppConfig::ExtensionAssociation")
  (:app-integrations-application "AWS::AppIntegrations::Application")
  (:app-sync-api-cache "AWS::AppSync::ApiCache")
  (:bedrock-guardrail "AWS::Bedrock::Guardrail")
  (:bedrock-knowledge-base "AWS::Bedrock::KnowledgeBase")
  (:cognito-identity-pool "AWS::Cognito::IdentityPool")
  (:connect-rule "AWS::Connect::Rule")
  (:connect-user "AWS::Connect::User")
  (:ec2client-vpn-target-network-association
   "AWS::EC2::ClientVpnTargetNetworkAssociation")
  (:ec2eipassociation "AWS::EC2::EIPAssociation")
  (:ec2ipamresource-discovery "AWS::EC2::IPAMResourceDiscovery")
  (:ec2ipamresource-discovery-association
   "AWS::EC2::IPAMResourceDiscoveryAssociation")
  (:ec2instance-connect-endpoint "AWS::EC2::InstanceConnectEndpoint")
  (:ec2snapshot-block-public-access "AWS::EC2::SnapshotBlockPublicAccess")
  (:ec2vpcblock-public-access-exclusion
   "AWS::EC2::VPCBlockPublicAccessExclusion")
  (:ec2vpcblock-public-access-options "AWS::EC2::VPCBlockPublicAccessOptions")
  (:ec2vpcendpoint-connection-notification
   "AWS::EC2::VPCEndpointConnectionNotification")
  (:ec2vpnconnection-route "AWS::EC2::VPNConnectionRoute")
  (:evidently-segment "AWS::Evidently::Segment")
  (:iamoidcprovider "AWS::IAM::OIDCProvider")
  (:inspector-v2activation "AWS::InspectorV2::Activation")
  (:mskcluster-policy "AWS::MSK::ClusterPolicy")
  (:mskvpc-connection "AWS::MSK::VpcConnection")
  (:media-connect-gateway "AWS::MediaConnect::Gateway")
  (:memory-dbsubnet-group "AWS::MemoryDB::SubnetGroup")
  (:open-search-serverless-collection "AWS::OpenSearchServerless::Collection")
  (:open-search-serverless-vpc-endpoint
   "AWS::OpenSearchServerless::VpcEndpoint")
  (:redshift-endpoint-authorization "AWS::Redshift::EndpointAuthorization")
  (:route53profiles-profile "AWS::Route53Profiles::Profile")
  (:s3storage-lens-group "AWS::S3::StorageLensGroup")
  (:s3express-bucket-policy "AWS::S3Express::BucketPolicy")
  (:s3express-directory-bucket "AWS::S3Express::DirectoryBucket")
  (:sage-maker-inference-experiment "AWS::SageMaker::InferenceExperiment")
  (:security-hub-standard "AWS::SecurityHub::Standard")
  (:transfer-profile "AWS::Transfer::Profile"))

(smithy/sdk/shapes:define-list resource-type-list :member resource-type)

(smithy/sdk/shapes:define-type resource-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-type-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-type-value-list :member
                               resource-type-value)

(smithy/sdk/shapes:define-list resource-types :member string-with-char-limit256)

(smithy/sdk/shapes:define-list resource-types-scope :member
                               string-with-char-limit256)

(smithy/sdk/shapes:define-structure resource-value common-lisp:nil
                                    ((value :target-type resource-value-type
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ResourceValue"))

(smithy/sdk/shapes:define-enum resource-value-type
    common-lisp:nil
  (:resource-id "RESOURCE_ID"))

(smithy/sdk/shapes:define-list results :member string)

(smithy/sdk/shapes:define-structure retention-configuration common-lisp:nil
                                    ((name :target-type
                                      retention-configuration-name :required
                                      common-lisp:t :member-name "Name")
                                     (retention-period-in-days :target-type
                                      retention-period-in-days :required
                                      common-lisp:t :member-name
                                      "RetentionPeriodInDays"))
                                    (:shape-name "RetentionConfiguration"))

(smithy/sdk/shapes:define-list retention-configuration-list :member
                               retention-configuration)

(smithy/sdk/shapes:define-type retention-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list retention-configuration-name-list :member
                               retention-configuration-name)

(smithy/sdk/shapes:define-type retention-period-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rule-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ssmdocument-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssmdocument-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scope common-lisp:nil
                                    ((compliance-resource-types :target-type
                                      compliance-resource-types :member-name
                                      "ComplianceResourceTypes")
                                     (tag-key :target-type
                                      string-with-char-limit128 :member-name
                                      "TagKey")
                                     (tag-value :target-type
                                      string-with-char-limit256 :member-name
                                      "TagValue")
                                     (compliance-resource-id :target-type
                                      base-resource-id :member-name
                                      "ComplianceResourceId"))
                                    (:shape-name "Scope"))

(smithy/sdk/shapes:define-input select-aggregate-resource-config-request
                                common-lisp:nil
                                ((expression :target-type expression :required
                                  common-lisp:t :member-name "Expression")
                                 (configuration-aggregator-name :target-type
                                  configuration-aggregator-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationAggregatorName")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (max-results :target-type limit :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "SelectAggregateResourceConfigRequest"))

(smithy/sdk/shapes:define-output select-aggregate-resource-config-response
                                 common-lisp:nil
                                 ((results :target-type results :member-name
                                   "Results")
                                  (query-info :target-type query-info
                                   :member-name "QueryInfo")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "SelectAggregateResourceConfigResponse"))

(smithy/sdk/shapes:define-input select-resource-config-request common-lisp:nil
                                ((expression :target-type expression :required
                                  common-lisp:t :member-name "Expression")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "SelectResourceConfigRequest"))

(smithy/sdk/shapes:define-output select-resource-config-response
                                 common-lisp:nil
                                 ((results :target-type results :member-name
                                   "Results")
                                  (query-info :target-type query-info
                                   :member-name "QueryInfo")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "SelectResourceConfigResponse"))

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-principal-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-principal-value-list :member
                               service-principal-value)

(smithy/sdk/shapes:define-enum sort-by
    common-lisp:nil
  (:score "SCORE"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((owner :target-type owner :required
                                      common-lisp:t :member-name "Owner")
                                     (source-identifier :target-type
                                      string-with-char-limit256 :member-name
                                      "SourceIdentifier")
                                     (source-details :target-type
                                      source-details :member-name
                                      "SourceDetails")
                                     (custom-policy-details :target-type
                                      custom-policy-details :member-name
                                      "CustomPolicyDetails"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-structure source-detail common-lisp:nil
                                    ((event-source :target-type event-source
                                      :member-name "EventSource")
                                     (message-type :target-type message-type
                                      :member-name "MessageType")
                                     (maximum-execution-frequency :target-type
                                      maximum-execution-frequency :member-name
                                      "MaximumExecutionFrequency"))
                                    (:shape-name "SourceDetail"))

(smithy/sdk/shapes:define-list source-details :member source-detail)

(smithy/sdk/shapes:define-structure ssm-controls common-lisp:nil
                                    ((concurrent-execution-rate-percentage
                                      :target-type percentage :member-name
                                      "ConcurrentExecutionRatePercentage")
                                     (error-percentage :target-type percentage
                                      :member-name "ErrorPercentage"))
                                    (:shape-name "SsmControls"))

(smithy/sdk/shapes:define-type stack-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-config-rules-evaluation-request
                                common-lisp:nil
                                ((config-rule-names :target-type
                                  reevaluate-config-rule-names :member-name
                                  "ConfigRuleNames"))
                                (:shape-name
                                 "StartConfigRulesEvaluationRequest"))

(smithy/sdk/shapes:define-output start-config-rules-evaluation-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartConfigRulesEvaluationResponse"))

(smithy/sdk/shapes:define-input start-configuration-recorder-request
                                common-lisp:nil
                                ((configuration-recorder-name :target-type
                                  recorder-name :required common-lisp:t
                                  :member-name "ConfigurationRecorderName"))
                                (:shape-name
                                 "StartConfigurationRecorderRequest"))

(smithy/sdk/shapes:define-input start-remediation-execution-request
                                common-lisp:nil
                                ((config-rule-name :target-type
                                  config-rule-name :required common-lisp:t
                                  :member-name "ConfigRuleName")
                                 (resource-keys :target-type resource-keys
                                  :required common-lisp:t :member-name
                                  "ResourceKeys"))
                                (:shape-name
                                 "StartRemediationExecutionRequest"))

(smithy/sdk/shapes:define-output start-remediation-execution-response
                                 common-lisp:nil
                                 ((failure-message :target-type string
                                   :member-name "FailureMessage")
                                  (failed-items :target-type resource-keys
                                   :member-name "FailedItems"))
                                 (:shape-name
                                  "StartRemediationExecutionResponse"))

(smithy/sdk/shapes:define-input start-resource-evaluation-request
                                common-lisp:nil
                                ((resource-details :target-type
                                  resource-details :required common-lisp:t
                                  :member-name "ResourceDetails")
                                 (evaluation-context :target-type
                                  evaluation-context :member-name
                                  "EvaluationContext")
                                 (evaluation-mode :target-type evaluation-mode
                                  :required common-lisp:t :member-name
                                  "EvaluationMode")
                                 (evaluation-timeout :target-type
                                  evaluation-timeout :member-name
                                  "EvaluationTimeout")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "StartResourceEvaluationRequest"))

(smithy/sdk/shapes:define-output start-resource-evaluation-response
                                 common-lisp:nil
                                 ((resource-evaluation-id :target-type
                                   resource-evaluation-id :member-name
                                   "ResourceEvaluationId"))
                                 (:shape-name
                                  "StartResourceEvaluationResponse"))

(smithy/sdk/shapes:define-list static-parameter-values :member
                               string-with-char-limit256)

(smithy/sdk/shapes:define-structure static-value common-lisp:nil
                                    ((values :target-type
                                      static-parameter-values :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "StaticValue"))

(smithy/sdk/shapes:define-structure status-detail-filters common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (member-account-rule-status :target-type
                                      member-account-rule-status :member-name
                                      "MemberAccountRuleStatus"))
                                    (:shape-name "StatusDetailFilters"))

(smithy/sdk/shapes:define-input stop-configuration-recorder-request
                                common-lisp:nil
                                ((configuration-recorder-name :target-type
                                  recorder-name :required common-lisp:t
                                  :member-name "ConfigurationRecorderName"))
                                (:shape-name
                                 "StopConfigurationRecorderRequest"))

(smithy/sdk/shapes:define-structure stored-query common-lisp:nil
                                    ((query-id :target-type query-id
                                      :member-name "QueryId")
                                     (query-arn :target-type query-arn
                                      :member-name "QueryArn")
                                     (query-name :target-type query-name
                                      :required common-lisp:t :member-name
                                      "QueryName")
                                     (description :target-type
                                      query-description :member-name
                                      "Description")
                                     (expression :target-type query-expression
                                      :member-name "Expression"))
                                    (:shape-name "StoredQuery"))

(smithy/sdk/shapes:define-structure stored-query-metadata common-lisp:nil
                                    ((query-id :target-type query-id :required
                                      common-lisp:t :member-name "QueryId")
                                     (query-arn :target-type query-arn
                                      :required common-lisp:t :member-name
                                      "QueryArn")
                                     (query-name :target-type query-name
                                      :required common-lisp:t :member-name
                                      "QueryName")
                                     (description :target-type
                                      query-description :member-name
                                      "Description"))
                                    (:shape-name "StoredQueryMetadata"))

(smithy/sdk/shapes:define-list stored-query-metadata-list :member
                               stored-query-metadata)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit1024
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit128
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit256min0
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit64
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-char-limit768
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map supplementary-configuration :key
                              supplementary-configuration-name :value
                              supplementary-configuration-value)

(smithy/sdk/shapes:define-type supplementary-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type supplementary-configuration-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key name :value value)

(smithy/sdk/shapes:define-list tags-list :member tag)

(smithy/sdk/shapes:define-type template-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-ssmdocument-details
                                    common-lisp:nil
                                    ((document-name :target-type
                                      ssmdocument-name :required common-lisp:t
                                      :member-name "DocumentName")
                                     (document-version :target-type
                                      ssmdocument-version :member-name
                                      "DocumentVersion"))
                                    (:shape-name "TemplateSSMDocumentDetails"))

(smithy/sdk/shapes:define-structure time-window common-lisp:nil
                                    ((start-time :target-type date :member-name
                                      "StartTime")
                                     (end-time :target-type date :member-name
                                      "EndTime"))
                                    (:shape-name "TimeWindow"))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unmodifiable-entity-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnmodifiableEntityException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list unprocessed-resource-identifier-list :member
                               aggregate-resource-identifier)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-resource-types :shape-name
                                       "AssociateResourceTypes" :input
                                       associate-resource-types-request :output
                                       associate-resource-types-response
                                       :errors
                                       (conflict-exception
                                        no-such-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-aggregate-resource-config
                                       :shape-name
                                       "BatchGetAggregateResourceConfig" :input
                                       batch-get-aggregate-resource-config-request
                                       :output
                                       batch-get-aggregate-resource-config-response
                                       :errors
                                       (no-such-configuration-aggregator-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-resource-config :shape-name
                                       "BatchGetResourceConfig" :input
                                       batch-get-resource-config-request
                                       :output
                                       batch-get-resource-config-response
                                       :errors
                                       (no-available-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-aggregation-authorization
                                       :shape-name
                                       "DeleteAggregationAuthorization" :input
                                       delete-aggregation-authorization-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-config-rule :shape-name
                                       "DeleteConfigRule" :input
                                       delete-config-rule-request :output
                                       common-lisp:null :errors
                                       (no-such-config-rule-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-configuration-aggregator
                                       :shape-name
                                       "DeleteConfigurationAggregator" :input
                                       delete-configuration-aggregator-request
                                       :output common-lisp:null :errors
                                       (no-such-configuration-aggregator-exception))

(smithy/sdk/operation:define-operation delete-configuration-recorder
                                       :shape-name
                                       "DeleteConfigurationRecorder" :input
                                       delete-configuration-recorder-request
                                       :output common-lisp:null :errors
                                       (no-such-configuration-recorder-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation delete-conformance-pack :shape-name
                                       "DeleteConformancePack" :input
                                       delete-conformance-pack-request :output
                                       common-lisp:null :errors
                                       (no-such-conformance-pack-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-delivery-channel :shape-name
                                       "DeleteDeliveryChannel" :input
                                       delete-delivery-channel-request :output
                                       common-lisp:null :errors
                                       (last-delivery-channel-delete-failed-exception
                                        no-such-delivery-channel-exception))

(smithy/sdk/operation:define-operation delete-evaluation-results :shape-name
                                       "DeleteEvaluationResults" :input
                                       delete-evaluation-results-request
                                       :output
                                       delete-evaluation-results-response
                                       :errors
                                       (no-such-config-rule-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-organization-config-rule
                                       :shape-name
                                       "DeleteOrganizationConfigRule" :input
                                       delete-organization-config-rule-request
                                       :output common-lisp:null :errors
                                       (no-such-organization-config-rule-exception
                                        organization-access-denied-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-organization-conformance-pack
                                       :shape-name
                                       "DeleteOrganizationConformancePack"
                                       :input
                                       delete-organization-conformance-pack-request
                                       :output common-lisp:null :errors
                                       (no-such-organization-conformance-pack-exception
                                        organization-access-denied-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-pending-aggregation-request
                                       :shape-name
                                       "DeletePendingAggregationRequest" :input
                                       delete-pending-aggregation-request-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation delete-remediation-configuration
                                       :shape-name
                                       "DeleteRemediationConfiguration" :input
                                       delete-remediation-configuration-request
                                       :output
                                       delete-remediation-configuration-response
                                       :errors
                                       (insufficient-permissions-exception
                                        invalid-parameter-value-exception
                                        no-such-remediation-configuration-exception
                                        remediation-in-progress-exception))

(smithy/sdk/operation:define-operation delete-remediation-exceptions
                                       :shape-name
                                       "DeleteRemediationExceptions" :input
                                       delete-remediation-exceptions-request
                                       :output
                                       delete-remediation-exceptions-response
                                       :errors
                                       (no-such-remediation-exception-exception))

(smithy/sdk/operation:define-operation delete-resource-config :shape-name
                                       "DeleteResourceConfig" :input
                                       delete-resource-config-request :output
                                       common-lisp:null :errors
                                       (no-running-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-retention-configuration
                                       :shape-name
                                       "DeleteRetentionConfiguration" :input
                                       delete-retention-configuration-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        no-such-retention-configuration-exception))

(smithy/sdk/operation:define-operation
 delete-service-linked-configuration-recorder :shape-name
 "DeleteServiceLinkedConfigurationRecorder" :input
 delete-service-linked-configuration-recorder-request :output
 delete-service-linked-configuration-recorder-response :errors
 (conflict-exception no-such-configuration-recorder-exception
  validation-exception))

(smithy/sdk/operation:define-operation delete-stored-query :shape-name
                                       "DeleteStoredQuery" :input
                                       delete-stored-query-request :output
                                       delete-stored-query-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deliver-config-snapshot :shape-name
                                       "DeliverConfigSnapshot" :input
                                       deliver-config-snapshot-request :output
                                       deliver-config-snapshot-response :errors
                                       (no-available-configuration-recorder-exception
                                        no-running-configuration-recorder-exception
                                        no-such-delivery-channel-exception))

(smithy/sdk/operation:define-operation
 describe-aggregate-compliance-by-config-rules :shape-name
 "DescribeAggregateComplianceByConfigRules" :input
 describe-aggregate-compliance-by-config-rules-request :output
 describe-aggregate-compliance-by-config-rules-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-configuration-aggregator-exception validation-exception))

(smithy/sdk/operation:define-operation
 describe-aggregate-compliance-by-conformance-packs :shape-name
 "DescribeAggregateComplianceByConformancePacks" :input
 describe-aggregate-compliance-by-conformance-packs-request :output
 describe-aggregate-compliance-by-conformance-packs-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-configuration-aggregator-exception validation-exception))

(smithy/sdk/operation:define-operation describe-aggregation-authorizations
                                       :shape-name
                                       "DescribeAggregationAuthorizations"
                                       :input
                                       describe-aggregation-authorizations-request
                                       :output
                                       describe-aggregation-authorizations-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-compliance-by-config-rule
                                       :shape-name
                                       "DescribeComplianceByConfigRule" :input
                                       describe-compliance-by-config-rule-request
                                       :output
                                       describe-compliance-by-config-rule-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-config-rule-exception))

(smithy/sdk/operation:define-operation describe-compliance-by-resource
                                       :shape-name
                                       "DescribeComplianceByResource" :input
                                       describe-compliance-by-resource-request
                                       :output
                                       describe-compliance-by-resource-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-config-rule-evaluation-status
                                       :shape-name
                                       "DescribeConfigRuleEvaluationStatus"
                                       :input
                                       describe-config-rule-evaluation-status-request
                                       :output
                                       describe-config-rule-evaluation-status-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-config-rule-exception))

(smithy/sdk/operation:define-operation describe-config-rules :shape-name
                                       "DescribeConfigRules" :input
                                       describe-config-rules-request :output
                                       describe-config-rules-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-config-rule-exception))

(smithy/sdk/operation:define-operation
 describe-configuration-aggregator-sources-status :shape-name
 "DescribeConfigurationAggregatorSourcesStatus" :input
 describe-configuration-aggregator-sources-status-request :output
 describe-configuration-aggregator-sources-status-response :errors
 (invalid-limit-exception invalid-next-token-exception
  invalid-parameter-value-exception no-such-configuration-aggregator-exception))

(smithy/sdk/operation:define-operation describe-configuration-aggregators
                                       :shape-name
                                       "DescribeConfigurationAggregators"
                                       :input
                                       describe-configuration-aggregators-request
                                       :output
                                       describe-configuration-aggregators-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-configuration-aggregator-exception))

(smithy/sdk/operation:define-operation describe-configuration-recorder-status
                                       :shape-name
                                       "DescribeConfigurationRecorderStatus"
                                       :input
                                       describe-configuration-recorder-status-request
                                       :output
                                       describe-configuration-recorder-status-response
                                       :errors
                                       (no-such-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-configuration-recorders
                                       :shape-name
                                       "DescribeConfigurationRecorders" :input
                                       describe-configuration-recorders-request
                                       :output
                                       describe-configuration-recorders-response
                                       :errors
                                       (no-such-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-conformance-pack-compliance
                                       :shape-name
                                       "DescribeConformancePackCompliance"
                                       :input
                                       describe-conformance-pack-compliance-request
                                       :output
                                       describe-conformance-pack-compliance-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-config-rule-in-conformance-pack-exception
                                        no-such-conformance-pack-exception))

(smithy/sdk/operation:define-operation describe-conformance-pack-status
                                       :shape-name
                                       "DescribeConformancePackStatus" :input
                                       describe-conformance-pack-status-request
                                       :output
                                       describe-conformance-pack-status-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-conformance-packs :shape-name
                                       "DescribeConformancePacks" :input
                                       describe-conformance-packs-request
                                       :output
                                       describe-conformance-packs-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-conformance-pack-exception))

(smithy/sdk/operation:define-operation describe-delivery-channel-status
                                       :shape-name
                                       "DescribeDeliveryChannelStatus" :input
                                       describe-delivery-channel-status-request
                                       :output
                                       describe-delivery-channel-status-response
                                       :errors
                                       (no-such-delivery-channel-exception))

(smithy/sdk/operation:define-operation describe-delivery-channels :shape-name
                                       "DescribeDeliveryChannels" :input
                                       describe-delivery-channels-request
                                       :output
                                       describe-delivery-channels-response
                                       :errors
                                       (no-such-delivery-channel-exception))

(smithy/sdk/operation:define-operation
 describe-organization-config-rule-statuses :shape-name
 "DescribeOrganizationConfigRuleStatuses" :input
 describe-organization-config-rule-statuses-request :output
 describe-organization-config-rule-statuses-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-organization-config-rule-exception
  organization-access-denied-exception))

(smithy/sdk/operation:define-operation describe-organization-config-rules
                                       :shape-name
                                       "DescribeOrganizationConfigRules" :input
                                       describe-organization-config-rules-request
                                       :output
                                       describe-organization-config-rules-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        no-such-organization-config-rule-exception
                                        organization-access-denied-exception))

(smithy/sdk/operation:define-operation
 describe-organization-conformance-pack-statuses :shape-name
 "DescribeOrganizationConformancePackStatuses" :input
 describe-organization-conformance-pack-statuses-request :output
 describe-organization-conformance-pack-statuses-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-organization-conformance-pack-exception
  organization-access-denied-exception))

(smithy/sdk/operation:define-operation describe-organization-conformance-packs
                                       :shape-name
                                       "DescribeOrganizationConformancePacks"
                                       :input
                                       describe-organization-conformance-packs-request
                                       :output
                                       describe-organization-conformance-packs-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        no-such-organization-conformance-pack-exception
                                        organization-access-denied-exception))

(smithy/sdk/operation:define-operation describe-pending-aggregation-requests
                                       :shape-name
                                       "DescribePendingAggregationRequests"
                                       :input
                                       describe-pending-aggregation-requests-request
                                       :output
                                       describe-pending-aggregation-requests-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-remediation-configurations
                                       :shape-name
                                       "DescribeRemediationConfigurations"
                                       :input
                                       describe-remediation-configurations-request
                                       :output
                                       describe-remediation-configurations-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-remediation-exceptions
                                       :shape-name
                                       "DescribeRemediationExceptions" :input
                                       describe-remediation-exceptions-request
                                       :output
                                       describe-remediation-exceptions-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation describe-remediation-execution-status
                                       :shape-name
                                       "DescribeRemediationExecutionStatus"
                                       :input
                                       describe-remediation-execution-status-request
                                       :output
                                       describe-remediation-execution-status-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-remediation-configuration-exception))

(smithy/sdk/operation:define-operation describe-retention-configurations
                                       :shape-name
                                       "DescribeRetentionConfigurations" :input
                                       describe-retention-configurations-request
                                       :output
                                       describe-retention-configurations-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-retention-configuration-exception))

(smithy/sdk/operation:define-operation disassociate-resource-types :shape-name
                                       "DisassociateResourceTypes" :input
                                       disassociate-resource-types-request
                                       :output
                                       disassociate-resource-types-response
                                       :errors
                                       (conflict-exception
                                        no-such-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 get-aggregate-compliance-details-by-config-rule :shape-name
 "GetAggregateComplianceDetailsByConfigRule" :input
 get-aggregate-compliance-details-by-config-rule-request :output
 get-aggregate-compliance-details-by-config-rule-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-configuration-aggregator-exception validation-exception))

(smithy/sdk/operation:define-operation
 get-aggregate-config-rule-compliance-summary :shape-name
 "GetAggregateConfigRuleComplianceSummary" :input
 get-aggregate-config-rule-compliance-summary-request :output
 get-aggregate-config-rule-compliance-summary-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-configuration-aggregator-exception validation-exception))

(smithy/sdk/operation:define-operation
 get-aggregate-conformance-pack-compliance-summary :shape-name
 "GetAggregateConformancePackComplianceSummary" :input
 get-aggregate-conformance-pack-compliance-summary-request :output
 get-aggregate-conformance-pack-compliance-summary-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-configuration-aggregator-exception validation-exception))

(smithy/sdk/operation:define-operation get-aggregate-discovered-resource-counts
                                       :shape-name
                                       "GetAggregateDiscoveredResourceCounts"
                                       :input
                                       get-aggregate-discovered-resource-counts-request
                                       :output
                                       get-aggregate-discovered-resource-counts-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        no-such-configuration-aggregator-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-aggregate-resource-config
                                       :shape-name "GetAggregateResourceConfig"
                                       :input
                                       get-aggregate-resource-config-request
                                       :output
                                       get-aggregate-resource-config-response
                                       :errors
                                       (no-such-configuration-aggregator-exception
                                        oversized-configuration-item-exception
                                        resource-not-discovered-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-compliance-details-by-config-rule
                                       :shape-name
                                       "GetComplianceDetailsByConfigRule"
                                       :input
                                       get-compliance-details-by-config-rule-request
                                       :output
                                       get-compliance-details-by-config-rule-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-config-rule-exception))

(smithy/sdk/operation:define-operation get-compliance-details-by-resource
                                       :shape-name
                                       "GetComplianceDetailsByResource" :input
                                       get-compliance-details-by-resource-request
                                       :output
                                       get-compliance-details-by-resource-response
                                       :errors
                                       (invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation get-compliance-summary-by-config-rule
                                       :shape-name
                                       "GetComplianceSummaryByConfigRule"
                                       :input common-lisp:null :output
                                       get-compliance-summary-by-config-rule-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-compliance-summary-by-resource-type
                                       :shape-name
                                       "GetComplianceSummaryByResourceType"
                                       :input
                                       get-compliance-summary-by-resource-type-request
                                       :output
                                       get-compliance-summary-by-resource-type-response
                                       :errors
                                       (invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation get-conformance-pack-compliance-details
                                       :shape-name
                                       "GetConformancePackComplianceDetails"
                                       :input
                                       get-conformance-pack-compliance-details-request
                                       :output
                                       get-conformance-pack-compliance-details-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        no-such-config-rule-in-conformance-pack-exception
                                        no-such-conformance-pack-exception))

(smithy/sdk/operation:define-operation get-conformance-pack-compliance-summary
                                       :shape-name
                                       "GetConformancePackComplianceSummary"
                                       :input
                                       get-conformance-pack-compliance-summary-request
                                       :output
                                       get-conformance-pack-compliance-summary-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        no-such-conformance-pack-exception))

(smithy/sdk/operation:define-operation get-custom-rule-policy :shape-name
                                       "GetCustomRulePolicy" :input
                                       get-custom-rule-policy-request :output
                                       get-custom-rule-policy-response :errors
                                       (no-such-config-rule-exception))

(smithy/sdk/operation:define-operation get-discovered-resource-counts
                                       :shape-name
                                       "GetDiscoveredResourceCounts" :input
                                       get-discovered-resource-counts-request
                                       :output
                                       get-discovered-resource-counts-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 get-organization-config-rule-detailed-status :shape-name
 "GetOrganizationConfigRuleDetailedStatus" :input
 get-organization-config-rule-detailed-status-request :output
 get-organization-config-rule-detailed-status-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-organization-config-rule-exception
  organization-access-denied-exception))

(smithy/sdk/operation:define-operation
 get-organization-conformance-pack-detailed-status :shape-name
 "GetOrganizationConformancePackDetailedStatus" :input
 get-organization-conformance-pack-detailed-status-request :output
 get-organization-conformance-pack-detailed-status-response :errors
 (invalid-limit-exception invalid-next-token-exception
  no-such-organization-conformance-pack-exception
  organization-access-denied-exception))

(smithy/sdk/operation:define-operation get-organization-custom-rule-policy
                                       :shape-name
                                       "GetOrganizationCustomRulePolicy" :input
                                       get-organization-custom-rule-policy-request
                                       :output
                                       get-organization-custom-rule-policy-response
                                       :errors
                                       (no-such-organization-config-rule-exception
                                        organization-access-denied-exception))

(smithy/sdk/operation:define-operation get-resource-config-history :shape-name
                                       "GetResourceConfigHistory" :input
                                       get-resource-config-history-request
                                       :output
                                       get-resource-config-history-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-time-range-exception
                                        no-available-configuration-recorder-exception
                                        resource-not-discovered-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-resource-evaluation-summary
                                       :shape-name
                                       "GetResourceEvaluationSummary" :input
                                       get-resource-evaluation-summary-request
                                       :output
                                       get-resource-evaluation-summary-response
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-stored-query :shape-name
                                       "GetStoredQuery" :input
                                       get-stored-query-request :output
                                       get-stored-query-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-aggregate-discovered-resources
                                       :shape-name
                                       "ListAggregateDiscoveredResources"
                                       :input
                                       list-aggregate-discovered-resources-request
                                       :output
                                       list-aggregate-discovered-resources-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        no-such-configuration-aggregator-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-configuration-recorders :shape-name
                                       "ListConfigurationRecorders" :input
                                       list-configuration-recorders-request
                                       :output
                                       list-configuration-recorders-response
                                       :errors (validation-exception))

(smithy/sdk/operation:define-operation list-conformance-pack-compliance-scores
                                       :shape-name
                                       "ListConformancePackComplianceScores"
                                       :input
                                       list-conformance-pack-compliance-scores-request
                                       :output
                                       list-conformance-pack-compliance-scores-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation list-discovered-resources :shape-name
                                       "ListDiscoveredResources" :input
                                       list-discovered-resources-request
                                       :output
                                       list-discovered-resources-response
                                       :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        no-available-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-resource-evaluations :shape-name
                                       "ListResourceEvaluations" :input
                                       list-resource-evaluations-request
                                       :output
                                       list-resource-evaluations-response
                                       :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-value-exception
                                        invalid-time-range-exception))

(smithy/sdk/operation:define-operation list-stored-queries :shape-name
                                       "ListStoredQueries" :input
                                       list-stored-queries-request :output
                                       list-stored-queries-response :errors
                                       (invalid-next-token-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-limit-exception
                                        invalid-next-token-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-aggregation-authorization
                                       :shape-name
                                       "PutAggregationAuthorization" :input
                                       put-aggregation-authorization-request
                                       :output
                                       put-aggregation-authorization-response
                                       :errors
                                       (invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation put-config-rule :shape-name
                                       "PutConfigRule" :input
                                       put-config-rule-request :output
                                       common-lisp:null :errors
                                       (insufficient-permissions-exception
                                        invalid-parameter-value-exception
                                        max-number-of-config-rules-exceeded-exception
                                        no-available-configuration-recorder-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation put-configuration-aggregator :shape-name
                                       "PutConfigurationAggregator" :input
                                       put-configuration-aggregator-request
                                       :output
                                       put-configuration-aggregator-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        no-available-organization-exception
                                        organization-access-denied-exception
                                        organization-all-features-not-enabled-exception))

(smithy/sdk/operation:define-operation put-configuration-recorder :shape-name
                                       "PutConfigurationRecorder" :input
                                       put-configuration-recorder-request
                                       :output common-lisp:null :errors
                                       (invalid-configuration-recorder-name-exception
                                        invalid-recording-group-exception
                                        invalid-role-exception
                                        max-number-of-configuration-recorders-exceeded-exception
                                        unmodifiable-entity-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-conformance-pack :shape-name
                                       "PutConformancePack" :input
                                       put-conformance-pack-request :output
                                       put-conformance-pack-response :errors
                                       (conformance-pack-template-validation-exception
                                        insufficient-permissions-exception
                                        invalid-parameter-value-exception
                                        max-number-of-conformance-packs-exceeded-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation put-delivery-channel :shape-name
                                       "PutDeliveryChannel" :input
                                       put-delivery-channel-request :output
                                       common-lisp:null :errors
                                       (insufficient-delivery-policy-exception
                                        invalid-delivery-channel-name-exception
                                        invalid-s3key-prefix-exception
                                        invalid-s3kms-key-arn-exception
                                        invalid-snstopic-arnexception
                                        max-number-of-delivery-channels-exceeded-exception
                                        no-available-configuration-recorder-exception
                                        no-such-bucket-exception))

(smithy/sdk/operation:define-operation put-evaluations :shape-name
                                       "PutEvaluations" :input
                                       put-evaluations-request :output
                                       put-evaluations-response :errors
                                       (invalid-parameter-value-exception
                                        invalid-result-token-exception
                                        no-such-config-rule-exception))

(smithy/sdk/operation:define-operation put-external-evaluation :shape-name
                                       "PutExternalEvaluation" :input
                                       put-external-evaluation-request :output
                                       put-external-evaluation-response :errors
                                       (invalid-parameter-value-exception
                                        no-such-config-rule-exception))

(smithy/sdk/operation:define-operation put-organization-config-rule :shape-name
                                       "PutOrganizationConfigRule" :input
                                       put-organization-config-rule-request
                                       :output
                                       put-organization-config-rule-response
                                       :errors
                                       (insufficient-permissions-exception
                                        invalid-parameter-value-exception
                                        max-number-of-organization-config-rules-exceeded-exception
                                        no-available-organization-exception
                                        organization-access-denied-exception
                                        organization-all-features-not-enabled-exception
                                        resource-in-use-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-organization-conformance-pack
                                       :shape-name
                                       "PutOrganizationConformancePack" :input
                                       put-organization-conformance-pack-request
                                       :output
                                       put-organization-conformance-pack-response
                                       :errors
                                       (insufficient-permissions-exception
                                        max-number-of-organization-conformance-packs-exceeded-exception
                                        no-available-organization-exception
                                        organization-access-denied-exception
                                        organization-all-features-not-enabled-exception
                                        organization-conformance-pack-template-validation-exception
                                        resource-in-use-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-remediation-configurations
                                       :shape-name
                                       "PutRemediationConfigurations" :input
                                       put-remediation-configurations-request
                                       :output
                                       put-remediation-configurations-response
                                       :errors
                                       (insufficient-permissions-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation put-remediation-exceptions :shape-name
                                       "PutRemediationExceptions" :input
                                       put-remediation-exceptions-request
                                       :output
                                       put-remediation-exceptions-response
                                       :errors
                                       (insufficient-permissions-exception
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation put-resource-config :shape-name
                                       "PutResourceConfig" :input
                                       put-resource-config-request :output
                                       common-lisp:null :errors
                                       (insufficient-permissions-exception
                                        max-active-resources-exceeded-exception
                                        no-running-configuration-recorder-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-retention-configuration :shape-name
                                       "PutRetentionConfiguration" :input
                                       put-retention-configuration-request
                                       :output
                                       put-retention-configuration-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        max-number-of-retention-configurations-exceeded-exception))

(smithy/sdk/operation:define-operation
 put-service-linked-configuration-recorder :shape-name
 "PutServiceLinkedConfigurationRecorder" :input
 put-service-linked-configuration-recorder-request :output
 put-service-linked-configuration-recorder-response :errors
 (conflict-exception insufficient-permissions-exception
  limit-exceeded-exception validation-exception))

(smithy/sdk/operation:define-operation put-stored-query :shape-name
                                       "PutStoredQuery" :input
                                       put-stored-query-request :output
                                       put-stored-query-response :errors
                                       (resource-concurrent-modification-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation select-aggregate-resource-config
                                       :shape-name
                                       "SelectAggregateResourceConfig" :input
                                       select-aggregate-resource-config-request
                                       :output
                                       select-aggregate-resource-config-response
                                       :errors
                                       (invalid-expression-exception
                                        invalid-limit-exception
                                        invalid-next-token-exception
                                        no-such-configuration-aggregator-exception))

(smithy/sdk/operation:define-operation select-resource-config :shape-name
                                       "SelectResourceConfig" :input
                                       select-resource-config-request :output
                                       select-resource-config-response :errors
                                       (invalid-expression-exception
                                        invalid-limit-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation start-config-rules-evaluation
                                       :shape-name "StartConfigRulesEvaluation"
                                       :input
                                       start-config-rules-evaluation-request
                                       :output
                                       start-config-rules-evaluation-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        no-such-config-rule-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation start-configuration-recorder :shape-name
                                       "StartConfigurationRecorder" :input
                                       start-configuration-recorder-request
                                       :output common-lisp:null :errors
                                       (no-available-delivery-channel-exception
                                        no-such-configuration-recorder-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation start-remediation-execution :shape-name
                                       "StartRemediationExecution" :input
                                       start-remediation-execution-request
                                       :output
                                       start-remediation-execution-response
                                       :errors
                                       (insufficient-permissions-exception
                                        invalid-parameter-value-exception
                                        no-such-remediation-configuration-exception))

(smithy/sdk/operation:define-operation start-resource-evaluation :shape-name
                                       "StartResourceEvaluation" :input
                                       start-resource-evaluation-request
                                       :output
                                       start-resource-evaluation-response
                                       :errors
                                       (idempotent-parameter-mismatch
                                        invalid-parameter-value-exception))

(smithy/sdk/operation:define-operation stop-configuration-recorder :shape-name
                                       "StopConfigurationRecorder" :input
                                       stop-configuration-recorder-request
                                       :output common-lisp:null :errors
                                       (no-such-configuration-recorder-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception
                                        validation-exception))
