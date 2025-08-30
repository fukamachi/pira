(uiop/package:define-package #:pira/ebs (:use)
                             (:export #:access-denied-exception
                              #:access-denied-exception-reason #:block
                              #:block-data #:block-index #:block-size
                              #:block-token #:blocks #:boolean #:changed-block
                              #:changed-blocks #:changed-blocks-count
                              #:checksum #:checksum-aggregation-method
                              #:checksum-algorithm #:complete-snapshot
                              #:concurrent-limit-exceeded-exception
                              #:conflict-exception #:data-length #:description
                              #:ebs #:error-message #:get-snapshot-block
                              #:idempotency-token #:internal-server-exception
                              #:kms-key-arn #:list-changed-blocks
                              #:list-snapshot-blocks #:max-results #:owner-id
                              #:page-token #:progress #:put-snapshot-block
                              #:request-throttled-exception
                              #:request-throttled-exception-reason
                              #:resource-not-found-exception
                              #:resource-not-found-exception-reason #:ssetype
                              #:service-quota-exceeded-exception
                              #:service-quota-exceeded-exception-reason
                              #:snapshot-id #:start-snapshot #:status #:tag
                              #:tag-key #:tag-value #:tags #:time-stamp
                              #:timeout #:validation-exception
                              #:validation-exception-reason #:volume-size
                              #:ebs-error))
(common-lisp:in-package #:pira/ebs)

(common-lisp:define-condition ebs-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service ebs :shape-name "Ebs" :version "2019-11-02"
                                   :title "Amazon Elastic Block Store"
                                   :operations
                                   '(complete-snapshot get-snapshot-block
                                     list-changed-blocks list-snapshot-blocks
                                     put-snapshot-block start-snapshot)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "EBS")
                                      ("arnNamespace" . "ebs")
                                      ("cloudFormationName" . "EBS")
                                      ("cloudTrailEventSource"
                                       . "ebs.amazonaws.com")
                                      ("endpointPrefix" . "ebs"))
                                     ("aws.auth#sigv4" ("name" . "ebs"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  access-denied-exception-reason :required
                                  common-lisp:t :member-name "Reason"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class ebs-error))

(smithy/sdk/shapes:define-enum access-denied-exception-reason
    common-lisp:nil
  (:unauthorized-account "UNAUTHORIZED_ACCOUNT")
  (:dependency-access-denied "DEPENDENCY_ACCESS_DENIED"))

(smithy/sdk/shapes:define-structure block common-lisp:nil
                                    ((block-index :target-type block-index
                                      :member-name "BlockIndex")
                                     (block-token :target-type block-token
                                      :member-name "BlockToken"))
                                    (:shape-name "Block"))

(smithy/sdk/shapes:define-type block-data smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type block-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type block-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type block-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blocks :member block)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure changed-block common-lisp:nil
                                    ((block-index :target-type block-index
                                      :member-name "BlockIndex")
                                     (first-block-token :target-type
                                      block-token :member-name
                                      "FirstBlockToken")
                                     (second-block-token :target-type
                                      block-token :member-name
                                      "SecondBlockToken"))
                                    (:shape-name "ChangedBlock"))

(smithy/sdk/shapes:define-list changed-blocks :member changed-block)

(smithy/sdk/shapes:define-type changed-blocks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type checksum smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum checksum-aggregation-method
    common-lisp:nil
  (:checksum-aggregation-linear "LINEAR"))

(smithy/sdk/shapes:define-enum checksum-algorithm
    common-lisp:nil
  (:checksum-algorithm-sha256 "SHA256"))

(smithy/sdk/shapes:define-input complete-snapshot-request common-lisp:nil
                                ((snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId" :http-label common-lisp:t)
                                 (changed-blocks-count :target-type
                                  changed-blocks-count :required common-lisp:t
                                  :member-name "ChangedBlocksCount"
                                  :http-header "x-amz-ChangedBlocksCount")
                                 (checksum :target-type checksum :member-name
                                  "Checksum" :http-header "x-amz-Checksum")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-Checksum-Algorithm")
                                 (checksum-aggregation-method :target-type
                                  checksum-aggregation-method :member-name
                                  "ChecksumAggregationMethod" :http-header
                                  "x-amz-Checksum-Aggregation-Method"))
                                (:shape-name "CompleteSnapshotRequest"))

(smithy/sdk/shapes:define-output complete-snapshot-response common-lisp:nil
                                 ((status :target-type status :member-name
                                   "Status"))
                                 (:shape-name "CompleteSnapshotResponse"))

(smithy/sdk/shapes:define-error concurrent-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ConcurrentLimitExceededException")
                                (:error-code 400) (:base-class ebs-error))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class ebs-error))

(smithy/sdk/shapes:define-type data-length smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-snapshot-block-request common-lisp:nil
                                ((snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId" :http-label common-lisp:t)
                                 (block-index :target-type block-index
                                  :required common-lisp:t :member-name
                                  "BlockIndex" :http-label common-lisp:t)
                                 (block-token :target-type block-token
                                  :required common-lisp:t :member-name
                                  "BlockToken" :http-query "blockToken"))
                                (:shape-name "GetSnapshotBlockRequest"))

(smithy/sdk/shapes:define-output get-snapshot-block-response common-lisp:nil
                                 ((data-length :target-type data-length
                                   :member-name "DataLength" :http-header
                                   "x-amz-Data-Length")
                                  (block-data :target-type block-data
                                   :member-name "BlockData" :http-payload
                                   common-lisp:t)
                                  (checksum :target-type checksum :member-name
                                   "Checksum" :http-header "x-amz-Checksum")
                                  (checksum-algorithm :target-type
                                   checksum-algorithm :member-name
                                   "ChecksumAlgorithm" :http-header
                                   "x-amz-Checksum-Algorithm"))
                                 (:shape-name "GetSnapshotBlockResponse"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500) (:base-class ebs-error))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-changed-blocks-request common-lisp:nil
                                ((first-snapshot-id :target-type snapshot-id
                                  :member-name "FirstSnapshotId" :http-query
                                  "firstSnapshotId")
                                 (second-snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SecondSnapshotId" :http-label common-lisp:t)
                                 (next-token :target-type page-token
                                  :member-name "NextToken" :http-query
                                  "pageToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (starting-block-index :target-type block-index
                                  :member-name "StartingBlockIndex" :http-query
                                  "startingBlockIndex"))
                                (:shape-name "ListChangedBlocksRequest"))

(smithy/sdk/shapes:define-output list-changed-blocks-response common-lisp:nil
                                 ((changed-blocks :target-type changed-blocks
                                   :member-name "ChangedBlocks")
                                  (expiry-time :target-type time-stamp
                                   :member-name "ExpiryTime")
                                  (volume-size :target-type volume-size
                                   :member-name "VolumeSize")
                                  (block-size :target-type block-size
                                   :member-name "BlockSize")
                                  (next-token :target-type page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChangedBlocksResponse"))

(smithy/sdk/shapes:define-input list-snapshot-blocks-request common-lisp:nil
                                ((snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId" :http-label common-lisp:t)
                                 (next-token :target-type page-token
                                  :member-name "NextToken" :http-query
                                  "pageToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (starting-block-index :target-type block-index
                                  :member-name "StartingBlockIndex" :http-query
                                  "startingBlockIndex"))
                                (:shape-name "ListSnapshotBlocksRequest"))

(smithy/sdk/shapes:define-output list-snapshot-blocks-response common-lisp:nil
                                 ((blocks :target-type blocks :member-name
                                   "Blocks")
                                  (expiry-time :target-type time-stamp
                                   :member-name "ExpiryTime")
                                  (volume-size :target-type volume-size
                                   :member-name "VolumeSize")
                                  (block-size :target-type block-size
                                   :member-name "BlockSize")
                                  (next-token :target-type page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSnapshotBlocksResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type progress smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-snapshot-block-request common-lisp:nil
                                ((snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId" :http-label common-lisp:t)
                                 (block-index :target-type block-index
                                  :required common-lisp:t :member-name
                                  "BlockIndex" :http-label common-lisp:t)
                                 (block-data :target-type block-data :required
                                  common-lisp:t :member-name "BlockData"
                                  :http-payload common-lisp:t)
                                 (data-length :target-type data-length
                                  :required common-lisp:t :member-name
                                  "DataLength" :http-header
                                  "x-amz-Data-Length")
                                 (progress :target-type progress :member-name
                                  "Progress" :http-header "x-amz-Progress")
                                 (checksum :target-type checksum :required
                                  common-lisp:t :member-name "Checksum"
                                  :http-header "x-amz-Checksum")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :required common-lisp:t
                                  :member-name "ChecksumAlgorithm" :http-header
                                  "x-amz-Checksum-Algorithm"))
                                (:shape-name "PutSnapshotBlockRequest"))

(smithy/sdk/shapes:define-output put-snapshot-block-response common-lisp:nil
                                 ((checksum :target-type checksum :member-name
                                   "Checksum" :http-header "x-amz-Checksum")
                                  (checksum-algorithm :target-type
                                   checksum-algorithm :member-name
                                   "ChecksumAlgorithm" :http-header
                                   "x-amz-Checksum-Algorithm"))
                                 (:shape-name "PutSnapshotBlockResponse"))

(smithy/sdk/shapes:define-error request-throttled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  request-throttled-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "RequestThrottledException")
                                (:error-code 400) (:base-class ebs-error))

(smithy/sdk/shapes:define-enum request-throttled-exception-reason
    common-lisp:nil
  (:account-throttled "ACCOUNT_THROTTLED")
  (:dependency-request-throttled "DEPENDENCY_REQUEST_THROTTLED")
  (:resource-level-throttle "RESOURCE_LEVEL_THROTTLE"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  resource-not-found-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class ebs-error))

(smithy/sdk/shapes:define-enum resource-not-found-exception-reason
    common-lisp:nil
  (:snapshot-not-found "SNAPSHOT_NOT_FOUND")
  (:grant-not-found "GRANT_NOT_FOUND")
  (:dependency-resource-not-found "DEPENDENCY_RESOURCE_NOT_FOUND")
  (:image-not-found "IMAGE_NOT_FOUND"))

(smithy/sdk/shapes:define-enum ssetype
    common-lisp:nil
  (:sse-ebs "sse-ebs")
  (:sse-kms "sse-kms")
  (:none "none"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  service-quota-exceeded-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class ebs-error))

(smithy/sdk/shapes:define-enum service-quota-exceeded-exception-reason
    common-lisp:nil
  (:dependency-service-quota-exceeded "DEPENDENCY_SERVICE_QUOTA_EXCEEDED"))

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-snapshot-request common-lisp:nil
                                ((volume-size :target-type volume-size
                                  :required common-lisp:t :member-name
                                  "VolumeSize")
                                 (parent-snapshot-id :target-type snapshot-id
                                  :member-name "ParentSnapshotId")
                                 (tags :target-type tags :member-name "Tags")
                                 (description :target-type description
                                  :member-name "Description")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (encrypted :target-type boolean :member-name
                                  "Encrypted")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyArn")
                                 (timeout :target-type timeout :member-name
                                  "Timeout"))
                                (:shape-name "StartSnapshotRequest"))

(smithy/sdk/shapes:define-output start-snapshot-response common-lisp:nil
                                 ((description :target-type description
                                   :member-name "Description")
                                  (snapshot-id :target-type snapshot-id
                                   :member-name "SnapshotId")
                                  (owner-id :target-type owner-id :member-name
                                   "OwnerId")
                                  (status :target-type status :member-name
                                   "Status")
                                  (start-time :target-type time-stamp
                                   :member-name "StartTime")
                                  (volume-size :target-type volume-size
                                   :member-name "VolumeSize")
                                  (block-size :target-type block-size
                                   :member-name "BlockSize")
                                  (tags :target-type tags :member-name "Tags")
                                  (parent-snapshot-id :target-type snapshot-id
                                   :member-name "ParentSnapshotId")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "KmsKeyArn")
                                  (sse-type :target-type ssetype :member-name
                                   "SseType"))
                                 (:shape-name "StartSnapshotResponse"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:completed "completed")
  (:pending "pending")
  (:error "error"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class ebs-error))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:invalid-customer-key "INVALID_CUSTOMER_KEY")
  (:invalid-page-token "INVALID_PAGE_TOKEN")
  (:invalid-block-token "INVALID_BLOCK_TOKEN")
  (:invalid-grant-token "INVALID_GRANT_TOKEN")
  (:invalid-snapshot-id "INVALID_SNAPSHOT_ID")
  (:unrelated-snapshots "UNRELATED_SNAPSHOTS")
  (:invalid-block "INVALID_BLOCK")
  (:invalid-content-encoding "INVALID_CONTENT_ENCODING")
  (:invalid-tag "INVALID_TAG")
  (:invalid-dependency-request "INVALID_DEPENDENCY_REQUEST")
  (:invalid-parameter-value "INVALID_PARAMETER_VALUE")
  (:invalid-volume-size "INVALID_VOLUME_SIZE")
  (:conflicting-block-update "CONFLICTING_BLOCK_UPDATE")
  (:invalid-image-id "INVALID_IMAGE_ID")
  (:write-request-timeout "WRITE_REQUEST_TIMEOUT"))

(smithy/sdk/shapes:define-type volume-size smithy/sdk/smithy-types:long)

(smithy/sdk/operation:define-operation complete-snapshot :shape-name
                                       "CompleteSnapshot" :input
                                       complete-snapshot-request :output
                                       complete-snapshot-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/snapshots/completion/{SnapshotId}"
                                       :code 202)

(smithy/sdk/operation:define-operation get-snapshot-block :shape-name
                                       "GetSnapshotBlock" :input
                                       get-snapshot-block-request :output
                                       get-snapshot-block-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/snapshots/{SnapshotId}/blocks/{BlockIndex}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-changed-blocks :shape-name
                                       "ListChangedBlocks" :input
                                       list-changed-blocks-request :output
                                       list-changed-blocks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/snapshots/{SecondSnapshotId}/changedblocks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-snapshot-blocks :shape-name
                                       "ListSnapshotBlocks" :input
                                       list-snapshot-blocks-request :output
                                       list-snapshot-blocks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/snapshots/{SnapshotId}/blocks" :code
                                       200)

(smithy/sdk/operation:define-operation put-snapshot-block :shape-name
                                       "PutSnapshotBlock" :input
                                       put-snapshot-block-request :output
                                       put-snapshot-block-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/snapshots/{SnapshotId}/blocks/{BlockIndex}"
                                       :code 201)

(smithy/sdk/operation:define-operation start-snapshot :shape-name
                                       "StartSnapshot" :input
                                       start-snapshot-request :output
                                       start-snapshot-response :errors
                                       (access-denied-exception
                                        concurrent-limit-exceeded-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/snapshots" :code
                                       201)
