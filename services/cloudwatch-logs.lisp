(uiop/package:define-package #:pira/cloudwatch-logs (:use)
                             (:export #:access-policy #:account-id
                              #:account-ids #:account-policies #:account-policy
                              #:account-policy-document #:add-key-entries
                              #:add-key-entry #:add-key-value #:add-keys
                              #:allowed-action-for-allow-vended-logs-delivery-for-resource
                              #:allowed-field-delimiters #:allowed-fields
                              #:amazon-resource-name #:anomalies #:anomaly
                              #:anomaly-detector #:anomaly-detector-arn
                              #:anomaly-detector-status #:anomaly-detectors
                              #:anomaly-id #:anomaly-visibility-time
                              #:apply-on-transformed-logs #:arn
                              #:associate-kms-key #:baseline #:boolean #:csv
                              #:cancel-export-task #:client-token
                              #:collection-retention-days #:column #:columns
                              #:configuration-template
                              #:configuration-template-delivery-config-values
                              #:configuration-templates #:copy-value
                              #:copy-value-entries #:copy-value-entry #:count
                              #:create-delivery #:create-export-task
                              #:create-log-anomaly-detector #:create-log-group
                              #:create-log-stream #:dashboard-viewer-principals
                              #:data #:data-protection-policy-document
                              #:data-protection-status #:date-time-converter
                              #:days #:default-value #:delete-account-policy
                              #:delete-data-protection-policy #:delete-delivery
                              #:delete-delivery-destination
                              #:delete-delivery-destination-policy
                              #:delete-delivery-source #:delete-destination
                              #:delete-index-policy #:delete-integration
                              #:delete-keys #:delete-log-anomaly-detector
                              #:delete-log-group #:delete-log-stream
                              #:delete-metric-filter #:delete-query-definition
                              #:delete-resource-policy
                              #:delete-retention-policy
                              #:delete-subscription-filter #:delete-transformer
                              #:delete-with-keys #:delimiter #:deliveries
                              #:delivery #:delivery-destination
                              #:delivery-destination-configuration
                              #:delivery-destination-name
                              #:delivery-destination-policy
                              #:delivery-destination-type
                              #:delivery-destination-types
                              #:delivery-destinations #:delivery-id
                              #:delivery-source #:delivery-source-name
                              #:delivery-sources #:delivery-suffix-path
                              #:descending #:describe-account-policies
                              #:describe-configuration-templates
                              #:describe-deliveries
                              #:describe-delivery-destinations
                              #:describe-delivery-sources
                              #:describe-destinations #:describe-export-tasks
                              #:describe-field-indexes
                              #:describe-field-indexes-log-group-identifiers
                              #:describe-index-policies
                              #:describe-index-policies-log-group-identifiers
                              #:describe-limit #:describe-log-groups
                              #:describe-log-groups-log-group-identifiers
                              #:describe-log-streams #:describe-metric-filters
                              #:describe-queries #:describe-queries-max-results
                              #:describe-query-definitions
                              #:describe-resource-policies
                              #:describe-subscription-filters #:description
                              #:destination #:destination-arn
                              #:destination-field #:destination-name
                              #:destinations #:detector-kms-key-arn
                              #:detector-name #:dimensions #:dimensions-key
                              #:dimensions-value #:disassociate-kms-key
                              #:distribution #:dynamic-token-position
                              #:encryption-key #:entity #:entity-attributes
                              #:entity-attributes-key #:entity-attributes-value
                              #:entity-key-attributes
                              #:entity-key-attributes-key
                              #:entity-key-attributes-value
                              #:entity-rejection-error-type #:enumerations
                              #:epoch-millis #:evaluation-frequency #:event-id
                              #:event-message #:event-number #:event-source
                              #:events-limit #:expected-revision-id
                              #:export-destination-bucket
                              #:export-destination-prefix #:export-task
                              #:export-task-execution-info #:export-task-id
                              #:export-task-name #:export-task-status
                              #:export-task-status-code
                              #:export-task-status-message #:export-tasks
                              #:extracted-values #:field #:field-delimiter
                              #:field-header #:field-index #:field-index-name
                              #:field-indexes #:fields-data #:filter-count
                              #:filter-log-events #:filter-name
                              #:filter-pattern #:filtered-log-event
                              #:filtered-log-events #:flatten
                              #:flattened-element #:force #:force-update
                              #:from-key #:get-data-protection-policy
                              #:get-delivery #:get-delivery-destination
                              #:get-delivery-destination-policy
                              #:get-delivery-source #:get-integration
                              #:get-log-anomaly-detector #:get-log-events
                              #:get-log-group-fields #:get-log-object
                              #:get-log-object-response-stream #:get-log-record
                              #:get-query-results #:get-transformer #:grok
                              #:grok-match #:histogram
                              #:include-linked-accounts #:index-policies
                              #:index-policy #:index-source
                              #:inferred-token-name #:inherited-properties
                              #:inherited-property #:input-log-event
                              #:input-log-events #:input-log-stream-names
                              #:integer #:integration-details
                              #:integration-name #:integration-name-prefix
                              #:integration-status #:integration-status-message
                              #:integration-summaries #:integration-summary
                              #:integration-type #:interleaved #:is-sampled
                              #:key #:key-prefix #:key-value-delimiter
                              #:kms-key-id #:list-anomalies
                              #:list-anomalies-limit #:list-integrations
                              #:list-limit #:list-log-anomaly-detectors
                              #:list-log-anomaly-detectors-limit
                              #:list-log-groups #:list-log-groups-for-query
                              #:list-log-groups-for-query-max-results
                              #:list-tags-for-resource #:list-tags-log-group
                              #:list-to-map #:live-tail-session-log-event
                              #:live-tail-session-metadata
                              #:live-tail-session-results
                              #:live-tail-session-start
                              #:live-tail-session-update #:locale #:log-event
                              #:log-event-index #:log-group #:log-group-arn
                              #:log-group-arn-list #:log-group-class
                              #:log-group-field #:log-group-field-list
                              #:log-group-identifier #:log-group-identifiers
                              #:log-group-name #:log-group-name-pattern
                              #:log-group-name-regex-pattern #:log-group-names
                              #:log-group-summaries #:log-group-summary
                              #:log-groups #:log-object-pointer #:log-record
                              #:log-record-pointer #:log-samples #:log-stream
                              #:log-stream-name
                              #:log-stream-searched-completely #:log-streams
                              #:log-type #:log-types #:logs-20140328
                              #:lower-case-string #:lower-case-string-with-keys
                              #:match-pattern #:match-patterns #:message
                              #:metric-filter #:metric-filter-match-record
                              #:metric-filter-matches #:metric-filters
                              #:metric-name #:metric-namespace
                              #:metric-transformation #:metric-transformations
                              #:metric-value #:move-key-entries
                              #:move-key-entry #:move-keys #:next-token
                              #:non-match-value #:ocsfversion
                              #:open-search-application
                              #:open-search-application-endpoint
                              #:open-search-application-id
                              #:open-search-collection
                              #:open-search-collection-endpoint
                              #:open-search-data-access-policy
                              #:open-search-data-source
                              #:open-search-data-source-name
                              #:open-search-encryption-policy
                              #:open-search-integration-details
                              #:open-search-lifecycle-policy
                              #:open-search-network-policy
                              #:open-search-policy-name
                              #:open-search-resource-config
                              #:open-search-resource-status
                              #:open-search-resource-status-type
                              #:open-search-workspace
                              #:open-search-workspace-id #:order-by
                              #:output-format #:output-formats
                              #:output-log-event #:output-log-events
                              #:overwrite-if-exists #:parse-cloudfront
                              #:parse-json #:parse-key-value #:parse-postgres
                              #:parse-route53 #:parse-to-ocsf #:parse-vpc
                              #:parse-waf #:parser-field-delimiter #:pattern-id
                              #:pattern-regex #:pattern-string #:pattern-token
                              #:pattern-tokens #:percentage #:policy
                              #:policy-document #:policy-name #:policy-scope
                              #:policy-type #:priority #:processor #:processors
                              #:put-account-policy #:put-data-protection-policy
                              #:put-delivery-destination
                              #:put-delivery-destination-policy
                              #:put-delivery-source #:put-destination
                              #:put-destination-policy #:put-index-policy
                              #:put-integration #:put-log-events
                              #:put-metric-filter #:put-query-definition
                              #:put-resource-policy #:put-retention-policy
                              #:put-subscription-filter #:put-transformer
                              #:query-char-offset #:query-compile-error
                              #:query-compile-error-location #:query-definition
                              #:query-definition-list #:query-definition-name
                              #:query-definition-string #:query-id #:query-info
                              #:query-info-list #:query-language
                              #:query-list-max-results #:query-results
                              #:query-statistics #:query-status #:query-string
                              #:quote-character #:record-field #:record-fields
                              #:rejected-entity-info #:rejected-log-events-info
                              #:rename-key-entries #:rename-key-entry
                              #:rename-keys #:rename-to #:request-id
                              #:resource-arns #:resource-config
                              #:resource-identifier #:resource-policies
                              #:resource-policy #:resource-type
                              #:resource-types #:result-field #:result-rows
                              #:role-arn #:s3delivery-configuration #:scope
                              #:searched-log-stream #:searched-log-streams
                              #:selection-criteria #:sequence-token #:service
                              #:session-id #:source #:source-timezone
                              #:split-string #:split-string-delimiter
                              #:split-string-entries #:split-string-entry
                              #:standard-unit #:start-from-head
                              #:start-live-tail
                              #:start-live-tail-log-group-identifiers
                              #:start-live-tail-response-stream #:start-query
                              #:state #:stats-value #:stop-query #:stored-bytes
                              #:subscription-filter #:subscription-filters
                              #:substitute-string #:substitute-string-entries
                              #:substitute-string-entry #:success
                              #:suppression-period #:suppression-state
                              #:suppression-type #:suppression-unit #:tag-key
                              #:tag-key-list #:tag-list #:tag-log-group
                              #:tag-resource #:tag-value #:tags #:target
                              #:target-arn #:target-format #:target-timezone
                              #:test-event-messages #:test-metric-filter
                              #:test-transformer #:time #:timestamp #:to-key
                              #:token #:token-string #:token-value
                              #:transformed-event-message
                              #:transformed-log-record #:transformed-logs
                              #:trim-string #:trim-string-with-keys #:type
                              #:type-converter #:type-converter-entries
                              #:type-converter-entry #:unmask #:untag-log-group
                              #:untag-resource #:update-anomaly
                              #:update-delivery-configuration
                              #:update-log-anomaly-detector #:upper-case-string
                              #:upper-case-string-with-keys #:value #:value-key
                              #:with-key))
(common-lisp:in-package #:pira/cloudwatch-logs)

(smithy/sdk/service:define-service logs-20140328 :shape-name "Logs_20140328"
                                   :version "2014-03-28" :title
                                   "Amazon CloudWatch Logs" :operations
                                   '(associate-kms-key cancel-export-task
                                     create-delivery create-export-task
                                     create-log-anomaly-detector
                                     create-log-group create-log-stream
                                     delete-account-policy
                                     delete-data-protection-policy
                                     delete-delivery
                                     delete-delivery-destination
                                     delete-delivery-destination-policy
                                     delete-delivery-source delete-destination
                                     delete-index-policy delete-integration
                                     delete-log-anomaly-detector
                                     delete-log-group delete-log-stream
                                     delete-metric-filter
                                     delete-query-definition
                                     delete-resource-policy
                                     delete-retention-policy
                                     delete-subscription-filter
                                     delete-transformer
                                     describe-account-policies
                                     describe-configuration-templates
                                     describe-deliveries
                                     describe-delivery-destinations
                                     describe-delivery-sources
                                     describe-destinations
                                     describe-export-tasks
                                     describe-field-indexes
                                     describe-index-policies
                                     describe-log-groups describe-log-streams
                                     describe-metric-filters describe-queries
                                     describe-query-definitions
                                     describe-resource-policies
                                     describe-subscription-filters
                                     disassociate-kms-key filter-log-events
                                     get-data-protection-policy get-delivery
                                     get-delivery-destination
                                     get-delivery-destination-policy
                                     get-delivery-source get-integration
                                     get-log-anomaly-detector get-log-events
                                     get-log-group-fields get-log-object
                                     get-log-record get-query-results
                                     get-transformer list-anomalies
                                     list-integrations
                                     list-log-anomaly-detectors list-log-groups
                                     list-log-groups-for-query
                                     list-tags-for-resource list-tags-log-group
                                     put-account-policy
                                     put-data-protection-policy
                                     put-delivery-destination
                                     put-delivery-destination-policy
                                     put-delivery-source put-destination
                                     put-destination-policy put-index-policy
                                     put-integration put-log-events
                                     put-metric-filter put-query-definition
                                     put-resource-policy put-retention-policy
                                     put-subscription-filter put-transformer
                                     start-live-tail start-query stop-query
                                     tag-log-group tag-resource
                                     test-metric-filter test-transformer
                                     untag-log-group untag-resource
                                     update-anomaly
                                     update-delivery-configuration
                                     update-log-anomaly-detector)
                                   :xml-namespace
                                   (:uri
                                    "http://monitoring.amazonaws.com/doc/2014-03-28/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudWatch Logs")
                                      ("arnNamespace" . "logs")
                                      ("cloudFormationName" . "Logs")
                                      ("cloudTrailEventSource"
                                       . "logs.amazonaws.com")
                                      ("docId" . "logs-2014-03-28")
                                      ("endpointPrefix" . "logs"))
                                     ("aws.auth#sigv4" ("name" . "logs"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type access-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-ids :member account-id)

(smithy/sdk/shapes:define-list account-policies :member account-policy)

(smithy/sdk/shapes:define-structure account-policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (policy-document :target-type
                                      account-policy-document :member-name
                                      "policyDocument")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime")
                                     (policy-type :target-type policy-type
                                      :member-name "policyType")
                                     (scope :target-type scope :member-name
                                      "scope")
                                     (selection-criteria :target-type
                                      selection-criteria :member-name
                                      "selectionCriteria")
                                     (account-id :target-type account-id
                                      :member-name "accountId"))
                                    (:shape-name "AccountPolicy"))

(smithy/sdk/shapes:define-type account-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list add-key-entries :member add-key-entry)

(smithy/sdk/shapes:define-structure add-key-entry common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type add-key-value
                                      :required common-lisp:t :member-name
                                      "value")
                                     (overwrite-if-exists :target-type
                                      overwrite-if-exists :member-name
                                      "overwriteIfExists"))
                                    (:shape-name "AddKeyEntry"))

(smithy/sdk/shapes:define-type add-key-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure add-keys common-lisp:nil
                                    ((entries :target-type add-key-entries
                                      :required common-lisp:t :member-name
                                      "entries"))
                                    (:shape-name "AddKeys"))

(smithy/sdk/shapes:define-type
 allowed-action-for-allow-vended-logs-delivery-for-resource
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-field-delimiters :member field-delimiter)

(smithy/sdk/shapes:define-list allowed-fields :member record-field)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list anomalies :member anomaly)

(smithy/sdk/shapes:define-structure anomaly common-lisp:nil
                                    ((anomaly-id :target-type anomaly-id
                                      :required common-lisp:t :member-name
                                      "anomalyId")
                                     (pattern-id :target-type pattern-id
                                      :required common-lisp:t :member-name
                                      "patternId")
                                     (anomaly-detector-arn :target-type
                                      anomaly-detector-arn :required
                                      common-lisp:t :member-name
                                      "anomalyDetectorArn")
                                     (pattern-string :target-type
                                      pattern-string :required common-lisp:t
                                      :member-name "patternString")
                                     (pattern-regex :target-type pattern-regex
                                      :member-name "patternRegex")
                                     (priority :target-type priority
                                      :member-name "priority")
                                     (first-seen :target-type epoch-millis
                                      :required common-lisp:t :member-name
                                      "firstSeen")
                                     (last-seen :target-type epoch-millis
                                      :required common-lisp:t :member-name
                                      "lastSeen")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (active :target-type boolean :required
                                      common-lisp:t :member-name "active")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (histogram :target-type histogram
                                      :required common-lisp:t :member-name
                                      "histogram")
                                     (log-samples :target-type log-samples
                                      :required common-lisp:t :member-name
                                      "logSamples")
                                     (pattern-tokens :target-type
                                      pattern-tokens :required common-lisp:t
                                      :member-name "patternTokens")
                                     (log-group-arn-list :target-type
                                      log-group-arn-list :required
                                      common-lisp:t :member-name
                                      "logGroupArnList")
                                     (suppressed :target-type boolean
                                      :member-name "suppressed")
                                     (suppressed-date :target-type epoch-millis
                                      :member-name "suppressedDate")
                                     (suppressed-until :target-type
                                      epoch-millis :member-name
                                      "suppressedUntil")
                                     (is-pattern-level-suppression :target-type
                                      boolean :member-name
                                      "isPatternLevelSuppression"))
                                    (:shape-name "Anomaly"))

(smithy/sdk/shapes:define-structure anomaly-detector common-lisp:nil
                                    ((anomaly-detector-arn :target-type
                                      anomaly-detector-arn :member-name
                                      "anomalyDetectorArn")
                                     (detector-name :target-type detector-name
                                      :member-name "detectorName")
                                     (log-group-arn-list :target-type
                                      log-group-arn-list :member-name
                                      "logGroupArnList")
                                     (evaluation-frequency :target-type
                                      evaluation-frequency :member-name
                                      "evaluationFrequency")
                                     (filter-pattern :target-type
                                      filter-pattern :member-name
                                      "filterPattern")
                                     (anomaly-detector-status :target-type
                                      anomaly-detector-status :member-name
                                      "anomalyDetectorStatus")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (creation-time-stamp :target-type
                                      epoch-millis :member-name
                                      "creationTimeStamp")
                                     (last-modified-time-stamp :target-type
                                      epoch-millis :member-name
                                      "lastModifiedTimeStamp")
                                     (anomaly-visibility-time :target-type
                                      anomaly-visibility-time :member-name
                                      "anomalyVisibilityTime"))
                                    (:shape-name "AnomalyDetector"))

(smithy/sdk/shapes:define-type anomaly-detector-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum anomaly-detector-status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:training "TRAINING")
  (:analyzing "ANALYZING")
  (:failed "FAILED")
  (:deleted "DELETED")
  (:paused "PAUSED"))

(smithy/sdk/shapes:define-list anomaly-detectors :member anomaly-detector)

(smithy/sdk/shapes:define-type anomaly-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type anomaly-visibility-time
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type apply-on-transformed-logs
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-kms-key-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (kms-key-id :target-type kms-key-id :required
                                  common-lisp:t :member-name "kmsKeyId")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "resourceIdentifier"))
                                (:shape-name "AssociateKmsKeyRequest"))

(smithy/sdk/shapes:define-type baseline smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure csv common-lisp:nil
                                    ((quote-character :target-type
                                      quote-character :member-name
                                      "quoteCharacter")
                                     (delimiter :target-type delimiter
                                      :member-name "delimiter")
                                     (columns :target-type columns :member-name
                                      "columns")
                                     (source :target-type source :member-name
                                      "source"))
                                    (:shape-name "CSV"))

(smithy/sdk/shapes:define-input cancel-export-task-request common-lisp:nil
                                ((task-id :target-type export-task-id :required
                                  common-lisp:t :member-name "taskId"))
                                (:shape-name "CancelExportTaskRequest"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type collection-retention-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type column smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list columns :member column)

(smithy/sdk/shapes:define-structure configuration-template common-lisp:nil
                                    ((service :target-type service :member-name
                                      "service")
                                     (log-type :target-type log-type
                                      :member-name "logType")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (delivery-destination-type :target-type
                                      delivery-destination-type :member-name
                                      "deliveryDestinationType")
                                     (default-delivery-config-values
                                      :target-type
                                      configuration-template-delivery-config-values
                                      :member-name
                                      "defaultDeliveryConfigValues")
                                     (allowed-fields :target-type
                                      allowed-fields :member-name
                                      "allowedFields")
                                     (allowed-output-formats :target-type
                                      output-formats :member-name
                                      "allowedOutputFormats")
                                     (allowed-action-for-allow-vended-logs-delivery-for-resource
                                      :target-type
                                      allowed-action-for-allow-vended-logs-delivery-for-resource
                                      :member-name
                                      "allowedActionForAllowVendedLogsDeliveryForResource")
                                     (allowed-field-delimiters :target-type
                                      allowed-field-delimiters :member-name
                                      "allowedFieldDelimiters")
                                     (allowed-suffix-path-fields :target-type
                                      record-fields :member-name
                                      "allowedSuffixPathFields"))
                                    (:shape-name "ConfigurationTemplate"))

(smithy/sdk/shapes:define-structure
 configuration-template-delivery-config-values common-lisp:nil
 ((record-fields :target-type record-fields :member-name "recordFields")
  (field-delimiter :target-type field-delimiter :member-name "fieldDelimiter")
  (s3delivery-configuration :target-type s3delivery-configuration :member-name
   "s3DeliveryConfiguration"))
 (:shape-name "ConfigurationTemplateDeliveryConfigValues"))

(smithy/sdk/shapes:define-list configuration-templates :member
                               configuration-template)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure copy-value common-lisp:nil
                                    ((entries :target-type copy-value-entries
                                      :required common-lisp:t :member-name
                                      "entries"))
                                    (:shape-name "CopyValue"))

(smithy/sdk/shapes:define-list copy-value-entries :member copy-value-entry)

(smithy/sdk/shapes:define-structure copy-value-entry common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "target")
                                     (overwrite-if-exists :target-type
                                      overwrite-if-exists :member-name
                                      "overwriteIfExists"))
                                    (:shape-name "CopyValueEntry"))

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input create-delivery-request common-lisp:nil
                                ((delivery-source-name :target-type
                                  delivery-source-name :required common-lisp:t
                                  :member-name "deliverySourceName")
                                 (delivery-destination-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "deliveryDestinationArn")
                                 (record-fields :target-type record-fields
                                  :member-name "recordFields")
                                 (field-delimiter :target-type field-delimiter
                                  :member-name "fieldDelimiter")
                                 (s3delivery-configuration :target-type
                                  s3delivery-configuration :member-name
                                  "s3DeliveryConfiguration")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDeliveryRequest"))

(smithy/sdk/shapes:define-output create-delivery-response common-lisp:nil
                                 ((delivery :target-type delivery :member-name
                                   "delivery"))
                                 (:shape-name "CreateDeliveryResponse"))

(smithy/sdk/shapes:define-input create-export-task-request common-lisp:nil
                                ((task-name :target-type export-task-name
                                  :member-name "taskName")
                                 (log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (log-stream-name-prefix :target-type
                                  log-stream-name :member-name
                                  "logStreamNamePrefix")
                                 (from :target-type timestamp :required
                                  common-lisp:t :member-name "from")
                                 (to :target-type timestamp :required
                                  common-lisp:t :member-name "to")
                                 (destination :target-type
                                  export-destination-bucket :required
                                  common-lisp:t :member-name "destination")
                                 (destination-prefix :target-type
                                  export-destination-prefix :member-name
                                  "destinationPrefix"))
                                (:shape-name "CreateExportTaskRequest"))

(smithy/sdk/shapes:define-output create-export-task-response common-lisp:nil
                                 ((task-id :target-type export-task-id
                                   :member-name "taskId"))
                                 (:shape-name "CreateExportTaskResponse"))

(smithy/sdk/shapes:define-input create-log-anomaly-detector-request
                                common-lisp:nil
                                ((log-group-arn-list :target-type
                                  log-group-arn-list :required common-lisp:t
                                  :member-name "logGroupArnList")
                                 (detector-name :target-type detector-name
                                  :member-name "detectorName")
                                 (evaluation-frequency :target-type
                                  evaluation-frequency :member-name
                                  "evaluationFrequency")
                                 (filter-pattern :target-type filter-pattern
                                  :member-name "filterPattern")
                                 (kms-key-id :target-type detector-kms-key-arn
                                  :member-name "kmsKeyId")
                                 (anomaly-visibility-time :target-type
                                  anomaly-visibility-time :member-name
                                  "anomalyVisibilityTime")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateLogAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output create-log-anomaly-detector-response
                                 common-lisp:nil
                                 ((anomaly-detector-arn :target-type
                                   anomaly-detector-arn :member-name
                                   "anomalyDetectorArn"))
                                 (:shape-name
                                  "CreateLogAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-input create-log-group-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId")
                                 (tags :target-type tags :member-name "tags")
                                 (log-group-class :target-type log-group-class
                                  :member-name "logGroupClass"))
                                (:shape-name "CreateLogGroupRequest"))

(smithy/sdk/shapes:define-input create-log-stream-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (log-stream-name :target-type log-stream-name
                                  :required common-lisp:t :member-name
                                  "logStreamName"))
                                (:shape-name "CreateLogStreamRequest"))

(smithy/sdk/shapes:define-list dashboard-viewer-principals :member arn)

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error data-already-accepted-exception common-lisp:nil
                                ((expected-sequence-token :target-type
                                  sequence-token :member-name
                                  "expectedSequenceToken")
                                 (message :target-type message :member-name
                                  "message"))
                                (:shape-name "DataAlreadyAcceptedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type data-protection-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-protection-status
    common-lisp:nil
  (:activated "ACTIVATED")
  (:deleted "DELETED")
  (:archived "ARCHIVED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure date-time-converter common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "target")
                                     (target-format :target-type target-format
                                      :member-name "targetFormat")
                                     (match-patterns :target-type
                                      match-patterns :required common-lisp:t
                                      :member-name "matchPatterns")
                                     (source-timezone :target-type
                                      source-timezone :member-name
                                      "sourceTimezone")
                                     (target-timezone :target-type
                                      target-timezone :member-name
                                      "targetTimezone")
                                     (locale :target-type locale :member-name
                                      "locale"))
                                    (:shape-name "DateTimeConverter"))

(smithy/sdk/shapes:define-type days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type default-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input delete-account-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName")
                                 (policy-type :target-type policy-type
                                  :required common-lisp:t :member-name
                                  "policyType"))
                                (:shape-name "DeleteAccountPolicyRequest"))

(smithy/sdk/shapes:define-input delete-data-protection-policy-request
                                common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier"))
                                (:shape-name
                                 "DeleteDataProtectionPolicyRequest"))

(smithy/sdk/shapes:define-input delete-delivery-destination-policy-request
                                common-lisp:nil
                                ((delivery-destination-name :target-type
                                  delivery-destination-name :required
                                  common-lisp:t :member-name
                                  "deliveryDestinationName"))
                                (:shape-name
                                 "DeleteDeliveryDestinationPolicyRequest"))

(smithy/sdk/shapes:define-input delete-delivery-destination-request
                                common-lisp:nil
                                ((name :target-type delivery-destination-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name
                                 "DeleteDeliveryDestinationRequest"))

(smithy/sdk/shapes:define-input delete-delivery-request common-lisp:nil
                                ((id :target-type delivery-id :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "DeleteDeliveryRequest"))

(smithy/sdk/shapes:define-input delete-delivery-source-request common-lisp:nil
                                ((name :target-type delivery-source-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "DeleteDeliverySourceRequest"))

(smithy/sdk/shapes:define-input delete-destination-request common-lisp:nil
                                ((destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "destinationName"))
                                (:shape-name "DeleteDestinationRequest"))

(smithy/sdk/shapes:define-input delete-index-policy-request common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier"))
                                (:shape-name "DeleteIndexPolicyRequest"))

(smithy/sdk/shapes:define-output delete-index-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIndexPolicyResponse"))

(smithy/sdk/shapes:define-input delete-integration-request common-lisp:nil
                                ((integration-name :target-type
                                  integration-name :required common-lisp:t
                                  :member-name "integrationName")
                                 (force :target-type force :member-name
                                  "force"))
                                (:shape-name "DeleteIntegrationRequest"))

(smithy/sdk/shapes:define-output delete-integration-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIntegrationResponse"))

(smithy/sdk/shapes:define-structure delete-keys common-lisp:nil
                                    ((with-keys :target-type delete-with-keys
                                      :required common-lisp:t :member-name
                                      "withKeys"))
                                    (:shape-name "DeleteKeys"))

(smithy/sdk/shapes:define-input delete-log-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type
                                  anomaly-detector-arn :required common-lisp:t
                                  :member-name "anomalyDetectorArn"))
                                (:shape-name "DeleteLogAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-input delete-log-group-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName"))
                                (:shape-name "DeleteLogGroupRequest"))

(smithy/sdk/shapes:define-input delete-log-stream-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (log-stream-name :target-type log-stream-name
                                  :required common-lisp:t :member-name
                                  "logStreamName"))
                                (:shape-name "DeleteLogStreamRequest"))

(smithy/sdk/shapes:define-input delete-metric-filter-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (filter-name :target-type filter-name
                                  :required common-lisp:t :member-name
                                  "filterName"))
                                (:shape-name "DeleteMetricFilterRequest"))

(smithy/sdk/shapes:define-input delete-query-definition-request common-lisp:nil
                                ((query-definition-id :target-type query-id
                                  :required common-lisp:t :member-name
                                  "queryDefinitionId"))
                                (:shape-name "DeleteQueryDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-query-definition-response
                                 common-lisp:nil
                                 ((success :target-type success :member-name
                                   "success"))
                                 (:shape-name "DeleteQueryDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :member-name "policyName")
                                 (resource-arn :target-type arn :member-name
                                  "resourceArn")
                                 (expected-revision-id :target-type
                                  expected-revision-id :member-name
                                  "expectedRevisionId"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-input delete-retention-policy-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName"))
                                (:shape-name "DeleteRetentionPolicyRequest"))

(smithy/sdk/shapes:define-input delete-subscription-filter-request
                                common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (filter-name :target-type filter-name
                                  :required common-lisp:t :member-name
                                  "filterName"))
                                (:shape-name "DeleteSubscriptionFilterRequest"))

(smithy/sdk/shapes:define-input delete-transformer-request common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier"))
                                (:shape-name "DeleteTransformerRequest"))

(smithy/sdk/shapes:define-list delete-with-keys :member with-key)

(smithy/sdk/shapes:define-type delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list deliveries :member delivery)

(smithy/sdk/shapes:define-structure delivery common-lisp:nil
                                    ((id :target-type delivery-id :member-name
                                      "id")
                                     (arn :target-type arn :member-name "arn")
                                     (delivery-source-name :target-type
                                      delivery-source-name :member-name
                                      "deliverySourceName")
                                     (delivery-destination-arn :target-type arn
                                      :member-name "deliveryDestinationArn")
                                     (delivery-destination-type :target-type
                                      delivery-destination-type :member-name
                                      "deliveryDestinationType")
                                     (record-fields :target-type record-fields
                                      :member-name "recordFields")
                                     (field-delimiter :target-type
                                      field-delimiter :member-name
                                      "fieldDelimiter")
                                     (s3delivery-configuration :target-type
                                      s3delivery-configuration :member-name
                                      "s3DeliveryConfiguration")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "Delivery"))

(smithy/sdk/shapes:define-structure delivery-destination common-lisp:nil
                                    ((name :target-type
                                      delivery-destination-name :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (delivery-destination-type :target-type
                                      delivery-destination-type :member-name
                                      "deliveryDestinationType")
                                     (output-format :target-type output-format
                                      :member-name "outputFormat")
                                     (delivery-destination-configuration
                                      :target-type
                                      delivery-destination-configuration
                                      :member-name
                                      "deliveryDestinationConfiguration")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "DeliveryDestination"))

(smithy/sdk/shapes:define-structure delivery-destination-configuration
                                    common-lisp:nil
                                    ((destination-resource-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "destinationResourceArn"))
                                    (:shape-name
                                     "DeliveryDestinationConfiguration"))

(smithy/sdk/shapes:define-type delivery-destination-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type delivery-destination-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum delivery-destination-type
    common-lisp:nil
  (:s3 "S3")
  (:cwl "CWL")
  (:fh "FH")
  (:xray "XRAY"))

(smithy/sdk/shapes:define-list delivery-destination-types :member
                               delivery-destination-type)

(smithy/sdk/shapes:define-list delivery-destinations :member
                               delivery-destination)

(smithy/sdk/shapes:define-type delivery-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delivery-source common-lisp:nil
                                    ((name :target-type delivery-source-name
                                      :member-name "name")
                                     (arn :target-type arn :member-name "arn")
                                     (resource-arns :target-type resource-arns
                                      :member-name "resourceArns")
                                     (service :target-type service :member-name
                                      "service")
                                     (log-type :target-type log-type
                                      :member-name "logType")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "DeliverySource"))

(smithy/sdk/shapes:define-type delivery-source-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list delivery-sources :member delivery-source)

(smithy/sdk/shapes:define-type delivery-suffix-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type descending smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input describe-account-policies-request
                                common-lisp:nil
                                ((policy-type :target-type policy-type
                                  :required common-lisp:t :member-name
                                  "policyType")
                                 (policy-name :target-type policy-name
                                  :member-name "policyName")
                                 (account-identifiers :target-type account-ids
                                  :member-name "accountIdentifiers")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeAccountPoliciesRequest"))

(smithy/sdk/shapes:define-output describe-account-policies-response
                                 common-lisp:nil
                                 ((account-policies :target-type
                                   account-policies :member-name
                                   "accountPolicies")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeAccountPoliciesResponse"))

(smithy/sdk/shapes:define-input describe-configuration-templates-request
                                common-lisp:nil
                                ((service :target-type service :member-name
                                  "service")
                                 (log-types :target-type log-types :member-name
                                  "logTypes")
                                 (resource-types :target-type resource-types
                                  :member-name "resourceTypes")
                                 (delivery-destination-types :target-type
                                  delivery-destination-types :member-name
                                  "deliveryDestinationTypes")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name
                                 "DescribeConfigurationTemplatesRequest"))

(smithy/sdk/shapes:define-output describe-configuration-templates-response
                                 common-lisp:nil
                                 ((configuration-templates :target-type
                                   configuration-templates :member-name
                                   "configurationTemplates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeConfigurationTemplatesResponse"))

(smithy/sdk/shapes:define-input describe-deliveries-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name "DescribeDeliveriesRequest"))

(smithy/sdk/shapes:define-output describe-deliveries-response common-lisp:nil
                                 ((deliveries :target-type deliveries
                                   :member-name "deliveries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeDeliveriesResponse"))

(smithy/sdk/shapes:define-input describe-delivery-destinations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name
                                 "DescribeDeliveryDestinationsRequest"))

(smithy/sdk/shapes:define-output describe-delivery-destinations-response
                                 common-lisp:nil
                                 ((delivery-destinations :target-type
                                   delivery-destinations :member-name
                                   "deliveryDestinations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeDeliveryDestinationsResponse"))

(smithy/sdk/shapes:define-input describe-delivery-sources-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name "DescribeDeliverySourcesRequest"))

(smithy/sdk/shapes:define-output describe-delivery-sources-response
                                 common-lisp:nil
                                 ((delivery-sources :target-type
                                   delivery-sources :member-name
                                   "deliverySources")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeDeliverySourcesResponse"))

(smithy/sdk/shapes:define-input describe-destinations-request common-lisp:nil
                                ((destination-name-prefix :target-type
                                  destination-name :member-name
                                  "DestinationNamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name "DescribeDestinationsRequest"))

(smithy/sdk/shapes:define-output describe-destinations-response common-lisp:nil
                                 ((destinations :target-type destinations
                                   :member-name "destinations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeDestinationsResponse"))

(smithy/sdk/shapes:define-input describe-export-tasks-request common-lisp:nil
                                ((task-id :target-type export-task-id
                                  :member-name "taskId")
                                 (status-code :target-type
                                  export-task-status-code :member-name
                                  "statusCode")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name "DescribeExportTasksRequest"))

(smithy/sdk/shapes:define-output describe-export-tasks-response common-lisp:nil
                                 ((export-tasks :target-type export-tasks
                                   :member-name "exportTasks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeExportTasksResponse"))

(smithy/sdk/shapes:define-list describe-field-indexes-log-group-identifiers
                               :member log-group-identifier)

(smithy/sdk/shapes:define-input describe-field-indexes-request common-lisp:nil
                                ((log-group-identifiers :target-type
                                  describe-field-indexes-log-group-identifiers
                                  :required common-lisp:t :member-name
                                  "logGroupIdentifiers")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeFieldIndexesRequest"))

(smithy/sdk/shapes:define-output describe-field-indexes-response
                                 common-lisp:nil
                                 ((field-indexes :target-type field-indexes
                                   :member-name "fieldIndexes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeFieldIndexesResponse"))

(smithy/sdk/shapes:define-list describe-index-policies-log-group-identifiers
                               :member log-group-identifier)

(smithy/sdk/shapes:define-input describe-index-policies-request common-lisp:nil
                                ((log-group-identifiers :target-type
                                  describe-index-policies-log-group-identifiers
                                  :required common-lisp:t :member-name
                                  "logGroupIdentifiers")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeIndexPoliciesRequest"))

(smithy/sdk/shapes:define-output describe-index-policies-response
                                 common-lisp:nil
                                 ((index-policies :target-type index-policies
                                   :member-name "indexPolicies")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeIndexPoliciesResponse"))

(smithy/sdk/shapes:define-type describe-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list describe-log-groups-log-group-identifiers
                               :member log-group-identifier)

(smithy/sdk/shapes:define-input describe-log-groups-request common-lisp:nil
                                ((account-identifiers :target-type account-ids
                                  :member-name "accountIdentifiers")
                                 (log-group-name-prefix :target-type
                                  log-group-name :member-name
                                  "logGroupNamePrefix")
                                 (log-group-name-pattern :target-type
                                  log-group-name-pattern :member-name
                                  "logGroupNamePattern")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit")
                                 (include-linked-accounts :target-type
                                  include-linked-accounts :member-name
                                  "includeLinkedAccounts")
                                 (log-group-class :target-type log-group-class
                                  :member-name "logGroupClass")
                                 (log-group-identifiers :target-type
                                  describe-log-groups-log-group-identifiers
                                  :member-name "logGroupIdentifiers"))
                                (:shape-name "DescribeLogGroupsRequest"))

(smithy/sdk/shapes:define-output describe-log-groups-response common-lisp:nil
                                 ((log-groups :target-type log-groups
                                   :member-name "logGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeLogGroupsResponse"))

(smithy/sdk/shapes:define-input describe-log-streams-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (log-group-identifier :target-type
                                  log-group-identifier :member-name
                                  "logGroupIdentifier")
                                 (log-stream-name-prefix :target-type
                                  log-stream-name :member-name
                                  "logStreamNamePrefix")
                                 (order-by :target-type order-by :member-name
                                  "orderBy")
                                 (descending :target-type descending
                                  :member-name "descending")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name "DescribeLogStreamsRequest"))

(smithy/sdk/shapes:define-output describe-log-streams-response common-lisp:nil
                                 ((log-streams :target-type log-streams
                                   :member-name "logStreams")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeLogStreamsResponse"))

(smithy/sdk/shapes:define-input describe-metric-filters-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (filter-name-prefix :target-type filter-name
                                  :member-name "filterNamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit")
                                 (metric-name :target-type metric-name
                                  :member-name "metricName")
                                 (metric-namespace :target-type
                                  metric-namespace :member-name
                                  "metricNamespace"))
                                (:shape-name "DescribeMetricFiltersRequest"))

(smithy/sdk/shapes:define-output describe-metric-filters-response
                                 common-lisp:nil
                                 ((metric-filters :target-type metric-filters
                                   :member-name "metricFilters")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeMetricFiltersResponse"))

(smithy/sdk/shapes:define-type describe-queries-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-queries-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (status :target-type query-status :member-name
                                  "status")
                                 (max-results :target-type
                                  describe-queries-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (query-language :target-type query-language
                                  :member-name "queryLanguage"))
                                (:shape-name "DescribeQueriesRequest"))

(smithy/sdk/shapes:define-output describe-queries-response common-lisp:nil
                                 ((queries :target-type query-info-list
                                   :member-name "queries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeQueriesResponse"))

(smithy/sdk/shapes:define-input describe-query-definitions-request
                                common-lisp:nil
                                ((query-language :target-type query-language
                                  :member-name "queryLanguage")
                                 (query-definition-name-prefix :target-type
                                  query-definition-name :member-name
                                  "queryDefinitionNamePrefix")
                                 (max-results :target-type
                                  query-list-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeQueryDefinitionsRequest"))

(smithy/sdk/shapes:define-output describe-query-definitions-response
                                 common-lisp:nil
                                 ((query-definitions :target-type
                                   query-definition-list :member-name
                                   "queryDefinitions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeQueryDefinitionsResponse"))

(smithy/sdk/shapes:define-input describe-resource-policies-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit")
                                 (resource-arn :target-type arn :member-name
                                  "resourceArn")
                                 (policy-scope :target-type policy-scope
                                  :member-name "policyScope"))
                                (:shape-name "DescribeResourcePoliciesRequest"))

(smithy/sdk/shapes:define-output describe-resource-policies-response
                                 common-lisp:nil
                                 ((resource-policies :target-type
                                   resource-policies :member-name
                                   "resourcePolicies")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeResourcePoliciesResponse"))

(smithy/sdk/shapes:define-input describe-subscription-filters-request
                                common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (filter-name-prefix :target-type filter-name
                                  :member-name "filterNamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type describe-limit
                                  :member-name "limit"))
                                (:shape-name
                                 "DescribeSubscriptionFiltersRequest"))

(smithy/sdk/shapes:define-output describe-subscription-filters-response
                                 common-lisp:nil
                                 ((subscription-filters :target-type
                                   subscription-filters :member-name
                                   "subscriptionFilters")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeSubscriptionFiltersResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((destination-name :target-type
                                      destination-name :member-name
                                      "destinationName")
                                     (target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (access-policy :target-type access-policy
                                      :member-name "accessPolicy")
                                     (arn :target-type arn :member-name "arn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-type destination-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list destinations :member destination)

(smithy/sdk/shapes:define-type detector-kms-key-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type detector-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map dimensions :key dimensions-key :value
                              dimensions-value)

(smithy/sdk/shapes:define-type dimensions-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimensions-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-kms-key-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (resource-identifier :target-type
                                  resource-identifier :member-name
                                  "resourceIdentifier"))
                                (:shape-name "DisassociateKmsKeyRequest"))

(smithy/sdk/shapes:define-enum distribution
    common-lisp:nil
  (:random "Random")
  (:by-log-stream "ByLogStream"))

(smithy/sdk/shapes:define-type dynamic-token-position
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type encryption-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((key-attributes :target-type
                                      entity-key-attributes :member-name
                                      "keyAttributes")
                                     (attributes :target-type entity-attributes
                                      :member-name "attributes"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-map entity-attributes :key entity-attributes-key
                              :value entity-attributes-value)

(smithy/sdk/shapes:define-type entity-attributes-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-attributes-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map entity-key-attributes :key
                              entity-key-attributes-key :value
                              entity-key-attributes-value)

(smithy/sdk/shapes:define-type entity-key-attributes-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-key-attributes-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum entity-rejection-error-type
    common-lisp:nil
  (:invalid-entity "InvalidEntity")
  (:invalid-type-value "InvalidTypeValue")
  (:invalid-key-attribute "InvalidKeyAttributes")
  (:invalid-attributes "InvalidAttributes")
  (:entity-size-too-large "EntitySizeTooLarge")
  (:unsupported-log-group-type "UnsupportedLogGroupType")
  (:missing-required-fields "MissingRequiredFields"))

(smithy/sdk/shapes:define-map enumerations :key token-string :value token-value)

(smithy/sdk/shapes:define-type epoch-millis smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum evaluation-frequency
    common-lisp:nil
  (:one-min "ONE_MIN")
  (:five-min "FIVE_MIN")
  (:ten-min "TEN_MIN")
  (:fifteen-min "FIFTEEN_MIN")
  (:thirty-min "THIRTY_MIN")
  (:one-hour "ONE_HOUR"))

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum event-source
    common-lisp:nil
  (:cloud-trail "CloudTrail")
  (:route53-resolver "Route53Resolver")
  (:vpc-flow "VPCFlow")
  (:eks-audit "EKSAudit")
  (:awswaf "AWSWAF"))

(smithy/sdk/shapes:define-type events-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type expected-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-destination-bucket
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-destination-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-task common-lisp:nil
                                    ((task-id :target-type export-task-id
                                      :member-name "taskId")
                                     (task-name :target-type export-task-name
                                      :member-name "taskName")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (from :target-type timestamp :member-name
                                      "from")
                                     (to :target-type timestamp :member-name
                                      "to")
                                     (destination :target-type
                                      export-destination-bucket :member-name
                                      "destination")
                                     (destination-prefix :target-type
                                      export-destination-prefix :member-name
                                      "destinationPrefix")
                                     (status :target-type export-task-status
                                      :member-name "status")
                                     (execution-info :target-type
                                      export-task-execution-info :member-name
                                      "executionInfo"))
                                    (:shape-name "ExportTask"))

(smithy/sdk/shapes:define-structure export-task-execution-info common-lisp:nil
                                    ((creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (completion-time :target-type timestamp
                                      :member-name "completionTime"))
                                    (:shape-name "ExportTaskExecutionInfo"))

(smithy/sdk/shapes:define-type export-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-task-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-task-status common-lisp:nil
                                    ((code :target-type export-task-status-code
                                      :member-name "code")
                                     (message :target-type
                                      export-task-status-message :member-name
                                      "message"))
                                    (:shape-name "ExportTaskStatus"))

(smithy/sdk/shapes:define-enum export-task-status-code
    common-lisp:nil
  (:cancelled "CANCELLED")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:pending "PENDING")
  (:pending-cancel "PENDING_CANCEL")
  (:running "RUNNING"))

(smithy/sdk/shapes:define-type export-task-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list export-tasks :member export-task)

(smithy/sdk/shapes:define-map extracted-values :key token :value value)

(smithy/sdk/shapes:define-type field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-index common-lisp:nil
                                    ((log-group-identifier :target-type
                                      log-group-identifier :member-name
                                      "logGroupIdentifier")
                                     (field-index-name :target-type
                                      field-index-name :member-name
                                      "fieldIndexName")
                                     (last-scan-time :target-type timestamp
                                      :member-name "lastScanTime")
                                     (first-event-time :target-type timestamp
                                      :member-name "firstEventTime")
                                     (last-event-time :target-type timestamp
                                      :member-name "lastEventTime"))
                                    (:shape-name "FieldIndex"))

(smithy/sdk/shapes:define-type field-index-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list field-indexes :member field-index)

(smithy/sdk/shapes:define-structure fields-data common-lisp:nil
                                    ((data :target-type data :member-name
                                      "data"))
                                    (:shape-name "FieldsData"))

(smithy/sdk/shapes:define-type filter-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input filter-log-events-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (log-group-identifier :target-type
                                  log-group-identifier :member-name
                                  "logGroupIdentifier")
                                 (log-stream-names :target-type
                                  input-log-stream-names :member-name
                                  "logStreamNames")
                                 (log-stream-name-prefix :target-type
                                  log-stream-name :member-name
                                  "logStreamNamePrefix")
                                 (start-time :target-type timestamp
                                  :member-name "startTime")
                                 (end-time :target-type timestamp :member-name
                                  "endTime")
                                 (filter-pattern :target-type filter-pattern
                                  :member-name "filterPattern")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type events-limit :member-name
                                  "limit")
                                 (interleaved :target-type interleaved
                                  :member-name "interleaved")
                                 (unmask :target-type unmask :member-name
                                  "unmask"))
                                (:shape-name "FilterLogEventsRequest"))

(smithy/sdk/shapes:define-output filter-log-events-response common-lisp:nil
                                 ((events :target-type filtered-log-events
                                   :member-name "events")
                                  (searched-log-streams :target-type
                                   searched-log-streams :member-name
                                   "searchedLogStreams")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "FilterLogEventsResponse"))

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filtered-log-event common-lisp:nil
                                    ((log-stream-name :target-type
                                      log-stream-name :member-name
                                      "logStreamName")
                                     (timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (message :target-type event-message
                                      :member-name "message")
                                     (ingestion-time :target-type timestamp
                                      :member-name "ingestionTime")
                                     (event-id :target-type event-id
                                      :member-name "eventId"))
                                    (:shape-name "FilteredLogEvent"))

(smithy/sdk/shapes:define-list filtered-log-events :member filtered-log-event)

(smithy/sdk/shapes:define-type flatten smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum flattened-element
    common-lisp:nil
  (:first "first")
  (:last "last"))

(smithy/sdk/shapes:define-type force smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type force-update smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type from-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-data-protection-policy-request
                                common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier"))
                                (:shape-name "GetDataProtectionPolicyRequest"))

(smithy/sdk/shapes:define-output get-data-protection-policy-response
                                 common-lisp:nil
                                 ((log-group-identifier :target-type
                                   log-group-identifier :member-name
                                   "logGroupIdentifier")
                                  (policy-document :target-type
                                   data-protection-policy-document :member-name
                                   "policyDocument")
                                  (last-updated-time :target-type timestamp
                                   :member-name "lastUpdatedTime"))
                                 (:shape-name
                                  "GetDataProtectionPolicyResponse"))

(smithy/sdk/shapes:define-input get-delivery-destination-policy-request
                                common-lisp:nil
                                ((delivery-destination-name :target-type
                                  delivery-destination-name :required
                                  common-lisp:t :member-name
                                  "deliveryDestinationName"))
                                (:shape-name
                                 "GetDeliveryDestinationPolicyRequest"))

(smithy/sdk/shapes:define-output get-delivery-destination-policy-response
                                 common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "policy"))
                                 (:shape-name
                                  "GetDeliveryDestinationPolicyResponse"))

(smithy/sdk/shapes:define-input get-delivery-destination-request
                                common-lisp:nil
                                ((name :target-type delivery-destination-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "GetDeliveryDestinationRequest"))

(smithy/sdk/shapes:define-output get-delivery-destination-response
                                 common-lisp:nil
                                 ((delivery-destination :target-type
                                   delivery-destination :member-name
                                   "deliveryDestination"))
                                 (:shape-name "GetDeliveryDestinationResponse"))

(smithy/sdk/shapes:define-input get-delivery-request common-lisp:nil
                                ((id :target-type delivery-id :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "GetDeliveryRequest"))

(smithy/sdk/shapes:define-output get-delivery-response common-lisp:nil
                                 ((delivery :target-type delivery :member-name
                                   "delivery"))
                                 (:shape-name "GetDeliveryResponse"))

(smithy/sdk/shapes:define-input get-delivery-source-request common-lisp:nil
                                ((name :target-type delivery-source-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "GetDeliverySourceRequest"))

(smithy/sdk/shapes:define-output get-delivery-source-response common-lisp:nil
                                 ((delivery-source :target-type delivery-source
                                   :member-name "deliverySource"))
                                 (:shape-name "GetDeliverySourceResponse"))

(smithy/sdk/shapes:define-input get-integration-request common-lisp:nil
                                ((integration-name :target-type
                                  integration-name :required common-lisp:t
                                  :member-name "integrationName"))
                                (:shape-name "GetIntegrationRequest"))

(smithy/sdk/shapes:define-output get-integration-response common-lisp:nil
                                 ((integration-name :target-type
                                   integration-name :member-name
                                   "integrationName")
                                  (integration-type :target-type
                                   integration-type :member-name
                                   "integrationType")
                                  (integration-status :target-type
                                   integration-status :member-name
                                   "integrationStatus")
                                  (integration-details :target-type
                                   integration-details :member-name
                                   "integrationDetails"))
                                 (:shape-name "GetIntegrationResponse"))

(smithy/sdk/shapes:define-input get-log-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type
                                  anomaly-detector-arn :required common-lisp:t
                                  :member-name "anomalyDetectorArn"))
                                (:shape-name "GetLogAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-output get-log-anomaly-detector-response
                                 common-lisp:nil
                                 ((detector-name :target-type detector-name
                                   :member-name "detectorName")
                                  (log-group-arn-list :target-type
                                   log-group-arn-list :member-name
                                   "logGroupArnList")
                                  (evaluation-frequency :target-type
                                   evaluation-frequency :member-name
                                   "evaluationFrequency")
                                  (filter-pattern :target-type filter-pattern
                                   :member-name "filterPattern")
                                  (anomaly-detector-status :target-type
                                   anomaly-detector-status :member-name
                                   "anomalyDetectorStatus")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "kmsKeyId")
                                  (creation-time-stamp :target-type
                                   epoch-millis :member-name
                                   "creationTimeStamp")
                                  (last-modified-time-stamp :target-type
                                   epoch-millis :member-name
                                   "lastModifiedTimeStamp")
                                  (anomaly-visibility-time :target-type
                                   anomaly-visibility-time :member-name
                                   "anomalyVisibilityTime"))
                                 (:shape-name "GetLogAnomalyDetectorResponse"))

(smithy/sdk/shapes:define-input get-log-events-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (log-group-identifier :target-type
                                  log-group-identifier :member-name
                                  "logGroupIdentifier")
                                 (log-stream-name :target-type log-stream-name
                                  :required common-lisp:t :member-name
                                  "logStreamName")
                                 (start-time :target-type timestamp
                                  :member-name "startTime")
                                 (end-time :target-type timestamp :member-name
                                  "endTime")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type events-limit :member-name
                                  "limit")
                                 (start-from-head :target-type start-from-head
                                  :member-name "startFromHead")
                                 (unmask :target-type unmask :member-name
                                  "unmask"))
                                (:shape-name "GetLogEventsRequest"))

(smithy/sdk/shapes:define-output get-log-events-response common-lisp:nil
                                 ((events :target-type output-log-events
                                   :member-name "events")
                                  (next-forward-token :target-type next-token
                                   :member-name "nextForwardToken")
                                  (next-backward-token :target-type next-token
                                   :member-name "nextBackwardToken"))
                                 (:shape-name "GetLogEventsResponse"))

(smithy/sdk/shapes:define-input get-log-group-fields-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (time :target-type timestamp :member-name
                                  "time")
                                 (log-group-identifier :target-type
                                  log-group-identifier :member-name
                                  "logGroupIdentifier"))
                                (:shape-name "GetLogGroupFieldsRequest"))

(smithy/sdk/shapes:define-output get-log-group-fields-response common-lisp:nil
                                 ((log-group-fields :target-type
                                   log-group-field-list :member-name
                                   "logGroupFields"))
                                 (:shape-name "GetLogGroupFieldsResponse"))

(smithy/sdk/shapes:define-input get-log-object-request common-lisp:nil
                                ((unmask :target-type unmask :member-name
                                  "unmask")
                                 (log-object-pointer :target-type
                                  log-object-pointer :required common-lisp:t
                                  :member-name "logObjectPointer"))
                                (:shape-name "GetLogObjectRequest"))

(smithy/sdk/shapes:define-output get-log-object-response common-lisp:nil
                                 ((field-stream :target-type
                                   get-log-object-response-stream :member-name
                                   "fieldStream"))
                                 (:shape-name "GetLogObjectResponse"))

(smithy/sdk/shapes:define-union get-log-object-response-stream common-lisp:nil
                                ((fields :target-type fields-data :member-name
                                  "fields")
                                 (internal-streaming-exception :target-type
                                  internal-streaming-exception :member-name
                                  "InternalStreamingException"))
                                (:shape-name "GetLogObjectResponseStream"))

(smithy/sdk/shapes:define-input get-log-record-request common-lisp:nil
                                ((log-record-pointer :target-type
                                  log-record-pointer :required common-lisp:t
                                  :member-name "logRecordPointer")
                                 (unmask :target-type unmask :member-name
                                  "unmask"))
                                (:shape-name "GetLogRecordRequest"))

(smithy/sdk/shapes:define-output get-log-record-response common-lisp:nil
                                 ((log-record :target-type log-record
                                   :member-name "logRecord"))
                                 (:shape-name "GetLogRecordResponse"))

(smithy/sdk/shapes:define-input get-query-results-request common-lisp:nil
                                ((query-id :target-type query-id :required
                                  common-lisp:t :member-name "queryId"))
                                (:shape-name "GetQueryResultsRequest"))

(smithy/sdk/shapes:define-output get-query-results-response common-lisp:nil
                                 ((query-language :target-type query-language
                                   :member-name "queryLanguage")
                                  (results :target-type query-results
                                   :member-name "results")
                                  (statistics :target-type query-statistics
                                   :member-name "statistics")
                                  (status :target-type query-status
                                   :member-name "status")
                                  (encryption-key :target-type encryption-key
                                   :member-name "encryptionKey"))
                                 (:shape-name "GetQueryResultsResponse"))

(smithy/sdk/shapes:define-input get-transformer-request common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier"))
                                (:shape-name "GetTransformerRequest"))

(smithy/sdk/shapes:define-output get-transformer-response common-lisp:nil
                                 ((log-group-identifier :target-type
                                   log-group-identifier :member-name
                                   "logGroupIdentifier")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (transformer-config :target-type processors
                                   :member-name "transformerConfig"))
                                 (:shape-name "GetTransformerResponse"))

(smithy/sdk/shapes:define-structure grok common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (match :target-type grok-match :required
                                      common-lisp:t :member-name "match"))
                                    (:shape-name "Grok"))

(smithy/sdk/shapes:define-type grok-match smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map histogram :key time :value count)

(smithy/sdk/shapes:define-type include-linked-accounts
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list index-policies :member index-policy)

(smithy/sdk/shapes:define-structure index-policy common-lisp:nil
                                    ((log-group-identifier :target-type
                                      log-group-identifier :member-name
                                      "logGroupIdentifier")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (policy-document :target-type
                                      policy-document :member-name
                                      "policyDocument")
                                     (policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (source :target-type index-source
                                      :member-name "source"))
                                    (:shape-name "IndexPolicy"))

(smithy/sdk/shapes:define-enum index-source
    common-lisp:nil
  (:account "ACCOUNT")
  (:log-group "LOG_GROUP"))

(smithy/sdk/shapes:define-type inferred-token-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inherited-properties :member inherited-property)

(smithy/sdk/shapes:define-enum inherited-property
    common-lisp:nil
  (:account-data-protection "ACCOUNT_DATA_PROTECTION"))

(smithy/sdk/shapes:define-structure input-log-event common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (message :target-type event-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "InputLogEvent"))

(smithy/sdk/shapes:define-list input-log-events :member input-log-event)

(smithy/sdk/shapes:define-list input-log-stream-names :member log-stream-name)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union integration-details common-lisp:nil
                                ((open-search-integration-details :target-type
                                  open-search-integration-details :member-name
                                  "openSearchIntegrationDetails"))
                                (:shape-name "IntegrationDetails"))

(smithy/sdk/shapes:define-type integration-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integration-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum integration-status
    common-lisp:nil
  (:provisioning "PROVISIONING")
  (:active "ACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type integration-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list integration-summaries :member
                               integration-summary)

(smithy/sdk/shapes:define-structure integration-summary common-lisp:nil
                                    ((integration-name :target-type
                                      integration-name :member-name
                                      "integrationName")
                                     (integration-type :target-type
                                      integration-type :member-name
                                      "integrationType")
                                     (integration-status :target-type
                                      integration-status :member-name
                                      "integrationStatus"))
                                    (:shape-name "IntegrationSummary"))

(smithy/sdk/shapes:define-enum integration-type
    common-lisp:nil
  (:opensearch "OPENSEARCH"))

(smithy/sdk/shapes:define-type interleaved smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-streaming-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InternalStreamingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sequence-token-exception
                                common-lisp:nil
                                ((expected-sequence-token :target-type
                                  sequence-token :member-name
                                  "expectedSequenceToken")
                                 (message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidSequenceTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type is-sampled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-value-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type list-anomalies-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-anomalies-request common-lisp:nil
                                ((anomaly-detector-arn :target-type
                                  anomaly-detector-arn :member-name
                                  "anomalyDetectorArn")
                                 (suppression-state :target-type
                                  suppression-state :member-name
                                  "suppressionState")
                                 (limit :target-type list-anomalies-limit
                                  :member-name "limit")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListAnomaliesRequest"))

(smithy/sdk/shapes:define-output list-anomalies-response common-lisp:nil
                                 ((anomalies :target-type anomalies
                                   :member-name "anomalies")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAnomaliesResponse"))

(smithy/sdk/shapes:define-input list-integrations-request common-lisp:nil
                                ((integration-name-prefix :target-type
                                  integration-name-prefix :member-name
                                  "integrationNamePrefix")
                                 (integration-type :target-type
                                  integration-type :member-name
                                  "integrationType")
                                 (integration-status :target-type
                                  integration-status :member-name
                                  "integrationStatus"))
                                (:shape-name "ListIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-integrations-response common-lisp:nil
                                 ((integration-summaries :target-type
                                   integration-summaries :member-name
                                   "integrationSummaries"))
                                 (:shape-name "ListIntegrationsResponse"))

(smithy/sdk/shapes:define-type list-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-log-anomaly-detectors-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-log-anomaly-detectors-request
                                common-lisp:nil
                                ((filter-log-group-arn :target-type
                                  log-group-arn :member-name
                                  "filterLogGroupArn")
                                 (limit :target-type
                                  list-log-anomaly-detectors-limit :member-name
                                  "limit")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListLogAnomalyDetectorsRequest"))

(smithy/sdk/shapes:define-output list-log-anomaly-detectors-response
                                 common-lisp:nil
                                 ((anomaly-detectors :target-type
                                   anomaly-detectors :member-name
                                   "anomalyDetectors")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListLogAnomalyDetectorsResponse"))

(smithy/sdk/shapes:define-type list-log-groups-for-query-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-log-groups-for-query-request
                                common-lisp:nil
                                ((query-id :target-type query-id :required
                                  common-lisp:t :member-name "queryId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-log-groups-for-query-max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListLogGroupsForQueryRequest"))

(smithy/sdk/shapes:define-output list-log-groups-for-query-response
                                 common-lisp:nil
                                 ((log-group-identifiers :target-type
                                   log-group-identifiers :member-name
                                   "logGroupIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLogGroupsForQueryResponse"))

(smithy/sdk/shapes:define-input list-log-groups-request common-lisp:nil
                                ((log-group-name-pattern :target-type
                                  log-group-name-regex-pattern :member-name
                                  "logGroupNamePattern")
                                 (log-group-class :target-type log-group-class
                                  :member-name "logGroupClass")
                                 (include-linked-accounts :target-type
                                  include-linked-accounts :member-name
                                  "includeLinkedAccounts")
                                 (account-identifiers :target-type account-ids
                                  :member-name "accountIdentifiers")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (limit :target-type list-limit :member-name
                                  "limit"))
                                (:shape-name "ListLogGroupsRequest"))

(smithy/sdk/shapes:define-output list-log-groups-response common-lisp:nil
                                 ((log-groups :target-type log-group-summaries
                                   :member-name "logGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLogGroupsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-tags-log-group-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName"))
                                (:shape-name "ListTagsLogGroupRequest"))

(smithy/sdk/shapes:define-output list-tags-log-group-response common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsLogGroupResponse"))

(smithy/sdk/shapes:define-structure list-to-map common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (value-key :target-type value-key
                                      :member-name "valueKey")
                                     (target :target-type target :member-name
                                      "target")
                                     (flatten :target-type flatten :member-name
                                      "flatten")
                                     (flattened-element :target-type
                                      flattened-element :member-name
                                      "flattenedElement"))
                                    (:shape-name "ListToMap"))

(smithy/sdk/shapes:define-structure live-tail-session-log-event common-lisp:nil
                                    ((log-stream-name :target-type
                                      log-stream-name :member-name
                                      "logStreamName")
                                     (log-group-identifier :target-type
                                      log-group-identifier :member-name
                                      "logGroupIdentifier")
                                     (message :target-type event-message
                                      :member-name "message")
                                     (timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (ingestion-time :target-type timestamp
                                      :member-name "ingestionTime"))
                                    (:shape-name "LiveTailSessionLogEvent"))

(smithy/sdk/shapes:define-structure live-tail-session-metadata common-lisp:nil
                                    ((sampled :target-type is-sampled
                                      :member-name "sampled"))
                                    (:shape-name "LiveTailSessionMetadata"))

(smithy/sdk/shapes:define-list live-tail-session-results :member
                               live-tail-session-log-event)

(smithy/sdk/shapes:define-structure live-tail-session-start common-lisp:nil
                                    ((request-id :target-type request-id
                                      :member-name "requestId")
                                     (session-id :target-type session-id
                                      :member-name "sessionId")
                                     (log-group-identifiers :target-type
                                      start-live-tail-log-group-identifiers
                                      :member-name "logGroupIdentifiers")
                                     (log-stream-names :target-type
                                      input-log-stream-names :member-name
                                      "logStreamNames")
                                     (log-stream-name-prefixes :target-type
                                      input-log-stream-names :member-name
                                      "logStreamNamePrefixes")
                                     (log-event-filter-pattern :target-type
                                      filter-pattern :member-name
                                      "logEventFilterPattern"))
                                    (:shape-name "LiveTailSessionStart"))

(smithy/sdk/shapes:define-structure live-tail-session-update common-lisp:nil
                                    ((session-metadata :target-type
                                      live-tail-session-metadata :member-name
                                      "sessionMetadata")
                                     (session-results :target-type
                                      live-tail-session-results :member-name
                                      "sessionResults"))
                                    (:shape-name "LiveTailSessionUpdate"))

(smithy/sdk/shapes:define-type locale smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure log-event common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (message :target-type event-message
                                      :member-name "message"))
                                    (:shape-name "LogEvent"))

(smithy/sdk/shapes:define-type log-event-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure log-group common-lisp:nil
                                    ((log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (retention-in-days :target-type days
                                      :member-name "retentionInDays")
                                     (metric-filter-count :target-type
                                      filter-count :member-name
                                      "metricFilterCount")
                                     (arn :target-type arn :member-name "arn")
                                     (stored-bytes :target-type stored-bytes
                                      :member-name "storedBytes")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (data-protection-status :target-type
                                      data-protection-status :member-name
                                      "dataProtectionStatus")
                                     (inherited-properties :target-type
                                      inherited-properties :member-name
                                      "inheritedProperties")
                                     (log-group-class :target-type
                                      log-group-class :member-name
                                      "logGroupClass")
                                     (log-group-arn :target-type arn
                                      :member-name "logGroupArn"))
                                    (:shape-name "LogGroup"))

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-group-arn-list :member log-group-arn)

(smithy/sdk/shapes:define-enum log-group-class
    common-lisp:nil
  (:standard "STANDARD")
  (:infrequent-access "INFREQUENT_ACCESS")
  (:delivery "DELIVERY"))

(smithy/sdk/shapes:define-structure log-group-field common-lisp:nil
                                    ((name :target-type field :member-name
                                      "name")
                                     (percent :target-type percentage
                                      :member-name "percent"))
                                    (:shape-name "LogGroupField"))

(smithy/sdk/shapes:define-list log-group-field-list :member log-group-field)

(smithy/sdk/shapes:define-type log-group-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-group-identifiers :member
                               log-group-identifier)

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-name-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-name-regex-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-group-names :member log-group-name)

(smithy/sdk/shapes:define-list log-group-summaries :member log-group-summary)

(smithy/sdk/shapes:define-structure log-group-summary common-lisp:nil
                                    ((log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (log-group-arn :target-type arn
                                      :member-name "logGroupArn")
                                     (log-group-class :target-type
                                      log-group-class :member-name
                                      "logGroupClass"))
                                    (:shape-name "LogGroupSummary"))

(smithy/sdk/shapes:define-list log-groups :member log-group)

(smithy/sdk/shapes:define-type log-object-pointer
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map log-record :key field :value value)

(smithy/sdk/shapes:define-type log-record-pointer
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-samples :member log-event)

(smithy/sdk/shapes:define-structure log-stream common-lisp:nil
                                    ((log-stream-name :target-type
                                      log-stream-name :member-name
                                      "logStreamName")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (first-event-timestamp :target-type
                                      timestamp :member-name
                                      "firstEventTimestamp")
                                     (last-event-timestamp :target-type
                                      timestamp :member-name
                                      "lastEventTimestamp")
                                     (last-ingestion-time :target-type
                                      timestamp :member-name
                                      "lastIngestionTime")
                                     (upload-sequence-token :target-type
                                      sequence-token :member-name
                                      "uploadSequenceToken")
                                     (arn :target-type arn :member-name "arn")
                                     (stored-bytes :target-type stored-bytes
                                      :member-name "storedBytes"))
                                    (:shape-name "LogStream"))

(smithy/sdk/shapes:define-type log-stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-stream-searched-completely
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list log-streams :member log-stream)

(smithy/sdk/shapes:define-type log-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-types :member log-type)

(smithy/sdk/shapes:define-structure lower-case-string common-lisp:nil
                                    ((with-keys :target-type
                                      lower-case-string-with-keys :required
                                      common-lisp:t :member-name "withKeys"))
                                    (:shape-name "LowerCaseString"))

(smithy/sdk/shapes:define-list lower-case-string-with-keys :member with-key)

(smithy/sdk/shapes:define-error malformed-query-exception common-lisp:nil
                                ((query-compile-error :target-type
                                  query-compile-error :member-name
                                  "queryCompileError")
                                 (message :target-type message :member-name
                                  "message"))
                                (:shape-name "MalformedQueryException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type match-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list match-patterns :member match-pattern)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-filter common-lisp:nil
                                    ((filter-name :target-type filter-name
                                      :member-name "filterName")
                                     (filter-pattern :target-type
                                      filter-pattern :member-name
                                      "filterPattern")
                                     (metric-transformations :target-type
                                      metric-transformations :member-name
                                      "metricTransformations")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (apply-on-transformed-logs :target-type
                                      apply-on-transformed-logs :member-name
                                      "applyOnTransformedLogs"))
                                    (:shape-name "MetricFilter"))

(smithy/sdk/shapes:define-structure metric-filter-match-record common-lisp:nil
                                    ((event-number :target-type event-number
                                      :member-name "eventNumber")
                                     (event-message :target-type event-message
                                      :member-name "eventMessage")
                                     (extracted-values :target-type
                                      extracted-values :member-name
                                      "extractedValues"))
                                    (:shape-name "MetricFilterMatchRecord"))

(smithy/sdk/shapes:define-list metric-filter-matches :member
                               metric-filter-match-record)

(smithy/sdk/shapes:define-list metric-filters :member metric-filter)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-transformation common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "metricName")
                                     (metric-namespace :target-type
                                      metric-namespace :required common-lisp:t
                                      :member-name "metricNamespace")
                                     (metric-value :target-type metric-value
                                      :required common-lisp:t :member-name
                                      "metricValue")
                                     (default-value :target-type default-value
                                      :member-name "defaultValue")
                                     (dimensions :target-type dimensions
                                      :member-name "dimensions")
                                     (unit :target-type standard-unit
                                      :member-name "unit"))
                                    (:shape-name "MetricTransformation"))

(smithy/sdk/shapes:define-list metric-transformations :member
                               metric-transformation)

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list move-key-entries :member move-key-entry)

(smithy/sdk/shapes:define-structure move-key-entry common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "target")
                                     (overwrite-if-exists :target-type
                                      overwrite-if-exists :member-name
                                      "overwriteIfExists"))
                                    (:shape-name "MoveKeyEntry"))

(smithy/sdk/shapes:define-structure move-keys common-lisp:nil
                                    ((entries :target-type move-key-entries
                                      :required common-lisp:t :member-name
                                      "entries"))
                                    (:shape-name "MoveKeys"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-match-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ocsfversion
    common-lisp:nil
  (:v1-1 "V1.1"))

(smithy/sdk/shapes:define-structure open-search-application common-lisp:nil
                                    ((application-endpoint :target-type
                                      open-search-application-endpoint
                                      :member-name "applicationEndpoint")
                                     (application-arn :target-type arn
                                      :member-name "applicationArn")
                                     (application-id :target-type
                                      open-search-application-id :member-name
                                      "applicationId")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchApplication"))

(smithy/sdk/shapes:define-type open-search-application-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type open-search-application-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-collection common-lisp:nil
                                    ((collection-endpoint :target-type
                                      open-search-collection-endpoint
                                      :member-name "collectionEndpoint")
                                     (collection-arn :target-type arn
                                      :member-name "collectionArn")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchCollection"))

(smithy/sdk/shapes:define-type open-search-collection-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-data-access-policy
                                    common-lisp:nil
                                    ((policy-name :target-type
                                      open-search-policy-name :member-name
                                      "policyName")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchDataAccessPolicy"))

(smithy/sdk/shapes:define-structure open-search-data-source common-lisp:nil
                                    ((data-source-name :target-type
                                      open-search-data-source-name :member-name
                                      "dataSourceName")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchDataSource"))

(smithy/sdk/shapes:define-type open-search-data-source-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-encryption-policy
                                    common-lisp:nil
                                    ((policy-name :target-type
                                      open-search-policy-name :member-name
                                      "policyName")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchEncryptionPolicy"))

(smithy/sdk/shapes:define-structure open-search-integration-details
                                    common-lisp:nil
                                    ((data-source :target-type
                                      open-search-data-source :member-name
                                      "dataSource")
                                     (application :target-type
                                      open-search-application :member-name
                                      "application")
                                     (collection :target-type
                                      open-search-collection :member-name
                                      "collection")
                                     (workspace :target-type
                                      open-search-workspace :member-name
                                      "workspace")
                                     (encryption-policy :target-type
                                      open-search-encryption-policy
                                      :member-name "encryptionPolicy")
                                     (network-policy :target-type
                                      open-search-network-policy :member-name
                                      "networkPolicy")
                                     (access-policy :target-type
                                      open-search-data-access-policy
                                      :member-name "accessPolicy")
                                     (lifecycle-policy :target-type
                                      open-search-lifecycle-policy :member-name
                                      "lifecyclePolicy"))
                                    (:shape-name
                                     "OpenSearchIntegrationDetails"))

(smithy/sdk/shapes:define-structure open-search-lifecycle-policy
                                    common-lisp:nil
                                    ((policy-name :target-type
                                      open-search-policy-name :member-name
                                      "policyName")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchLifecyclePolicy"))

(smithy/sdk/shapes:define-structure open-search-network-policy common-lisp:nil
                                    ((policy-name :target-type
                                      open-search-policy-name :member-name
                                      "policyName")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchNetworkPolicy"))

(smithy/sdk/shapes:define-type open-search-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-search-resource-config common-lisp:nil
                                    ((kms-key-arn :target-type arn :member-name
                                      "kmsKeyArn")
                                     (data-source-role-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "dataSourceRoleArn")
                                     (dashboard-viewer-principals :target-type
                                      dashboard-viewer-principals :required
                                      common-lisp:t :member-name
                                      "dashboardViewerPrincipals")
                                     (application-arn :target-type arn
                                      :member-name "applicationArn")
                                     (retention-days :target-type
                                      collection-retention-days :required
                                      common-lisp:t :member-name
                                      "retentionDays"))
                                    (:shape-name "OpenSearchResourceConfig"))

(smithy/sdk/shapes:define-structure open-search-resource-status common-lisp:nil
                                    ((status :target-type
                                      open-search-resource-status-type
                                      :member-name "status")
                                     (status-message :target-type
                                      integration-status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "OpenSearchResourceStatus"))

(smithy/sdk/shapes:define-enum open-search-resource-status-type
    common-lisp:nil
  (:active "ACTIVE")
  (:not-found "NOT_FOUND")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure open-search-workspace common-lisp:nil
                                    ((workspace-id :target-type
                                      open-search-workspace-id :member-name
                                      "workspaceId")
                                     (status :target-type
                                      open-search-resource-status :member-name
                                      "status"))
                                    (:shape-name "OpenSearchWorkspace"))

(smithy/sdk/shapes:define-type open-search-workspace-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error operation-aborted-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "OperationAbortedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum order-by
    common-lisp:nil
  (:log-stream-name "LogStreamName")
  (:last-event-time "LastEventTime"))

(smithy/sdk/shapes:define-enum output-format
    common-lisp:nil
  (:json "json")
  (:plain "plain")
  (:w3c "w3c")
  (:raw "raw")
  (:parquet "parquet"))

(smithy/sdk/shapes:define-list output-formats :member output-format)

(smithy/sdk/shapes:define-structure output-log-event common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (message :target-type event-message
                                      :member-name "message")
                                     (ingestion-time :target-type timestamp
                                      :member-name "ingestionTime"))
                                    (:shape-name "OutputLogEvent"))

(smithy/sdk/shapes:define-list output-log-events :member output-log-event)

(smithy/sdk/shapes:define-type overwrite-if-exists
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure parse-cloudfront common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source"))
                                    (:shape-name "ParseCloudfront"))

(smithy/sdk/shapes:define-structure parse-json common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (destination :target-type
                                      destination-field :member-name
                                      "destination"))
                                    (:shape-name "ParseJSON"))

(smithy/sdk/shapes:define-structure parse-key-value common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (destination :target-type
                                      destination-field :member-name
                                      "destination")
                                     (field-delimiter :target-type
                                      parser-field-delimiter :member-name
                                      "fieldDelimiter")
                                     (key-value-delimiter :target-type
                                      key-value-delimiter :member-name
                                      "keyValueDelimiter")
                                     (key-prefix :target-type key-prefix
                                      :member-name "keyPrefix")
                                     (non-match-value :target-type
                                      non-match-value :member-name
                                      "nonMatchValue")
                                     (overwrite-if-exists :target-type
                                      overwrite-if-exists :member-name
                                      "overwriteIfExists"))
                                    (:shape-name "ParseKeyValue"))

(smithy/sdk/shapes:define-structure parse-postgres common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source"))
                                    (:shape-name "ParsePostgres"))

(smithy/sdk/shapes:define-structure parse-route53 common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source"))
                                    (:shape-name "ParseRoute53"))

(smithy/sdk/shapes:define-structure parse-to-ocsf common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (event-source :target-type event-source
                                      :required common-lisp:t :member-name
                                      "eventSource")
                                     (ocsf-version :target-type ocsfversion
                                      :required common-lisp:t :member-name
                                      "ocsfVersion"))
                                    (:shape-name "ParseToOCSF"))

(smithy/sdk/shapes:define-structure parse-vpc common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source"))
                                    (:shape-name "ParseVPC"))

(smithy/sdk/shapes:define-structure parse-waf common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source"))
                                    (:shape-name "ParseWAF"))

(smithy/sdk/shapes:define-type parser-field-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pattern-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pattern-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pattern-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pattern-token common-lisp:nil
                                    ((dynamic-token-position :target-type
                                      dynamic-token-position :member-name
                                      "dynamicTokenPosition")
                                     (is-dynamic :target-type boolean
                                      :member-name "isDynamic")
                                     (token-string :target-type token-string
                                      :member-name "tokenString")
                                     (enumerations :target-type enumerations
                                      :member-name "enumerations")
                                     (inferred-token-name :target-type
                                      inferred-token-name :member-name
                                      "inferredTokenName"))
                                    (:shape-name "PatternToken"))

(smithy/sdk/shapes:define-list pattern-tokens :member pattern-token)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((delivery-destination-policy :target-type
                                      delivery-destination-policy :member-name
                                      "deliveryDestinationPolicy"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum policy-scope
    common-lisp:nil
  (:account "ACCOUNT")
  (:resource "RESOURCE"))

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:data-protection-policy "DATA_PROTECTION_POLICY")
  (:subscription-filter-policy "SUBSCRIPTION_FILTER_POLICY")
  (:field-index-policy "FIELD_INDEX_POLICY")
  (:transformer-policy "TRANSFORMER_POLICY")
  (:metric-extraction-policy "METRIC_EXTRACTION_POLICY"))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure processor common-lisp:nil
                                    ((add-keys :target-type add-keys
                                      :member-name "addKeys")
                                     (copy-value :target-type copy-value
                                      :member-name "copyValue")
                                     (csv :target-type csv :member-name "csv")
                                     (date-time-converter :target-type
                                      date-time-converter :member-name
                                      "dateTimeConverter")
                                     (delete-keys :target-type delete-keys
                                      :member-name "deleteKeys")
                                     (grok :target-type grok :member-name
                                      "grok")
                                     (list-to-map :target-type list-to-map
                                      :member-name "listToMap")
                                     (lower-case-string :target-type
                                      lower-case-string :member-name
                                      "lowerCaseString")
                                     (move-keys :target-type move-keys
                                      :member-name "moveKeys")
                                     (parse-cloudfront :target-type
                                      parse-cloudfront :member-name
                                      "parseCloudfront")
                                     (parse-json :target-type parse-json
                                      :member-name "parseJSON")
                                     (parse-key-value :target-type
                                      parse-key-value :member-name
                                      "parseKeyValue")
                                     (parse-route53 :target-type parse-route53
                                      :member-name "parseRoute53")
                                     (parse-to-ocsf :target-type parse-to-ocsf
                                      :member-name "parseToOCSF")
                                     (parse-postgres :target-type
                                      parse-postgres :member-name
                                      "parsePostgres")
                                     (parse-vpc :target-type parse-vpc
                                      :member-name "parseVPC")
                                     (parse-waf :target-type parse-waf
                                      :member-name "parseWAF")
                                     (rename-keys :target-type rename-keys
                                      :member-name "renameKeys")
                                     (split-string :target-type split-string
                                      :member-name "splitString")
                                     (substitute-string :target-type
                                      substitute-string :member-name
                                      "substituteString")
                                     (trim-string :target-type trim-string
                                      :member-name "trimString")
                                     (type-converter :target-type
                                      type-converter :member-name
                                      "typeConverter")
                                     (upper-case-string :target-type
                                      upper-case-string :member-name
                                      "upperCaseString"))
                                    (:shape-name "Processor"))

(smithy/sdk/shapes:define-list processors :member processor)

(smithy/sdk/shapes:define-input put-account-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "policyName")
                                 (policy-document :target-type
                                  account-policy-document :required
                                  common-lisp:t :member-name "policyDocument")
                                 (policy-type :target-type policy-type
                                  :required common-lisp:t :member-name
                                  "policyType")
                                 (scope :target-type scope :member-name
                                  "scope")
                                 (selection-criteria :target-type
                                  selection-criteria :member-name
                                  "selectionCriteria"))
                                (:shape-name "PutAccountPolicyRequest"))

(smithy/sdk/shapes:define-output put-account-policy-response common-lisp:nil
                                 ((account-policy :target-type account-policy
                                   :member-name "accountPolicy"))
                                 (:shape-name "PutAccountPolicyResponse"))

(smithy/sdk/shapes:define-input put-data-protection-policy-request
                                common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier")
                                 (policy-document :target-type
                                  data-protection-policy-document :required
                                  common-lisp:t :member-name "policyDocument"))
                                (:shape-name "PutDataProtectionPolicyRequest"))

(smithy/sdk/shapes:define-output put-data-protection-policy-response
                                 common-lisp:nil
                                 ((log-group-identifier :target-type
                                   log-group-identifier :member-name
                                   "logGroupIdentifier")
                                  (policy-document :target-type
                                   data-protection-policy-document :member-name
                                   "policyDocument")
                                  (last-updated-time :target-type timestamp
                                   :member-name "lastUpdatedTime"))
                                 (:shape-name
                                  "PutDataProtectionPolicyResponse"))

(smithy/sdk/shapes:define-input put-delivery-destination-policy-request
                                common-lisp:nil
                                ((delivery-destination-name :target-type
                                  delivery-destination-name :required
                                  common-lisp:t :member-name
                                  "deliveryDestinationName")
                                 (delivery-destination-policy :target-type
                                  delivery-destination-policy :required
                                  common-lisp:t :member-name
                                  "deliveryDestinationPolicy"))
                                (:shape-name
                                 "PutDeliveryDestinationPolicyRequest"))

(smithy/sdk/shapes:define-output put-delivery-destination-policy-response
                                 common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "policy"))
                                 (:shape-name
                                  "PutDeliveryDestinationPolicyResponse"))

(smithy/sdk/shapes:define-input put-delivery-destination-request
                                common-lisp:nil
                                ((name :target-type delivery-destination-name
                                  :required common-lisp:t :member-name "name")
                                 (output-format :target-type output-format
                                  :member-name "outputFormat")
                                 (delivery-destination-configuration
                                  :target-type
                                  delivery-destination-configuration
                                  :member-name
                                  "deliveryDestinationConfiguration")
                                 (delivery-destination-type :target-type
                                  delivery-destination-type :member-name
                                  "deliveryDestinationType")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "PutDeliveryDestinationRequest"))

(smithy/sdk/shapes:define-output put-delivery-destination-response
                                 common-lisp:nil
                                 ((delivery-destination :target-type
                                   delivery-destination :member-name
                                   "deliveryDestination"))
                                 (:shape-name "PutDeliveryDestinationResponse"))

(smithy/sdk/shapes:define-input put-delivery-source-request common-lisp:nil
                                ((name :target-type delivery-source-name
                                  :required common-lisp:t :member-name "name")
                                 (resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (log-type :target-type log-type :required
                                  common-lisp:t :member-name "logType")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "PutDeliverySourceRequest"))

(smithy/sdk/shapes:define-output put-delivery-source-response common-lisp:nil
                                 ((delivery-source :target-type delivery-source
                                   :member-name "deliverySource"))
                                 (:shape-name "PutDeliverySourceResponse"))

(smithy/sdk/shapes:define-input put-destination-policy-request common-lisp:nil
                                ((destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "destinationName")
                                 (access-policy :target-type access-policy
                                  :required common-lisp:t :member-name
                                  "accessPolicy")
                                 (force-update :target-type force-update
                                  :member-name "forceUpdate"))
                                (:shape-name "PutDestinationPolicyRequest"))

(smithy/sdk/shapes:define-input put-destination-request common-lisp:nil
                                ((destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "destinationName")
                                 (target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "targetArn")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "PutDestinationRequest"))

(smithy/sdk/shapes:define-output put-destination-response common-lisp:nil
                                 ((destination :target-type destination
                                   :member-name "destination"))
                                 (:shape-name "PutDestinationResponse"))

(smithy/sdk/shapes:define-input put-index-policy-request common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier")
                                 (policy-document :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "policyDocument"))
                                (:shape-name "PutIndexPolicyRequest"))

(smithy/sdk/shapes:define-output put-index-policy-response common-lisp:nil
                                 ((index-policy :target-type index-policy
                                   :member-name "indexPolicy"))
                                 (:shape-name "PutIndexPolicyResponse"))

(smithy/sdk/shapes:define-input put-integration-request common-lisp:nil
                                ((integration-name :target-type
                                  integration-name :required common-lisp:t
                                  :member-name "integrationName")
                                 (resource-config :target-type resource-config
                                  :required common-lisp:t :member-name
                                  "resourceConfig")
                                 (integration-type :target-type
                                  integration-type :required common-lisp:t
                                  :member-name "integrationType"))
                                (:shape-name "PutIntegrationRequest"))

(smithy/sdk/shapes:define-output put-integration-response common-lisp:nil
                                 ((integration-name :target-type
                                   integration-name :member-name
                                   "integrationName")
                                  (integration-status :target-type
                                   integration-status :member-name
                                   "integrationStatus"))
                                 (:shape-name "PutIntegrationResponse"))

(smithy/sdk/shapes:define-input put-log-events-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (log-stream-name :target-type log-stream-name
                                  :required common-lisp:t :member-name
                                  "logStreamName")
                                 (log-events :target-type input-log-events
                                  :required common-lisp:t :member-name
                                  "logEvents")
                                 (sequence-token :target-type sequence-token
                                  :member-name "sequenceToken")
                                 (entity :target-type entity :member-name
                                  "entity"))
                                (:shape-name "PutLogEventsRequest"))

(smithy/sdk/shapes:define-output put-log-events-response common-lisp:nil
                                 ((next-sequence-token :target-type
                                   sequence-token :member-name
                                   "nextSequenceToken")
                                  (rejected-log-events-info :target-type
                                   rejected-log-events-info :member-name
                                   "rejectedLogEventsInfo")
                                  (rejected-entity-info :target-type
                                   rejected-entity-info :member-name
                                   "rejectedEntityInfo"))
                                 (:shape-name "PutLogEventsResponse"))

(smithy/sdk/shapes:define-input put-metric-filter-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (filter-name :target-type filter-name
                                  :required common-lisp:t :member-name
                                  "filterName")
                                 (filter-pattern :target-type filter-pattern
                                  :required common-lisp:t :member-name
                                  "filterPattern")
                                 (metric-transformations :target-type
                                  metric-transformations :required
                                  common-lisp:t :member-name
                                  "metricTransformations")
                                 (apply-on-transformed-logs :target-type
                                  apply-on-transformed-logs :member-name
                                  "applyOnTransformedLogs"))
                                (:shape-name "PutMetricFilterRequest"))

(smithy/sdk/shapes:define-input put-query-definition-request common-lisp:nil
                                ((query-language :target-type query-language
                                  :member-name "queryLanguage")
                                 (name :target-type query-definition-name
                                  :required common-lisp:t :member-name "name")
                                 (query-definition-id :target-type query-id
                                  :member-name "queryDefinitionId")
                                 (log-group-names :target-type log-group-names
                                  :member-name "logGroupNames")
                                 (query-string :target-type
                                  query-definition-string :required
                                  common-lisp:t :member-name "queryString")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "PutQueryDefinitionRequest"))

(smithy/sdk/shapes:define-output put-query-definition-response common-lisp:nil
                                 ((query-definition-id :target-type query-id
                                   :member-name "queryDefinitionId"))
                                 (:shape-name "PutQueryDefinitionResponse"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :member-name "policyName")
                                 (policy-document :target-type policy-document
                                  :member-name "policyDocument")
                                 (resource-arn :target-type arn :member-name
                                  "resourceArn")
                                 (expected-revision-id :target-type
                                  expected-revision-id :member-name
                                  "expectedRevisionId"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "resourcePolicy")
                                  (revision-id :target-type
                                   expected-revision-id :member-name
                                   "revisionId"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-input put-retention-policy-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (retention-in-days :target-type days :required
                                  common-lisp:t :member-name
                                  "retentionInDays"))
                                (:shape-name "PutRetentionPolicyRequest"))

(smithy/sdk/shapes:define-input put-subscription-filter-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (filter-name :target-type filter-name
                                  :required common-lisp:t :member-name
                                  "filterName")
                                 (filter-pattern :target-type filter-pattern
                                  :required common-lisp:t :member-name
                                  "filterPattern")
                                 (destination-arn :target-type destination-arn
                                  :required common-lisp:t :member-name
                                  "destinationArn")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (distribution :target-type distribution
                                  :member-name "distribution")
                                 (apply-on-transformed-logs :target-type
                                  apply-on-transformed-logs :member-name
                                  "applyOnTransformedLogs"))
                                (:shape-name "PutSubscriptionFilterRequest"))

(smithy/sdk/shapes:define-input put-transformer-request common-lisp:nil
                                ((log-group-identifier :target-type
                                  log-group-identifier :required common-lisp:t
                                  :member-name "logGroupIdentifier")
                                 (transformer-config :target-type processors
                                  :required common-lisp:t :member-name
                                  "transformerConfig"))
                                (:shape-name "PutTransformerRequest"))

(smithy/sdk/shapes:define-type query-char-offset
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure query-compile-error common-lisp:nil
                                    ((location :target-type
                                      query-compile-error-location :member-name
                                      "location")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "QueryCompileError"))

(smithy/sdk/shapes:define-structure query-compile-error-location
                                    common-lisp:nil
                                    ((start-char-offset :target-type
                                      query-char-offset :member-name
                                      "startCharOffset")
                                     (end-char-offset :target-type
                                      query-char-offset :member-name
                                      "endCharOffset"))
                                    (:shape-name "QueryCompileErrorLocation"))

(smithy/sdk/shapes:define-structure query-definition common-lisp:nil
                                    ((query-language :target-type
                                      query-language :member-name
                                      "queryLanguage")
                                     (query-definition-id :target-type query-id
                                      :member-name "queryDefinitionId")
                                     (name :target-type query-definition-name
                                      :member-name "name")
                                     (query-string :target-type
                                      query-definition-string :member-name
                                      "queryString")
                                     (last-modified :target-type timestamp
                                      :member-name "lastModified")
                                     (log-group-names :target-type
                                      log-group-names :member-name
                                      "logGroupNames"))
                                    (:shape-name "QueryDefinition"))

(smithy/sdk/shapes:define-list query-definition-list :member query-definition)

(smithy/sdk/shapes:define-type query-definition-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-definition-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-info common-lisp:nil
                                    ((query-language :target-type
                                      query-language :member-name
                                      "queryLanguage")
                                     (query-id :target-type query-id
                                      :member-name "queryId")
                                     (query-string :target-type query-string
                                      :member-name "queryString")
                                     (status :target-type query-status
                                      :member-name "status")
                                     (create-time :target-type timestamp
                                      :member-name "createTime")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName"))
                                    (:shape-name "QueryInfo"))

(smithy/sdk/shapes:define-list query-info-list :member query-info)

(smithy/sdk/shapes:define-enum query-language
    common-lisp:nil
  (:cwli "CWLI")
  (:sql "SQL")
  (:ppl "PPL"))

(smithy/sdk/shapes:define-type query-list-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list query-results :member result-rows)

(smithy/sdk/shapes:define-structure query-statistics common-lisp:nil
                                    ((records-matched :target-type stats-value
                                      :member-name "recordsMatched")
                                     (records-scanned :target-type stats-value
                                      :member-name "recordsScanned")
                                     (estimated-records-skipped :target-type
                                      stats-value :member-name
                                      "estimatedRecordsSkipped")
                                     (bytes-scanned :target-type stats-value
                                      :member-name "bytesScanned")
                                     (estimated-bytes-skipped :target-type
                                      stats-value :member-name
                                      "estimatedBytesSkipped")
                                     (log-groups-scanned :target-type
                                      stats-value :member-name
                                      "logGroupsScanned"))
                                    (:shape-name "QueryStatistics"))

(smithy/sdk/shapes:define-enum query-status
    common-lisp:nil
  (:scheduled "Scheduled")
  (:running "Running")
  (:complete "Complete")
  (:failed "Failed")
  (:cancelled "Cancelled")
  (:timeout "Timeout")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quote-character smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure record-field common-lisp:nil
                                    ((name :target-type field-header
                                      :member-name "name")
                                     (mandatory :target-type boolean
                                      :member-name "mandatory"))
                                    (:shape-name "RecordField"))

(smithy/sdk/shapes:define-list record-fields :member field-header)

(smithy/sdk/shapes:define-structure rejected-entity-info common-lisp:nil
                                    ((error-type :target-type
                                      entity-rejection-error-type :required
                                      common-lisp:t :member-name "errorType"))
                                    (:shape-name "RejectedEntityInfo"))

(smithy/sdk/shapes:define-structure rejected-log-events-info common-lisp:nil
                                    ((too-new-log-event-start-index
                                      :target-type log-event-index :member-name
                                      "tooNewLogEventStartIndex")
                                     (too-old-log-event-end-index :target-type
                                      log-event-index :member-name
                                      "tooOldLogEventEndIndex")
                                     (expired-log-event-end-index :target-type
                                      log-event-index :member-name
                                      "expiredLogEventEndIndex"))
                                    (:shape-name "RejectedLogEventsInfo"))

(smithy/sdk/shapes:define-list rename-key-entries :member rename-key-entry)

(smithy/sdk/shapes:define-structure rename-key-entry common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (rename-to :target-type rename-to
                                      :required common-lisp:t :member-name
                                      "renameTo")
                                     (overwrite-if-exists :target-type
                                      overwrite-if-exists :member-name
                                      "overwriteIfExists"))
                                    (:shape-name "RenameKeyEntry"))

(smithy/sdk/shapes:define-structure rename-keys common-lisp:nil
                                    ((entries :target-type rename-key-entries
                                      :required common-lisp:t :member-name
                                      "entries"))
                                    (:shape-name "RenameKeys"))

(smithy/sdk/shapes:define-type rename-to smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-arns :member arn)

(smithy/sdk/shapes:define-union resource-config common-lisp:nil
                                ((open-search-resource-config :target-type
                                  open-search-resource-config :member-name
                                  "openSearchResourceConfig"))
                                (:shape-name "ResourceConfig"))

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-policies :member resource-policy)

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (policy-document :target-type
                                      policy-document :member-name
                                      "policyDocument")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime")
                                     (policy-scope :target-type policy-scope
                                      :member-name "policyScope")
                                     (resource-arn :target-type arn
                                      :member-name "resourceArn")
                                     (revision-id :target-type
                                      expected-revision-id :member-name
                                      "revisionId"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-types :member resource-type)

(smithy/sdk/shapes:define-structure result-field common-lisp:nil
                                    ((field :target-type field :member-name
                                      "field")
                                     (value :target-type value :member-name
                                      "value"))
                                    (:shape-name "ResultField"))

(smithy/sdk/shapes:define-list result-rows :member result-field)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3delivery-configuration common-lisp:nil
                                    ((suffix-path :target-type
                                      delivery-suffix-path :member-name
                                      "suffixPath")
                                     (enable-hive-compatible-path :target-type
                                      boolean :member-name
                                      "enableHiveCompatiblePath"))
                                    (:shape-name "S3DeliveryConfiguration"))

(smithy/sdk/shapes:define-enum scope
    common-lisp:nil
  (:all "ALL"))

(smithy/sdk/shapes:define-structure searched-log-stream common-lisp:nil
                                    ((log-stream-name :target-type
                                      log-stream-name :member-name
                                      "logStreamName")
                                     (searched-completely :target-type
                                      log-stream-searched-completely
                                      :member-name "searchedCompletely"))
                                    (:shape-name "SearchedLogStream"))

(smithy/sdk/shapes:define-list searched-log-streams :member searched-log-stream)

(smithy/sdk/shapes:define-type selection-criteria
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sequence-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error session-streaming-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "SessionStreamingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error session-timeout-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "SessionTimeoutException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure split-string common-lisp:nil
                                    ((entries :target-type split-string-entries
                                      :required common-lisp:t :member-name
                                      "entries"))
                                    (:shape-name "SplitString"))

(smithy/sdk/shapes:define-type split-string-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list split-string-entries :member split-string-entry)

(smithy/sdk/shapes:define-structure split-string-entry common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (delimiter :target-type
                                      split-string-delimiter :required
                                      common-lisp:t :member-name "delimiter"))
                                    (:shape-name "SplitStringEntry"))

(smithy/sdk/shapes:define-enum standard-unit
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

(smithy/sdk/shapes:define-type start-from-head smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list start-live-tail-log-group-identifiers :member
                               log-group-identifier)

(smithy/sdk/shapes:define-input start-live-tail-request common-lisp:nil
                                ((log-group-identifiers :target-type
                                  start-live-tail-log-group-identifiers
                                  :required common-lisp:t :member-name
                                  "logGroupIdentifiers")
                                 (log-stream-names :target-type
                                  input-log-stream-names :member-name
                                  "logStreamNames")
                                 (log-stream-name-prefixes :target-type
                                  input-log-stream-names :member-name
                                  "logStreamNamePrefixes")
                                 (log-event-filter-pattern :target-type
                                  filter-pattern :member-name
                                  "logEventFilterPattern"))
                                (:shape-name "StartLiveTailRequest"))

(smithy/sdk/shapes:define-output start-live-tail-response common-lisp:nil
                                 ((response-stream :target-type
                                   start-live-tail-response-stream :member-name
                                   "responseStream"))
                                 (:shape-name "StartLiveTailResponse"))

(smithy/sdk/shapes:define-union start-live-tail-response-stream common-lisp:nil
                                ((session-start :target-type
                                  live-tail-session-start :member-name
                                  "sessionStart")
                                 (session-update :target-type
                                  live-tail-session-update :member-name
                                  "sessionUpdate")
                                 (session-timeout-exception :target-type
                                  session-timeout-exception :member-name
                                  "SessionTimeoutException")
                                 (session-streaming-exception :target-type
                                  session-streaming-exception :member-name
                                  "SessionStreamingException"))
                                (:shape-name "StartLiveTailResponseStream"))

(smithy/sdk/shapes:define-input start-query-request common-lisp:nil
                                ((query-language :target-type query-language
                                  :member-name "queryLanguage")
                                 (log-group-name :target-type log-group-name
                                  :member-name "logGroupName")
                                 (log-group-names :target-type log-group-names
                                  :member-name "logGroupNames")
                                 (log-group-identifiers :target-type
                                  log-group-identifiers :member-name
                                  "logGroupIdentifiers")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "queryString")
                                 (limit :target-type events-limit :member-name
                                  "limit"))
                                (:shape-name "StartQueryRequest"))

(smithy/sdk/shapes:define-output start-query-response common-lisp:nil
                                 ((query-id :target-type query-id :member-name
                                   "queryId"))
                                 (:shape-name "StartQueryResponse"))

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:active "Active")
  (:suppressed "Suppressed")
  (:baseline "Baseline"))

(smithy/sdk/shapes:define-type stats-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input stop-query-request common-lisp:nil
                                ((query-id :target-type query-id :required
                                  common-lisp:t :member-name "queryId"))
                                (:shape-name "StopQueryRequest"))

(smithy/sdk/shapes:define-output stop-query-response common-lisp:nil
                                 ((success :target-type success :member-name
                                   "success"))
                                 (:shape-name "StopQueryResponse"))

(smithy/sdk/shapes:define-type stored-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure subscription-filter common-lisp:nil
                                    ((filter-name :target-type filter-name
                                      :member-name "filterName")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "logGroupName")
                                     (filter-pattern :target-type
                                      filter-pattern :member-name
                                      "filterPattern")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "destinationArn")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (distribution :target-type distribution
                                      :member-name "distribution")
                                     (apply-on-transformed-logs :target-type
                                      apply-on-transformed-logs :member-name
                                      "applyOnTransformedLogs")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime"))
                                    (:shape-name "SubscriptionFilter"))

(smithy/sdk/shapes:define-list subscription-filters :member subscription-filter)

(smithy/sdk/shapes:define-structure substitute-string common-lisp:nil
                                    ((entries :target-type
                                      substitute-string-entries :required
                                      common-lisp:t :member-name "entries"))
                                    (:shape-name "SubstituteString"))

(smithy/sdk/shapes:define-list substitute-string-entries :member
                               substitute-string-entry)

(smithy/sdk/shapes:define-structure substitute-string-entry common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (from :target-type from-key :required
                                      common-lisp:t :member-name "from")
                                     (to :target-type to-key :required
                                      common-lisp:t :member-name "to"))
                                    (:shape-name "SubstituteStringEntry"))

(smithy/sdk/shapes:define-type success smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure suppression-period common-lisp:nil
                                    ((value :target-type integer :member-name
                                      "value")
                                     (suppression-unit :target-type
                                      suppression-unit :member-name
                                      "suppressionUnit"))
                                    (:shape-name "SuppressionPeriod"))

(smithy/sdk/shapes:define-enum suppression-state
    common-lisp:nil
  (:suppressed "SUPPRESSED")
  (:unsuppressed "UNSUPPRESSED"))

(smithy/sdk/shapes:define-enum suppression-type
    common-lisp:nil
  (:limited "LIMITED")
  (:infinite "INFINITE"))

(smithy/sdk/shapes:define-enum suppression-unit
    common-lisp:nil
  (:seconds "SECONDS")
  (:minutes "MINUTES")
  (:hours "HOURS"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag-key)

(smithy/sdk/shapes:define-input tag-log-group-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagLogGroupRequest"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list test-event-messages :member event-message)

(smithy/sdk/shapes:define-input test-metric-filter-request common-lisp:nil
                                ((filter-pattern :target-type filter-pattern
                                  :required common-lisp:t :member-name
                                  "filterPattern")
                                 (log-event-messages :target-type
                                  test-event-messages :required common-lisp:t
                                  :member-name "logEventMessages"))
                                (:shape-name "TestMetricFilterRequest"))

(smithy/sdk/shapes:define-output test-metric-filter-response common-lisp:nil
                                 ((matches :target-type metric-filter-matches
                                   :member-name "matches"))
                                 (:shape-name "TestMetricFilterResponse"))

(smithy/sdk/shapes:define-input test-transformer-request common-lisp:nil
                                ((transformer-config :target-type processors
                                  :required common-lisp:t :member-name
                                  "transformerConfig")
                                 (log-event-messages :target-type
                                  test-event-messages :required common-lisp:t
                                  :member-name "logEventMessages"))
                                (:shape-name "TestTransformerRequest"))

(smithy/sdk/shapes:define-output test-transformer-response common-lisp:nil
                                 ((transformed-logs :target-type
                                   transformed-logs :member-name
                                   "transformedLogs"))
                                 (:shape-name "TestTransformerResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type to-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type transformed-event-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transformed-log-record common-lisp:nil
                                    ((event-number :target-type event-number
                                      :member-name "eventNumber")
                                     (event-message :target-type event-message
                                      :member-name "eventMessage")
                                     (transformed-event-message :target-type
                                      transformed-event-message :member-name
                                      "transformedEventMessage"))
                                    (:shape-name "TransformedLogRecord"))

(smithy/sdk/shapes:define-list transformed-logs :member transformed-log-record)

(smithy/sdk/shapes:define-structure trim-string common-lisp:nil
                                    ((with-keys :target-type
                                      trim-string-with-keys :required
                                      common-lisp:t :member-name "withKeys"))
                                    (:shape-name "TrimString"))

(smithy/sdk/shapes:define-list trim-string-with-keys :member with-key)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:boolean "boolean")
  (:integer "integer")
  (:double "double")
  (:string "string"))

(smithy/sdk/shapes:define-structure type-converter common-lisp:nil
                                    ((entries :target-type
                                      type-converter-entries :required
                                      common-lisp:t :member-name "entries"))
                                    (:shape-name "TypeConverter"))

(smithy/sdk/shapes:define-list type-converter-entries :member
                               type-converter-entry)

(smithy/sdk/shapes:define-structure type-converter-entry common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "TypeConverterEntry"))

(smithy/sdk/shapes:define-type unmask smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error unrecognized-client-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "UnrecognizedClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-log-group-request common-lisp:nil
                                ((log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "logGroupName")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "UntagLogGroupRequest"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-anomaly-request common-lisp:nil
                                ((anomaly-id :target-type anomaly-id
                                  :member-name "anomalyId")
                                 (pattern-id :target-type pattern-id
                                  :member-name "patternId")
                                 (anomaly-detector-arn :target-type
                                  anomaly-detector-arn :required common-lisp:t
                                  :member-name "anomalyDetectorArn")
                                 (suppression-type :target-type
                                  suppression-type :member-name
                                  "suppressionType")
                                 (suppression-period :target-type
                                  suppression-period :member-name
                                  "suppressionPeriod")
                                 (baseline :target-type baseline :member-name
                                  "baseline"))
                                (:shape-name "UpdateAnomalyRequest"))

(smithy/sdk/shapes:define-input update-delivery-configuration-request
                                common-lisp:nil
                                ((id :target-type delivery-id :required
                                  common-lisp:t :member-name "id")
                                 (record-fields :target-type record-fields
                                  :member-name "recordFields")
                                 (field-delimiter :target-type field-delimiter
                                  :member-name "fieldDelimiter")
                                 (s3delivery-configuration :target-type
                                  s3delivery-configuration :member-name
                                  "s3DeliveryConfiguration"))
                                (:shape-name
                                 "UpdateDeliveryConfigurationRequest"))

(smithy/sdk/shapes:define-output update-delivery-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateDeliveryConfigurationResponse"))

(smithy/sdk/shapes:define-input update-log-anomaly-detector-request
                                common-lisp:nil
                                ((anomaly-detector-arn :target-type
                                  anomaly-detector-arn :required common-lisp:t
                                  :member-name "anomalyDetectorArn")
                                 (evaluation-frequency :target-type
                                  evaluation-frequency :member-name
                                  "evaluationFrequency")
                                 (filter-pattern :target-type filter-pattern
                                  :member-name "filterPattern")
                                 (anomaly-visibility-time :target-type
                                  anomaly-visibility-time :member-name
                                  "anomalyVisibilityTime")
                                 (enabled :target-type boolean :required
                                  common-lisp:t :member-name "enabled"))
                                (:shape-name "UpdateLogAnomalyDetectorRequest"))

(smithy/sdk/shapes:define-structure upper-case-string common-lisp:nil
                                    ((with-keys :target-type
                                      upper-case-string-with-keys :required
                                      common-lisp:t :member-name "withKeys"))
                                    (:shape-name "UpperCaseString"))

(smithy/sdk/shapes:define-list upper-case-string-with-keys :member with-key)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type value-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type with-key smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-kms-key :shape-name
                                       "AssociateKmsKey" :input
                                       associate-kms-key-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation cancel-export-task :shape-name
                                       "CancelExportTask" :input
                                       cancel-export-task-request :output
                                       common-lisp:null :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation create-delivery :shape-name
                                       "CreateDelivery" :input
                                       create-delivery-request :output
                                       create-delivery-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-export-task :shape-name
                                       "CreateExportTask" :input
                                       create-export-task-request :output
                                       create-export-task-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation create-log-anomaly-detector :shape-name
                                       "CreateLogAnomalyDetector" :input
                                       create-log-anomaly-detector-request
                                       :output
                                       create-log-anomaly-detector-response
                                       :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation create-log-group :shape-name
                                       "CreateLogGroup" :input
                                       create-log-group-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation create-log-stream :shape-name
                                       "CreateLogStream" :input
                                       create-log-stream-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-account-policy :shape-name
                                       "DeleteAccountPolicy" :input
                                       delete-account-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-data-protection-policy
                                       :shape-name "DeleteDataProtectionPolicy"
                                       :input
                                       delete-data-protection-policy-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-delivery :shape-name
                                       "DeleteDelivery" :input
                                       delete-delivery-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-delivery-destination :shape-name
                                       "DeleteDeliveryDestination" :input
                                       delete-delivery-destination-request
                                       :output common-lisp:null :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-delivery-destination-policy
                                       :shape-name
                                       "DeleteDeliveryDestinationPolicy" :input
                                       delete-delivery-destination-policy-request
                                       :output common-lisp:null :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-delivery-source :shape-name
                                       "DeleteDeliverySource" :input
                                       delete-delivery-source-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-destination :shape-name
                                       "DeleteDestination" :input
                                       delete-destination-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-index-policy :shape-name
                                       "DeleteIndexPolicy" :input
                                       delete-index-policy-request :output
                                       delete-index-policy-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-integration :shape-name
                                       "DeleteIntegration" :input
                                       delete-integration-request :output
                                       delete-integration-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-log-anomaly-detector :shape-name
                                       "DeleteLogAnomalyDetector" :input
                                       delete-log-anomaly-detector-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-log-group :shape-name
                                       "DeleteLogGroup" :input
                                       delete-log-group-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-log-stream :shape-name
                                       "DeleteLogStream" :input
                                       delete-log-stream-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-metric-filter :shape-name
                                       "DeleteMetricFilter" :input
                                       delete-metric-filter-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-query-definition :shape-name
                                       "DeleteQueryDefinition" :input
                                       delete-query-definition-request :output
                                       delete-query-definition-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-retention-policy :shape-name
                                       "DeleteRetentionPolicy" :input
                                       delete-retention-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-subscription-filter :shape-name
                                       "DeleteSubscriptionFilter" :input
                                       delete-subscription-filter-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-transformer :shape-name
                                       "DeleteTransformer" :input
                                       delete-transformer-request :output
                                       common-lisp:null :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-account-policies :shape-name
                                       "DescribeAccountPolicies" :input
                                       describe-account-policies-request
                                       :output
                                       describe-account-policies-response
                                       :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-configuration-templates
                                       :shape-name
                                       "DescribeConfigurationTemplates" :input
                                       describe-configuration-templates-request
                                       :output
                                       describe-configuration-templates-response
                                       :errors
                                       (resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-deliveries :shape-name
                                       "DescribeDeliveries" :input
                                       describe-deliveries-request :output
                                       describe-deliveries-response :errors
                                       (service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-delivery-destinations
                                       :shape-name
                                       "DescribeDeliveryDestinations" :input
                                       describe-delivery-destinations-request
                                       :output
                                       describe-delivery-destinations-response
                                       :errors
                                       (service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-delivery-sources :shape-name
                                       "DescribeDeliverySources" :input
                                       describe-delivery-sources-request
                                       :output
                                       describe-delivery-sources-response
                                       :errors
                                       (service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-destinations :shape-name
                                       "DescribeDestinations" :input
                                       describe-destinations-request :output
                                       describe-destinations-response :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-export-tasks :shape-name
                                       "DescribeExportTasks" :input
                                       describe-export-tasks-request :output
                                       describe-export-tasks-response :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-field-indexes :shape-name
                                       "DescribeFieldIndexes" :input
                                       describe-field-indexes-request :output
                                       describe-field-indexes-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-index-policies :shape-name
                                       "DescribeIndexPolicies" :input
                                       describe-index-policies-request :output
                                       describe-index-policies-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-log-groups :shape-name
                                       "DescribeLogGroups" :input
                                       describe-log-groups-request :output
                                       describe-log-groups-response :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-log-streams :shape-name
                                       "DescribeLogStreams" :input
                                       describe-log-streams-request :output
                                       describe-log-streams-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-metric-filters :shape-name
                                       "DescribeMetricFilters" :input
                                       describe-metric-filters-request :output
                                       describe-metric-filters-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-queries :shape-name
                                       "DescribeQueries" :input
                                       describe-queries-request :output
                                       describe-queries-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-query-definitions :shape-name
                                       "DescribeQueryDefinitions" :input
                                       describe-query-definitions-request
                                       :output
                                       describe-query-definitions-response
                                       :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-resource-policies :shape-name
                                       "DescribeResourcePolicies" :input
                                       describe-resource-policies-request
                                       :output
                                       describe-resource-policies-response
                                       :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-subscription-filters
                                       :shape-name
                                       "DescribeSubscriptionFilters" :input
                                       describe-subscription-filters-request
                                       :output
                                       describe-subscription-filters-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation disassociate-kms-key :shape-name
                                       "DisassociateKmsKey" :input
                                       disassociate-kms-key-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation filter-log-events :shape-name
                                       "FilterLogEvents" :input
                                       filter-log-events-request :output
                                       filter-log-events-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-data-protection-policy :shape-name
                                       "GetDataProtectionPolicy" :input
                                       get-data-protection-policy-request
                                       :output
                                       get-data-protection-policy-response
                                       :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-delivery :shape-name "GetDelivery"
                                       :input get-delivery-request :output
                                       get-delivery-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-delivery-destination :shape-name
                                       "GetDeliveryDestination" :input
                                       get-delivery-destination-request :output
                                       get-delivery-destination-response
                                       :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-delivery-destination-policy
                                       :shape-name
                                       "GetDeliveryDestinationPolicy" :input
                                       get-delivery-destination-policy-request
                                       :output
                                       get-delivery-destination-policy-response
                                       :errors
                                       (resource-not-found-exception
                                        service-unavailable-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-delivery-source :shape-name
                                       "GetDeliverySource" :input
                                       get-delivery-source-request :output
                                       get-delivery-source-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-integration :shape-name
                                       "GetIntegration" :input
                                       get-integration-request :output
                                       get-integration-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-log-anomaly-detector :shape-name
                                       "GetLogAnomalyDetector" :input
                                       get-log-anomaly-detector-request :output
                                       get-log-anomaly-detector-response
                                       :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-log-events :shape-name
                                       "GetLogEvents" :input
                                       get-log-events-request :output
                                       get-log-events-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-log-group-fields :shape-name
                                       "GetLogGroupFields" :input
                                       get-log-group-fields-request :output
                                       get-log-group-fields-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-log-object :shape-name
                                       "GetLogObject" :input
                                       get-log-object-request :output
                                       get-log-object-response :errors
                                       (access-denied-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :endpoint-host-prefix "streaming-")

(smithy/sdk/operation:define-operation get-log-record :shape-name
                                       "GetLogRecord" :input
                                       get-log-record-request :output
                                       get-log-record-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-query-results :shape-name
                                       "GetQueryResults" :input
                                       get-query-results-request :output
                                       get-query-results-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation get-transformer :shape-name
                                       "GetTransformer" :input
                                       get-transformer-request :output
                                       get-transformer-response :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-anomalies :shape-name
                                       "ListAnomalies" :input
                                       list-anomalies-request :output
                                       list-anomalies-response :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-integrations :shape-name
                                       "ListIntegrations" :input
                                       list-integrations-request :output
                                       list-integrations-response :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-log-anomaly-detectors :shape-name
                                       "ListLogAnomalyDetectors" :input
                                       list-log-anomaly-detectors-request
                                       :output
                                       list-log-anomaly-detectors-response
                                       :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-log-groups :shape-name
                                       "ListLogGroups" :input
                                       list-log-groups-request :output
                                       list-log-groups-response :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-log-groups-for-query :shape-name
                                       "ListLogGroupsForQuery" :input
                                       list-log-groups-for-query-request
                                       :output
                                       list-log-groups-for-query-response
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-tags-log-group :shape-name
                                       "ListTagsLogGroup" :input
                                       list-tags-log-group-request :output
                                       list-tags-log-group-response :errors
                                       (resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-account-policy :shape-name
                                       "PutAccountPolicy" :input
                                       put-account-policy-request :output
                                       put-account-policy-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-data-protection-policy :shape-name
                                       "PutDataProtectionPolicy" :input
                                       put-data-protection-policy-request
                                       :output
                                       put-data-protection-policy-response
                                       :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-delivery-destination :shape-name
                                       "PutDeliveryDestination" :input
                                       put-delivery-destination-request :output
                                       put-delivery-destination-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-delivery-destination-policy
                                       :shape-name
                                       "PutDeliveryDestinationPolicy" :input
                                       put-delivery-destination-policy-request
                                       :output
                                       put-delivery-destination-policy-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-delivery-source :shape-name
                                       "PutDeliverySource" :input
                                       put-delivery-source-request :output
                                       put-delivery-source-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-destination :shape-name
                                       "PutDestination" :input
                                       put-destination-request :output
                                       put-destination-response :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-destination-policy :shape-name
                                       "PutDestinationPolicy" :input
                                       put-destination-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-index-policy :shape-name
                                       "PutIndexPolicy" :input
                                       put-index-policy-request :output
                                       put-index-policy-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-integration :shape-name
                                       "PutIntegration" :input
                                       put-integration-request :output
                                       put-integration-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        service-unavailable-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-log-events :shape-name
                                       "PutLogEvents" :input
                                       put-log-events-request :output
                                       put-log-events-response :errors
                                       (data-already-accepted-exception
                                        invalid-parameter-exception
                                        invalid-sequence-token-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        unrecognized-client-exception))

(smithy/sdk/operation:define-operation put-metric-filter :shape-name
                                       "PutMetricFilter" :input
                                       put-metric-filter-request :output
                                       common-lisp:null :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-query-definition :shape-name
                                       "PutQueryDefinition" :input
                                       put-query-definition-request :output
                                       put-query-definition-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-retention-policy :shape-name
                                       "PutRetentionPolicy" :input
                                       put-retention-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-subscription-filter :shape-name
                                       "PutSubscriptionFilter" :input
                                       put-subscription-filter-request :output
                                       common-lisp:null :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-transformer :shape-name
                                       "PutTransformer" :input
                                       put-transformer-request :output
                                       common-lisp:null :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation start-live-tail :shape-name
                                       "StartLiveTail" :input
                                       start-live-tail-request :output
                                       start-live-tail-response :errors
                                       (access-denied-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :endpoint-host-prefix "streaming-")

(smithy/sdk/operation:define-operation start-query :shape-name "StartQuery"
                                       :input start-query-request :output
                                       start-query-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        malformed-query-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation stop-query :shape-name "StopQuery"
                                       :input stop-query-request :output
                                       stop-query-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation tag-log-group :shape-name "TagLogGroup"
                                       :input tag-log-group-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation test-metric-filter :shape-name
                                       "TestMetricFilter" :input
                                       test-metric-filter-request :output
                                       test-metric-filter-response :errors
                                       (invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation test-transformer :shape-name
                                       "TestTransformer" :input
                                       test-transformer-request :output
                                       test-transformer-response :errors
                                       (invalid-operation-exception
                                        invalid-parameter-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation untag-log-group :shape-name
                                       "UntagLogGroup" :input
                                       untag-log-group-request :output
                                       common-lisp:null :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation update-anomaly :shape-name
                                       "UpdateAnomaly" :input
                                       update-anomaly-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation update-delivery-configuration
                                       :shape-name
                                       "UpdateDeliveryConfiguration" :input
                                       update-delivery-configuration-request
                                       :output
                                       update-delivery-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-log-anomaly-detector :shape-name
                                       "UpdateLogAnomalyDetector" :input
                                       update-log-anomaly-detector-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-exception
                                        operation-aborted-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))
