(uiop/package:define-package #:pira/xray (:use)
                             (:export #:awsxray #:alias #:alias-list
                              #:alias-names #:amazon-resource-name
                              #:annotation-key #:annotation-value #:annotations
                              #:anomalous-service #:anomalous-service-list
                              #:attribute-key #:attribute-map #:attribute-value
                              #:availability-zone-detail
                              #:backend-connection-errors #:batch-get-traces
                              #:boolean #:borrow-count #:cancel-trace-retrieval
                              #:client-id #:create-group #:create-sampling-rule
                              #:delete-group #:delete-resource-policy
                              #:delete-sampling-rule #:double #:ec2instance-id
                              #:edge #:edge-list #:edge-statistics
                              #:encryption-config #:encryption-key-id
                              #:encryption-status #:encryption-type
                              #:entity-selector-expression #:error-message
                              #:error-root-cause #:error-root-cause-entity
                              #:error-root-cause-entity-path
                              #:error-root-cause-service
                              #:error-root-cause-services #:error-root-causes
                              #:error-statistics #:event-summary-text
                              #:fault-root-cause #:fault-root-cause-entity
                              #:fault-root-cause-entity-path
                              #:fault-root-cause-service
                              #:fault-root-cause-services #:fault-root-causes
                              #:fault-statistics #:filter-expression
                              #:fixed-rate #:forecast-statistics
                              #:get-encryption-config #:get-group #:get-groups
                              #:get-groups-next-token #:get-indexing-rules
                              #:get-insight #:get-insight-events
                              #:get-insight-events-max-results
                              #:get-insight-impact-graph
                              #:get-insight-summaries
                              #:get-insight-summaries-max-results
                              #:get-retrieved-traces-graph #:get-sampling-rules
                              #:get-sampling-statistic-summaries
                              #:get-sampling-targets #:get-service-graph
                              #:get-time-series-service-statistics
                              #:get-trace-graph #:get-trace-segment-destination
                              #:get-trace-summaries #:graph-link #:group
                              #:group-arn #:group-name #:group-summary
                              #:group-summary-list #:httpmethod #:histogram
                              #:histogram-entry #:host #:hostname #:http
                              #:indexing-rule #:indexing-rule-list
                              #:indexing-rule-value
                              #:indexing-rule-value-update #:insight
                              #:insight-category #:insight-category-list
                              #:insight-event #:insight-event-list #:insight-id
                              #:insight-impact-graph-edge
                              #:insight-impact-graph-edge-list
                              #:insight-impact-graph-service
                              #:insight-impact-graph-service-list
                              #:insight-state #:insight-state-list
                              #:insight-summary #:insight-summary-list
                              #:insight-summary-text #:insights-configuration
                              #:instance-id-detail #:integer #:links-list
                              #:list-resource-policies #:list-retrieved-traces
                              #:list-tags-for-resource #:nullable-boolean
                              #:nullable-double #:nullable-integer
                              #:nullable-long #:policy-document #:policy-name
                              #:policy-revision-id #:priority
                              #:probabilistic-rule-value
                              #:probabilistic-rule-value-update
                              #:put-encryption-config #:put-resource-policy
                              #:put-telemetry-records #:put-trace-segments
                              #:request-count #:request-impact-statistics
                              #:reservoir-size #:resource-arn
                              #:resource-arndetail #:resource-policy
                              #:resource-policy-list
                              #:resource-policy-next-token
                              #:response-time-root-cause
                              #:response-time-root-cause-entity
                              #:response-time-root-cause-entity-path
                              #:response-time-root-cause-service
                              #:response-time-root-cause-services
                              #:response-time-root-causes #:retrieval-status
                              #:retrieval-token #:retrieved-service
                              #:retrieved-services-list #:retrieved-trace
                              #:root-cause-exception #:root-cause-exceptions
                              #:rule-name #:sampled-count #:sampling-rule
                              #:sampling-rule-record
                              #:sampling-rule-record-list
                              #:sampling-rule-update
                              #:sampling-statistic-summary
                              #:sampling-statistic-summary-list
                              #:sampling-statistics-document
                              #:sampling-statistics-document-list
                              #:sampling-strategy #:sampling-strategy-name
                              #:sampling-target-document
                              #:sampling-target-document-list #:segment
                              #:segment-document #:segment-id #:segment-list
                              #:service #:service-id #:service-ids
                              #:service-list #:service-name #:service-names
                              #:service-statistics #:service-type #:span
                              #:span-document #:span-id #:span-list
                              #:start-trace-retrieval #:string #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:telemetry-record
                              #:telemetry-record-list #:time-range-type
                              #:time-series-service-statistics
                              #:time-series-service-statistics-list #:timestamp
                              #:token #:trace #:trace-availability-zones
                              #:trace-format-type #:trace-id #:trace-id-list
                              #:trace-id-list-for-retrieval
                              #:trace-instance-ids #:trace-list
                              #:trace-resource-arns #:trace-segment-destination
                              #:trace-segment-destination-status
                              #:trace-segment-document
                              #:trace-segment-document-list #:trace-span-list
                              #:trace-summary #:trace-summary-list #:trace-user
                              #:trace-users #:urlpath #:unprocessed-statistics
                              #:unprocessed-statistics-list
                              #:unprocessed-trace-id-list
                              #:unprocessed-trace-segment
                              #:unprocessed-trace-segment-list #:untag-resource
                              #:update-group #:update-indexing-rule
                              #:update-sampling-rule
                              #:update-trace-segment-destination
                              #:value-with-service-ids
                              #:values-with-service-ids #:version))
(common-lisp:in-package #:pira/xray)

(smithy/sdk/service:define-service awsxray :shape-name "AWSXRay" :version
                                   "2016-04-12" :title "AWS X-Ray" :traits
                                   '(("aws.api#service" ("sdkId" . "XRay")
                                      ("arnNamespace" . "xray")
                                      ("cloudFormationName" . "XRay")
                                      ("cloudTrailEventSource"
                                       . "xray.amazonaws.com")
                                      ("endpointPrefix" . "xray"))
                                     ("aws.auth#sigv4" ("name" . "xray"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure alias common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (names :target-type alias-names
                                      :member-name "Names")
                                     (type :target-type string :member-name
                                      "Type"))
                                    (:shape-name "Alias"))

(smithy/sdk/shapes:define-list alias-list :member alias)

(smithy/sdk/shapes:define-list alias-names :member string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type annotation-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union annotation-value common-lisp:nil
                                ((number-value :target-type nullable-double
                                  :member-name "NumberValue")
                                 (boolean-value :target-type nullable-boolean
                                  :member-name "BooleanValue")
                                 (string-value :target-type string :member-name
                                  "StringValue"))
                                (:shape-name "AnnotationValue"))

(smithy/sdk/shapes:define-map annotations :key annotation-key :value
                              values-with-service-ids)

(smithy/sdk/shapes:define-structure anomalous-service common-lisp:nil
                                    ((service-id :target-type service-id
                                      :member-name "ServiceId"))
                                    (:shape-name "AnomalousService"))

(smithy/sdk/shapes:define-list anomalous-service-list :member anomalous-service)

(smithy/sdk/shapes:define-type attribute-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attribute-map :key attribute-key :value
                              attribute-value)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure availability-zone-detail common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "AvailabilityZoneDetail"))

(smithy/sdk/shapes:define-structure backend-connection-errors common-lisp:nil
                                    ((timeout-count :target-type
                                      nullable-integer :member-name
                                      "TimeoutCount")
                                     (connection-refused-count :target-type
                                      nullable-integer :member-name
                                      "ConnectionRefusedCount")
                                     (httpcode4xxcount :target-type
                                      nullable-integer :member-name
                                      "HTTPCode4XXCount")
                                     (httpcode5xxcount :target-type
                                      nullable-integer :member-name
                                      "HTTPCode5XXCount")
                                     (unknown-host-count :target-type
                                      nullable-integer :member-name
                                      "UnknownHostCount")
                                     (other-count :target-type nullable-integer
                                      :member-name "OtherCount"))
                                    (:shape-name "BackendConnectionErrors"))

(smithy/sdk/shapes:define-input batch-get-traces-request common-lisp:nil
                                ((trace-ids :target-type trace-id-list
                                  :required common-lisp:t :member-name
                                  "TraceIds")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "BatchGetTracesRequest"))

(smithy/sdk/shapes:define-output batch-get-traces-result common-lisp:nil
                                 ((traces :target-type trace-list :member-name
                                   "Traces")
                                  (unprocessed-trace-ids :target-type
                                   unprocessed-trace-id-list :member-name
                                   "UnprocessedTraceIds")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "BatchGetTracesResult"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type borrow-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input cancel-trace-retrieval-request common-lisp:nil
                                ((retrieval-token :target-type retrieval-token
                                  :required common-lisp:t :member-name
                                  "RetrievalToken"))
                                (:shape-name "CancelTraceRetrievalRequest"))

(smithy/sdk/shapes:define-output cancel-trace-retrieval-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelTraceRetrievalResult"))

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((group-name :target-type group-name :required
                                  common-lisp:t :member-name "GroupName")
                                 (filter-expression :target-type
                                  filter-expression :member-name
                                  "FilterExpression")
                                 (insights-configuration :target-type
                                  insights-configuration :member-name
                                  "InsightsConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-result common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "CreateGroupResult"))

(smithy/sdk/shapes:define-input create-sampling-rule-request common-lisp:nil
                                ((sampling-rule :target-type sampling-rule
                                  :required common-lisp:t :member-name
                                  "SamplingRule")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateSamplingRuleRequest"))

(smithy/sdk/shapes:define-output create-sampling-rule-result common-lisp:nil
                                 ((sampling-rule-record :target-type
                                   sampling-rule-record :member-name
                                   "SamplingRuleRecord"))
                                 (:shape-name "CreateSamplingRuleResult"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group-arn :target-type group-arn :member-name
                                  "GroupARN"))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-output delete-group-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGroupResult"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResult"))

(smithy/sdk/shapes:define-input delete-sampling-rule-request common-lisp:nil
                                ((rule-name :target-type string :member-name
                                  "RuleName")
                                 (rule-arn :target-type string :member-name
                                  "RuleARN"))
                                (:shape-name "DeleteSamplingRuleRequest"))

(smithy/sdk/shapes:define-output delete-sampling-rule-result common-lisp:nil
                                 ((sampling-rule-record :target-type
                                   sampling-rule-record :member-name
                                   "SamplingRuleRecord"))
                                 (:shape-name "DeleteSamplingRuleResult"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type ec2instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure edge common-lisp:nil
                                    ((reference-id :target-type
                                      nullable-integer :member-name
                                      "ReferenceId")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (summary-statistics :target-type
                                      edge-statistics :member-name
                                      "SummaryStatistics")
                                     (response-time-histogram :target-type
                                      histogram :member-name
                                      "ResponseTimeHistogram")
                                     (aliases :target-type alias-list
                                      :member-name "Aliases")
                                     (edge-type :target-type string
                                      :member-name "EdgeType")
                                     (received-event-age-histogram :target-type
                                      histogram :member-name
                                      "ReceivedEventAgeHistogram"))
                                    (:shape-name "Edge"))

(smithy/sdk/shapes:define-list edge-list :member edge)

(smithy/sdk/shapes:define-structure edge-statistics common-lisp:nil
                                    ((ok-count :target-type nullable-long
                                      :member-name "OkCount")
                                     (error-statistics :target-type
                                      error-statistics :member-name
                                      "ErrorStatistics")
                                     (fault-statistics :target-type
                                      fault-statistics :member-name
                                      "FaultStatistics")
                                     (total-count :target-type nullable-long
                                      :member-name "TotalCount")
                                     (total-response-time :target-type
                                      nullable-double :member-name
                                      "TotalResponseTime"))
                                    (:shape-name "EdgeStatistics"))

(smithy/sdk/shapes:define-structure encryption-config common-lisp:nil
                                    ((key-id :target-type string :member-name
                                      "KeyId")
                                     (status :target-type encryption-status
                                      :member-name "Status")
                                     (type :target-type encryption-type
                                      :member-name "Type"))
                                    (:shape-name "EncryptionConfig"))

(smithy/sdk/shapes:define-type encryption-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-status
    common-lisp:nil
  (:updating "UPDATING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:none "NONE")
  (:kms "KMS"))

(smithy/sdk/shapes:define-type entity-selector-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-root-cause common-lisp:nil
                                    ((services :target-type
                                      error-root-cause-services :member-name
                                      "Services")
                                     (client-impacting :target-type
                                      nullable-boolean :member-name
                                      "ClientImpacting"))
                                    (:shape-name "ErrorRootCause"))

(smithy/sdk/shapes:define-structure error-root-cause-entity common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (exceptions :target-type
                                      root-cause-exceptions :member-name
                                      "Exceptions")
                                     (remote :target-type nullable-boolean
                                      :member-name "Remote"))
                                    (:shape-name "ErrorRootCauseEntity"))

(smithy/sdk/shapes:define-list error-root-cause-entity-path :member
                               error-root-cause-entity)

(smithy/sdk/shapes:define-structure error-root-cause-service common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (names :target-type service-names
                                      :member-name "Names")
                                     (type :target-type string :member-name
                                      "Type")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (entity-path :target-type
                                      error-root-cause-entity-path :member-name
                                      "EntityPath")
                                     (inferred :target-type nullable-boolean
                                      :member-name "Inferred"))
                                    (:shape-name "ErrorRootCauseService"))

(smithy/sdk/shapes:define-list error-root-cause-services :member
                               error-root-cause-service)

(smithy/sdk/shapes:define-list error-root-causes :member error-root-cause)

(smithy/sdk/shapes:define-structure error-statistics common-lisp:nil
                                    ((throttle-count :target-type nullable-long
                                      :member-name "ThrottleCount")
                                     (other-count :target-type nullable-long
                                      :member-name "OtherCount")
                                     (total-count :target-type nullable-long
                                      :member-name "TotalCount"))
                                    (:shape-name "ErrorStatistics"))

(smithy/sdk/shapes:define-type event-summary-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fault-root-cause common-lisp:nil
                                    ((services :target-type
                                      fault-root-cause-services :member-name
                                      "Services")
                                     (client-impacting :target-type
                                      nullable-boolean :member-name
                                      "ClientImpacting"))
                                    (:shape-name "FaultRootCause"))

(smithy/sdk/shapes:define-structure fault-root-cause-entity common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (exceptions :target-type
                                      root-cause-exceptions :member-name
                                      "Exceptions")
                                     (remote :target-type nullable-boolean
                                      :member-name "Remote"))
                                    (:shape-name "FaultRootCauseEntity"))

(smithy/sdk/shapes:define-list fault-root-cause-entity-path :member
                               fault-root-cause-entity)

(smithy/sdk/shapes:define-structure fault-root-cause-service common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (names :target-type service-names
                                      :member-name "Names")
                                     (type :target-type string :member-name
                                      "Type")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (entity-path :target-type
                                      fault-root-cause-entity-path :member-name
                                      "EntityPath")
                                     (inferred :target-type nullable-boolean
                                      :member-name "Inferred"))
                                    (:shape-name "FaultRootCauseService"))

(smithy/sdk/shapes:define-list fault-root-cause-services :member
                               fault-root-cause-service)

(smithy/sdk/shapes:define-list fault-root-causes :member fault-root-cause)

(smithy/sdk/shapes:define-structure fault-statistics common-lisp:nil
                                    ((other-count :target-type nullable-long
                                      :member-name "OtherCount")
                                     (total-count :target-type nullable-long
                                      :member-name "TotalCount"))
                                    (:shape-name "FaultStatistics"))

(smithy/sdk/shapes:define-type filter-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fixed-rate smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure forecast-statistics common-lisp:nil
                                    ((fault-count-high :target-type
                                      nullable-long :member-name
                                      "FaultCountHigh")
                                     (fault-count-low :target-type
                                      nullable-long :member-name
                                      "FaultCountLow"))
                                    (:shape-name "ForecastStatistics"))

(smithy/sdk/shapes:define-input get-encryption-config-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetEncryptionConfigRequest"))

(smithy/sdk/shapes:define-output get-encryption-config-result common-lisp:nil
                                 ((encryption-config :target-type
                                   encryption-config :member-name
                                   "EncryptionConfig"))
                                 (:shape-name "GetEncryptionConfigResult"))

(smithy/sdk/shapes:define-input get-group-request common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group-arn :target-type group-arn :member-name
                                  "GroupARN"))
                                (:shape-name "GetGroupRequest"))

(smithy/sdk/shapes:define-output get-group-result common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "GetGroupResult"))

(smithy/sdk/shapes:define-type get-groups-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-groups-request common-lisp:nil
                                ((next-token :target-type get-groups-next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetGroupsRequest"))

(smithy/sdk/shapes:define-output get-groups-result common-lisp:nil
                                 ((groups :target-type group-summary-list
                                   :member-name "Groups")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetGroupsResult"))

(smithy/sdk/shapes:define-input get-indexing-rules-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetIndexingRulesRequest"))

(smithy/sdk/shapes:define-output get-indexing-rules-result common-lisp:nil
                                 ((indexing-rules :target-type
                                   indexing-rule-list :member-name
                                   "IndexingRules")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetIndexingRulesResult"))

(smithy/sdk/shapes:define-type get-insight-events-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-insight-events-request common-lisp:nil
                                ((insight-id :target-type insight-id :required
                                  common-lisp:t :member-name "InsightId")
                                 (max-results :target-type
                                  get-insight-events-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "GetInsightEventsRequest"))

(smithy/sdk/shapes:define-output get-insight-events-result common-lisp:nil
                                 ((insight-events :target-type
                                   insight-event-list :member-name
                                   "InsightEvents")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetInsightEventsResult"))

(smithy/sdk/shapes:define-input get-insight-impact-graph-request
                                common-lisp:nil
                                ((insight-id :target-type insight-id :required
                                  common-lisp:t :member-name "InsightId")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "GetInsightImpactGraphRequest"))

(smithy/sdk/shapes:define-output get-insight-impact-graph-result
                                 common-lisp:nil
                                 ((insight-id :target-type insight-id
                                   :member-name "InsightId")
                                  (start-time :target-type timestamp
                                   :member-name "StartTime")
                                  (end-time :target-type timestamp :member-name
                                   "EndTime")
                                  (service-graph-start-time :target-type
                                   timestamp :member-name
                                   "ServiceGraphStartTime")
                                  (service-graph-end-time :target-type
                                   timestamp :member-name
                                   "ServiceGraphEndTime")
                                  (services :target-type
                                   insight-impact-graph-service-list
                                   :member-name "Services")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetInsightImpactGraphResult"))

(smithy/sdk/shapes:define-input get-insight-request common-lisp:nil
                                ((insight-id :target-type insight-id :required
                                  common-lisp:t :member-name "InsightId"))
                                (:shape-name "GetInsightRequest"))

(smithy/sdk/shapes:define-output get-insight-result common-lisp:nil
                                 ((insight :target-type insight :member-name
                                   "Insight"))
                                 (:shape-name "GetInsightResult"))

(smithy/sdk/shapes:define-type get-insight-summaries-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-insight-summaries-request common-lisp:nil
                                ((states :target-type insight-state-list
                                  :member-name "States")
                                 (group-arn :target-type group-arn :member-name
                                  "GroupARN")
                                 (group-name :target-type group-name
                                  :member-name "GroupName")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (max-results :target-type
                                  get-insight-summaries-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "GetInsightSummariesRequest"))

(smithy/sdk/shapes:define-output get-insight-summaries-result common-lisp:nil
                                 ((insight-summaries :target-type
                                   insight-summary-list :member-name
                                   "InsightSummaries")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetInsightSummariesResult"))

(smithy/sdk/shapes:define-input get-retrieved-traces-graph-request
                                common-lisp:nil
                                ((retrieval-token :target-type retrieval-token
                                  :required common-lisp:t :member-name
                                  "RetrievalToken")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetRetrievedTracesGraphRequest"))

(smithy/sdk/shapes:define-output get-retrieved-traces-graph-result
                                 common-lisp:nil
                                 ((retrieval-status :target-type
                                   retrieval-status :member-name
                                   "RetrievalStatus")
                                  (services :target-type
                                   retrieved-services-list :member-name
                                   "Services")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetRetrievedTracesGraphResult"))

(smithy/sdk/shapes:define-input get-sampling-rules-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetSamplingRulesRequest"))

(smithy/sdk/shapes:define-output get-sampling-rules-result common-lisp:nil
                                 ((sampling-rule-records :target-type
                                   sampling-rule-record-list :member-name
                                   "SamplingRuleRecords")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetSamplingRulesResult"))

(smithy/sdk/shapes:define-input get-sampling-statistic-summaries-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "GetSamplingStatisticSummariesRequest"))

(smithy/sdk/shapes:define-output get-sampling-statistic-summaries-result
                                 common-lisp:nil
                                 ((sampling-statistic-summaries :target-type
                                   sampling-statistic-summary-list :member-name
                                   "SamplingStatisticSummaries")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetSamplingStatisticSummariesResult"))

(smithy/sdk/shapes:define-input get-sampling-targets-request common-lisp:nil
                                ((sampling-statistics-documents :target-type
                                  sampling-statistics-document-list :required
                                  common-lisp:t :member-name
                                  "SamplingStatisticsDocuments"))
                                (:shape-name "GetSamplingTargetsRequest"))

(smithy/sdk/shapes:define-output get-sampling-targets-result common-lisp:nil
                                 ((sampling-target-documents :target-type
                                   sampling-target-document-list :member-name
                                   "SamplingTargetDocuments")
                                  (last-rule-modification :target-type
                                   timestamp :member-name
                                   "LastRuleModification")
                                  (unprocessed-statistics :target-type
                                   unprocessed-statistics-list :member-name
                                   "UnprocessedStatistics"))
                                 (:shape-name "GetSamplingTargetsResult"))

(smithy/sdk/shapes:define-input get-service-graph-request common-lisp:nil
                                ((start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group-arn :target-type group-arn :member-name
                                  "GroupARN")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetServiceGraphRequest"))

(smithy/sdk/shapes:define-output get-service-graph-result common-lisp:nil
                                 ((start-time :target-type timestamp
                                   :member-name "StartTime")
                                  (end-time :target-type timestamp :member-name
                                   "EndTime")
                                  (services :target-type service-list
                                   :member-name "Services")
                                  (contains-old-group-versions :target-type
                                   boolean :member-name
                                   "ContainsOldGroupVersions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetServiceGraphResult"))

(smithy/sdk/shapes:define-input get-time-series-service-statistics-request
                                common-lisp:nil
                                ((start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group-arn :target-type group-arn :member-name
                                  "GroupARN")
                                 (entity-selector-expression :target-type
                                  entity-selector-expression :member-name
                                  "EntitySelectorExpression")
                                 (period :target-type nullable-integer
                                  :member-name "Period")
                                 (forecast-statistics :target-type
                                  nullable-boolean :member-name
                                  "ForecastStatistics")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "GetTimeSeriesServiceStatisticsRequest"))

(smithy/sdk/shapes:define-output get-time-series-service-statistics-result
                                 common-lisp:nil
                                 ((time-series-service-statistics :target-type
                                   time-series-service-statistics-list
                                   :member-name "TimeSeriesServiceStatistics")
                                  (contains-old-group-versions :target-type
                                   boolean :member-name
                                   "ContainsOldGroupVersions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetTimeSeriesServiceStatisticsResult"))

(smithy/sdk/shapes:define-input get-trace-graph-request common-lisp:nil
                                ((trace-ids :target-type trace-id-list
                                  :required common-lisp:t :member-name
                                  "TraceIds")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetTraceGraphRequest"))

(smithy/sdk/shapes:define-output get-trace-graph-result common-lisp:nil
                                 ((services :target-type service-list
                                   :member-name "Services")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetTraceGraphResult"))

(smithy/sdk/shapes:define-input get-trace-segment-destination-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetTraceSegmentDestinationRequest"))

(smithy/sdk/shapes:define-output get-trace-segment-destination-result
                                 common-lisp:nil
                                 ((destination :target-type
                                   trace-segment-destination :member-name
                                   "Destination")
                                  (status :target-type
                                   trace-segment-destination-status
                                   :member-name "Status"))
                                 (:shape-name
                                  "GetTraceSegmentDestinationResult"))

(smithy/sdk/shapes:define-input get-trace-summaries-request common-lisp:nil
                                ((start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime")
                                 (time-range-type :target-type time-range-type
                                  :member-name "TimeRangeType")
                                 (sampling :target-type nullable-boolean
                                  :member-name "Sampling")
                                 (sampling-strategy :target-type
                                  sampling-strategy :member-name
                                  "SamplingStrategy")
                                 (filter-expression :target-type
                                  filter-expression :member-name
                                  "FilterExpression")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetTraceSummariesRequest"))

(smithy/sdk/shapes:define-output get-trace-summaries-result common-lisp:nil
                                 ((trace-summaries :target-type
                                   trace-summary-list :member-name
                                   "TraceSummaries")
                                  (approximate-time :target-type timestamp
                                   :member-name "ApproximateTime")
                                  (traces-processed-count :target-type
                                   nullable-long :member-name
                                   "TracesProcessedCount")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetTraceSummariesResult"))

(smithy/sdk/shapes:define-structure graph-link common-lisp:nil
                                    ((reference-type :target-type string
                                      :member-name "ReferenceType")
                                     (source-trace-id :target-type string
                                      :member-name "SourceTraceId")
                                     (destination-trace-ids :target-type
                                      trace-id-list :member-name
                                      "DestinationTraceIds"))
                                    (:shape-name "GraphLink"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((group-name :target-type string
                                      :member-name "GroupName")
                                     (group-arn :target-type string
                                      :member-name "GroupARN")
                                     (filter-expression :target-type string
                                      :member-name "FilterExpression")
                                     (insights-configuration :target-type
                                      insights-configuration :member-name
                                      "InsightsConfiguration"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-type group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-summary common-lisp:nil
                                    ((group-name :target-type string
                                      :member-name "GroupName")
                                     (group-arn :target-type string
                                      :member-name "GroupARN")
                                     (filter-expression :target-type string
                                      :member-name "FilterExpression")
                                     (insights-configuration :target-type
                                      insights-configuration :member-name
                                      "InsightsConfiguration"))
                                    (:shape-name "GroupSummary"))

(smithy/sdk/shapes:define-list group-summary-list :member group-summary)

(smithy/sdk/shapes:define-type httpmethod smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list histogram :member histogram-entry)

(smithy/sdk/shapes:define-structure histogram-entry common-lisp:nil
                                    ((value :target-type double :member-name
                                      "Value")
                                     (count :target-type integer :member-name
                                      "Count"))
                                    (:shape-name "HistogramEntry"))

(smithy/sdk/shapes:define-type host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http common-lisp:nil
                                    ((http-url :target-type string :member-name
                                      "HttpURL")
                                     (http-status :target-type nullable-integer
                                      :member-name "HttpStatus")
                                     (http-method :target-type string
                                      :member-name "HttpMethod")
                                     (user-agent :target-type string
                                      :member-name "UserAgent")
                                     (client-ip :target-type string
                                      :member-name "ClientIp"))
                                    (:shape-name "Http"))

(smithy/sdk/shapes:define-structure indexing-rule common-lisp:nil
                                    ((name :target-type rule-name :member-name
                                      "Name")
                                     (modified-at :target-type timestamp
                                      :member-name "ModifiedAt")
                                     (rule :target-type indexing-rule-value
                                      :member-name "Rule"))
                                    (:shape-name "IndexingRule"))

(smithy/sdk/shapes:define-list indexing-rule-list :member indexing-rule)

(smithy/sdk/shapes:define-union indexing-rule-value common-lisp:nil
                                ((probabilistic :target-type
                                  probabilistic-rule-value :member-name
                                  "Probabilistic"))
                                (:shape-name "IndexingRuleValue"))

(smithy/sdk/shapes:define-union indexing-rule-value-update common-lisp:nil
                                ((probabilistic :target-type
                                  probabilistic-rule-value-update :member-name
                                  "Probabilistic"))
                                (:shape-name "IndexingRuleValueUpdate"))

(smithy/sdk/shapes:define-structure insight common-lisp:nil
                                    ((insight-id :target-type insight-id
                                      :member-name "InsightId")
                                     (group-arn :target-type group-arn
                                      :member-name "GroupARN")
                                     (group-name :target-type group-name
                                      :member-name "GroupName")
                                     (root-cause-service-id :target-type
                                      service-id :member-name
                                      "RootCauseServiceId")
                                     (categories :target-type
                                      insight-category-list :member-name
                                      "Categories")
                                     (state :target-type insight-state
                                      :member-name "State")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (summary :target-type insight-summary-text
                                      :member-name "Summary")
                                     (client-request-impact-statistics
                                      :target-type request-impact-statistics
                                      :member-name
                                      "ClientRequestImpactStatistics")
                                     (root-cause-service-request-impact-statistics
                                      :target-type request-impact-statistics
                                      :member-name
                                      "RootCauseServiceRequestImpactStatistics")
                                     (top-anomalous-services :target-type
                                      anomalous-service-list :member-name
                                      "TopAnomalousServices"))
                                    (:shape-name "Insight"))

(smithy/sdk/shapes:define-enum insight-category
    common-lisp:nil
  (:fault "FAULT"))

(smithy/sdk/shapes:define-list insight-category-list :member insight-category)

(smithy/sdk/shapes:define-structure insight-event common-lisp:nil
                                    ((summary :target-type event-summary-text
                                      :member-name "Summary")
                                     (event-time :target-type timestamp
                                      :member-name "EventTime")
                                     (client-request-impact-statistics
                                      :target-type request-impact-statistics
                                      :member-name
                                      "ClientRequestImpactStatistics")
                                     (root-cause-service-request-impact-statistics
                                      :target-type request-impact-statistics
                                      :member-name
                                      "RootCauseServiceRequestImpactStatistics")
                                     (top-anomalous-services :target-type
                                      anomalous-service-list :member-name
                                      "TopAnomalousServices"))
                                    (:shape-name "InsightEvent"))

(smithy/sdk/shapes:define-list insight-event-list :member insight-event)

(smithy/sdk/shapes:define-type insight-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insight-impact-graph-edge common-lisp:nil
                                    ((reference-id :target-type
                                      nullable-integer :member-name
                                      "ReferenceId"))
                                    (:shape-name "InsightImpactGraphEdge"))

(smithy/sdk/shapes:define-list insight-impact-graph-edge-list :member
                               insight-impact-graph-edge)

(smithy/sdk/shapes:define-structure insight-impact-graph-service
                                    common-lisp:nil
                                    ((reference-id :target-type
                                      nullable-integer :member-name
                                      "ReferenceId")
                                     (type :target-type string :member-name
                                      "Type")
                                     (name :target-type string :member-name
                                      "Name")
                                     (names :target-type service-names
                                      :member-name "Names")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (edges :target-type
                                      insight-impact-graph-edge-list
                                      :member-name "Edges"))
                                    (:shape-name "InsightImpactGraphService"))

(smithy/sdk/shapes:define-list insight-impact-graph-service-list :member
                               insight-impact-graph-service)

(smithy/sdk/shapes:define-enum insight-state
    common-lisp:nil
  (:active "ACTIVE")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-list insight-state-list :member insight-state)

(smithy/sdk/shapes:define-structure insight-summary common-lisp:nil
                                    ((insight-id :target-type insight-id
                                      :member-name "InsightId")
                                     (group-arn :target-type group-arn
                                      :member-name "GroupARN")
                                     (group-name :target-type group-name
                                      :member-name "GroupName")
                                     (root-cause-service-id :target-type
                                      service-id :member-name
                                      "RootCauseServiceId")
                                     (categories :target-type
                                      insight-category-list :member-name
                                      "Categories")
                                     (state :target-type insight-state
                                      :member-name "State")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (summary :target-type insight-summary-text
                                      :member-name "Summary")
                                     (client-request-impact-statistics
                                      :target-type request-impact-statistics
                                      :member-name
                                      "ClientRequestImpactStatistics")
                                     (root-cause-service-request-impact-statistics
                                      :target-type request-impact-statistics
                                      :member-name
                                      "RootCauseServiceRequestImpactStatistics")
                                     (top-anomalous-services :target-type
                                      anomalous-service-list :member-name
                                      "TopAnomalousServices")
                                     (last-update-time :target-type timestamp
                                      :member-name "LastUpdateTime"))
                                    (:shape-name "InsightSummary"))

(smithy/sdk/shapes:define-list insight-summary-list :member insight-summary)

(smithy/sdk/shapes:define-type insight-summary-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insights-configuration common-lisp:nil
                                    ((insights-enabled :target-type
                                      nullable-boolean :member-name
                                      "InsightsEnabled")
                                     (notifications-enabled :target-type
                                      nullable-boolean :member-name
                                      "NotificationsEnabled"))
                                    (:shape-name "InsightsConfiguration"))

(smithy/sdk/shapes:define-structure instance-id-detail common-lisp:nil
                                    ((id :target-type string :member-name
                                      "Id"))
                                    (:shape-name "InstanceIdDetail"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-policy-revision-id-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidPolicyRevisionIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list links-list :member graph-link)

(smithy/sdk/shapes:define-input list-resource-policies-request common-lisp:nil
                                ((next-token :target-type
                                  resource-policy-next-token :member-name
                                  "NextToken"))
                                (:shape-name "ListResourcePoliciesRequest"))

(smithy/sdk/shapes:define-output list-resource-policies-result common-lisp:nil
                                 ((resource-policies :target-type
                                   resource-policy-list :member-name
                                   "ResourcePolicies")
                                  (next-token :target-type
                                   resource-policy-next-token :member-name
                                   "NextToken"))
                                 (:shape-name "ListResourcePoliciesResult"))

(smithy/sdk/shapes:define-input list-retrieved-traces-request common-lisp:nil
                                ((retrieval-token :target-type retrieval-token
                                  :required common-lisp:t :member-name
                                  "RetrievalToken")
                                 (trace-format :target-type trace-format-type
                                  :member-name "TraceFormat")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListRetrievedTracesRequest"))

(smithy/sdk/shapes:define-output list-retrieved-traces-result common-lisp:nil
                                 ((retrieval-status :target-type
                                   retrieval-status :member-name
                                   "RetrievalStatus")
                                  (trace-format :target-type trace-format-type
                                   :member-name "TraceFormat")
                                  (traces :target-type trace-span-list
                                   :member-name "Traces")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListRetrievedTracesResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-error lockout-prevention-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LockoutPreventionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type nullable-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error policy-count-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "PolicyCountLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "PolicySizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure probabilistic-rule-value common-lisp:nil
                                    ((desired-sampling-percentage :target-type
                                      nullable-double :required common-lisp:t
                                      :member-name "DesiredSamplingPercentage")
                                     (actual-sampling-percentage :target-type
                                      nullable-double :member-name
                                      "ActualSamplingPercentage"))
                                    (:shape-name "ProbabilisticRuleValue"))

(smithy/sdk/shapes:define-structure probabilistic-rule-value-update
                                    common-lisp:nil
                                    ((desired-sampling-percentage :target-type
                                      nullable-double :required common-lisp:t
                                      :member-name
                                      "DesiredSamplingPercentage"))
                                    (:shape-name
                                     "ProbabilisticRuleValueUpdate"))

(smithy/sdk/shapes:define-input put-encryption-config-request common-lisp:nil
                                ((key-id :target-type encryption-key-id
                                  :member-name "KeyId")
                                 (type :target-type encryption-type :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "PutEncryptionConfigRequest"))

(smithy/sdk/shapes:define-output put-encryption-config-result common-lisp:nil
                                 ((encryption-config :target-type
                                   encryption-config :member-name
                                   "EncryptionConfig"))
                                 (:shape-name "PutEncryptionConfigResult"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-document :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "PolicyDocument")
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId")
                                 (bypass-policy-lockout-check :target-type
                                  boolean :member-name
                                  "BypassPolicyLockoutCheck"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-result common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy"))
                                 (:shape-name "PutResourcePolicyResult"))

(smithy/sdk/shapes:define-input put-telemetry-records-request common-lisp:nil
                                ((telemetry-records :target-type
                                  telemetry-record-list :required common-lisp:t
                                  :member-name "TelemetryRecords")
                                 (ec2instance-id :target-type ec2instance-id
                                  :member-name "EC2InstanceId")
                                 (hostname :target-type hostname :member-name
                                  "Hostname")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceARN"))
                                (:shape-name "PutTelemetryRecordsRequest"))

(smithy/sdk/shapes:define-output put-telemetry-records-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutTelemetryRecordsResult"))

(smithy/sdk/shapes:define-input put-trace-segments-request common-lisp:nil
                                ((trace-segment-documents :target-type
                                  trace-segment-document-list :required
                                  common-lisp:t :member-name
                                  "TraceSegmentDocuments"))
                                (:shape-name "PutTraceSegmentsRequest"))

(smithy/sdk/shapes:define-output put-trace-segments-result common-lisp:nil
                                 ((unprocessed-trace-segments :target-type
                                   unprocessed-trace-segment-list :member-name
                                   "UnprocessedTraceSegments"))
                                 (:shape-name "PutTraceSegmentsResult"))

(smithy/sdk/shapes:define-type request-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure request-impact-statistics common-lisp:nil
                                    ((fault-count :target-type nullable-long
                                      :member-name "FaultCount")
                                     (ok-count :target-type nullable-long
                                      :member-name "OkCount")
                                     (total-count :target-type nullable-long
                                      :member-name "TotalCount"))
                                    (:shape-name "RequestImpactStatistics"))

(smithy/sdk/shapes:define-type reservoir-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-arndetail common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "ARN"))
                                    (:shape-name "ResourceARNDetail"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "PolicyName")
                                     (policy-document :target-type
                                      policy-document :member-name
                                      "PolicyDocument")
                                     (policy-revision-id :target-type
                                      policy-revision-id :member-name
                                      "PolicyRevisionId")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-list resource-policy-list :member resource-policy)

(smithy/sdk/shapes:define-type resource-policy-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure response-time-root-cause common-lisp:nil
                                    ((services :target-type
                                      response-time-root-cause-services
                                      :member-name "Services")
                                     (client-impacting :target-type
                                      nullable-boolean :member-name
                                      "ClientImpacting"))
                                    (:shape-name "ResponseTimeRootCause"))

(smithy/sdk/shapes:define-structure response-time-root-cause-entity
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (coverage :target-type nullable-double
                                      :member-name "Coverage")
                                     (remote :target-type nullable-boolean
                                      :member-name "Remote"))
                                    (:shape-name "ResponseTimeRootCauseEntity"))

(smithy/sdk/shapes:define-list response-time-root-cause-entity-path :member
                               response-time-root-cause-entity)

(smithy/sdk/shapes:define-structure response-time-root-cause-service
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (names :target-type service-names
                                      :member-name "Names")
                                     (type :target-type string :member-name
                                      "Type")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (entity-path :target-type
                                      response-time-root-cause-entity-path
                                      :member-name "EntityPath")
                                     (inferred :target-type nullable-boolean
                                      :member-name "Inferred"))
                                    (:shape-name
                                     "ResponseTimeRootCauseService"))

(smithy/sdk/shapes:define-list response-time-root-cause-services :member
                               response-time-root-cause-service)

(smithy/sdk/shapes:define-list response-time-root-causes :member
                               response-time-root-cause)

(smithy/sdk/shapes:define-enum retrieval-status
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:running "RUNNING")
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:cancelled "CANCELLED")
  (:timeout "TIMEOUT"))

(smithy/sdk/shapes:define-type retrieval-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure retrieved-service common-lisp:nil
                                    ((service :target-type service :member-name
                                      "Service")
                                     (links :target-type links-list
                                      :member-name "Links"))
                                    (:shape-name "RetrievedService"))

(smithy/sdk/shapes:define-list retrieved-services-list :member
                               retrieved-service)

(smithy/sdk/shapes:define-structure retrieved-trace common-lisp:nil
                                    ((id :target-type trace-id :member-name
                                      "Id")
                                     (duration :target-type nullable-double
                                      :member-name "Duration")
                                     (spans :target-type span-list :member-name
                                      "Spans"))
                                    (:shape-name "RetrievedTrace"))

(smithy/sdk/shapes:define-structure root-cause-exception common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "RootCauseException"))

(smithy/sdk/shapes:define-list root-cause-exceptions :member
                               root-cause-exception)

(smithy/sdk/shapes:define-error rule-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RuleLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sampled-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure sampling-rule common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :member-name "RuleName")
                                     (rule-arn :target-type string :member-name
                                      "RuleARN")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (priority :target-type priority :required
                                      common-lisp:t :member-name "Priority")
                                     (fixed-rate :target-type fixed-rate
                                      :required common-lisp:t :member-name
                                      "FixedRate")
                                     (reservoir-size :target-type
                                      reservoir-size :required common-lisp:t
                                      :member-name "ReservoirSize")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName")
                                     (service-type :target-type service-type
                                      :required common-lisp:t :member-name
                                      "ServiceType")
                                     (host :target-type host :required
                                      common-lisp:t :member-name "Host")
                                     (httpmethod :target-type httpmethod
                                      :required common-lisp:t :member-name
                                      "HTTPMethod")
                                     (urlpath :target-type urlpath :required
                                      common-lisp:t :member-name "URLPath")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "Version")
                                     (attributes :target-type attribute-map
                                      :member-name "Attributes"))
                                    (:shape-name "SamplingRule"))

(smithy/sdk/shapes:define-structure sampling-rule-record common-lisp:nil
                                    ((sampling-rule :target-type sampling-rule
                                      :member-name "SamplingRule")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (modified-at :target-type timestamp
                                      :member-name "ModifiedAt"))
                                    (:shape-name "SamplingRuleRecord"))

(smithy/sdk/shapes:define-list sampling-rule-record-list :member
                               sampling-rule-record)

(smithy/sdk/shapes:define-structure sampling-rule-update common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :member-name "RuleName")
                                     (rule-arn :target-type string :member-name
                                      "RuleARN")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (priority :target-type nullable-integer
                                      :member-name "Priority")
                                     (fixed-rate :target-type nullable-double
                                      :member-name "FixedRate")
                                     (reservoir-size :target-type
                                      nullable-integer :member-name
                                      "ReservoirSize")
                                     (host :target-type host :member-name
                                      "Host")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (service-type :target-type service-type
                                      :member-name "ServiceType")
                                     (httpmethod :target-type httpmethod
                                      :member-name "HTTPMethod")
                                     (urlpath :target-type urlpath :member-name
                                      "URLPath")
                                     (attributes :target-type attribute-map
                                      :member-name "Attributes"))
                                    (:shape-name "SamplingRuleUpdate"))

(smithy/sdk/shapes:define-structure sampling-statistic-summary common-lisp:nil
                                    ((rule-name :target-type string
                                      :member-name "RuleName")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (request-count :target-type integer
                                      :member-name "RequestCount")
                                     (borrow-count :target-type integer
                                      :member-name "BorrowCount")
                                     (sampled-count :target-type integer
                                      :member-name "SampledCount"))
                                    (:shape-name "SamplingStatisticSummary"))

(smithy/sdk/shapes:define-list sampling-statistic-summary-list :member
                               sampling-statistic-summary)

(smithy/sdk/shapes:define-structure sampling-statistics-document
                                    common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :required common-lisp:t :member-name
                                      "RuleName")
                                     (client-id :target-type client-id
                                      :required common-lisp:t :member-name
                                      "ClientID")
                                     (timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (request-count :target-type request-count
                                      :required common-lisp:t :member-name
                                      "RequestCount")
                                     (sampled-count :target-type sampled-count
                                      :required common-lisp:t :member-name
                                      "SampledCount")
                                     (borrow-count :target-type borrow-count
                                      :member-name "BorrowCount"))
                                    (:shape-name "SamplingStatisticsDocument"))

(smithy/sdk/shapes:define-list sampling-statistics-document-list :member
                               sampling-statistics-document)

(smithy/sdk/shapes:define-structure sampling-strategy common-lisp:nil
                                    ((name :target-type sampling-strategy-name
                                      :member-name "Name")
                                     (value :target-type nullable-double
                                      :member-name "Value"))
                                    (:shape-name "SamplingStrategy"))

(smithy/sdk/shapes:define-enum sampling-strategy-name
    common-lisp:nil
  (:partial-scan "PartialScan")
  (:fixed-rate "FixedRate"))

(smithy/sdk/shapes:define-structure sampling-target-document common-lisp:nil
                                    ((rule-name :target-type string
                                      :member-name "RuleName")
                                     (fixed-rate :target-type double
                                      :member-name "FixedRate")
                                     (reservoir-quota :target-type
                                      nullable-integer :member-name
                                      "ReservoirQuota")
                                     (reservoir-quota-ttl :target-type
                                      timestamp :member-name
                                      "ReservoirQuotaTTL")
                                     (interval :target-type nullable-integer
                                      :member-name "Interval"))
                                    (:shape-name "SamplingTargetDocument"))

(smithy/sdk/shapes:define-list sampling-target-document-list :member
                               sampling-target-document)

(smithy/sdk/shapes:define-structure segment common-lisp:nil
                                    ((id :target-type segment-id :member-name
                                      "Id")
                                     (document :target-type segment-document
                                      :member-name "Document"))
                                    (:shape-name "Segment"))

(smithy/sdk/shapes:define-type segment-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type segment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list segment-list :member segment)

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((reference-id :target-type
                                      nullable-integer :member-name
                                      "ReferenceId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (names :target-type service-names
                                      :member-name "Names")
                                     (root :target-type nullable-boolean
                                      :member-name "Root")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (type :target-type string :member-name
                                      "Type")
                                     (state :target-type string :member-name
                                      "State")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (edges :target-type edge-list :member-name
                                      "Edges")
                                     (summary-statistics :target-type
                                      service-statistics :member-name
                                      "SummaryStatistics")
                                     (duration-histogram :target-type histogram
                                      :member-name "DurationHistogram")
                                     (response-time-histogram :target-type
                                      histogram :member-name
                                      "ResponseTimeHistogram"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-structure service-id common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (names :target-type service-names
                                      :member-name "Names")
                                     (account-id :target-type string
                                      :member-name "AccountId")
                                     (type :target-type string :member-name
                                      "Type"))
                                    (:shape-name "ServiceId"))

(smithy/sdk/shapes:define-list service-ids :member service-id)

(smithy/sdk/shapes:define-list service-list :member service)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-names :member string)

(smithy/sdk/shapes:define-structure service-statistics common-lisp:nil
                                    ((ok-count :target-type nullable-long
                                      :member-name "OkCount")
                                     (error-statistics :target-type
                                      error-statistics :member-name
                                      "ErrorStatistics")
                                     (fault-statistics :target-type
                                      fault-statistics :member-name
                                      "FaultStatistics")
                                     (total-count :target-type nullable-long
                                      :member-name "TotalCount")
                                     (total-response-time :target-type
                                      nullable-double :member-name
                                      "TotalResponseTime"))
                                    (:shape-name "ServiceStatistics"))

(smithy/sdk/shapes:define-type service-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure span common-lisp:nil
                                    ((id :target-type span-id :member-name
                                      "Id")
                                     (document :target-type span-document
                                      :member-name "Document"))
                                    (:shape-name "Span"))

(smithy/sdk/shapes:define-type span-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type span-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list span-list :member span)

(smithy/sdk/shapes:define-input start-trace-retrieval-request common-lisp:nil
                                ((trace-ids :target-type
                                  trace-id-list-for-retrieval :required
                                  common-lisp:t :member-name "TraceIds")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "EndTime"))
                                (:shape-name "StartTraceRetrievalRequest"))

(smithy/sdk/shapes:define-output start-trace-retrieval-result common-lisp:nil
                                 ((retrieval-token :target-type retrieval-token
                                   :member-name "RetrievalToken"))
                                 (:shape-name "StartTraceRetrievalResult"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure telemetry-record common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (segments-received-count :target-type
                                      nullable-integer :member-name
                                      "SegmentsReceivedCount")
                                     (segments-sent-count :target-type
                                      nullable-integer :member-name
                                      "SegmentsSentCount")
                                     (segments-spillover-count :target-type
                                      nullable-integer :member-name
                                      "SegmentsSpilloverCount")
                                     (segments-rejected-count :target-type
                                      nullable-integer :member-name
                                      "SegmentsRejectedCount")
                                     (backend-connection-errors :target-type
                                      backend-connection-errors :member-name
                                      "BackendConnectionErrors"))
                                    (:shape-name "TelemetryRecord"))

(smithy/sdk/shapes:define-list telemetry-record-list :member telemetry-record)

(smithy/sdk/shapes:define-error throttled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottledException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum time-range-type
    common-lisp:nil
  (:trace-id "TraceId")
  (:event "Event")
  (:service "Service"))

(smithy/sdk/shapes:define-structure time-series-service-statistics
                                    common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (edge-summary-statistics :target-type
                                      edge-statistics :member-name
                                      "EdgeSummaryStatistics")
                                     (service-summary-statistics :target-type
                                      service-statistics :member-name
                                      "ServiceSummaryStatistics")
                                     (service-forecast-statistics :target-type
                                      forecast-statistics :member-name
                                      "ServiceForecastStatistics")
                                     (response-time-histogram :target-type
                                      histogram :member-name
                                      "ResponseTimeHistogram"))
                                    (:shape-name "TimeSeriesServiceStatistics"))

(smithy/sdk/shapes:define-list time-series-service-statistics-list :member
                               time-series-service-statistics)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure trace common-lisp:nil
                                    ((id :target-type trace-id :member-name
                                      "Id")
                                     (duration :target-type nullable-double
                                      :member-name "Duration")
                                     (limit-exceeded :target-type
                                      nullable-boolean :member-name
                                      "LimitExceeded")
                                     (segments :target-type segment-list
                                      :member-name "Segments"))
                                    (:shape-name "Trace"))

(smithy/sdk/shapes:define-list trace-availability-zones :member
                               availability-zone-detail)

(smithy/sdk/shapes:define-enum trace-format-type
    common-lisp:nil
  (:xray "XRAY")
  (:otel "OTEL"))

(smithy/sdk/shapes:define-type trace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trace-id-list :member trace-id)

(smithy/sdk/shapes:define-list trace-id-list-for-retrieval :member trace-id)

(smithy/sdk/shapes:define-list trace-instance-ids :member instance-id-detail)

(smithy/sdk/shapes:define-list trace-list :member trace)

(smithy/sdk/shapes:define-list trace-resource-arns :member resource-arndetail)

(smithy/sdk/shapes:define-enum trace-segment-destination
    common-lisp:nil
  (:xray "XRay")
  (:cloud-watch-logs "CloudWatchLogs"))

(smithy/sdk/shapes:define-enum trace-segment-destination-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-type trace-segment-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trace-segment-document-list :member
                               trace-segment-document)

(smithy/sdk/shapes:define-list trace-span-list :member retrieved-trace)

(smithy/sdk/shapes:define-structure trace-summary common-lisp:nil
                                    ((id :target-type trace-id :member-name
                                      "Id")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (duration :target-type nullable-double
                                      :member-name "Duration")
                                     (response-time :target-type
                                      nullable-double :member-name
                                      "ResponseTime")
                                     (has-fault :target-type nullable-boolean
                                      :member-name "HasFault")
                                     (has-error :target-type nullable-boolean
                                      :member-name "HasError")
                                     (has-throttle :target-type
                                      nullable-boolean :member-name
                                      "HasThrottle")
                                     (is-partial :target-type nullable-boolean
                                      :member-name "IsPartial")
                                     (http :target-type http :member-name
                                      "Http")
                                     (annotations :target-type annotations
                                      :member-name "Annotations")
                                     (users :target-type trace-users
                                      :member-name "Users")
                                     (service-ids :target-type service-ids
                                      :member-name "ServiceIds")
                                     (resource-arns :target-type
                                      trace-resource-arns :member-name
                                      "ResourceARNs")
                                     (instance-ids :target-type
                                      trace-instance-ids :member-name
                                      "InstanceIds")
                                     (availability-zones :target-type
                                      trace-availability-zones :member-name
                                      "AvailabilityZones")
                                     (entry-point :target-type service-id
                                      :member-name "EntryPoint")
                                     (fault-root-causes :target-type
                                      fault-root-causes :member-name
                                      "FaultRootCauses")
                                     (error-root-causes :target-type
                                      error-root-causes :member-name
                                      "ErrorRootCauses")
                                     (response-time-root-causes :target-type
                                      response-time-root-causes :member-name
                                      "ResponseTimeRootCauses")
                                     (revision :target-type integer
                                      :member-name "Revision")
                                     (matched-event-time :target-type timestamp
                                      :member-name "MatchedEventTime"))
                                    (:shape-name "TraceSummary"))

(smithy/sdk/shapes:define-list trace-summary-list :member trace-summary)

(smithy/sdk/shapes:define-structure trace-user common-lisp:nil
                                    ((user-name :target-type string
                                      :member-name "UserName")
                                     (service-ids :target-type service-ids
                                      :member-name "ServiceIds"))
                                    (:shape-name "TraceUser"))

(smithy/sdk/shapes:define-list trace-users :member trace-user)

(smithy/sdk/shapes:define-type urlpath smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure unprocessed-statistics common-lisp:nil
                                    ((rule-name :target-type string
                                      :member-name "RuleName")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "UnprocessedStatistics"))

(smithy/sdk/shapes:define-list unprocessed-statistics-list :member
                               unprocessed-statistics)

(smithy/sdk/shapes:define-list unprocessed-trace-id-list :member trace-id)

(smithy/sdk/shapes:define-structure unprocessed-trace-segment common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "UnprocessedTraceSegment"))

(smithy/sdk/shapes:define-list unprocessed-trace-segment-list :member
                               unprocessed-trace-segment)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-group-request common-lisp:nil
                                ((group-name :target-type group-name
                                  :member-name "GroupName")
                                 (group-arn :target-type group-arn :member-name
                                  "GroupARN")
                                 (filter-expression :target-type
                                  filter-expression :member-name
                                  "FilterExpression")
                                 (insights-configuration :target-type
                                  insights-configuration :member-name
                                  "InsightsConfiguration"))
                                (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-output update-group-result common-lisp:nil
                                 ((group :target-type group :member-name
                                   "Group"))
                                 (:shape-name "UpdateGroupResult"))

(smithy/sdk/shapes:define-input update-indexing-rule-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (rule :target-type indexing-rule-value-update
                                  :required common-lisp:t :member-name "Rule"))
                                (:shape-name "UpdateIndexingRuleRequest"))

(smithy/sdk/shapes:define-output update-indexing-rule-result common-lisp:nil
                                 ((indexing-rule :target-type indexing-rule
                                   :member-name "IndexingRule"))
                                 (:shape-name "UpdateIndexingRuleResult"))

(smithy/sdk/shapes:define-input update-sampling-rule-request common-lisp:nil
                                ((sampling-rule-update :target-type
                                  sampling-rule-update :required common-lisp:t
                                  :member-name "SamplingRuleUpdate"))
                                (:shape-name "UpdateSamplingRuleRequest"))

(smithy/sdk/shapes:define-output update-sampling-rule-result common-lisp:nil
                                 ((sampling-rule-record :target-type
                                   sampling-rule-record :member-name
                                   "SamplingRuleRecord"))
                                 (:shape-name "UpdateSamplingRuleResult"))

(smithy/sdk/shapes:define-input update-trace-segment-destination-request
                                common-lisp:nil
                                ((destination :target-type
                                  trace-segment-destination :member-name
                                  "Destination"))
                                (:shape-name
                                 "UpdateTraceSegmentDestinationRequest"))

(smithy/sdk/shapes:define-output update-trace-segment-destination-result
                                 common-lisp:nil
                                 ((destination :target-type
                                   trace-segment-destination :member-name
                                   "Destination")
                                  (status :target-type
                                   trace-segment-destination-status
                                   :member-name "Status"))
                                 (:shape-name
                                  "UpdateTraceSegmentDestinationResult"))

(smithy/sdk/shapes:define-structure value-with-service-ids common-lisp:nil
                                    ((annotation-value :target-type
                                      annotation-value :member-name
                                      "AnnotationValue")
                                     (service-ids :target-type service-ids
                                      :member-name "ServiceIds"))
                                    (:shape-name "ValueWithServiceIds"))

(smithy/sdk/shapes:define-list values-with-service-ids :member
                               value-with-service-ids)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation batch-get-traces :shape-name
                                       "BatchGetTraces" :input
                                       batch-get-traces-request :output
                                       batch-get-traces-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/Traces" :code 200)

(smithy/sdk/operation:define-operation cancel-trace-retrieval :shape-name
                                       "CancelTraceRetrieval" :input
                                       cancel-trace-retrieval-request :output
                                       cancel-trace-retrieval-result :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/CancelTraceRetrieval" :code 200)

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/CreateGroup" :code
                                       200)

(smithy/sdk/operation:define-operation create-sampling-rule :shape-name
                                       "CreateSamplingRule" :input
                                       create-sampling-rule-request :output
                                       create-sampling-rule-result :errors
                                       (invalid-request-exception
                                        rule-limit-exceeded-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/CreateSamplingRule" :code 200)

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/DeleteGroup" :code
                                       200)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-result :errors
                                       (invalid-policy-revision-id-exception
                                        invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/DeleteResourcePolicy" :code 200)

(smithy/sdk/operation:define-operation delete-sampling-rule :shape-name
                                       "DeleteSamplingRule" :input
                                       delete-sampling-rule-request :output
                                       delete-sampling-rule-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/DeleteSamplingRule" :code 200)

(smithy/sdk/operation:define-operation get-encryption-config :shape-name
                                       "GetEncryptionConfig" :input
                                       get-encryption-config-request :output
                                       get-encryption-config-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/EncryptionConfig"
                                       :code 200)

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-request :output
                                       get-group-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/GetGroup" :code
                                       200)

(smithy/sdk/operation:define-operation get-groups :shape-name "GetGroups"
                                       :input get-groups-request :output
                                       get-groups-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/Groups" :code 200)

(smithy/sdk/operation:define-operation get-indexing-rules :shape-name
                                       "GetIndexingRules" :input
                                       get-indexing-rules-request :output
                                       get-indexing-rules-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/GetIndexingRules"
                                       :code 200)

(smithy/sdk/operation:define-operation get-insight :shape-name "GetInsight"
                                       :input get-insight-request :output
                                       get-insight-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/Insight" :code 200)

(smithy/sdk/operation:define-operation get-insight-events :shape-name
                                       "GetInsightEvents" :input
                                       get-insight-events-request :output
                                       get-insight-events-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/InsightEvents"
                                       :code 200)

(smithy/sdk/operation:define-operation get-insight-impact-graph :shape-name
                                       "GetInsightImpactGraph" :input
                                       get-insight-impact-graph-request :output
                                       get-insight-impact-graph-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/InsightImpactGraph" :code 200)

(smithy/sdk/operation:define-operation get-insight-summaries :shape-name
                                       "GetInsightSummaries" :input
                                       get-insight-summaries-request :output
                                       get-insight-summaries-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/InsightSummaries"
                                       :code 200)

(smithy/sdk/operation:define-operation get-retrieved-traces-graph :shape-name
                                       "GetRetrievedTracesGraph" :input
                                       get-retrieved-traces-graph-request
                                       :output
                                       get-retrieved-traces-graph-result
                                       :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/GetRetrievedTracesGraph" :code 200)

(smithy/sdk/operation:define-operation get-sampling-rules :shape-name
                                       "GetSamplingRules" :input
                                       get-sampling-rules-request :output
                                       get-sampling-rules-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/GetSamplingRules"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sampling-statistic-summaries
                                       :shape-name
                                       "GetSamplingStatisticSummaries" :input
                                       get-sampling-statistic-summaries-request
                                       :output
                                       get-sampling-statistic-summaries-result
                                       :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/SamplingStatisticSummaries" :code 200)

(smithy/sdk/operation:define-operation get-sampling-targets :shape-name
                                       "GetSamplingTargets" :input
                                       get-sampling-targets-request :output
                                       get-sampling-targets-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/SamplingTargets"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-graph :shape-name
                                       "GetServiceGraph" :input
                                       get-service-graph-request :output
                                       get-service-graph-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/ServiceGraph"
                                       :code 200)

(smithy/sdk/operation:define-operation get-time-series-service-statistics
                                       :shape-name
                                       "GetTimeSeriesServiceStatistics" :input
                                       get-time-series-service-statistics-request
                                       :output
                                       get-time-series-service-statistics-result
                                       :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/TimeSeriesServiceStatistics" :code 200)

(smithy/sdk/operation:define-operation get-trace-graph :shape-name
                                       "GetTraceGraph" :input
                                       get-trace-graph-request :output
                                       get-trace-graph-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/TraceGraph" :code
                                       200)

(smithy/sdk/operation:define-operation get-trace-segment-destination
                                       :shape-name "GetTraceSegmentDestination"
                                       :input
                                       get-trace-segment-destination-request
                                       :output
                                       get-trace-segment-destination-result
                                       :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/GetTraceSegmentDestination" :code 200)

(smithy/sdk/operation:define-operation get-trace-summaries :shape-name
                                       "GetTraceSummaries" :input
                                       get-trace-summaries-request :output
                                       get-trace-summaries-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/TraceSummaries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resource-policies :shape-name
                                       "ListResourcePolicies" :input
                                       list-resource-policies-request :output
                                       list-resource-policies-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/ListResourcePolicies" :code 200)

(smithy/sdk/operation:define-operation list-retrieved-traces :shape-name
                                       "ListRetrievedTraces" :input
                                       list-retrieved-traces-request :output
                                       list-retrieved-traces-result :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/ListRetrievedTraces" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/ListTagsForResource" :code 200)

(smithy/sdk/operation:define-operation put-encryption-config :shape-name
                                       "PutEncryptionConfig" :input
                                       put-encryption-config-request :output
                                       put-encryption-config-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/PutEncryptionConfig" :code 200)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-result :errors
                                       (invalid-policy-revision-id-exception
                                        lockout-prevention-exception
                                        malformed-policy-document-exception
                                        policy-count-limit-exceeded-exception
                                        policy-size-limit-exceeded-exception
                                        throttled-exception)
                                       :method "POST" :uri "/PutResourcePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-telemetry-records :shape-name
                                       "PutTelemetryRecords" :input
                                       put-telemetry-records-request :output
                                       put-telemetry-records-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/TelemetryRecords"
                                       :code 200)

(smithy/sdk/operation:define-operation put-trace-segments :shape-name
                                       "PutTraceSegments" :input
                                       put-trace-segments-request :output
                                       put-trace-segments-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/TraceSegments"
                                       :code 200)

(smithy/sdk/operation:define-operation start-trace-retrieval :shape-name
                                       "StartTraceRetrieval" :input
                                       start-trace-retrieval-request :output
                                       start-trace-retrieval-result :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/StartTraceRetrieval" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri "/TagResource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri "/UntagResource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       update-group-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri "/UpdateGroup" :code
                                       200)

(smithy/sdk/operation:define-operation update-indexing-rule :shape-name
                                       "UpdateIndexingRule" :input
                                       update-indexing-rule-request :output
                                       update-indexing-rule-result :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/UpdateIndexingRule" :code 200)

(smithy/sdk/operation:define-operation update-sampling-rule :shape-name
                                       "UpdateSamplingRule" :input
                                       update-sampling-rule-request :output
                                       update-sampling-rule-result :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/UpdateSamplingRule" :code 200)

(smithy/sdk/operation:define-operation update-trace-segment-destination
                                       :shape-name
                                       "UpdateTraceSegmentDestination" :input
                                       update-trace-segment-destination-request
                                       :output
                                       update-trace-segment-destination-result
                                       :errors
                                       (invalid-request-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/UpdateTraceSegmentDestination" :code
                                       200)
