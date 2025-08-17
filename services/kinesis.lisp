(uiop/package:define-package #:pira/kinesis (:use)
                             (:export #:add-tags-to-stream #:boolean-object
                              #:child-shard #:child-shard-list #:consumer
                              #:consumer-arn #:consumer-count-object
                              #:consumer-description #:consumer-list
                              #:consumer-name #:consumer-status #:create-stream
                              #:data #:decrease-stream-retention-period
                              #:delete-resource-policy #:delete-stream
                              #:deregister-stream-consumer #:describe-limits
                              #:describe-stream #:describe-stream-consumer
                              #:describe-stream-input-limit
                              #:describe-stream-summary
                              #:disable-enhanced-monitoring
                              #:enable-enhanced-monitoring #:encryption-type
                              #:enhanced-metrics #:enhanced-monitoring-list
                              #:enhanced-monitoring-output #:error-code
                              #:error-message #:get-records
                              #:get-records-input-limit #:get-resource-policy
                              #:get-shard-iterator #:hash-key #:hash-key-range
                              #:increase-stream-retention-period #:key-id
                              #:kinesis-20131202 #:list-shards
                              #:list-shards-input-limit #:list-stream-consumers
                              #:list-stream-consumers-input-limit
                              #:list-streams #:list-streams-input-limit
                              #:list-tags-for-resource #:list-tags-for-stream
                              #:list-tags-for-stream-input-limit #:merge-shards
                              #:metrics-name #:metrics-name-list
                              #:millis-behind-latest #:next-token
                              #:on-demand-stream-count-limit-object
                              #:on-demand-stream-count-object #:partition-key
                              #:policy #:positive-integer-object #:put-record
                              #:put-records #:put-records-request-entry
                              #:put-records-request-entry-list
                              #:put-records-result-entry
                              #:put-records-result-entry-list
                              #:put-resource-policy #:record #:record-list
                              #:register-stream-consumer
                              #:remove-tags-from-stream #:resource-arn
                              #:retention-period-hours #:scaling-type
                              #:sequence-number #:sequence-number-range #:shard
                              #:shard-count-object #:shard-filter
                              #:shard-filter-type #:shard-id #:shard-id-list
                              #:shard-iterator #:shard-iterator-type
                              #:shard-list #:split-shard
                              #:start-stream-encryption #:starting-position
                              #:stop-stream-encryption #:stream-arn
                              #:stream-description #:stream-description-summary
                              #:stream-mode #:stream-mode-details #:stream-name
                              #:stream-name-list #:stream-status
                              #:stream-summary #:stream-summary-list
                              #:subscribe-to-shard #:subscribe-to-shard-event
                              #:subscribe-to-shard-event-stream #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-map
                              #:tag-resource #:tag-value #:timestamp
                              #:untag-resource #:update-shard-count
                              #:update-stream-mode))
(common-lisp:in-package #:pira/kinesis)

(smithy/sdk/service:define-service kinesis-20131202 :shape-name
                                   "Kinesis_20131202" :version "2013-12-02"
                                   :title "Amazon Kinesis" :operations
                                   '(add-tags-to-stream create-stream
                                     decrease-stream-retention-period
                                     delete-resource-policy delete-stream
                                     deregister-stream-consumer describe-limits
                                     describe-stream describe-stream-consumer
                                     describe-stream-summary
                                     disable-enhanced-monitoring
                                     enable-enhanced-monitoring get-records
                                     get-resource-policy get-shard-iterator
                                     increase-stream-retention-period
                                     list-shards list-stream-consumers
                                     list-streams list-tags-for-resource
                                     list-tags-for-stream merge-shards
                                     put-record put-records put-resource-policy
                                     register-stream-consumer
                                     remove-tags-from-stream split-shard
                                     start-stream-encryption
                                     stop-stream-encryption subscribe-to-shard
                                     tag-resource untag-resource
                                     update-shard-count update-stream-mode)
                                   :xml-namespace
                                   '(:uri
                                     "http://kinesis.amazonaws.com/doc/2013-12-02"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Kinesis")
                                      ("arnNamespace" . "kinesis")
                                      ("cloudFormationName" . "Kinesis")
                                      ("cloudTrailEventSource"
                                       . "kinesis.amazonaws.com")
                                      ("endpointPrefix" . "kinesis"))
                                     ("aws.auth#sigv4" ("name" . "kinesis"))
                                     ("aws.protocols#awsJson1_1"
                                      ("http" . #("http/1.1" "h2"))
                                      ("eventStreamHttp" . #("h2")))))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input add-tags-to-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "AddTagsToStreamInput"))

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure child-shard common-lisp:nil
                                    ((shard-id :target-type shard-id :required
                                      common-lisp:t :member-name "ShardId")
                                     (parent-shards :target-type shard-id-list
                                      :required common-lisp:t :member-name
                                      "ParentShards")
                                     (hash-key-range :target-type
                                      hash-key-range :required common-lisp:t
                                      :member-name "HashKeyRange"))
                                    (:shape-name "ChildShard"))

(smithy/sdk/shapes:define-list child-shard-list :member child-shard)

(smithy/sdk/shapes:define-structure consumer common-lisp:nil
                                    ((consumer-name :target-type consumer-name
                                      :required common-lisp:t :member-name
                                      "ConsumerName")
                                     (consumer-arn :target-type consumer-arn
                                      :required common-lisp:t :member-name
                                      "ConsumerARN")
                                     (consumer-status :target-type
                                      consumer-status :required common-lisp:t
                                      :member-name "ConsumerStatus")
                                     (consumer-creation-timestamp :target-type
                                      timestamp :required common-lisp:t
                                      :member-name
                                      "ConsumerCreationTimestamp"))
                                    (:shape-name "Consumer"))

(smithy/sdk/shapes:define-type consumer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type consumer-count-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure consumer-description common-lisp:nil
                                    ((consumer-name :target-type consumer-name
                                      :required common-lisp:t :member-name
                                      "ConsumerName")
                                     (consumer-arn :target-type consumer-arn
                                      :required common-lisp:t :member-name
                                      "ConsumerARN")
                                     (consumer-status :target-type
                                      consumer-status :required common-lisp:t
                                      :member-name "ConsumerStatus")
                                     (consumer-creation-timestamp :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "ConsumerCreationTimestamp")
                                     (stream-arn :target-type stream-arn
                                      :required common-lisp:t :member-name
                                      "StreamARN"))
                                    (:shape-name "ConsumerDescription"))

(smithy/sdk/shapes:define-list consumer-list :member consumer)

(smithy/sdk/shapes:define-type consumer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum consumer-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-input create-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :required common-lisp:t :member-name
                                  "StreamName")
                                 (shard-count :target-type
                                  positive-integer-object :member-name
                                  "ShardCount")
                                 (stream-mode-details :target-type
                                  stream-mode-details :member-name
                                  "StreamModeDetails")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateStreamInput"))

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input decrease-stream-retention-period-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (retention-period-hours :target-type
                                  retention-period-hours :required
                                  common-lisp:t :member-name
                                  "RetentionPeriodHours")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name
                                 "DecreaseStreamRetentionPeriodInput"))

(smithy/sdk/shapes:define-input delete-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "DeleteResourcePolicyInput"))

(smithy/sdk/shapes:define-input delete-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (enforce-consumer-deletion :target-type
                                  boolean-object :member-name
                                  "EnforceConsumerDeletion")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DeleteStreamInput"))

(smithy/sdk/shapes:define-input deregister-stream-consumer-input
                                common-lisp:nil
                                ((stream-arn :target-type stream-arn
                                  :member-name "StreamARN")
                                 (consumer-name :target-type consumer-name
                                  :member-name "ConsumerName")
                                 (consumer-arn :target-type consumer-arn
                                  :member-name "ConsumerARN"))
                                (:shape-name "DeregisterStreamConsumerInput"))

(smithy/sdk/shapes:define-input describe-limits-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeLimitsInput"))

(smithy/sdk/shapes:define-output describe-limits-output common-lisp:nil
                                 ((shard-limit :target-type shard-count-object
                                   :required common-lisp:t :member-name
                                   "ShardLimit")
                                  (open-shard-count :target-type
                                   shard-count-object :required common-lisp:t
                                   :member-name "OpenShardCount")
                                  (on-demand-stream-count :target-type
                                   on-demand-stream-count-object :required
                                   common-lisp:t :member-name
                                   "OnDemandStreamCount")
                                  (on-demand-stream-count-limit :target-type
                                   on-demand-stream-count-limit-object
                                   :required common-lisp:t :member-name
                                   "OnDemandStreamCountLimit"))
                                 (:shape-name "DescribeLimitsOutput"))

(smithy/sdk/shapes:define-input describe-stream-consumer-input common-lisp:nil
                                ((stream-arn :target-type stream-arn
                                  :member-name "StreamARN")
                                 (consumer-name :target-type consumer-name
                                  :member-name "ConsumerName")
                                 (consumer-arn :target-type consumer-arn
                                  :member-name "ConsumerARN"))
                                (:shape-name "DescribeStreamConsumerInput"))

(smithy/sdk/shapes:define-output describe-stream-consumer-output
                                 common-lisp:nil
                                 ((consumer-description :target-type
                                   consumer-description :required common-lisp:t
                                   :member-name "ConsumerDescription"))
                                 (:shape-name "DescribeStreamConsumerOutput"))

(smithy/sdk/shapes:define-input describe-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (limit :target-type
                                  describe-stream-input-limit :member-name
                                  "Limit")
                                 (exclusive-start-shard-id :target-type
                                  shard-id :member-name
                                  "ExclusiveStartShardId")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DescribeStreamInput"))

(smithy/sdk/shapes:define-type describe-stream-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output describe-stream-output common-lisp:nil
                                 ((stream-description :target-type
                                   stream-description :required common-lisp:t
                                   :member-name "StreamDescription"))
                                 (:shape-name "DescribeStreamOutput"))

(smithy/sdk/shapes:define-input describe-stream-summary-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DescribeStreamSummaryInput"))

(smithy/sdk/shapes:define-output describe-stream-summary-output common-lisp:nil
                                 ((stream-description-summary :target-type
                                   stream-description-summary :required
                                   common-lisp:t :member-name
                                   "StreamDescriptionSummary"))
                                 (:shape-name "DescribeStreamSummaryOutput"))

(smithy/sdk/shapes:define-input disable-enhanced-monitoring-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (shard-level-metrics :target-type
                                  metrics-name-list :required common-lisp:t
                                  :member-name "ShardLevelMetrics")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DisableEnhancedMonitoringInput"))

(smithy/sdk/shapes:define-input enable-enhanced-monitoring-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (shard-level-metrics :target-type
                                  metrics-name-list :required common-lisp:t
                                  :member-name "ShardLevelMetrics")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "EnableEnhancedMonitoringInput"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:none "NONE")
  (:kms "KMS"))

(smithy/sdk/shapes:define-structure enhanced-metrics common-lisp:nil
                                    ((shard-level-metrics :target-type
                                      metrics-name-list :member-name
                                      "ShardLevelMetrics"))
                                    (:shape-name "EnhancedMetrics"))

(smithy/sdk/shapes:define-list enhanced-monitoring-list :member
                               enhanced-metrics)

(smithy/sdk/shapes:define-structure enhanced-monitoring-output common-lisp:nil
                                    ((stream-name :target-type stream-name
                                      :member-name "StreamName")
                                     (current-shard-level-metrics :target-type
                                      metrics-name-list :member-name
                                      "CurrentShardLevelMetrics")
                                     (desired-shard-level-metrics :target-type
                                      metrics-name-list :member-name
                                      "DesiredShardLevelMetrics")
                                     (stream-arn :target-type stream-arn
                                      :member-name "StreamARN"))
                                    (:shape-name "EnhancedMonitoringOutput"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error expired-iterator-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExpiredIteratorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error expired-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExpiredNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input get-records-input common-lisp:nil
                                ((shard-iterator :target-type shard-iterator
                                  :required common-lisp:t :member-name
                                  "ShardIterator")
                                 (limit :target-type get-records-input-limit
                                  :member-name "Limit")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "GetRecordsInput"))

(smithy/sdk/shapes:define-type get-records-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output get-records-output common-lisp:nil
                                 ((records :target-type record-list :required
                                   common-lisp:t :member-name "Records")
                                  (next-shard-iterator :target-type
                                   shard-iterator :member-name
                                   "NextShardIterator")
                                  (millis-behind-latest :target-type
                                   millis-behind-latest :member-name
                                   "MillisBehindLatest")
                                  (child-shards :target-type child-shard-list
                                   :member-name "ChildShards"))
                                 (:shape-name "GetRecordsOutput"))

(smithy/sdk/shapes:define-input get-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "GetResourcePolicyInput"))

(smithy/sdk/shapes:define-output get-resource-policy-output common-lisp:nil
                                 ((policy :target-type policy :required
                                   common-lisp:t :member-name "Policy"))
                                 (:shape-name "GetResourcePolicyOutput"))

(smithy/sdk/shapes:define-input get-shard-iterator-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (shard-id :target-type shard-id :required
                                  common-lisp:t :member-name "ShardId")
                                 (shard-iterator-type :target-type
                                  shard-iterator-type :required common-lisp:t
                                  :member-name "ShardIteratorType")
                                 (starting-sequence-number :target-type
                                  sequence-number :member-name
                                  "StartingSequenceNumber")
                                 (timestamp :target-type timestamp :member-name
                                  "Timestamp")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "GetShardIteratorInput"))

(smithy/sdk/shapes:define-output get-shard-iterator-output common-lisp:nil
                                 ((shard-iterator :target-type shard-iterator
                                   :member-name "ShardIterator"))
                                 (:shape-name "GetShardIteratorOutput"))

(smithy/sdk/shapes:define-type hash-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure hash-key-range common-lisp:nil
                                    ((starting-hash-key :target-type hash-key
                                      :required common-lisp:t :member-name
                                      "StartingHashKey")
                                     (ending-hash-key :target-type hash-key
                                      :required common-lisp:t :member-name
                                      "EndingHashKey"))
                                    (:shape-name "HashKeyRange"))

(smithy/sdk/shapes:define-input increase-stream-retention-period-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (retention-period-hours :target-type
                                  retention-period-hours :required
                                  common-lisp:t :member-name
                                  "RetentionPeriodHours")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name
                                 "IncreaseStreamRetentionPeriodInput"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsaccess-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KMSAccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsdisabled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KMSDisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsinvalid-state-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KMSInvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsnot-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KMSNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsopt-in-required common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KMSOptInRequired")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsthrottling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KMSThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-shards-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (exclusive-start-shard-id :target-type
                                  shard-id :member-name
                                  "ExclusiveStartShardId")
                                 (max-results :target-type
                                  list-shards-input-limit :member-name
                                  "MaxResults")
                                 (stream-creation-timestamp :target-type
                                  timestamp :member-name
                                  "StreamCreationTimestamp")
                                 (shard-filter :target-type shard-filter
                                  :member-name "ShardFilter")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "ListShardsInput"))

(smithy/sdk/shapes:define-type list-shards-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-shards-output common-lisp:nil
                                 ((shards :target-type shard-list :member-name
                                   "Shards")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListShardsOutput"))

(smithy/sdk/shapes:define-input list-stream-consumers-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "StreamARN")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-stream-consumers-input-limit
                                  :member-name "MaxResults")
                                 (stream-creation-timestamp :target-type
                                  timestamp :member-name
                                  "StreamCreationTimestamp"))
                                (:shape-name "ListStreamConsumersInput"))

(smithy/sdk/shapes:define-type list-stream-consumers-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-stream-consumers-output common-lisp:nil
                                 ((consumers :target-type consumer-list
                                   :member-name "Consumers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStreamConsumersOutput"))

(smithy/sdk/shapes:define-input list-streams-input common-lisp:nil
                                ((limit :target-type list-streams-input-limit
                                  :member-name "Limit")
                                 (exclusive-start-stream-name :target-type
                                  stream-name :member-name
                                  "ExclusiveStartStreamName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListStreamsInput"))

(smithy/sdk/shapes:define-type list-streams-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-streams-output common-lisp:nil
                                 ((stream-names :target-type stream-name-list
                                   :required common-lisp:t :member-name
                                   "StreamNames")
                                  (has-more-streams :target-type boolean-object
                                   :required common-lisp:t :member-name
                                   "HasMoreStreams")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (stream-summaries :target-type
                                   stream-summary-list :member-name
                                   "StreamSummaries"))
                                 (:shape-name "ListStreamsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-tags-for-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (exclusive-start-tag-key :target-type tag-key
                                  :member-name "ExclusiveStartTagKey")
                                 (limit :target-type
                                  list-tags-for-stream-input-limit :member-name
                                  "Limit")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "ListTagsForStreamInput"))

(smithy/sdk/shapes:define-type list-tags-for-stream-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-tags-for-stream-output common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags")
                                  (has-more-tags :target-type boolean-object
                                   :required common-lisp:t :member-name
                                   "HasMoreTags"))
                                 (:shape-name "ListTagsForStreamOutput"))

(smithy/sdk/shapes:define-input merge-shards-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (shard-to-merge :target-type shard-id
                                  :required common-lisp:t :member-name
                                  "ShardToMerge")
                                 (adjacent-shard-to-merge :target-type shard-id
                                  :required common-lisp:t :member-name
                                  "AdjacentShardToMerge")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "MergeShardsInput"))

(smithy/sdk/shapes:define-enum metrics-name
    common-lisp:nil
  (:incoming-bytes "IncomingBytes")
  (:incoming-records "IncomingRecords")
  (:outgoing-bytes "OutgoingBytes")
  (:outgoing-records "OutgoingRecords")
  (:write-provisioned-throughput-exceeded "WriteProvisionedThroughputExceeded")
  (:read-provisioned-throughput-exceeded "ReadProvisionedThroughputExceeded")
  (:iterator-age-milliseconds "IteratorAgeMilliseconds")
  (:all "ALL"))

(smithy/sdk/shapes:define-list metrics-name-list :member metrics-name)

(smithy/sdk/shapes:define-type millis-behind-latest
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type on-demand-stream-count-limit-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type on-demand-stream-count-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type partition-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type positive-integer-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error provisioned-throughput-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ProvisionedThroughputExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input put-record-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (data :target-type data :required
                                  common-lisp:t :member-name "Data")
                                 (partition-key :target-type partition-key
                                  :required common-lisp:t :member-name
                                  "PartitionKey")
                                 (explicit-hash-key :target-type hash-key
                                  :member-name "ExplicitHashKey")
                                 (sequence-number-for-ordering :target-type
                                  sequence-number :member-name
                                  "SequenceNumberForOrdering")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "PutRecordInput"))

(smithy/sdk/shapes:define-output put-record-output common-lisp:nil
                                 ((shard-id :target-type shard-id :required
                                   common-lisp:t :member-name "ShardId")
                                  (sequence-number :target-type sequence-number
                                   :required common-lisp:t :member-name
                                   "SequenceNumber")
                                  (encryption-type :target-type encryption-type
                                   :member-name "EncryptionType"))
                                 (:shape-name "PutRecordOutput"))

(smithy/sdk/shapes:define-input put-records-input common-lisp:nil
                                ((records :target-type
                                  put-records-request-entry-list :required
                                  common-lisp:t :member-name "Records")
                                 (stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "PutRecordsInput"))

(smithy/sdk/shapes:define-output put-records-output common-lisp:nil
                                 ((failed-record-count :target-type
                                   positive-integer-object :member-name
                                   "FailedRecordCount")
                                  (records :target-type
                                   put-records-result-entry-list :required
                                   common-lisp:t :member-name "Records")
                                  (encryption-type :target-type encryption-type
                                   :member-name "EncryptionType"))
                                 (:shape-name "PutRecordsOutput"))

(smithy/sdk/shapes:define-structure put-records-request-entry common-lisp:nil
                                    ((data :target-type data :required
                                      common-lisp:t :member-name "Data")
                                     (explicit-hash-key :target-type hash-key
                                      :member-name "ExplicitHashKey")
                                     (partition-key :target-type partition-key
                                      :required common-lisp:t :member-name
                                      "PartitionKey"))
                                    (:shape-name "PutRecordsRequestEntry"))

(smithy/sdk/shapes:define-list put-records-request-entry-list :member
                               put-records-request-entry)

(smithy/sdk/shapes:define-structure put-records-result-entry common-lisp:nil
                                    ((sequence-number :target-type
                                      sequence-number :member-name
                                      "SequenceNumber")
                                     (shard-id :target-type shard-id
                                      :member-name "ShardId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PutRecordsResultEntry"))

(smithy/sdk/shapes:define-list put-records-result-entry-list :member
                               put-records-result-entry)

(smithy/sdk/shapes:define-input put-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutResourcePolicyInput"))

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((sequence-number :target-type
                                      sequence-number :required common-lisp:t
                                      :member-name "SequenceNumber")
                                     (approximate-arrival-timestamp
                                      :target-type timestamp :member-name
                                      "ApproximateArrivalTimestamp")
                                     (data :target-type data :required
                                      common-lisp:t :member-name "Data")
                                     (partition-key :target-type partition-key
                                      :required common-lisp:t :member-name
                                      "PartitionKey")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "EncryptionType"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-list record-list :member record)

(smithy/sdk/shapes:define-input register-stream-consumer-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "StreamARN")
                                 (consumer-name :target-type consumer-name
                                  :required common-lisp:t :member-name
                                  "ConsumerName")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "RegisterStreamConsumerInput"))

(smithy/sdk/shapes:define-output register-stream-consumer-output
                                 common-lisp:nil
                                 ((consumer :target-type consumer :required
                                   common-lisp:t :member-name "Consumer"))
                                 (:shape-name "RegisterStreamConsumerOutput"))

(smithy/sdk/shapes:define-input remove-tags-from-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "RemoveTagsFromStreamInput"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type retention-period-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum scaling-type
    common-lisp:nil
  (:uniform-scaling "UNIFORM_SCALING"))

(smithy/sdk/shapes:define-type sequence-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sequence-number-range common-lisp:nil
                                    ((starting-sequence-number :target-type
                                      sequence-number :required common-lisp:t
                                      :member-name "StartingSequenceNumber")
                                     (ending-sequence-number :target-type
                                      sequence-number :member-name
                                      "EndingSequenceNumber"))
                                    (:shape-name "SequenceNumberRange"))

(smithy/sdk/shapes:define-structure shard common-lisp:nil
                                    ((shard-id :target-type shard-id :required
                                      common-lisp:t :member-name "ShardId")
                                     (parent-shard-id :target-type shard-id
                                      :member-name "ParentShardId")
                                     (adjacent-parent-shard-id :target-type
                                      shard-id :member-name
                                      "AdjacentParentShardId")
                                     (hash-key-range :target-type
                                      hash-key-range :required common-lisp:t
                                      :member-name "HashKeyRange")
                                     (sequence-number-range :target-type
                                      sequence-number-range :required
                                      common-lisp:t :member-name
                                      "SequenceNumberRange"))
                                    (:shape-name "Shard"))

(smithy/sdk/shapes:define-type shard-count-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure shard-filter common-lisp:nil
                                    ((type :target-type shard-filter-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (shard-id :target-type shard-id
                                      :member-name "ShardId")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "ShardFilter"))

(smithy/sdk/shapes:define-enum shard-filter-type
    common-lisp:nil
  (:after-shard-id "AFTER_SHARD_ID")
  (:at-trim-horizon "AT_TRIM_HORIZON")
  (:from-trim-horizon "FROM_TRIM_HORIZON")
  (:at-latest "AT_LATEST")
  (:at-timestamp "AT_TIMESTAMP")
  (:from-timestamp "FROM_TIMESTAMP"))

(smithy/sdk/shapes:define-type shard-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list shard-id-list :member shard-id)

(smithy/sdk/shapes:define-type shard-iterator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum shard-iterator-type
    common-lisp:nil
  (:at-sequence-number "AT_SEQUENCE_NUMBER")
  (:after-sequence-number "AFTER_SEQUENCE_NUMBER")
  (:trim-horizon "TRIM_HORIZON")
  (:latest "LATEST")
  (:at-timestamp "AT_TIMESTAMP"))

(smithy/sdk/shapes:define-list shard-list :member shard)

(smithy/sdk/shapes:define-input split-shard-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (shard-to-split :target-type shard-id
                                  :required common-lisp:t :member-name
                                  "ShardToSplit")
                                 (new-starting-hash-key :target-type hash-key
                                  :required common-lisp:t :member-name
                                  "NewStartingHashKey")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "SplitShardInput"))

(smithy/sdk/shapes:define-input start-stream-encryption-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (encryption-type :target-type encryption-type
                                  :required common-lisp:t :member-name
                                  "EncryptionType")
                                 (key-id :target-type key-id :required
                                  common-lisp:t :member-name "KeyId")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "StartStreamEncryptionInput"))

(smithy/sdk/shapes:define-structure starting-position common-lisp:nil
                                    ((type :target-type shard-iterator-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (sequence-number :target-type
                                      sequence-number :member-name
                                      "SequenceNumber")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "StartingPosition"))

(smithy/sdk/shapes:define-input stop-stream-encryption-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (encryption-type :target-type encryption-type
                                  :required common-lisp:t :member-name
                                  "EncryptionType")
                                 (key-id :target-type key-id :required
                                  common-lisp:t :member-name "KeyId")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "StopStreamEncryptionInput"))

(smithy/sdk/shapes:define-type stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-description common-lisp:nil
                                    ((stream-name :target-type stream-name
                                      :required common-lisp:t :member-name
                                      "StreamName")
                                     (stream-arn :target-type stream-arn
                                      :required common-lisp:t :member-name
                                      "StreamARN")
                                     (stream-status :target-type stream-status
                                      :required common-lisp:t :member-name
                                      "StreamStatus")
                                     (stream-mode-details :target-type
                                      stream-mode-details :member-name
                                      "StreamModeDetails")
                                     (shards :target-type shard-list :required
                                      common-lisp:t :member-name "Shards")
                                     (has-more-shards :target-type
                                      boolean-object :required common-lisp:t
                                      :member-name "HasMoreShards")
                                     (retention-period-hours :target-type
                                      retention-period-hours :required
                                      common-lisp:t :member-name
                                      "RetentionPeriodHours")
                                     (stream-creation-timestamp :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "StreamCreationTimestamp")
                                     (enhanced-monitoring :target-type
                                      enhanced-monitoring-list :required
                                      common-lisp:t :member-name
                                      "EnhancedMonitoring")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "EncryptionType")
                                     (key-id :target-type key-id :member-name
                                      "KeyId"))
                                    (:shape-name "StreamDescription"))

(smithy/sdk/shapes:define-structure stream-description-summary common-lisp:nil
                                    ((stream-name :target-type stream-name
                                      :required common-lisp:t :member-name
                                      "StreamName")
                                     (stream-arn :target-type stream-arn
                                      :required common-lisp:t :member-name
                                      "StreamARN")
                                     (stream-status :target-type stream-status
                                      :required common-lisp:t :member-name
                                      "StreamStatus")
                                     (stream-mode-details :target-type
                                      stream-mode-details :member-name
                                      "StreamModeDetails")
                                     (retention-period-hours :target-type
                                      retention-period-hours :required
                                      common-lisp:t :member-name
                                      "RetentionPeriodHours")
                                     (stream-creation-timestamp :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "StreamCreationTimestamp")
                                     (enhanced-monitoring :target-type
                                      enhanced-monitoring-list :required
                                      common-lisp:t :member-name
                                      "EnhancedMonitoring")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "EncryptionType")
                                     (key-id :target-type key-id :member-name
                                      "KeyId")
                                     (open-shard-count :target-type
                                      shard-count-object :required
                                      common-lisp:t :member-name
                                      "OpenShardCount")
                                     (consumer-count :target-type
                                      consumer-count-object :member-name
                                      "ConsumerCount"))
                                    (:shape-name "StreamDescriptionSummary"))

(smithy/sdk/shapes:define-enum stream-mode
    common-lisp:nil
  (:provisioned "PROVISIONED")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-structure stream-mode-details common-lisp:nil
                                    ((stream-mode :target-type stream-mode
                                      :required common-lisp:t :member-name
                                      "StreamMode"))
                                    (:shape-name "StreamModeDetails"))

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stream-name-list :member stream-name)

(smithy/sdk/shapes:define-enum stream-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:active "ACTIVE")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-structure stream-summary common-lisp:nil
                                    ((stream-name :target-type stream-name
                                      :required common-lisp:t :member-name
                                      "StreamName")
                                     (stream-arn :target-type stream-arn
                                      :required common-lisp:t :member-name
                                      "StreamARN")
                                     (stream-status :target-type stream-status
                                      :required common-lisp:t :member-name
                                      "StreamStatus")
                                     (stream-mode-details :target-type
                                      stream-mode-details :member-name
                                      "StreamModeDetails")
                                     (stream-creation-timestamp :target-type
                                      timestamp :member-name
                                      "StreamCreationTimestamp"))
                                    (:shape-name "StreamSummary"))

(smithy/sdk/shapes:define-list stream-summary-list :member stream-summary)

(smithy/sdk/shapes:define-structure subscribe-to-shard-event common-lisp:nil
                                    ((records :target-type record-list
                                      :required common-lisp:t :member-name
                                      "Records")
                                     (continuation-sequence-number :target-type
                                      sequence-number :required common-lisp:t
                                      :member-name
                                      "ContinuationSequenceNumber")
                                     (millis-behind-latest :target-type
                                      millis-behind-latest :required
                                      common-lisp:t :member-name
                                      "MillisBehindLatest")
                                     (child-shards :target-type
                                      child-shard-list :member-name
                                      "ChildShards"))
                                    (:shape-name "SubscribeToShardEvent"))

(smithy/sdk/shapes:define-union subscribe-to-shard-event-stream common-lisp:nil
                                ((subscribe-to-shard-event :target-type
                                  subscribe-to-shard-event :member-name
                                  "SubscribeToShardEvent")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "ResourceNotFoundException")
                                 (resource-in-use-exception :target-type
                                  resource-in-use-exception :member-name
                                  "ResourceInUseException")
                                 (kmsdisabled-exception :target-type
                                  kmsdisabled-exception :member-name
                                  "KMSDisabledException")
                                 (kmsinvalid-state-exception :target-type
                                  kmsinvalid-state-exception :member-name
                                  "KMSInvalidStateException")
                                 (kmsaccess-denied-exception :target-type
                                  kmsaccess-denied-exception :member-name
                                  "KMSAccessDeniedException")
                                 (kmsnot-found-exception :target-type
                                  kmsnot-found-exception :member-name
                                  "KMSNotFoundException")
                                 (kmsopt-in-required :target-type
                                  kmsopt-in-required :member-name
                                  "KMSOptInRequired")
                                 (kmsthrottling-exception :target-type
                                  kmsthrottling-exception :member-name
                                  "KMSThrottlingException")
                                 (internal-failure-exception :target-type
                                  internal-failure-exception :member-name
                                  "InternalFailureException"))
                                (:shape-name "SubscribeToShardEventStream"))

(smithy/sdk/shapes:define-input subscribe-to-shard-input common-lisp:nil
                                ((consumer-arn :target-type consumer-arn
                                  :required common-lisp:t :member-name
                                  "ConsumerARN")
                                 (shard-id :target-type shard-id :required
                                  common-lisp:t :member-name "ShardId")
                                 (starting-position :target-type
                                  starting-position :required common-lisp:t
                                  :member-name "StartingPosition"))
                                (:shape-name "SubscribeToShardInput"))

(smithy/sdk/shapes:define-output subscribe-to-shard-output common-lisp:nil
                                 ((event-stream :target-type
                                   subscribe-to-shard-event-stream :required
                                   common-lisp:t :member-name "EventStream"))
                                 (:shape-name "SubscribeToShardOutput"))

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

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-input update-shard-count-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (target-shard-count :target-type
                                  positive-integer-object :required
                                  common-lisp:t :member-name
                                  "TargetShardCount")
                                 (scaling-type :target-type scaling-type
                                  :required common-lisp:t :member-name
                                  "ScalingType")
                                 (stream-arn :target-type stream-arn
                                  :member-name "StreamARN"))
                                (:shape-name "UpdateShardCountInput"))

(smithy/sdk/shapes:define-output update-shard-count-output common-lisp:nil
                                 ((stream-name :target-type stream-name
                                   :member-name "StreamName")
                                  (current-shard-count :target-type
                                   positive-integer-object :member-name
                                   "CurrentShardCount")
                                  (target-shard-count :target-type
                                   positive-integer-object :member-name
                                   "TargetShardCount")
                                  (stream-arn :target-type stream-arn
                                   :member-name "StreamARN"))
                                 (:shape-name "UpdateShardCountOutput"))

(smithy/sdk/shapes:define-input update-stream-mode-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "StreamARN")
                                 (stream-mode-details :target-type
                                  stream-mode-details :required common-lisp:t
                                  :member-name "StreamModeDetails"))
                                (:shape-name "UpdateStreamModeInput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation add-tags-to-stream :shape-name
                                       "AddTagsToStream" :input
                                       add-tags-to-stream-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-stream :shape-name "CreateStream"
                                       :input create-stream-input :output
                                       common-lisp:null :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation decrease-stream-retention-period
                                       :shape-name
                                       "DecreaseStreamRetentionPeriod" :input
                                       decrease-stream-retention-period-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-stream :shape-name "DeleteStream"
                                       :input delete-stream-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation deregister-stream-consumer :shape-name
                                       "DeregisterStreamConsumer" :input
                                       deregister-stream-consumer-input :output
                                       common-lisp:null :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-limits :shape-name
                                       "DescribeLimits" :input
                                       describe-limits-input :output
                                       describe-limits-output :errors
                                       (limit-exceeded-exception))

(smithy/sdk/operation:define-operation describe-stream :shape-name
                                       "DescribeStream" :input
                                       describe-stream-input :output
                                       describe-stream-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-stream-consumer :shape-name
                                       "DescribeStreamConsumer" :input
                                       describe-stream-consumer-input :output
                                       describe-stream-consumer-output :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-stream-summary :shape-name
                                       "DescribeStreamSummary" :input
                                       describe-stream-summary-input :output
                                       describe-stream-summary-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disable-enhanced-monitoring :shape-name
                                       "DisableEnhancedMonitoring" :input
                                       disable-enhanced-monitoring-input
                                       :output enhanced-monitoring-output
                                       :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation enable-enhanced-monitoring :shape-name
                                       "EnableEnhancedMonitoring" :input
                                       enable-enhanced-monitoring-input :output
                                       enhanced-monitoring-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-records :shape-name "GetRecords"
                                       :input get-records-input :output
                                       get-records-output :errors
                                       (access-denied-exception
                                        expired-iterator-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        kmsopt-in-required
                                        kmsthrottling-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-input :output
                                       get-resource-policy-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-shard-iterator :shape-name
                                       "GetShardIterator" :input
                                       get-shard-iterator-input :output
                                       get-shard-iterator-output :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation increase-stream-retention-period
                                       :shape-name
                                       "IncreaseStreamRetentionPeriod" :input
                                       increase-stream-retention-period-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-shards :shape-name "ListShards"
                                       :input list-shards-input :output
                                       list-shards-output :errors
                                       (access-denied-exception
                                        expired-next-token-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-stream-consumers :shape-name
                                       "ListStreamConsumers" :input
                                       list-stream-consumers-input :output
                                       list-stream-consumers-output :errors
                                       (expired-next-token-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-streams :shape-name "ListStreams"
                                       :input list-streams-input :output
                                       list-streams-output :errors
                                       (expired-next-token-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-stream :shape-name
                                       "ListTagsForStream" :input
                                       list-tags-for-stream-input :output
                                       list-tags-for-stream-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation merge-shards :shape-name "MergeShards"
                                       :input merge-shards-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-record :shape-name "PutRecord"
                                       :input put-record-input :output
                                       put-record-output :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        kmsopt-in-required
                                        kmsthrottling-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-records :shape-name "PutRecords"
                                       :input put-records-input :output
                                       put-records-output :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        kmsopt-in-required
                                        kmsthrottling-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation register-stream-consumer :shape-name
                                       "RegisterStreamConsumer" :input
                                       register-stream-consumer-input :output
                                       register-stream-consumer-output :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation remove-tags-from-stream :shape-name
                                       "RemoveTagsFromStream" :input
                                       remove-tags-from-stream-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation split-shard :shape-name "SplitShard"
                                       :input split-shard-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-stream-encryption :shape-name
                                       "StartStreamEncryption" :input
                                       start-stream-encryption-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        kmsopt-in-required
                                        kmsthrottling-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-stream-encryption :shape-name
                                       "StopStreamEncryption" :input
                                       stop-stream-encryption-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation subscribe-to-shard :shape-name
                                       "SubscribeToShard" :input
                                       subscribe-to-shard-input :output
                                       subscribe-to-shard-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-shard-count :shape-name
                                       "UpdateShardCount" :input
                                       update-shard-count-input :output
                                       update-shard-count-output :errors
                                       (access-denied-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-stream-mode :shape-name
                                       "UpdateStreamMode" :input
                                       update-stream-mode-input :output
                                       common-lisp:null :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))
