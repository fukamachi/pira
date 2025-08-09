(uiop/package:define-package #:pira/cloudfront-keyvaluestore (:use)
                             (:export #:cloud-front-key-value-store
                              #:delete-key #:delete-key-request-list-item
                              #:delete-key-requests-list
                              #:describe-key-value-store #:etag #:get-key #:key
                              #:kvs-arn #:list-keys #:list-keys-response-list
                              #:list-keys-response-list-item #:put-key
                              #:put-key-request-list-item
                              #:put-key-requests-list #:update-keys #:value))
(common-lisp:in-package #:pira/cloudfront-keyvaluestore)

(smithy/sdk/service:define-service cloud-front-key-value-store :shape-name
                                   "CloudFrontKeyValueStore" :version
                                   "2022-07-26" :title
                                   "Amazon CloudFront KeyValueStore" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudFront KeyValueStore")
                                      ("arnNamespace" . "key-value-store")
                                      ("endpointPrefix"
                                       . "cloudfront-keyvaluestore"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cloudfront-keyvaluestore"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input delete-key-request common-lisp:nil
                                ((kvs-arn :target-type kvs-arn :required
                                  common-lisp:t :member-name "KvsARN"
                                  :http-label common-lisp:t)
                                 (key :target-type key :required common-lisp:t
                                  :member-name "Key" :http-label common-lisp:t)
                                 (if-match :target-type etag :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteKeyRequest"))

(smithy/sdk/shapes:define-structure delete-key-request-list-item
                                    common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "DeleteKeyRequestListItem"))

(smithy/sdk/shapes:define-list delete-key-requests-list :member
                               delete-key-request-list-item)

(smithy/sdk/shapes:define-output delete-key-response common-lisp:nil
                                 ((item-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ItemCount")
                                  (total-size-in-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "TotalSizeInBytes")
                                  (etag :target-type etag :required
                                   common-lisp:t :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "DeleteKeyResponse"))

(smithy/sdk/shapes:define-input describe-key-value-store-request
                                common-lisp:nil
                                ((kvs-arn :target-type kvs-arn :required
                                  common-lisp:t :member-name "KvsARN"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeKeyValueStoreRequest"))

(smithy/sdk/shapes:define-output describe-key-value-store-response
                                 common-lisp:nil
                                 ((item-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ItemCount")
                                  (total-size-in-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "TotalSizeInBytes")
                                  (kvs-arn :target-type kvs-arn :required
                                   common-lisp:t :member-name "KvsARN")
                                  (created :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "Created")
                                  (etag :target-type etag :required
                                   common-lisp:t :member-name "ETag"
                                   :http-header "ETag")
                                  (last-modified :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastModified")
                                  (status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Status")
                                  (failure-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FailureReason"))
                                 (:shape-name "DescribeKeyValueStoreResponse"))

(smithy/sdk/shapes:define-type etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-key-request common-lisp:nil
                                ((kvs-arn :target-type kvs-arn :required
                                  common-lisp:t :member-name "KvsARN"
                                  :http-label common-lisp:t)
                                 (key :target-type key :required common-lisp:t
                                  :member-name "Key" :http-label
                                  common-lisp:t))
                                (:shape-name "GetKeyRequest"))

(smithy/sdk/shapes:define-output get-key-response common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key")
                                  (value :target-type value :required
                                   common-lisp:t :member-name "Value")
                                  (item-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ItemCount")
                                  (total-size-in-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "TotalSizeInBytes"))
                                 (:shape-name "GetKeyResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kvs-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-keys-request common-lisp:nil
                                ((kvs-arn :target-type kvs-arn :required
                                  common-lisp:t :member-name "KvsARN"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "MaxResults"))
                                (:shape-name "ListKeysRequest"))

(smithy/sdk/shapes:define-output list-keys-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken")
                                  (items :target-type list-keys-response-list
                                   :member-name "Items"))
                                 (:shape-name "ListKeysResponse"))

(smithy/sdk/shapes:define-list list-keys-response-list :member
                               list-keys-response-list-item)

(smithy/sdk/shapes:define-structure list-keys-response-list-item
                                    common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ListKeysResponseListItem"))

(smithy/sdk/shapes:define-input put-key-request common-lisp:nil
                                ((key :target-type key :required common-lisp:t
                                  :member-name "Key" :http-label common-lisp:t)
                                 (value :target-type value :required
                                  common-lisp:t :member-name "Value")
                                 (kvs-arn :target-type kvs-arn :required
                                  common-lisp:t :member-name "KvsARN"
                                  :http-label common-lisp:t)
                                 (if-match :target-type etag :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "PutKeyRequest"))

(smithy/sdk/shapes:define-structure put-key-request-list-item common-lisp:nil
                                    ((key :target-type key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "PutKeyRequestListItem"))

(smithy/sdk/shapes:define-list put-key-requests-list :member
                               put-key-request-list-item)

(smithy/sdk/shapes:define-output put-key-response common-lisp:nil
                                 ((item-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ItemCount")
                                  (total-size-in-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "TotalSizeInBytes")
                                  (etag :target-type etag :required
                                   common-lisp:t :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "PutKeyResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-input update-keys-request common-lisp:nil
                                ((kvs-arn :target-type kvs-arn :required
                                  common-lisp:t :member-name "KvsARN"
                                  :http-label common-lisp:t)
                                 (if-match :target-type etag :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match")
                                 (puts :target-type put-key-requests-list
                                  :member-name "Puts")
                                 (deletes :target-type delete-key-requests-list
                                  :member-name "Deletes"))
                                (:shape-name "UpdateKeysRequest"))

(smithy/sdk/shapes:define-output update-keys-response common-lisp:nil
                                 ((item-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ItemCount")
                                  (total-size-in-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "TotalSizeInBytes")
                                  (etag :target-type etag :required
                                   common-lisp:t :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateKeysResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation delete-key :shape-name "DeleteKey"
                                       :input delete-key-request :output
                                       delete-key-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/key-value-stores/{KvsARN}/keys/{Key}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-key-value-store :shape-name
                                       "DescribeKeyValueStore" :input
                                       describe-key-value-store-request :output
                                       describe-key-value-store-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/key-value-stores/{KvsARN}" :code 200)

(smithy/sdk/operation:define-operation get-key :shape-name "GetKey" :input
                                       get-key-request :output get-key-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/key-value-stores/{KvsARN}/keys/{Key}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-keys :shape-name "ListKeys" :input
                                       list-keys-request :output
                                       list-keys-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/key-value-stores/{KvsARN}/keys" :code
                                       200)

(smithy/sdk/operation:define-operation put-key :shape-name "PutKey" :input
                                       put-key-request :output put-key-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/key-value-stores/{KvsARN}/keys/{Key}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-keys :shape-name "UpdateKeys"
                                       :input update-keys-request :output
                                       update-keys-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/key-value-stores/{KvsARN}/keys" :code
                                       200)
