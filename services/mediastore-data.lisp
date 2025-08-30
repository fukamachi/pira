(uiop/package:define-package #:pira/mediastore-data (:use)
                             (:export #:container-not-found-exception
                              #:content-range-pattern #:content-type
                              #:delete-object #:describe-object #:etag
                              #:error-message #:get-object
                              #:internal-server-error #:item #:item-list
                              #:item-name #:item-type #:list-items #:list-limit
                              #:list-path-naming #:media-store-object-20170901
                              #:non-negative-long #:object-not-found-exception
                              #:pagination-token #:path-naming #:payload-blob
                              #:put-object #:range-pattern
                              #:requested-range-not-satisfiable-exception
                              #:sha256hash #:storage-class #:string-primitive
                              #:time-stamp #:upload-availability #:status-code
                              #:mediastore-data-error))
(common-lisp:in-package #:pira/mediastore-data)

(common-lisp:define-condition mediastore-data-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service media-store-object-20170901 :shape-name
                                   "MediaStoreObject_20170901" :version
                                   "2017-09-01" :title
                                   "AWS Elemental MediaStore Data Plane"
                                   :operations
                                   '(delete-object describe-object get-object
                                     list-items put-object)
                                   :xml-namespace
                                   '(:uri
                                     "https://object.mediastore.amazonaws.com/doc/2017-09-01"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaStore Data")
                                      ("arnNamespace" . "mediastore")
                                      ("cloudFormationName" . "MediaStoreData")
                                      ("cloudTrailEventSource"
                                       . "mediastoredata.amazonaws.com")
                                      ("endpointPrefix" . "data.mediastore"))
                                     ("aws.auth#sigv4" ("name" . "mediastore"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error container-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ContainerNotFoundException")
                                (:error-code 404)
                                (:base-class mediastore-data-error))

(smithy/sdk/shapes:define-type content-range-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-object-request common-lisp:nil
                                ((path :target-type path-naming :required
                                  common-lisp:t :member-name "Path" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteObjectRequest"))

(smithy/sdk/shapes:define-output delete-object-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteObjectResponse"))

(smithy/sdk/shapes:define-input describe-object-request common-lisp:nil
                                ((path :target-type path-naming :required
                                  common-lisp:t :member-name "Path" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeObjectRequest"))

(smithy/sdk/shapes:define-output describe-object-response common-lisp:nil
                                 ((etag :target-type etag :member-name "ETag"
                                   :http-header "ETag")
                                  (content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (content-length :target-type
                                   non-negative-long :member-name
                                   "ContentLength" :http-header
                                   "Content-Length")
                                  (cache-control :target-type string-primitive
                                   :member-name "CacheControl" :http-header
                                   "Cache-Control")
                                  (last-modified :target-type time-stamp
                                   :member-name "LastModified" :http-header
                                   "Last-Modified"))
                                 (:shape-name "DescribeObjectResponse"))

(smithy/sdk/shapes:define-type etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-object-request common-lisp:nil
                                ((path :target-type path-naming :required
                                  common-lisp:t :member-name "Path" :http-label
                                  common-lisp:t)
                                 (range :target-type range-pattern :member-name
                                  "Range" :http-header "Range"))
                                (:shape-name "GetObjectRequest"))

(smithy/sdk/shapes:define-output get-object-response common-lisp:nil
                                 ((body :target-type payload-blob :member-name
                                   "Body" :http-payload common-lisp:t)
                                  (cache-control :target-type string-primitive
                                   :member-name "CacheControl" :http-header
                                   "Cache-Control")
                                  (content-range :target-type
                                   content-range-pattern :member-name
                                   "ContentRange" :http-header "Content-Range")
                                  (content-length :target-type
                                   non-negative-long :member-name
                                   "ContentLength" :http-header
                                   "Content-Length")
                                  (content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (etag :target-type etag :member-name "ETag"
                                   :http-header "ETag")
                                  (last-modified :target-type time-stamp
                                   :member-name "LastModified" :http-header
                                   "Last-Modified")
                                  (status-code :target-type status-code
                                   :required common-lisp:t :member-name
                                   "StatusCode" :http-response-code
                                   common-lisp:t))
                                 (:shape-name "GetObjectResponse"))

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500)
                                (:base-class mediastore-data-error))

(smithy/sdk/shapes:define-structure item common-lisp:nil
                                    ((name :target-type item-name :member-name
                                      "Name")
                                     (type :target-type item-type :member-name
                                      "Type")
                                     (etag :target-type etag :member-name
                                      "ETag")
                                     (last-modified :target-type time-stamp
                                      :member-name "LastModified")
                                     (content-type :target-type content-type
                                      :member-name "ContentType")
                                     (content-length :target-type
                                      non-negative-long :member-name
                                      "ContentLength"))
                                    (:shape-name "Item"))

(smithy/sdk/shapes:define-list item-list :member item)

(smithy/sdk/shapes:define-type item-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum item-type
    common-lisp:nil
  (:object "OBJECT")
  (:folder "FOLDER"))

(smithy/sdk/shapes:define-input list-items-request common-lisp:nil
                                ((path :target-type list-path-naming
                                  :member-name "Path" :http-query "Path")
                                 (max-results :target-type list-limit
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListItemsRequest"))

(smithy/sdk/shapes:define-output list-items-response common-lisp:nil
                                 ((items :target-type item-list :member-name
                                   "Items")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListItemsResponse"))

(smithy/sdk/shapes:define-type list-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-path-naming smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error object-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ObjectNotFoundException")
                                (:error-code 404)
                                (:base-class mediastore-data-error))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-naming smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload-blob smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-input put-object-request common-lisp:nil
                                ((body :target-type payload-blob :required
                                  common-lisp:t :member-name "Body"
                                  :http-payload common-lisp:t)
                                 (path :target-type path-naming :required
                                  common-lisp:t :member-name "Path" :http-label
                                  common-lisp:t)
                                 (content-type :target-type content-type
                                  :member-name "ContentType" :http-header
                                  "Content-Type")
                                 (cache-control :target-type string-primitive
                                  :member-name "CacheControl" :http-header
                                  "Cache-Control")
                                 (storage-class :target-type storage-class
                                  :member-name "StorageClass" :http-header
                                  "x-amz-storage-class")
                                 (upload-availability :target-type
                                  upload-availability :member-name
                                  "UploadAvailability" :http-header
                                  "x-amz-upload-availability"))
                                (:shape-name "PutObjectRequest"))

(smithy/sdk/shapes:define-output put-object-response common-lisp:nil
                                 ((content-sha256 :target-type sha256hash
                                   :member-name "ContentSHA256")
                                  (etag :target-type etag :member-name "ETag")
                                  (storage-class :target-type storage-class
                                   :member-name "StorageClass"))
                                 (:shape-name "PutObjectResponse"))

(smithy/sdk/shapes:define-type range-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error requested-range-not-satisfiable-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "RequestedRangeNotSatisfiableException")
                                (:error-code 416)
                                (:base-class mediastore-data-error))

(smithy/sdk/shapes:define-type sha256hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum storage-class
    common-lisp:nil
  (:temporal "TEMPORAL"))

(smithy/sdk/shapes:define-type string-primitive smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum upload-availability
    common-lisp:nil
  (:standard "STANDARD")
  (:streaming "STREAMING"))

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation delete-object :shape-name "DeleteObject"
                                       :input delete-object-request :output
                                       delete-object-response :errors
                                       (container-not-found-exception
                                        internal-server-error
                                        object-not-found-exception)
                                       :method "DELETE" :uri "/{Path+}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-object :shape-name
                                       "DescribeObject" :input
                                       describe-object-request :output
                                       describe-object-response :errors
                                       (container-not-found-exception
                                        internal-server-error
                                        object-not-found-exception)
                                       :method "HEAD" :uri "/{Path+}" :code 200)

(smithy/sdk/operation:define-operation get-object :shape-name "GetObject"
                                       :input get-object-request :output
                                       get-object-response :errors
                                       (container-not-found-exception
                                        internal-server-error
                                        object-not-found-exception
                                        requested-range-not-satisfiable-exception)
                                       :method "GET" :uri "/{Path+}" :code 200)

(smithy/sdk/operation:define-operation list-items :shape-name "ListItems"
                                       :input list-items-request :output
                                       list-items-response :errors
                                       (container-not-found-exception
                                        internal-server-error)
                                       :method "GET" :uri "/" :code 200)

(smithy/sdk/operation:define-operation put-object :shape-name "PutObject"
                                       :input put-object-request :output
                                       put-object-response :errors
                                       (container-not-found-exception
                                        internal-server-error)
                                       :method "PUT" :uri "/{Path+}" :code 200)
