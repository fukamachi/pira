(uiop/package:define-package #:pira/tests/protocols/aws/s3 (:use)
                             (:export #:account-id #:amazon-s3
                              #:bucket-location-constraint #:bucket-name
                              #:common-prefix #:common-prefix-list
                              #:delete-object-tagging #:delimiter
                              #:display-name #:etag #:encoding-type
                              #:fetch-owner #:get-bucket-location
                              #:get-bucket-location-output
                              #:get-bucket-location-request #:get-object #:id
                              #:is-truncated #:key-count #:last-modified
                              #:list-objects-v2 #:list-objects-v2output
                              #:list-objects-v2request #:max-keys #:next-token
                              #:object #:object-key #:object-list
                              #:object-storage-class #:object-version-id
                              #:owner #:prefix #:request-payer #:size
                              #:start-after #:token))
(common-lisp:in-package #:pira/tests/protocols/aws/s3)

(smithy/sdk/service:define-service amazon-s3 :shape-name "AmazonS3" :version
                                   "2006-03-01" :title
                                   "Amazon Simple Storage Service" :operations
                                   '(delete-object-tagging get-bucket-location
                                     get-object list-objects-v2)
                                   :xml-namespace
                                   '(:uri
                                     "http://s3.amazonaws.com/doc/2006-03-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "S3")
                                      ("arnNamespace" . "s3")
                                      ("cloudFormationName" . "S3")
                                      ("cloudTrailEventSource"
                                       . "s3.amazonaws.com")
                                      ("endpointPrefix" . "s3"))
                                     ("aws.auth#sigv4" ("name" . "s3"))
                                     ("aws.protocols#restXml"
                                      ("noErrorWrapping" . common-lisp:t))))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bucket-location-constraint
    common-lisp:nil
  (:us-west-2 "us-west-2"))

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure common-prefix common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix"))
                                    (:shape-name "CommonPrefix"))

(smithy/sdk/shapes:define-list common-prefix-list :member common-prefix)

(smithy/sdk/shapes:define-output delete-object-tagging-output common-lisp:nil
                                 ((version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id"))
                                 (:shape-name "DeleteObjectTaggingOutput"))

(smithy/sdk/shapes:define-input delete-object-tagging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteObjectTaggingRequest"))

(smithy/sdk/shapes:define-type delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encoding-type
    common-lisp:nil
  (:url "url"))

(smithy/sdk/shapes:define-type fetch-owner smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure get-bucket-location-output common-lisp:nil
                                    ((location-constraint :target-type
                                      bucket-location-constraint :member-name
                                      "LocationConstraint"))
                                    (:shape-name "GetBucketLocationOutput")
                                    (:xml-name "LocationConstraint"))

(smithy/sdk/shapes:define-input get-bucket-location-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBucketLocationRequest"))

(smithy/sdk/shapes:define-output get-object-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "GetObjectOutput"))

(smithy/sdk/shapes:define-input get-object-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t))
                                (:shape-name "GetObjectRequest"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type is-truncated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type key-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type last-modified smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure list-objects-v2output common-lisp:nil
                                    ((is-truncated :target-type is-truncated
                                      :member-name "IsTruncated")
                                     (contents :target-type object-list
                                      :member-name "Contents" :xml-flattened
                                      common-lisp:t)
                                     (name :target-type bucket-name
                                      :member-name "Name")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (delimiter :target-type delimiter
                                      :member-name "Delimiter")
                                     (max-keys :target-type max-keys
                                      :member-name "MaxKeys")
                                     (common-prefixes :target-type
                                      common-prefix-list :member-name
                                      "CommonPrefixes" :xml-flattened
                                      common-lisp:t)
                                     (encoding-type :target-type encoding-type
                                      :member-name "EncodingType")
                                     (key-count :target-type key-count
                                      :member-name "KeyCount")
                                     (continuation-token :target-type token
                                      :member-name "ContinuationToken")
                                     (next-continuation-token :target-type
                                      next-token :member-name
                                      "NextContinuationToken")
                                     (start-after :target-type start-after
                                      :member-name "StartAfter"))
                                    (:shape-name "ListObjectsV2Output"))

(smithy/sdk/shapes:define-input list-objects-v2request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (delimiter :target-type delimiter :member-name
                                  "Delimiter" :http-query "delimiter")
                                 (encoding-type :target-type encoding-type
                                  :member-name "EncodingType" :http-query
                                  "encoding-type")
                                 (max-keys :target-type max-keys :member-name
                                  "MaxKeys" :http-query "max-keys")
                                 (prefix :target-type prefix :member-name
                                  "Prefix" :http-query "prefix")
                                 (continuation-token :target-type token
                                  :member-name "ContinuationToken" :http-query
                                  "continuation-token")
                                 (fetch-owner :target-type fetch-owner
                                  :member-name "FetchOwner" :http-query
                                  "fetch-owner")
                                 (start-after :target-type start-after
                                  :member-name "StartAfter" :http-query
                                  "start-after")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "ListObjectsV2Request"))

(smithy/sdk/shapes:define-type max-keys smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-such-bucket common-lisp:nil common-lisp:nil
                                (:shape-name "NoSuchBucket") (:error-code 400))

(smithy/sdk/shapes:define-structure object common-lisp:nil
                                    ((key :target-type object-key :member-name
                                      "Key")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (etag :target-type etag :member-name
                                      "ETag")
                                     (size :target-type size :member-name
                                      "Size")
                                     (storage-class :target-type
                                      object-storage-class :member-name
                                      "StorageClass")
                                     (owner :target-type owner :member-name
                                      "Owner"))
                                    (:shape-name "Object"))

(smithy/sdk/shapes:define-type object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list object-list :member object)

(smithy/sdk/shapes:define-enum object-storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:glacier "GLACIER")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:deep-archive "DEEP_ARCHIVE")
  (:outposts "OUTPOSTS"))

(smithy/sdk/shapes:define-type object-version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure owner common-lisp:nil
                                    ((display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (id :target-type id :member-name "ID"))
                                    (:shape-name "Owner"))

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum request-payer
    common-lisp:nil
  (:requester "requester"))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type start-after smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation delete-object-tagging :shape-name
                                       "DeleteObjectTagging" :input
                                       delete-object-tagging-request :output
                                       delete-object-tagging-output :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}/{Key+}?tagging" :code 204
                                       :request-tests
                                       ((:id "S3EscapeObjectKeyInUriLabel"
                                         :protocol "aws.protocols#restXml"
                                         :method "DELETE" :uri "/my%20key.txt"
                                         :host "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :query-params #("tagging") :body ""
                                         :params
                                         (("Bucket" . "mybucket")
                                          ("Key" . "my key.txt"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client"
                                            ("region" . "us-west-2"))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "    S3 clients should escape special characters in Object Keys
    when the Object Key is used as a URI label binding.
")
                                        (:id "S3EscapePathObjectKeyInUriLabel"
                                         :protocol "aws.protocols#restXml"
                                         :method "DELETE" :uri
                                         "/foo/bar/my%20key.txt" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :query-params #("tagging") :body ""
                                         :params
                                         (("Bucket" . "mybucket")
                                          ("Key" . "foo/bar/my key.txt"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client"
                                            ("region" . "us-west-2"))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "    S3 clients should preserve an Object Key representing a path
    when the Object Key is used as a URI label binding, but still
    escape special characters.
")))

(smithy/sdk/operation:define-operation get-bucket-location :shape-name
                                       "GetBucketLocation" :input
                                       get-bucket-location-request :output
                                       get-bucket-location-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?location" :response-tests
                                       ((:id "GetBucketLocationUnwrappedOutput"
                                         :protocol "aws.protocols#restXml"
                                         :code 200 :body
                                         "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<LocationConstraint xmlns=\"http://s3.amazonaws.com/doc/2006-03-01/\">us-west-2</LocationConstraint>"
                                         :params
                                         (("LocationConstraint" . "us-west-2"))
                                         :documentation
                                         "    S3 clients should use the @s3UnwrappedXmlOutput trait to determine
    that the response shape is not wrapped in a restxml operation-level XML node.
")))

(smithy/sdk/operation:define-operation get-object :shape-name "GetObject"
                                       :input get-object-request :output
                                       get-object-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}/{Key+}" :request-tests
                                       ((:id
                                         "S3PreservesLeadingDotSegmentInUriLabel"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/../key.txt" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :body "" :params
                                         (("Bucket" . "mybucket")
                                          ("Key" . "../key.txt"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style"
                                              . "virtual")))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "    S3 clients should not remove dot segments from request paths.
")
                                        (:id
                                         "S3PreservesEmbeddedDotSegmentInUriLabel"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/foo/../key.txt"
                                         :host "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :body "" :params
                                         (("Bucket" . "mybucket")
                                          ("Key" . "foo/../key.txt"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style"
                                              . "virtual")))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "    S3 clients should not remove dot segments from request paths.
")))

(smithy/sdk/operation:define-operation list-objects-v2 :shape-name
                                       "ListObjectsV2" :input
                                       list-objects-v2request :output
                                       list-objects-v2output :errors
                                       (no-such-bucket) :method "GET" :uri
                                       "/{Bucket}?list-type=2" :code 200
                                       :request-tests
                                       ((:id "S3DefaultAddressing" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client"
                                            ("region" . "us-west-2"))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should map the default addressing style to virtual host.")
                                        (:id "S3VirtualHostAddressing"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style"
                                              . "virtual")))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should support the explicit virtual host addressing style.")
                                        (:id "S3PathAddressing" :protocol
                                         "aws.protocols#restXml" :method "GET"
                                         :uri "/mybucket" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "s3.us-west-2.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style" . "path")))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should support the explicit path addressing style.")
                                        (:id "S3VirtualHostDualstackAddressing"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.dualstack.us-west-2.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style" . "virtual")
                                             ("use_dualstack_endpoint"
                                              . common-lisp:t)))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should support the explicit virtual host
addressing style with Dualstack.")
                                        (:id
                                         "S3VirtualHostAccelerateAddressing"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3-accelerate.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style" . "virtual")
                                             ("use_accelerate_endpoint"
                                              . common-lisp:t)))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should support the explicit virtual host
addressing style with S3 Accelerate.")
                                        (:id
                                         "S3VirtualHostDualstackAccelerateAddressing"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3-accelerate.dualstack.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style" . "virtual")
                                             ("use_dualstack_endpoint"
                                              . common-lisp:t)
                                             ("use_accelerate_endpoint"
                                              . common-lisp:t)))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should support the explicit virtual host
addressing style with Dualstack and S3 Accelerate.")
                                        (:id "S3OperationAddressingPreferred"
                                         :protocol "aws.protocols#restXml"
                                         :method "GET" :uri "/" :host
                                         "s3.us-west-2.amazonaws.com"
                                         :resolved-host
                                         "mybucket.s3.us-west-2.amazonaws.com"
                                         :query-params #("list-type=2") :body
                                         "" :params (("Bucket" . "mybucket"))
                                         :vendor-params
                                         (("scopedConfig"
                                           ("client" ("region" . "us-west-2")
                                            ("s3"
                                             ("addressing_style" . "path")))
                                           ("operation"
                                            ("s3"
                                             ("addressing_style"
                                              . "virtual")))))
                                         :vendor-params-shape
                                         "aws.protocoltests.config#AwsConfig"
                                         :documentation
                                         "S3 clients should resolve to the addressing style of the
operation if defined on both the client and operation.")))
