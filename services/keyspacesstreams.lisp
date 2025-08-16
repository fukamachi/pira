(uiop/package:define-package #:pira/keyspacesstreams (:use)
                             (:export #:date #:get-records #:get-shard-iterator
                              #:get-stream #:keyspace-name #:keyspaces-cell
                              #:keyspaces-cell-list #:keyspaces-cell-map
                              #:keyspaces-cell-map-definition
                              #:keyspaces-cell-value #:keyspaces-cells
                              #:keyspaces-keys-map #:keyspaces-metadata
                              #:keyspaces-row #:keyspaces-streams
                              #:keyspaces-udt-map #:list-streams #:origin-type
                              #:record #:record-list #:sequence-number
                              #:sequence-number-range #:shard
                              #:shard-description-list #:shard-filter
                              #:shard-filter-type #:shard-id #:shard-id-list
                              #:shard-id-token #:shard-iterator
                              #:shard-iterator-type #:stream #:stream-arn
                              #:stream-arn-token #:stream-list #:stream-status
                              #:stream-view-type #:table-name
                              #:validation-exception-type))
(common-lisp:in-package #:pira/keyspacesstreams)

(smithy/sdk/service:define-service keyspaces-streams :shape-name
                                   "KeyspacesStreams" :version "2024-09-09"
                                   :title "Amazon Keyspaces Streams" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "KeyspacesStreams")
                                      ("arnNamespace" . "cassandra")
                                      ("cloudTrailEventSource"
                                       . "cassandra-streams.amazonaws.com")
                                      ("endpointPrefix" . "cassandra-streams"))
                                     ("aws.auth#sigv4" ("name" . "cassandra"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input get-records-input common-lisp:nil
                                ((shard-iterator :target-type shard-iterator
                                  :required common-lisp:t :member-name
                                  "shardIterator")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "GetRecordsInput"))

(smithy/sdk/shapes:define-output get-records-output common-lisp:nil
                                 ((change-records :target-type record-list
                                   :member-name "changeRecords")
                                  (next-shard-iterator :target-type
                                   shard-iterator :member-name
                                   "nextShardIterator"))
                                 (:shape-name "GetRecordsOutput"))

(smithy/sdk/shapes:define-input get-shard-iterator-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "streamArn")
                                 (shard-id :target-type shard-id :required
                                  common-lisp:t :member-name "shardId")
                                 (shard-iterator-type :target-type
                                  shard-iterator-type :required common-lisp:t
                                  :member-name "shardIteratorType")
                                 (sequence-number :target-type sequence-number
                                  :member-name "sequenceNumber"))
                                (:shape-name "GetShardIteratorInput"))

(smithy/sdk/shapes:define-output get-shard-iterator-output common-lisp:nil
                                 ((shard-iterator :target-type shard-iterator
                                   :member-name "shardIterator"))
                                 (:shape-name "GetShardIteratorOutput"))

(smithy/sdk/shapes:define-input get-stream-input common-lisp:nil
                                ((stream-arn :target-type stream-arn :required
                                  common-lisp:t :member-name "streamArn")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (shard-filter :target-type shard-filter
                                  :member-name "shardFilter")
                                 (next-token :target-type shard-id-token
                                  :member-name "nextToken"))
                                (:shape-name "GetStreamInput"))

(smithy/sdk/shapes:define-output get-stream-output common-lisp:nil
                                 ((stream-arn :target-type stream-arn :required
                                   common-lisp:t :member-name "streamArn")
                                  (stream-label :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "streamLabel")
                                  (stream-status :target-type stream-status
                                   :required common-lisp:t :member-name
                                   "streamStatus")
                                  (stream-view-type :target-type
                                   stream-view-type :required common-lisp:t
                                   :member-name "streamViewType")
                                  (creation-request-date-time :target-type date
                                   :required common-lisp:t :member-name
                                   "creationRequestDateTime")
                                  (keyspace-name :target-type keyspace-name
                                   :required common-lisp:t :member-name
                                   "keyspaceName")
                                  (table-name :target-type table-name :required
                                   common-lisp:t :member-name "tableName")
                                  (shards :target-type shard-description-list
                                   :member-name "shards")
                                  (next-token :target-type shard-id-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetStreamOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type keyspace-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure keyspaces-cell common-lisp:nil
                                    ((value :target-type keyspaces-cell-value
                                      :member-name "value")
                                     (metadata :target-type keyspaces-metadata
                                      :member-name "metadata"))
                                    (:shape-name "KeyspacesCell"))

(smithy/sdk/shapes:define-list keyspaces-cell-list :member keyspaces-cell)

(smithy/sdk/shapes:define-list keyspaces-cell-map :member
                               keyspaces-cell-map-definition)

(smithy/sdk/shapes:define-structure keyspaces-cell-map-definition
                                    common-lisp:nil
                                    ((key :target-type keyspaces-cell-value
                                      :member-name "key")
                                     (value :target-type keyspaces-cell-value
                                      :member-name "value")
                                     (metadata :target-type keyspaces-metadata
                                      :member-name "metadata"))
                                    (:shape-name "KeyspacesCellMapDefinition"))

(smithy/sdk/shapes:define-union keyspaces-cell-value common-lisp:nil
                                ((ascii-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "asciiT")
                                 (bigint-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "bigintT")
                                 (blob-t :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "blobT")
                                 (bool-t :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "boolT")
                                 (counter-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "counterT")
                                 (date-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "dateT")
                                 (decimal-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "decimalT")
                                 (double-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "doubleT")
                                 (float-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "floatT")
                                 (inet-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "inetT")
                                 (int-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "intT")
                                 (list-t :target-type keyspaces-cell-list
                                  :member-name "listT")
                                 (map-t :target-type keyspaces-cell-map
                                  :member-name "mapT")
                                 (set-t :target-type keyspaces-cell-list
                                  :member-name "setT")
                                 (smallint-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "smallintT")
                                 (text-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "textT")
                                 (time-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "timeT")
                                 (timestamp-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "timestampT")
                                 (timeuuid-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "timeuuidT")
                                 (tinyint-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "tinyintT")
                                 (tuple-t :target-type keyspaces-cell-list
                                  :member-name "tupleT")
                                 (uuid-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "uuidT")
                                 (varchar-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "varcharT")
                                 (varint-t :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "varintT")
                                 (udt-t :target-type keyspaces-udt-map
                                  :member-name "udtT"))
                                (:shape-name "KeyspacesCellValue"))

(smithy/sdk/shapes:define-map keyspaces-cells :key
                              smithy/sdk/smithy-types:string :value
                              keyspaces-cell)

(smithy/sdk/shapes:define-map keyspaces-keys-map :key
                              smithy/sdk/smithy-types:string :value
                              keyspaces-cell-value)

(smithy/sdk/shapes:define-structure keyspaces-metadata common-lisp:nil
                                    ((expiration-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "expirationTime")
                                     (write-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "writeTime"))
                                    (:shape-name "KeyspacesMetadata"))

(smithy/sdk/shapes:define-structure keyspaces-row common-lisp:nil
                                    ((value-cells :target-type keyspaces-cells
                                      :member-name "valueCells")
                                     (static-cells :target-type keyspaces-cells
                                      :member-name "staticCells")
                                     (row-metadata :target-type
                                      keyspaces-metadata :member-name
                                      "rowMetadata"))
                                    (:shape-name "KeyspacesRow"))

(smithy/sdk/shapes:define-map keyspaces-udt-map :key
                              smithy/sdk/smithy-types:string :value
                              keyspaces-cell)

(smithy/sdk/shapes:define-input list-streams-input common-lisp:nil
                                ((keyspace-name :target-type keyspace-name
                                  :member-name "keyspaceName")
                                 (table-name :target-type table-name
                                  :member-name "tableName")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type stream-arn-token
                                  :member-name "nextToken"))
                                (:shape-name "ListStreamsInput"))

(smithy/sdk/shapes:define-output list-streams-output common-lisp:nil
                                 ((streams :target-type stream-list
                                   :member-name "streams")
                                  (next-token :target-type stream-arn-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStreamsOutput"))

(smithy/sdk/shapes:define-enum origin-type
    common-lisp:nil
  (:user "USER")
  (:replication "REPLICATION")
  (:ttl "TTL"))

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((event-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "eventVersion")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (origin :target-type origin-type
                                      :member-name "origin")
                                     (partition-keys :target-type
                                      keyspaces-keys-map :member-name
                                      "partitionKeys")
                                     (clustering-keys :target-type
                                      keyspaces-keys-map :member-name
                                      "clusteringKeys")
                                     (new-image :target-type keyspaces-row
                                      :member-name "newImage")
                                     (old-image :target-type keyspaces-row
                                      :member-name "oldImage")
                                     (sequence-number :target-type
                                      sequence-number :member-name
                                      "sequenceNumber"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-list record-list :member record)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sequence-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sequence-number-range common-lisp:nil
                                    ((starting-sequence-number :target-type
                                      sequence-number :member-name
                                      "startingSequenceNumber")
                                     (ending-sequence-number :target-type
                                      sequence-number :member-name
                                      "endingSequenceNumber"))
                                    (:shape-name "SequenceNumberRange"))

(smithy/sdk/shapes:define-structure shard common-lisp:nil
                                    ((shard-id :target-type shard-id
                                      :member-name "shardId")
                                     (sequence-number-range :target-type
                                      sequence-number-range :member-name
                                      "sequenceNumberRange")
                                     (parent-shard-ids :target-type
                                      shard-id-list :member-name
                                      "parentShardIds"))
                                    (:shape-name "Shard"))

(smithy/sdk/shapes:define-list shard-description-list :member shard)

(smithy/sdk/shapes:define-structure shard-filter common-lisp:nil
                                    ((type :target-type shard-filter-type
                                      :member-name "type")
                                     (shard-id :target-type shard-id
                                      :member-name "shardId"))
                                    (:shape-name "ShardFilter"))

(smithy/sdk/shapes:define-enum shard-filter-type
    common-lisp:nil
  (:child-shards "CHILD_SHARDS"))

(smithy/sdk/shapes:define-type shard-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list shard-id-list :member shard-id)

(smithy/sdk/shapes:define-type shard-id-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type shard-iterator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum shard-iterator-type
    common-lisp:nil
  (:trim-horizon "TRIM_HORIZON")
  (:latest "LATEST")
  (:at-sequence-number "AT_SEQUENCE_NUMBER")
  (:after-sequence-number "AFTER_SEQUENCE_NUMBER"))

(smithy/sdk/shapes:define-structure stream common-lisp:nil
                                    ((stream-arn :target-type stream-arn
                                      :required common-lisp:t :member-name
                                      "streamArn")
                                     (keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (stream-label :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "streamLabel"))
                                    (:shape-name "Stream"))

(smithy/sdk/shapes:define-type stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stream-arn-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list stream-list :member stream)

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

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (error-code :target-type
                                  validation-exception-type :member-name
                                  "errorCode"))
                                (:shape-name "ValidationException")
                                (:error-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-type
    common-lisp:nil
  (:invalid-format "InvalidFormat")
  (:trimmed-data-access "TrimmedDataAccess")
  (:expired-iterator "ExpiredIterator")
  (:expired-next-token "ExpiredNextToken"))

(smithy/sdk/operation:define-operation get-records :shape-name "GetRecords"
                                       :input get-records-input :output
                                       get-records-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-shard-iterator :shape-name
                                       "GetShardIterator" :input
                                       get-shard-iterator-input :output
                                       get-shard-iterator-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-stream :shape-name "GetStream"
                                       :input get-stream-input :output
                                       get-stream-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-streams :shape-name "ListStreams"
                                       :input list-streams-input :output
                                       list-streams-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
