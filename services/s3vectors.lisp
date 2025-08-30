(uiop/package:define-package #:pira/s3vectors (:use)
                             (:export #:access-denied-exception
                              #:conflict-exception #:create-index
                              #:create-vector-bucket #:data-type #:delete-index
                              #:delete-vector-bucket
                              #:delete-vector-bucket-policy #:delete-vectors
                              #:delete-vectors-input-list #:dimension
                              #:distance-metric #:encryption-configuration
                              #:exception-message #:float32vector-data
                              #:get-index #:get-output-vector
                              #:get-vector-bucket #:get-vector-bucket-policy
                              #:get-vectors #:get-vectors-input-list
                              #:get-vectors-output-list #:index #:index-arn
                              #:index-name #:index-resource #:index-summary
                              #:internal-server-exception
                              #:kms-disabled-exception
                              #:kms-invalid-key-usage-exception
                              #:kms-invalid-state-exception #:kms-key-arn
                              #:kms-not-found-exception #:list-indexes
                              #:list-indexes-max-results
                              #:list-indexes-next-token
                              #:list-indexes-output-list #:list-indexes-prefix
                              #:list-output-vector #:list-vector-buckets
                              #:list-vector-buckets-max-results
                              #:list-vector-buckets-next-token
                              #:list-vector-buckets-output-list
                              #:list-vector-buckets-prefix #:list-vectors
                              #:list-vectors-max-results
                              #:list-vectors-next-token
                              #:list-vectors-output-list
                              #:list-vectors-segment-count
                              #:list-vectors-segment-index
                              #:metadata-configuration #:metadata-key
                              #:non-filterable-metadata-keys
                              #:not-found-exception #:put-input-vector
                              #:put-vector-bucket-policy #:put-vectors
                              #:put-vectors-input-list #:query-output-vector
                              #:query-vectors #:query-vectors-output-list
                              #:s3vectors #:service-quota-exceeded-exception
                              #:service-unavailable-exception #:sse-type
                              #:too-many-requests-exception #:top-k
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list #:vector-bucket
                              #:vector-bucket-arn #:vector-bucket-name
                              #:vector-bucket-policy #:vector-bucket-resource
                              #:vector-bucket-summary #:vector-data
                              #:vector-key #:vector-metadata #:vector-resource
                              #:s3vectors-error))
(common-lisp:in-package #:pira/s3vectors)

(common-lisp:define-condition s3vectors-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service s3vectors :shape-name "S3Vectors" :version
                                   "2025-07-15" :title "Amazon S3 Vectors"
                                   :operations 'common-lisp:nil :errors
                                   '(access-denied-exception
                                     internal-server-exception
                                     service-quota-exceeded-exception
                                     too-many-requests-exception
                                     validation-exception)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "S3Vectors")
                                      ("arnNamespace" . "s3vectors")
                                      ("endpointPrefix" . "s3vectors"))
                                     ("aws.auth#sigv4" ("name" . "s3vectors"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-input create-index-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn")
                                 (index-name :target-type index-name :required
                                  common-lisp:t :member-name "indexName")
                                 (data-type :target-type data-type :required
                                  common-lisp:t :member-name "dataType")
                                 (dimension :target-type dimension :required
                                  common-lisp:t :member-name "dimension")
                                 (distance-metric :target-type distance-metric
                                  :required common-lisp:t :member-name
                                  "distanceMetric")
                                 (metadata-configuration :target-type
                                  metadata-configuration :member-name
                                  "metadataConfiguration"))
                                (:shape-name "CreateIndexInput"))

(smithy/sdk/shapes:define-output create-index-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateIndexOutput"))

(smithy/sdk/shapes:define-input create-vector-bucket-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :required common-lisp:t
                                  :member-name "vectorBucketName")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "CreateVectorBucketInput"))

(smithy/sdk/shapes:define-output create-vector-bucket-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateVectorBucketOutput"))

(smithy/sdk/shapes:define-enum data-type
    common-lisp:nil
  (:float32 "float32"))

(smithy/sdk/shapes:define-input delete-index-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn"))
                                (:shape-name "DeleteIndexInput"))

(smithy/sdk/shapes:define-output delete-index-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIndexOutput"))

(smithy/sdk/shapes:define-input delete-vector-bucket-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn"))
                                (:shape-name "DeleteVectorBucketInput"))

(smithy/sdk/shapes:define-output delete-vector-bucket-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteVectorBucketOutput"))

(smithy/sdk/shapes:define-input delete-vector-bucket-policy-input
                                common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn"))
                                (:shape-name "DeleteVectorBucketPolicyInput"))

(smithy/sdk/shapes:define-output delete-vector-bucket-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteVectorBucketPolicyOutput"))

(smithy/sdk/shapes:define-input delete-vectors-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn")
                                 (keys :target-type delete-vectors-input-list
                                  :required common-lisp:t :member-name "keys"))
                                (:shape-name "DeleteVectorsInput"))

(smithy/sdk/shapes:define-list delete-vectors-input-list :member vector-key)

(smithy/sdk/shapes:define-output delete-vectors-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteVectorsOutput"))

(smithy/sdk/shapes:define-type dimension smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum distance-metric
    common-lisp:nil
  (:euclidean "euclidean")
  (:cosine "cosine"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((sse-type :target-type sse-type
                                      :member-name "sseType")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list float32vector-data :member
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-input get-index-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn"))
                                (:shape-name "GetIndexInput"))

(smithy/sdk/shapes:define-output get-index-output common-lisp:nil
                                 ((index :target-type index :required
                                   common-lisp:t :member-name "index"))
                                 (:shape-name "GetIndexOutput"))

(smithy/sdk/shapes:define-structure get-output-vector common-lisp:nil
                                    ((key :target-type vector-key :required
                                      common-lisp:t :member-name "key")
                                     (data :target-type vector-data
                                      :member-name "data")
                                     (metadata :target-type vector-metadata
                                      :member-name "metadata"))
                                    (:shape-name "GetOutputVector"))

(smithy/sdk/shapes:define-input get-vector-bucket-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn"))
                                (:shape-name "GetVectorBucketInput"))

(smithy/sdk/shapes:define-output get-vector-bucket-output common-lisp:nil
                                 ((vector-bucket :target-type vector-bucket
                                   :required common-lisp:t :member-name
                                   "vectorBucket"))
                                 (:shape-name "GetVectorBucketOutput"))

(smithy/sdk/shapes:define-input get-vector-bucket-policy-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn"))
                                (:shape-name "GetVectorBucketPolicyInput"))

(smithy/sdk/shapes:define-output get-vector-bucket-policy-output
                                 common-lisp:nil
                                 ((policy :target-type vector-bucket-policy
                                   :member-name "policy"))
                                 (:shape-name "GetVectorBucketPolicyOutput"))

(smithy/sdk/shapes:define-input get-vectors-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn")
                                 (keys :target-type get-vectors-input-list
                                  :required common-lisp:t :member-name "keys")
                                 (return-data :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "returnData")
                                 (return-metadata :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "returnMetadata"))
                                (:shape-name "GetVectorsInput"))

(smithy/sdk/shapes:define-list get-vectors-input-list :member vector-key)

(smithy/sdk/shapes:define-output get-vectors-output common-lisp:nil
                                 ((vectors :target-type get-vectors-output-list
                                   :required common-lisp:t :member-name
                                   "vectors"))
                                 (:shape-name "GetVectorsOutput"))

(smithy/sdk/shapes:define-list get-vectors-output-list :member
                               get-output-vector)

(smithy/sdk/shapes:define-structure index common-lisp:nil
                                    ((vector-bucket-name :target-type
                                      vector-bucket-name :required
                                      common-lisp:t :member-name
                                      "vectorBucketName")
                                     (index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "indexName")
                                     (index-arn :target-type index-arn
                                      :required common-lisp:t :member-name
                                      "indexArn")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (data-type :target-type data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (dimension :target-type dimension
                                      :required common-lisp:t :member-name
                                      "dimension")
                                     (distance-metric :target-type
                                      distance-metric :required common-lisp:t
                                      :member-name "distanceMetric")
                                     (metadata-configuration :target-type
                                      metadata-configuration :member-name
                                      "metadataConfiguration"))
                                    (:shape-name "Index"))

(smithy/sdk/shapes:define-type index-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type index-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure index-summary common-lisp:nil
                                    ((vector-bucket-name :target-type
                                      vector-bucket-name :required
                                      common-lisp:t :member-name
                                      "vectorBucketName")
                                     (index-name :target-type index-name
                                      :required common-lisp:t :member-name
                                      "indexName")
                                     (index-arn :target-type index-arn
                                      :required common-lisp:t :member-name
                                      "indexArn")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime"))
                                    (:shape-name "IndexSummary"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-error kms-disabled-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "KmsDisabledException")
                                (:error-code 400) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-error kms-invalid-key-usage-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "KmsInvalidKeyUsageException")
                                (:error-code 400) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-error kms-invalid-state-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "KmsInvalidStateException")
                                (:error-code 400) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error kms-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "KmsNotFoundException")
                                (:error-code 400) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-input list-indexes-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn")
                                 (max-results :target-type
                                  list-indexes-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  list-indexes-next-token :member-name
                                  "nextToken")
                                 (prefix :target-type list-indexes-prefix
                                  :member-name "prefix"))
                                (:shape-name "ListIndexesInput"))

(smithy/sdk/shapes:define-type list-indexes-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-indexes-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output list-indexes-output common-lisp:nil
                                 ((next-token :target-type
                                   list-indexes-next-token :member-name
                                   "nextToken")
                                  (indexes :target-type
                                   list-indexes-output-list :required
                                   common-lisp:t :member-name "indexes"))
                                 (:shape-name "ListIndexesOutput"))

(smithy/sdk/shapes:define-list list-indexes-output-list :member index-summary)

(smithy/sdk/shapes:define-type list-indexes-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-output-vector common-lisp:nil
                                    ((key :target-type vector-key :required
                                      common-lisp:t :member-name "key")
                                     (data :target-type vector-data
                                      :member-name "data")
                                     (metadata :target-type vector-metadata
                                      :member-name "metadata"))
                                    (:shape-name "ListOutputVector"))

(smithy/sdk/shapes:define-input list-vector-buckets-input common-lisp:nil
                                ((max-results :target-type
                                  list-vector-buckets-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  list-vector-buckets-next-token :member-name
                                  "nextToken")
                                 (prefix :target-type
                                  list-vector-buckets-prefix :member-name
                                  "prefix"))
                                (:shape-name "ListVectorBucketsInput"))

(smithy/sdk/shapes:define-type list-vector-buckets-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-vector-buckets-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output list-vector-buckets-output common-lisp:nil
                                 ((next-token :target-type
                                   list-vector-buckets-next-token :member-name
                                   "nextToken")
                                  (vector-buckets :target-type
                                   list-vector-buckets-output-list :required
                                   common-lisp:t :member-name "vectorBuckets"))
                                 (:shape-name "ListVectorBucketsOutput"))

(smithy/sdk/shapes:define-list list-vector-buckets-output-list :member
                               vector-bucket-summary)

(smithy/sdk/shapes:define-type list-vector-buckets-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-vectors-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn")
                                 (max-results :target-type
                                  list-vectors-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  list-vectors-next-token :member-name
                                  "nextToken")
                                 (segment-count :target-type
                                  list-vectors-segment-count :member-name
                                  "segmentCount")
                                 (segment-index :target-type
                                  list-vectors-segment-index :member-name
                                  "segmentIndex")
                                 (return-data :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "returnData")
                                 (return-metadata :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "returnMetadata"))
                                (:shape-name "ListVectorsInput"))

(smithy/sdk/shapes:define-type list-vectors-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-vectors-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output list-vectors-output common-lisp:nil
                                 ((next-token :target-type
                                   list-vectors-next-token :member-name
                                   "nextToken")
                                  (vectors :target-type
                                   list-vectors-output-list :required
                                   common-lisp:t :member-name "vectors"))
                                 (:shape-name "ListVectorsOutput"))

(smithy/sdk/shapes:define-list list-vectors-output-list :member
                               list-output-vector)

(smithy/sdk/shapes:define-type list-vectors-segment-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-vectors-segment-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metadata-configuration common-lisp:nil
                                    ((non-filterable-metadata-keys :target-type
                                      non-filterable-metadata-keys :required
                                      common-lisp:t :member-name
                                      "nonFilterableMetadataKeys"))
                                    (:shape-name "MetadataConfiguration"))

(smithy/sdk/shapes:define-type metadata-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-filterable-metadata-keys :member
                               metadata-key)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-structure put-input-vector common-lisp:nil
                                    ((key :target-type vector-key :required
                                      common-lisp:t :member-name "key")
                                     (data :target-type vector-data :required
                                      common-lisp:t :member-name "data")
                                     (metadata :target-type vector-metadata
                                      :member-name "metadata"))
                                    (:shape-name "PutInputVector"))

(smithy/sdk/shapes:define-input put-vector-bucket-policy-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (vector-bucket-arn :target-type
                                  vector-bucket-arn :member-name
                                  "vectorBucketArn")
                                 (policy :target-type vector-bucket-policy
                                  :required common-lisp:t :member-name
                                  "policy"))
                                (:shape-name "PutVectorBucketPolicyInput"))

(smithy/sdk/shapes:define-output put-vector-bucket-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutVectorBucketPolicyOutput"))

(smithy/sdk/shapes:define-input put-vectors-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn")
                                 (vectors :target-type put-vectors-input-list
                                  :required common-lisp:t :member-name
                                  "vectors"))
                                (:shape-name "PutVectorsInput"))

(smithy/sdk/shapes:define-list put-vectors-input-list :member put-input-vector)

(smithy/sdk/shapes:define-output put-vectors-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutVectorsOutput"))

(smithy/sdk/shapes:define-structure query-output-vector common-lisp:nil
                                    ((key :target-type vector-key :required
                                      common-lisp:t :member-name "key")
                                     (data :target-type vector-data
                                      :member-name "data")
                                     (metadata :target-type vector-metadata
                                      :member-name "metadata")
                                     (distance :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "distance"))
                                    (:shape-name "QueryOutputVector"))

(smithy/sdk/shapes:define-input query-vectors-input common-lisp:nil
                                ((vector-bucket-name :target-type
                                  vector-bucket-name :member-name
                                  "vectorBucketName")
                                 (index-name :target-type index-name
                                  :member-name "indexName")
                                 (index-arn :target-type index-arn :member-name
                                  "indexArn")
                                 (top-k :target-type top-k :required
                                  common-lisp:t :member-name "topK")
                                 (query-vector :target-type vector-data
                                  :required common-lisp:t :member-name
                                  "queryVector")
                                 (filter :target-type
                                  smithy/sdk/smithy-types:document :member-name
                                  "filter")
                                 (return-metadata :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "returnMetadata")
                                 (return-distance :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "returnDistance"))
                                (:shape-name "QueryVectorsInput"))

(smithy/sdk/shapes:define-output query-vectors-output common-lisp:nil
                                 ((vectors :target-type
                                   query-vectors-output-list :required
                                   common-lisp:t :member-name "vectors"))
                                 (:shape-name "QueryVectorsOutput"))

(smithy/sdk/shapes:define-list query-vectors-output-list :member
                               query-output-vector)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-enum sse-type
    common-lisp:nil
  (:aes256 "AES256")
  (:aws-kms "aws:kms"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-type top-k smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class s3vectors-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "path")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-structure vector-bucket common-lisp:nil
                                    ((vector-bucket-name :target-type
                                      vector-bucket-name :required
                                      common-lisp:t :member-name
                                      "vectorBucketName")
                                     (vector-bucket-arn :target-type
                                      vector-bucket-arn :required common-lisp:t
                                      :member-name "vectorBucketArn")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "encryptionConfiguration"))
                                    (:shape-name "VectorBucket"))

(smithy/sdk/shapes:define-type vector-bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vector-bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vector-bucket-policy
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure vector-bucket-summary common-lisp:nil
                                    ((vector-bucket-name :target-type
                                      vector-bucket-name :required
                                      common-lisp:t :member-name
                                      "vectorBucketName")
                                     (vector-bucket-arn :target-type
                                      vector-bucket-arn :required common-lisp:t
                                      :member-name "vectorBucketArn")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime"))
                                    (:shape-name "VectorBucketSummary"))

(smithy/sdk/shapes:define-union vector-data common-lisp:nil
                                ((float32 :target-type float32vector-data
                                  :member-name "float32"))
                                (:shape-name "VectorData"))

(smithy/sdk/shapes:define-type vector-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vector-metadata smithy/sdk/smithy-types:document)

common-lisp:nil

(smithy/sdk/operation:define-operation create-index :shape-name "CreateIndex"
                                       :input create-index-input :output
                                       create-index-output :errors
                                       (conflict-exception not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/CreateIndex")

(smithy/sdk/operation:define-operation create-vector-bucket :shape-name
                                       "CreateVectorBucket" :input
                                       create-vector-bucket-input :output
                                       create-vector-bucket-output :errors
                                       (conflict-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/CreateVectorBucket")

(smithy/sdk/operation:define-operation delete-index :shape-name "DeleteIndex"
                                       :input delete-index-input :output
                                       delete-index-output :errors
                                       (service-unavailable-exception) :method
                                       "POST" :uri "/DeleteIndex")

(smithy/sdk/operation:define-operation delete-vector-bucket :shape-name
                                       "DeleteVectorBucket" :input
                                       delete-vector-bucket-input :output
                                       delete-vector-bucket-output :errors
                                       (conflict-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/DeleteVectorBucket")

(smithy/sdk/operation:define-operation delete-vector-bucket-policy :shape-name
                                       "DeleteVectorBucketPolicy" :input
                                       delete-vector-bucket-policy-input
                                       :output
                                       delete-vector-bucket-policy-output
                                       :errors
                                       (not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/DeleteVectorBucketPolicy")

(smithy/sdk/operation:define-operation delete-vectors :shape-name
                                       "DeleteVectors" :input
                                       delete-vectors-input :output
                                       delete-vectors-output :errors
                                       (access-denied-exception
                                        kms-disabled-exception
                                        kms-invalid-key-usage-exception
                                        kms-invalid-state-exception
                                        kms-not-found-exception
                                        not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/DeleteVectors")

(smithy/sdk/operation:define-operation get-index :shape-name "GetIndex" :input
                                       get-index-input :output get-index-output
                                       :errors
                                       (not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/GetIndex")

(smithy/sdk/operation:define-operation get-vector-bucket :shape-name
                                       "GetVectorBucket" :input
                                       get-vector-bucket-input :output
                                       get-vector-bucket-output :errors
                                       (not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/GetVectorBucket")

(smithy/sdk/operation:define-operation get-vector-bucket-policy :shape-name
                                       "GetVectorBucketPolicy" :input
                                       get-vector-bucket-policy-input :output
                                       get-vector-bucket-policy-output :errors
                                       (not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/GetVectorBucketPolicy")

(smithy/sdk/operation:define-operation get-vectors :shape-name "GetVectors"
                                       :input get-vectors-input :output
                                       get-vectors-output :errors
                                       (kms-disabled-exception
                                        kms-invalid-key-usage-exception
                                        kms-invalid-state-exception
                                        kms-not-found-exception
                                        not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/GetVectors")

(smithy/sdk/operation:define-operation list-indexes :shape-name "ListIndexes"
                                       :input list-indexes-input :output
                                       list-indexes-output :errors
                                       (not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListIndexes")

(smithy/sdk/operation:define-operation list-vector-buckets :shape-name
                                       "ListVectorBuckets" :input
                                       list-vector-buckets-input :output
                                       list-vector-buckets-output :errors
                                       (service-unavailable-exception) :method
                                       "POST" :uri "/ListVectorBuckets")

(smithy/sdk/operation:define-operation list-vectors :shape-name "ListVectors"
                                       :input list-vectors-input :output
                                       list-vectors-output :errors
                                       (access-denied-exception
                                        not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListVectors")

(smithy/sdk/operation:define-operation put-vector-bucket-policy :shape-name
                                       "PutVectorBucketPolicy" :input
                                       put-vector-bucket-policy-input :output
                                       put-vector-bucket-policy-output :errors
                                       (not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/PutVectorBucketPolicy")

(smithy/sdk/operation:define-operation put-vectors :shape-name "PutVectors"
                                       :input put-vectors-input :output
                                       put-vectors-output :errors
                                       (access-denied-exception
                                        kms-disabled-exception
                                        kms-invalid-key-usage-exception
                                        kms-invalid-state-exception
                                        kms-not-found-exception
                                        not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/PutVectors")

(smithy/sdk/operation:define-operation query-vectors :shape-name "QueryVectors"
                                       :input query-vectors-input :output
                                       query-vectors-output :errors
                                       (kms-disabled-exception
                                        kms-invalid-key-usage-exception
                                        kms-invalid-state-exception
                                        kms-not-found-exception
                                        not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/QueryVectors")
