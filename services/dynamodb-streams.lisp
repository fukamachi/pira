(uiop/package:define-package #:pira/dynamodb-streams (:use)
                             (:export #:attribute-map #:attribute-name
                              #:attribute-value #:binary-attribute-value
                              #:binary-set-attribute-value
                              #:boolean-attribute-value #:date
                              #:describe-stream #:dynamo-dbstreams-20120810
                              #:error-message #:expired-iterator-exception
                              #:get-records #:get-shard-iterator #:identity
                              #:internal-server-error #:key-schema
                              #:key-schema-attribute-name #:key-schema-element
                              #:key-type #:limit-exceeded-exception
                              #:list-attribute-value #:list-streams
                              #:map-attribute-value #:null-attribute-value
                              #:number-attribute-value
                              #:number-set-attribute-value #:operation-type
                              #:positive-integer-object #:positive-long-object
                              #:record #:record-list
                              #:resource-not-found-exception #:sequence-number
                              #:sequence-number-range #:shard
                              #:shard-description-list #:shard-filter
                              #:shard-filter-type #:shard-id #:shard-iterator
                              #:shard-iterator-type #:stream #:stream-arn
                              #:stream-description #:stream-list
                              #:stream-record #:stream-status
                              #:stream-view-type #:string
                              #:string-attribute-value
                              #:string-set-attribute-value #:table-name
                              #:trimmed-data-access-exception
                              #:dynamodb-streams-error))
(common-lisp:in-package #:pira/dynamodb-streams)

(common-lisp:define-condition dynamodb-streams-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service dynamo-dbstreams-20120810 :shape-name
                                   "DynamoDBStreams_20120810" :version
                                   "2012-08-10" :title
                                   "Amazon DynamoDB Streams" :operations
                                   '(describe-stream get-records
                                     get-shard-iterator list-streams)
                                   :xml-namespace
                                   '(:uri
                                     "http://dynamodb.amazonaws.com/doc/2012-08-10/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "DynamoDB Streams")
                                      ("arnNamespace" . "dynamodb")
                                      ("cloudFormationName"
                                       . "DynamoDBStreams")
                                      ("cloudTrailEventSource"
                                       . "dynamodbstreams.amazonaws.com")
                                      ("docId" . "streams-dynamodb-2012-08-10")
                                      ("endpointPrefix" . "streams.dynamodb"))
                                     ("aws.auth#sigv4" ("name" . "dynamodb"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-map attribute-map :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type binary-attribute-value
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list binary-set-attribute-value :member
                               binary-attribute-value)

(smithy/sdk/shapes:define-type boolean-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input describe-stream-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "StreamArn")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit")
                                 (exclusive-start-shard-id :target-type
                                  shard-id :member-name
                                  "ExclusiveStartShardId")
                                 (shard-filter :target-type shard-filter
                                  :member-name "ShardFilter"))
                                (:shape-name "DescribeStreamInput"))

(smithy/sdk/shapes:define-output describe-stream-output common-lisp:nil
                                 ((stream-description :target-type
                                   stream-description :member-name
                                   "StreamDescription"))
                                 (:shape-name "DescribeStreamOutput"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error expired-iterator-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExpiredIteratorException")
                                (:error-code 400)
                                (:base-class dynamodb-streams-error))

(smithy/sdk/shapes:define-input get-records-input common-lisp:nil
                                ((shard-iterator :target-type shard-iterator
                                  :required common-lisp:t :member-name
                                  "ShardIterator")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit"))
                                (:shape-name "GetRecordsInput"))

(smithy/sdk/shapes:define-output get-records-output common-lisp:nil
                                 ((records :target-type record-list
                                   :member-name "Records")
                                  (next-shard-iterator :target-type
                                   shard-iterator :member-name
                                   "NextShardIterator"))
                                 (:shape-name "GetRecordsOutput"))

(smithy/sdk/shapes:define-input get-shard-iterator-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "StreamArn")
                                 (shard-id :target-type shard-id :required
                                  common-lisp:t :member-name "ShardId")
                                 (shard-iterator-type :target-type
                                  shard-iterator-type :required common-lisp:t
                                  :member-name "ShardIteratorType")
                                 (sequence-number :target-type sequence-number
                                  :member-name "SequenceNumber"))
                                (:shape-name "GetShardIteratorInput"))

(smithy/sdk/shapes:define-output get-shard-iterator-output common-lisp:nil
                                 ((shard-iterator :target-type shard-iterator
                                   :member-name "ShardIterator"))
                                 (:shape-name "GetShardIteratorOutput"))

(smithy/sdk/shapes:define-structure identity common-lisp:nil
                                    ((principal-id :target-type string
                                      :member-name "PrincipalId")
                                     (type :target-type string :member-name
                                      "Type"))
                                    (:shape-name "Identity"))

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500)
                                (:base-class dynamodb-streams-error))

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

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class dynamodb-streams-error))

(smithy/sdk/shapes:define-list list-attribute-value :member attribute-value)

(smithy/sdk/shapes:define-input list-streams-input common-lisp:nil
                                ((table-name :target-type table-name
                                  :member-name "TableName")
                                 (limit :target-type positive-integer-object
                                  :member-name "Limit")
                                 (exclusive-start-stream-arn :target-type
                                  stream-arn :member-name
                                  "ExclusiveStartStreamArn"))
                                (:shape-name "ListStreamsInput"))

(smithy/sdk/shapes:define-output list-streams-output common-lisp:nil
                                 ((streams :target-type stream-list
                                   :member-name "Streams")
                                  (last-evaluated-stream-arn :target-type
                                   stream-arn :member-name
                                   "LastEvaluatedStreamArn"))
                                 (:shape-name "ListStreamsOutput"))

(smithy/sdk/shapes:define-map map-attribute-value :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type null-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type number-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list number-set-attribute-value :member
                               number-attribute-value)

(smithy/sdk/shapes:define-enum operation-type
    common-lisp:nil
  (:insert "INSERT")
  (:modify "MODIFY")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-type positive-integer-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-long-object
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((event-id :target-type string :member-name
                                      "eventID")
                                     (event-name :target-type operation-type
                                      :member-name "eventName")
                                     (event-version :target-type string
                                      :member-name "eventVersion")
                                     (event-source :target-type string
                                      :member-name "eventSource")
                                     (aws-region :target-type string
                                      :member-name "awsRegion")
                                     (dynamodb :target-type stream-record
                                      :member-name "dynamodb")
                                     (user-identity :target-type identity
                                      :member-name "userIdentity"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-list record-list :member record)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class dynamodb-streams-error))

(smithy/sdk/shapes:define-type sequence-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sequence-number-range common-lisp:nil
                                    ((starting-sequence-number :target-type
                                      sequence-number :member-name
                                      "StartingSequenceNumber")
                                     (ending-sequence-number :target-type
                                      sequence-number :member-name
                                      "EndingSequenceNumber"))
                                    (:shape-name "SequenceNumberRange"))

(smithy/sdk/shapes:define-structure shard common-lisp:nil
                                    ((shard-id :target-type shard-id
                                      :member-name "ShardId")
                                     (sequence-number-range :target-type
                                      sequence-number-range :member-name
                                      "SequenceNumberRange")
                                     (parent-shard-id :target-type shard-id
                                      :member-name "ParentShardId"))
                                    (:shape-name "Shard"))

(smithy/sdk/shapes:define-list shard-description-list :member shard)

(smithy/sdk/shapes:define-structure shard-filter common-lisp:nil
                                    ((type :target-type shard-filter-type
                                      :member-name "Type")
                                     (shard-id :target-type shard-id
                                      :member-name "ShardId"))
                                    (:shape-name "ShardFilter"))

(smithy/sdk/shapes:define-enum shard-filter-type
    common-lisp:nil
  (:child-shards "CHILD_SHARDS"))

(smithy/sdk/shapes:define-type shard-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type shard-iterator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum shard-iterator-type
    common-lisp:nil
  (:trim-horizon "TRIM_HORIZON")
  (:latest "LATEST")
  (:at-sequence-number "AT_SEQUENCE_NUMBER")
  (:after-sequence-number "AFTER_SEQUENCE_NUMBER"))

(smithy/sdk/shapes:define-structure stream common-lisp:nil
                                    ((stream-arn :target-type stream-arn
                                      :member-name "StreamArn")
                                     (table-name :target-type table-name
                                      :member-name "TableName")
                                     (stream-label :target-type string
                                      :member-name "StreamLabel"))
                                    (:shape-name "Stream"))

(smithy/sdk/shapes:define-type stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-description common-lisp:nil
                                    ((stream-arn :target-type stream-arn
                                      :member-name "StreamArn")
                                     (stream-label :target-type string
                                      :member-name "StreamLabel")
                                     (stream-status :target-type stream-status
                                      :member-name "StreamStatus")
                                     (stream-view-type :target-type
                                      stream-view-type :member-name
                                      "StreamViewType")
                                     (creation-request-date-time :target-type
                                      date :member-name
                                      "CreationRequestDateTime")
                                     (table-name :target-type table-name
                                      :member-name "TableName")
                                     (key-schema :target-type key-schema
                                      :member-name "KeySchema")
                                     (shards :target-type
                                      shard-description-list :member-name
                                      "Shards")
                                     (last-evaluated-shard-id :target-type
                                      shard-id :member-name
                                      "LastEvaluatedShardId"))
                                    (:shape-name "StreamDescription"))

(smithy/sdk/shapes:define-list stream-list :member stream)

(smithy/sdk/shapes:define-structure stream-record common-lisp:nil
                                    ((approximate-creation-date-time
                                      :target-type date :member-name
                                      "ApproximateCreationDateTime")
                                     (keys :target-type attribute-map
                                      :member-name "Keys")
                                     (new-image :target-type attribute-map
                                      :member-name "NewImage")
                                     (old-image :target-type attribute-map
                                      :member-name "OldImage")
                                     (sequence-number :target-type
                                      sequence-number :member-name
                                      "SequenceNumber")
                                     (size-bytes :target-type
                                      positive-long-object :member-name
                                      "SizeBytes")
                                     (stream-view-type :target-type
                                      stream-view-type :member-name
                                      "StreamViewType"))
                                    (:shape-name "StreamRecord"))

(smithy/sdk/shapes:define-enum stream-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED"))

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

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error trimmed-data-access-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TrimmedDataAccessException")
                                (:error-code 400)
                                (:base-class dynamodb-streams-error))

(smithy/sdk/operation:define-operation describe-stream :shape-name
                                       "DescribeStream" :input
                                       describe-stream-input :output
                                       describe-stream-output :errors
                                       (internal-server-error
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-records :shape-name "GetRecords"
                                       :input get-records-input :output
                                       get-records-output :errors
                                       (expired-iterator-exception
                                        internal-server-error
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        trimmed-data-access-exception))

(smithy/sdk/operation:define-operation get-shard-iterator :shape-name
                                       "GetShardIterator" :input
                                       get-shard-iterator-input :output
                                       get-shard-iterator-output :errors
                                       (internal-server-error
                                        resource-not-found-exception
                                        trimmed-data-access-exception))

(smithy/sdk/operation:define-operation list-streams :shape-name "ListStreams"
                                       :input list-streams-input :output
                                       list-streams-output :errors
                                       (internal-server-error
                                        resource-not-found-exception))
