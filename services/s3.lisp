(uiop/package:define-package #:pira/s3 (:use)
                             (:export #:abort-date
                              #:abort-incomplete-multipart-upload
                              #:abort-multipart-upload #:abort-rule-id
                              #:accelerate-configuration #:accept-ranges
                              #:access-control-policy
                              #:access-control-translation
                              #:access-key-id-value #:access-point-alias
                              #:access-point-arn #:account-id
                              #:allow-quoted-record-delimiter #:allowed-header
                              #:allowed-headers #:allowed-method
                              #:allowed-methods #:allowed-origin
                              #:allowed-origins #:amazon-s3
                              #:analytics-and-operator
                              #:analytics-configuration
                              #:analytics-configuration-list
                              #:analytics-export-destination #:analytics-filter
                              #:analytics-id #:analytics-s3bucket-destination
                              #:analytics-s3export-file-format #:archive-status
                              #:body #:bucket #:bucket-accelerate-status
                              #:bucket-canned-acl #:bucket-info
                              #:bucket-key-enabled
                              #:bucket-lifecycle-configuration
                              #:bucket-location-constraint
                              #:bucket-location-name #:bucket-logging-status
                              #:bucket-logs-permission #:bucket-name
                              #:bucket-region #:bucket-type
                              #:bucket-versioning-status #:buckets
                              #:bypass-governance-retention #:bytes-processed
                              #:bytes-returned #:bytes-scanned
                              #:corsconfiguration #:corsrule #:corsrules
                              #:csvinput #:csvoutput #:cache-control #:checksum
                              #:checksum-algorithm #:checksum-algorithm-list
                              #:checksum-crc32 #:checksum-crc32c
                              #:checksum-crc64nvme #:checksum-mode
                              #:checksum-sha1 #:checksum-sha256 #:checksum-type
                              #:client-token #:code #:comments #:common-prefix
                              #:common-prefix-list #:complete-multipart-upload
                              #:completed-multipart-upload #:completed-part
                              #:completed-part-list #:compression-type
                              #:condition #:confirm-remove-self-bucket-access
                              #:content-disposition #:content-encoding
                              #:content-language #:content-length #:content-md5
                              #:content-range #:content-type
                              #:continuation-event #:copy-object
                              #:copy-object-result #:copy-part-result
                              #:copy-source #:copy-source-if-match
                              #:copy-source-if-modified-since
                              #:copy-source-if-none-match
                              #:copy-source-if-unmodified-since
                              #:copy-source-range
                              #:copy-source-ssecustomer-algorithm
                              #:copy-source-ssecustomer-key
                              #:copy-source-ssecustomer-key-md5
                              #:copy-source-version-id #:create-bucket
                              #:create-bucket-configuration
                              #:create-bucket-metadata-configuration
                              #:create-bucket-metadata-table-configuration
                              #:create-multipart-upload #:create-session
                              #:creation-date #:data-redundancy #:date #:days
                              #:days-after-initiation #:default-retention
                              #:delete #:delete-bucket
                              #:delete-bucket-analytics-configuration
                              #:delete-bucket-cors #:delete-bucket-encryption
                              #:delete-bucket-intelligent-tiering-configuration
                              #:delete-bucket-inventory-configuration
                              #:delete-bucket-lifecycle
                              #:delete-bucket-metadata-configuration
                              #:delete-bucket-metadata-table-configuration
                              #:delete-bucket-metrics-configuration
                              #:delete-bucket-ownership-controls
                              #:delete-bucket-policy
                              #:delete-bucket-replication
                              #:delete-bucket-tagging #:delete-bucket-website
                              #:delete-marker #:delete-marker-entry
                              #:delete-marker-replication
                              #:delete-marker-replication-status
                              #:delete-marker-version-id #:delete-markers
                              #:delete-object #:delete-object-tagging
                              #:delete-objects #:delete-public-access-block
                              #:deleted-object #:deleted-objects #:delimiter
                              #:description #:destination #:destination-result
                              #:directory-bucket-token #:display-name #:etag
                              #:email-address #:enable-request-progress
                              #:encoding-type #:encryption
                              #:encryption-configuration #:end #:end-event
                              #:error #:error-code #:error-details
                              #:error-document #:error-message #:errors #:event
                              #:event-bridge-configuration #:event-list
                              #:existing-object-replication
                              #:existing-object-replication-status #:expiration
                              #:expiration-state #:expiration-status
                              #:expired-object-delete-marker #:expires
                              #:expose-header #:expose-headers #:expression
                              #:expression-type #:fetch-owner #:field-delimiter
                              #:file-header-info #:filter-rule
                              #:filter-rule-list #:filter-rule-name
                              #:filter-rule-value
                              #:get-bucket-accelerate-configuration
                              #:get-bucket-acl
                              #:get-bucket-analytics-configuration
                              #:get-bucket-cors #:get-bucket-encryption
                              #:get-bucket-intelligent-tiering-configuration
                              #:get-bucket-inventory-configuration
                              #:get-bucket-lifecycle-configuration
                              #:get-bucket-location #:get-bucket-logging
                              #:get-bucket-metadata-configuration
                              #:get-bucket-metadata-configuration-result
                              #:get-bucket-metadata-table-configuration
                              #:get-bucket-metadata-table-configuration-result
                              #:get-bucket-metrics-configuration
                              #:get-bucket-notification-configuration
                              #:get-bucket-ownership-controls
                              #:get-bucket-policy #:get-bucket-policy-status
                              #:get-bucket-replication
                              #:get-bucket-request-payment #:get-bucket-tagging
                              #:get-bucket-versioning #:get-bucket-website
                              #:get-object #:get-object-acl
                              #:get-object-attributes
                              #:get-object-attributes-parts
                              #:get-object-legal-hold
                              #:get-object-lock-configuration
                              #:get-object-response-status-code
                              #:get-object-retention #:get-object-tagging
                              #:get-object-torrent #:get-public-access-block
                              #:glacier-job-parameters #:grant
                              #:grant-full-control #:grant-read
                              #:grant-read-acp #:grant-write #:grant-write-acp
                              #:grantee #:grants #:head-bucket #:head-object
                              #:host-name #:http-error-code-returned-equals
                              #:http-redirect-code #:id #:if-match
                              #:if-match-initiated-time
                              #:if-match-last-modified-time #:if-match-size
                              #:if-modified-since #:if-none-match
                              #:if-unmodified-since #:index-document
                              #:initiated #:initiator #:input-serialization
                              #:intelligent-tiering-access-tier
                              #:intelligent-tiering-and-operator
                              #:intelligent-tiering-configuration
                              #:intelligent-tiering-configuration-list
                              #:intelligent-tiering-days
                              #:intelligent-tiering-filter
                              #:intelligent-tiering-id
                              #:intelligent-tiering-status
                              #:inventory-configuration
                              #:inventory-configuration-list
                              #:inventory-configuration-state
                              #:inventory-destination #:inventory-encryption
                              #:inventory-filter #:inventory-format
                              #:inventory-frequency #:inventory-id
                              #:inventory-included-object-versions
                              #:inventory-optional-field
                              #:inventory-optional-fields
                              #:inventory-s3bucket-destination
                              #:inventory-schedule
                              #:inventory-table-configuration
                              #:inventory-table-configuration-result
                              #:inventory-table-configuration-updates
                              #:is-enabled #:is-latest #:is-public
                              #:is-restore-in-progress #:is-truncated
                              #:jsoninput #:jsonoutput #:jsontype
                              #:journal-table-configuration
                              #:journal-table-configuration-result
                              #:journal-table-configuration-updates
                              #:kmscontext #:key-count #:key-marker
                              #:key-prefix-equals #:kms-key-arn
                              #:lambda-function-arn
                              #:lambda-function-configuration
                              #:lambda-function-configuration-list
                              #:last-modified #:last-modified-time
                              #:lifecycle-expiration #:lifecycle-rule
                              #:lifecycle-rule-and-operator
                              #:lifecycle-rule-filter #:lifecycle-rules
                              #:list-bucket-analytics-configurations
                              #:list-bucket-intelligent-tiering-configurations
                              #:list-bucket-inventory-configurations
                              #:list-bucket-metrics-configurations
                              #:list-buckets #:list-directory-buckets
                              #:list-multipart-uploads #:list-object-versions
                              #:list-objects #:list-objects-v2 #:list-parts
                              #:location #:location-info
                              #:location-name-as-string #:location-prefix
                              #:location-type #:logging-enabled #:mfa
                              #:mfadelete #:mfadelete-status #:marker
                              #:max-age-seconds #:max-buckets
                              #:max-directory-buckets #:max-keys #:max-parts
                              #:max-uploads #:message #:metadata
                              #:metadata-configuration
                              #:metadata-configuration-result
                              #:metadata-directive #:metadata-entry
                              #:metadata-key #:metadata-table-configuration
                              #:metadata-table-configuration-result
                              #:metadata-table-encryption-configuration
                              #:metadata-table-status #:metadata-value
                              #:metrics #:metrics-and-operator
                              #:metrics-configuration
                              #:metrics-configuration-list #:metrics-filter
                              #:metrics-id #:metrics-status #:minutes
                              #:missing-meta #:mpu-object-size
                              #:multipart-upload #:multipart-upload-id
                              #:multipart-upload-list #:next-key-marker
                              #:next-marker #:next-part-number-marker
                              #:next-token #:next-upload-id-marker
                              #:next-version-id-marker
                              #:noncurrent-version-expiration
                              #:noncurrent-version-transition
                              #:noncurrent-version-transition-list
                              #:notification-configuration
                              #:notification-configuration-filter
                              #:notification-id #:object #:object-attributes
                              #:object-attributes-list #:object-canned-acl
                              #:object-identifier #:object-identifier-list
                              #:object-key #:object-list
                              #:object-lock-configuration #:object-lock-enabled
                              #:object-lock-enabled-for-bucket
                              #:object-lock-legal-hold
                              #:object-lock-legal-hold-status
                              #:object-lock-mode
                              #:object-lock-retain-until-date
                              #:object-lock-retention
                              #:object-lock-retention-mode #:object-lock-rule
                              #:object-lock-token #:object-ownership
                              #:object-part #:object-size
                              #:object-size-greater-than-bytes
                              #:object-size-less-than-bytes
                              #:object-storage-class #:object-version
                              #:object-version-id #:object-version-list
                              #:object-version-storage-class
                              #:optional-object-attributes
                              #:optional-object-attributes-list
                              #:output-location #:output-serialization #:owner
                              #:owner-override #:ownership-controls
                              #:ownership-controls-rule
                              #:ownership-controls-rules #:parquet-input #:part
                              #:part-number #:part-number-marker
                              #:partition-date-source #:partitioned-prefix
                              #:parts #:parts-count #:parts-list #:payer
                              #:permission #:policy #:policy-status #:prefix
                              #:priority #:progress #:progress-event #:protocol
                              #:public-access-block-configuration
                              #:put-bucket-accelerate-configuration
                              #:put-bucket-acl
                              #:put-bucket-analytics-configuration
                              #:put-bucket-cors #:put-bucket-encryption
                              #:put-bucket-intelligent-tiering-configuration
                              #:put-bucket-inventory-configuration
                              #:put-bucket-lifecycle-configuration
                              #:put-bucket-logging
                              #:put-bucket-metrics-configuration
                              #:put-bucket-notification-configuration
                              #:put-bucket-ownership-controls
                              #:put-bucket-policy #:put-bucket-replication
                              #:put-bucket-request-payment #:put-bucket-tagging
                              #:put-bucket-versioning #:put-bucket-website
                              #:put-object #:put-object-acl
                              #:put-object-legal-hold
                              #:put-object-lock-configuration
                              #:put-object-retention #:put-object-tagging
                              #:put-public-access-block #:queue-arn
                              #:queue-configuration #:queue-configuration-list
                              #:quiet #:quote-character
                              #:quote-escape-character #:quote-fields #:range
                              #:record-delimiter #:record-expiration
                              #:record-expiration-days #:records-event
                              #:redirect #:redirect-all-requests-to #:region
                              #:rename-object #:rename-source
                              #:rename-source-if-match
                              #:rename-source-if-modified-since
                              #:rename-source-if-none-match
                              #:rename-source-if-unmodified-since
                              #:replace-key-prefix-with #:replace-key-with
                              #:replica-kms-key-id #:replica-modifications
                              #:replica-modifications-status
                              #:replication-configuration #:replication-rule
                              #:replication-rule-and-operator
                              #:replication-rule-filter
                              #:replication-rule-status #:replication-rules
                              #:replication-status #:replication-time
                              #:replication-time-status
                              #:replication-time-value #:request-charged
                              #:request-payer #:request-payment-configuration
                              #:request-progress #:request-route
                              #:request-token #:response-cache-control
                              #:response-content-disposition
                              #:response-content-encoding
                              #:response-content-language
                              #:response-content-type #:response-expires
                              #:restore #:restore-expiry-date #:restore-object
                              #:restore-output-path #:restore-request
                              #:restore-request-type #:restore-status #:role
                              #:routing-rule #:routing-rules #:s3key-filter
                              #:s3location
                              #:s3regional-or-s3express-bucket-arn-string
                              #:s3tables-arn #:s3tables-bucket-arn
                              #:s3tables-bucket-type #:s3tables-destination
                              #:s3tables-destination-result #:s3tables-name
                              #:s3tables-namespace #:ssecustomer-algorithm
                              #:ssecustomer-key #:ssecustomer-key-md5 #:ssekms
                              #:ssekmsencryption-context #:ssekmskey-id #:sses3
                              #:scan-range #:select-object-content
                              #:select-object-content-event-stream
                              #:select-parameters #:server-side-encryption
                              #:server-side-encryption-by-default
                              #:server-side-encryption-configuration
                              #:server-side-encryption-rule
                              #:server-side-encryption-rules
                              #:session-credential-value #:session-credentials
                              #:session-expiration #:session-mode #:setting
                              #:simple-prefix #:size #:skip-validation
                              #:source-selection-criteria
                              #:sse-kms-encrypted-objects
                              #:sse-kms-encrypted-objects-status #:start
                              #:start-after #:stats #:stats-event
                              #:storage-class #:storage-class-analysis
                              #:storage-class-analysis-data-export
                              #:storage-class-analysis-schema-version
                              #:streaming-blob #:suffix #:table-sse-algorithm
                              #:tag #:tag-count #:tag-set #:tagging
                              #:tagging-directive #:tagging-header
                              #:target-bucket #:target-grant #:target-grants
                              #:target-object-key-format #:target-prefix #:tier
                              #:tiering #:tiering-list #:token #:topic-arn
                              #:topic-configuration #:topic-configuration-list
                              #:transition
                              #:transition-default-minimum-object-size
                              #:transition-list #:transition-storage-class
                              #:type #:uri
                              #:update-bucket-metadata-inventory-table-configuration
                              #:update-bucket-metadata-journal-table-configuration
                              #:upload-id-marker #:upload-part
                              #:upload-part-copy #:user-metadata #:value
                              #:version-count #:version-id-marker
                              #:versioning-configuration
                              #:website-configuration
                              #:website-redirect-location
                              #:write-get-object-response #:write-offset-bytes
                              #:years))
(common-lisp:in-package #:pira/s3)

(smithy/sdk/service:define-service amazon-s3 :shape-name "AmazonS3" :version
                                   "2006-03-01" :title
                                   "Amazon Simple Storage Service" :operations
                                   '(abort-multipart-upload
                                     complete-multipart-upload copy-object
                                     create-bucket
                                     create-bucket-metadata-configuration
                                     create-bucket-metadata-table-configuration
                                     create-multipart-upload create-session
                                     delete-bucket
                                     delete-bucket-analytics-configuration
                                     delete-bucket-cors
                                     delete-bucket-encryption
                                     delete-bucket-intelligent-tiering-configuration
                                     delete-bucket-inventory-configuration
                                     delete-bucket-lifecycle
                                     delete-bucket-metadata-configuration
                                     delete-bucket-metadata-table-configuration
                                     delete-bucket-metrics-configuration
                                     delete-bucket-ownership-controls
                                     delete-bucket-policy
                                     delete-bucket-replication
                                     delete-bucket-tagging
                                     delete-bucket-website delete-object
                                     delete-objects delete-object-tagging
                                     delete-public-access-block
                                     get-bucket-accelerate-configuration
                                     get-bucket-acl
                                     get-bucket-analytics-configuration
                                     get-bucket-cors get-bucket-encryption
                                     get-bucket-intelligent-tiering-configuration
                                     get-bucket-inventory-configuration
                                     get-bucket-lifecycle-configuration
                                     get-bucket-location get-bucket-logging
                                     get-bucket-metadata-configuration
                                     get-bucket-metadata-table-configuration
                                     get-bucket-metrics-configuration
                                     get-bucket-notification-configuration
                                     get-bucket-ownership-controls
                                     get-bucket-policy get-bucket-policy-status
                                     get-bucket-replication
                                     get-bucket-request-payment
                                     get-bucket-tagging get-bucket-versioning
                                     get-bucket-website get-object
                                     get-object-acl get-object-attributes
                                     get-object-legal-hold
                                     get-object-lock-configuration
                                     get-object-retention get-object-tagging
                                     get-object-torrent get-public-access-block
                                     head-bucket head-object
                                     list-bucket-analytics-configurations
                                     list-bucket-intelligent-tiering-configurations
                                     list-bucket-inventory-configurations
                                     list-bucket-metrics-configurations
                                     list-buckets list-directory-buckets
                                     list-multipart-uploads list-objects
                                     list-objects-v2 list-object-versions
                                     list-parts
                                     put-bucket-accelerate-configuration
                                     put-bucket-acl
                                     put-bucket-analytics-configuration
                                     put-bucket-cors put-bucket-encryption
                                     put-bucket-intelligent-tiering-configuration
                                     put-bucket-inventory-configuration
                                     put-bucket-lifecycle-configuration
                                     put-bucket-logging
                                     put-bucket-metrics-configuration
                                     put-bucket-notification-configuration
                                     put-bucket-ownership-controls
                                     put-bucket-policy put-bucket-replication
                                     put-bucket-request-payment
                                     put-bucket-tagging put-bucket-versioning
                                     put-bucket-website put-object
                                     put-object-acl put-object-legal-hold
                                     put-object-lock-configuration
                                     put-object-retention put-object-tagging
                                     put-public-access-block rename-object
                                     restore-object select-object-content
                                     update-bucket-metadata-inventory-table-configuration
                                     update-bucket-metadata-journal-table-configuration
                                     upload-part upload-part-copy
                                     write-get-object-response)
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

(smithy/sdk/shapes:define-type abort-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure abort-incomplete-multipart-upload
                                    common-lisp:nil
                                    ((days-after-initiation :target-type
                                      days-after-initiation :member-name
                                      "DaysAfterInitiation"))
                                    (:shape-name
                                     "AbortIncompleteMultipartUpload"))

(smithy/sdk/shapes:define-output abort-multipart-upload-output common-lisp:nil
                                 ((request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "AbortMultipartUploadOutput"))

(smithy/sdk/shapes:define-input abort-multipart-upload-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (upload-id :target-type multipart-upload-id
                                  :required common-lisp:t :member-name
                                  "UploadId" :http-query "uploadId")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (if-match-initiated-time :target-type
                                  if-match-initiated-time :member-name
                                  "IfMatchInitiatedTime" :http-header
                                  "x-amz-if-match-initiated-time"))
                                (:shape-name "AbortMultipartUploadRequest"))

(smithy/sdk/shapes:define-type abort-rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure accelerate-configuration common-lisp:nil
                                    ((status :target-type
                                      bucket-accelerate-status :member-name
                                      "Status"))
                                    (:shape-name "AccelerateConfiguration"))

(smithy/sdk/shapes:define-type accept-ranges smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-control-policy common-lisp:nil
                                    ((grants :target-type grants :member-name
                                      "Grants" :xml-name "AccessControlList")
                                     (owner :target-type owner :member-name
                                      "Owner"))
                                    (:shape-name "AccessControlPolicy"))

(smithy/sdk/shapes:define-structure access-control-translation common-lisp:nil
                                    ((owner :target-type owner-override
                                      :required common-lisp:t :member-name
                                      "Owner"))
                                    (:shape-name "AccessControlTranslation"))

(smithy/sdk/shapes:define-type access-key-id-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-point-alias
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type access-point-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type allow-quoted-record-delimiter
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type allowed-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-headers :member allowed-header)

(smithy/sdk/shapes:define-type allowed-method smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-methods :member allowed-method)

(smithy/sdk/shapes:define-type allowed-origin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-origins :member allowed-origin)

(smithy/sdk/shapes:define-structure analytics-and-operator common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type tag-set :member-name
                                      "Tags" :xml-name "Tag" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name "AnalyticsAndOperator"))

(smithy/sdk/shapes:define-structure analytics-configuration common-lisp:nil
                                    ((id :target-type analytics-id :required
                                      common-lisp:t :member-name "Id")
                                     (filter :target-type analytics-filter
                                      :member-name "Filter")
                                     (storage-class-analysis :target-type
                                      storage-class-analysis :required
                                      common-lisp:t :member-name
                                      "StorageClassAnalysis"))
                                    (:shape-name "AnalyticsConfiguration"))

(smithy/sdk/shapes:define-list analytics-configuration-list :member
                               analytics-configuration)

(smithy/sdk/shapes:define-structure analytics-export-destination
                                    common-lisp:nil
                                    ((s3bucket-destination :target-type
                                      analytics-s3bucket-destination :required
                                      common-lisp:t :member-name
                                      "S3BucketDestination"))
                                    (:shape-name "AnalyticsExportDestination"))

(smithy/sdk/shapes:define-union analytics-filter common-lisp:nil
                                ((prefix :target-type prefix :member-name
                                  "Prefix")
                                 (tag :target-type tag :member-name "Tag")
                                 (and :target-type analytics-and-operator
                                  :member-name "And"))
                                (:shape-name "AnalyticsFilter"))

(smithy/sdk/shapes:define-type analytics-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analytics-s3bucket-destination
                                    common-lisp:nil
                                    ((format :target-type
                                      analytics-s3export-file-format :required
                                      common-lisp:t :member-name "Format")
                                     (bucket-account-id :target-type account-id
                                      :member-name "BucketAccountId")
                                     (bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type prefix :member-name
                                      "Prefix"))
                                    (:shape-name
                                     "AnalyticsS3BucketDestination"))

(smithy/sdk/shapes:define-enum analytics-s3export-file-format
    common-lisp:nil
  (:csv "CSV"))

(smithy/sdk/shapes:define-enum archive-status
    common-lisp:nil
  (:archive-access "ARCHIVE_ACCESS")
  (:deep-archive-access "DEEP_ARCHIVE_ACCESS"))

(smithy/sdk/shapes:define-type body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure bucket common-lisp:nil
                                    ((name :target-type bucket-name
                                      :member-name "Name")
                                     (creation-date :target-type creation-date
                                      :member-name "CreationDate")
                                     (bucket-region :target-type bucket-region
                                      :member-name "BucketRegion")
                                     (bucket-arn :target-type
                                      s3regional-or-s3express-bucket-arn-string
                                      :member-name "BucketArn"))
                                    (:shape-name "Bucket"))

(smithy/sdk/shapes:define-enum bucket-accelerate-status
    common-lisp:nil
  (:enabled "Enabled")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-error bucket-already-exists common-lisp:nil
                                common-lisp:nil
                                (:shape-name "BucketAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error bucket-already-owned-by-you common-lisp:nil
                                common-lisp:nil
                                (:shape-name "BucketAlreadyOwnedByYou")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum bucket-canned-acl
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:authenticated-read "authenticated-read"))

(smithy/sdk/shapes:define-structure bucket-info common-lisp:nil
                                    ((data-redundancy :target-type
                                      data-redundancy :member-name
                                      "DataRedundancy")
                                     (type :target-type bucket-type
                                      :member-name "Type"))
                                    (:shape-name "BucketInfo"))

(smithy/sdk/shapes:define-type bucket-key-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bucket-lifecycle-configuration
                                    common-lisp:nil
                                    ((rules :target-type lifecycle-rules
                                      :required common-lisp:t :member-name
                                      "Rules" :xml-name "Rule" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name
                                     "BucketLifecycleConfiguration"))

(smithy/sdk/shapes:define-enum bucket-location-constraint
    common-lisp:nil
  (:af-south-1 "af-south-1")
  (:ap-east-1 "ap-east-1")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-northeast-3 "ap-northeast-3")
  (:ap-south-1 "ap-south-1")
  (:ap-south-2 "ap-south-2")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-southeast-3 "ap-southeast-3")
  (:ap-southeast-4 "ap-southeast-4")
  (:ap-southeast-5 "ap-southeast-5")
  (:ca-central-1 "ca-central-1")
  (:cn-north-1 "cn-north-1")
  (:cn-northwest-1 "cn-northwest-1")
  (:eu "EU")
  (:eu-central-1 "eu-central-1")
  (:eu-central-2 "eu-central-2")
  (:eu-north-1 "eu-north-1")
  (:eu-south-1 "eu-south-1")
  (:eu-south-2 "eu-south-2")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:il-central-1 "il-central-1")
  (:me-central-1 "me-central-1")
  (:me-south-1 "me-south-1")
  (:sa-east-1 "sa-east-1")
  (:us-east-2 "us-east-2")
  (:us-gov-east-1 "us-gov-east-1")
  (:us-gov-west-1 "us-gov-west-1")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2"))

(smithy/sdk/shapes:define-type bucket-location-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bucket-logging-status common-lisp:nil
                                    ((logging-enabled :target-type
                                      logging-enabled :member-name
                                      "LoggingEnabled"))
                                    (:shape-name "BucketLoggingStatus"))

(smithy/sdk/shapes:define-enum bucket-logs-permission
    common-lisp:nil
  (:full-control "FULL_CONTROL")
  (:read "READ")
  (:write "WRITE"))

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bucket-type
    common-lisp:nil
  (:directory "Directory"))

(smithy/sdk/shapes:define-enum bucket-versioning-status
    common-lisp:nil
  (:enabled "Enabled")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-list buckets :member (bucket :xml-name "Bucket"))

(smithy/sdk/shapes:define-type bypass-governance-retention
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bytes-processed smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type bytes-returned smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type bytes-scanned smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure corsconfiguration common-lisp:nil
                                    ((corsrules :target-type corsrules
                                      :required common-lisp:t :member-name
                                      "CORSRules" :xml-name "CORSRule"
                                      :xml-flattened common-lisp:t))
                                    (:shape-name "CORSConfiguration"))

(smithy/sdk/shapes:define-structure corsrule common-lisp:nil
                                    ((id :target-type id :member-name "ID")
                                     (allowed-headers :target-type
                                      allowed-headers :member-name
                                      "AllowedHeaders" :xml-name
                                      "AllowedHeader" :xml-flattened
                                      common-lisp:t)
                                     (allowed-methods :target-type
                                      allowed-methods :required common-lisp:t
                                      :member-name "AllowedMethods" :xml-name
                                      "AllowedMethod" :xml-flattened
                                      common-lisp:t)
                                     (allowed-origins :target-type
                                      allowed-origins :required common-lisp:t
                                      :member-name "AllowedOrigins" :xml-name
                                      "AllowedOrigin" :xml-flattened
                                      common-lisp:t)
                                     (expose-headers :target-type
                                      expose-headers :member-name
                                      "ExposeHeaders" :xml-name "ExposeHeader"
                                      :xml-flattened common-lisp:t)
                                     (max-age-seconds :target-type
                                      max-age-seconds :member-name
                                      "MaxAgeSeconds"))
                                    (:shape-name "CORSRule"))

(smithy/sdk/shapes:define-list corsrules :member corsrule)

(smithy/sdk/shapes:define-structure csvinput common-lisp:nil
                                    ((file-header-info :target-type
                                      file-header-info :member-name
                                      "FileHeaderInfo")
                                     (comments :target-type comments
                                      :member-name "Comments")
                                     (quote-escape-character :target-type
                                      quote-escape-character :member-name
                                      "QuoteEscapeCharacter")
                                     (record-delimiter :target-type
                                      record-delimiter :member-name
                                      "RecordDelimiter")
                                     (field-delimiter :target-type
                                      field-delimiter :member-name
                                      "FieldDelimiter")
                                     (quote-character :target-type
                                      quote-character :member-name
                                      "QuoteCharacter")
                                     (allow-quoted-record-delimiter
                                      :target-type
                                      allow-quoted-record-delimiter
                                      :member-name
                                      "AllowQuotedRecordDelimiter"))
                                    (:shape-name "CSVInput"))

(smithy/sdk/shapes:define-structure csvoutput common-lisp:nil
                                    ((quote-fields :target-type quote-fields
                                      :member-name "QuoteFields")
                                     (quote-escape-character :target-type
                                      quote-escape-character :member-name
                                      "QuoteEscapeCharacter")
                                     (record-delimiter :target-type
                                      record-delimiter :member-name
                                      "RecordDelimiter")
                                     (field-delimiter :target-type
                                      field-delimiter :member-name
                                      "FieldDelimiter")
                                     (quote-character :target-type
                                      quote-character :member-name
                                      "QuoteCharacter"))
                                    (:shape-name "CSVOutput"))

(smithy/sdk/shapes:define-type cache-control smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure checksum common-lisp:nil
                                    ((checksum-crc32 :target-type
                                      checksum-crc32 :member-name
                                      "ChecksumCRC32")
                                     (checksum-crc32c :target-type
                                      checksum-crc32c :member-name
                                      "ChecksumCRC32C")
                                     (checksum-crc64nvme :target-type
                                      checksum-crc64nvme :member-name
                                      "ChecksumCRC64NVME")
                                     (checksum-sha1 :target-type checksum-sha1
                                      :member-name "ChecksumSHA1")
                                     (checksum-sha256 :target-type
                                      checksum-sha256 :member-name
                                      "ChecksumSHA256")
                                     (checksum-type :target-type checksum-type
                                      :member-name "ChecksumType"))
                                    (:shape-name "Checksum"))

(smithy/sdk/shapes:define-enum checksum-algorithm
    common-lisp:nil
  (:crc32 "CRC32")
  (:crc32c "CRC32C")
  (:sha1 "SHA1")
  (:sha256 "SHA256")
  (:crc64nvme "CRC64NVME"))

(smithy/sdk/shapes:define-list checksum-algorithm-list :member
                               checksum-algorithm)

(smithy/sdk/shapes:define-type checksum-crc32 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type checksum-crc32c smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type checksum-crc64nvme
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum checksum-mode
    common-lisp:nil
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-type checksum-sha1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type checksum-sha256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum checksum-type
    common-lisp:nil
  (:composite "COMPOSITE")
  (:full-object "FULL_OBJECT"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comments smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure common-prefix common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix"))
                                    (:shape-name "CommonPrefix"))

(smithy/sdk/shapes:define-list common-prefix-list :member common-prefix)

(smithy/sdk/shapes:define-output complete-multipart-upload-output
                                 common-lisp:nil
                                 ((location :target-type location :member-name
                                   "Location")
                                  (bucket :target-type bucket-name :member-name
                                   "Bucket")
                                  (key :target-type object-key :member-name
                                   "Key")
                                  (expiration :target-type expiration
                                   :member-name "Expiration" :http-header
                                   "x-amz-expiration")
                                  (etag :target-type etag :member-name "ETag")
                                  (checksum-crc32 :target-type checksum-crc32
                                   :member-name "ChecksumCRC32")
                                  (checksum-crc32c :target-type checksum-crc32c
                                   :member-name "ChecksumCRC32C")
                                  (checksum-crc64nvme :target-type
                                   checksum-crc64nvme :member-name
                                   "ChecksumCRC64NVME")
                                  (checksum-sha1 :target-type checksum-sha1
                                   :member-name "ChecksumSHA1")
                                  (checksum-sha256 :target-type checksum-sha256
                                   :member-name "ChecksumSHA256")
                                  (checksum-type :target-type checksum-type
                                   :member-name "ChecksumType")
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "CompleteMultipartUploadOutput")
                                 (:xml-name "CompleteMultipartUploadResult"))

(smithy/sdk/shapes:define-input complete-multipart-upload-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (multipart-upload :target-type
                                  completed-multipart-upload :member-name
                                  "MultipartUpload" :http-payload common-lisp:t
                                  :xml-name "CompleteMultipartUpload")
                                 (upload-id :target-type multipart-upload-id
                                  :required common-lisp:t :member-name
                                  "UploadId" :http-query "uploadId")
                                 (checksum-crc32 :target-type checksum-crc32
                                  :member-name "ChecksumCRC32" :http-header
                                  "x-amz-checksum-crc32")
                                 (checksum-crc32c :target-type checksum-crc32c
                                  :member-name "ChecksumCRC32C" :http-header
                                  "x-amz-checksum-crc32c")
                                 (checksum-crc64nvme :target-type
                                  checksum-crc64nvme :member-name
                                  "ChecksumCRC64NVME" :http-header
                                  "x-amz-checksum-crc64nvme")
                                 (checksum-sha1 :target-type checksum-sha1
                                  :member-name "ChecksumSHA1" :http-header
                                  "x-amz-checksum-sha1")
                                 (checksum-sha256 :target-type checksum-sha256
                                  :member-name "ChecksumSHA256" :http-header
                                  "x-amz-checksum-sha256")
                                 (checksum-type :target-type checksum-type
                                  :member-name "ChecksumType" :http-header
                                  "x-amz-checksum-type")
                                 (mpu-object-size :target-type mpu-object-size
                                  :member-name "MpuObjectSize" :http-header
                                  "x-amz-mp-object-size")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (if-match :target-type if-match :member-name
                                  "IfMatch" :http-header "If-Match")
                                 (if-none-match :target-type if-none-match
                                  :member-name "IfNoneMatch" :http-header
                                  "If-None-Match")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5"))
                                (:shape-name "CompleteMultipartUploadRequest"))

(smithy/sdk/shapes:define-structure completed-multipart-upload common-lisp:nil
                                    ((parts :target-type completed-part-list
                                      :member-name "Parts" :xml-name "Part"
                                      :xml-flattened common-lisp:t))
                                    (:shape-name "CompletedMultipartUpload"))

(smithy/sdk/shapes:define-structure completed-part common-lisp:nil
                                    ((etag :target-type etag :member-name
                                      "ETag")
                                     (checksum-crc32 :target-type
                                      checksum-crc32 :member-name
                                      "ChecksumCRC32")
                                     (checksum-crc32c :target-type
                                      checksum-crc32c :member-name
                                      "ChecksumCRC32C")
                                     (checksum-crc64nvme :target-type
                                      checksum-crc64nvme :member-name
                                      "ChecksumCRC64NVME")
                                     (checksum-sha1 :target-type checksum-sha1
                                      :member-name "ChecksumSHA1")
                                     (checksum-sha256 :target-type
                                      checksum-sha256 :member-name
                                      "ChecksumSHA256")
                                     (part-number :target-type part-number
                                      :member-name "PartNumber"))
                                    (:shape-name "CompletedPart"))

(smithy/sdk/shapes:define-list completed-part-list :member completed-part)

(smithy/sdk/shapes:define-enum compression-type
    common-lisp:nil
  (:none "NONE")
  (:gzip "GZIP")
  (:bzip2 "BZIP2"))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((http-error-code-returned-equals
                                      :target-type
                                      http-error-code-returned-equals
                                      :member-name
                                      "HttpErrorCodeReturnedEquals")
                                     (key-prefix-equals :target-type
                                      key-prefix-equals :member-name
                                      "KeyPrefixEquals"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-type confirm-remove-self-bucket-access
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type content-disposition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-encoding smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-language smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-length smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type content-md5 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure continuation-event common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "ContinuationEvent"))

(smithy/sdk/shapes:define-output copy-object-output common-lisp:nil
                                 ((copy-object-result :target-type
                                   copy-object-result :member-name
                                   "CopyObjectResult" :http-payload
                                   common-lisp:t)
                                  (expiration :target-type expiration
                                   :member-name "Expiration" :http-header
                                   "x-amz-expiration")
                                  (copy-source-version-id :target-type
                                   copy-source-version-id :member-name
                                   "CopySourceVersionId" :http-header
                                   "x-amz-copy-source-version-id")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (ssekmsencryption-context :target-type
                                   ssekmsencryption-context :member-name
                                   "SSEKMSEncryptionContext" :http-header
                                   "x-amz-server-side-encryption-context")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "CopyObjectOutput"))

(smithy/sdk/shapes:define-input copy-object-request common-lisp:nil
                                ((acl :target-type object-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (cache-control :target-type cache-control
                                  :member-name "CacheControl" :http-header
                                  "Cache-Control")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-checksum-algorithm")
                                 (content-disposition :target-type
                                  content-disposition :member-name
                                  "ContentDisposition" :http-header
                                  "Content-Disposition")
                                 (content-encoding :target-type
                                  content-encoding :member-name
                                  "ContentEncoding" :http-header
                                  "Content-Encoding")
                                 (content-language :target-type
                                  content-language :member-name
                                  "ContentLanguage" :http-header
                                  "Content-Language")
                                 (content-type :target-type content-type
                                  :member-name "ContentType" :http-header
                                  "Content-Type")
                                 (copy-source :target-type copy-source
                                  :required common-lisp:t :member-name
                                  "CopySource" :http-header
                                  "x-amz-copy-source")
                                 (copy-source-if-match :target-type
                                  copy-source-if-match :member-name
                                  "CopySourceIfMatch" :http-header
                                  "x-amz-copy-source-if-match")
                                 (copy-source-if-modified-since :target-type
                                  copy-source-if-modified-since :member-name
                                  "CopySourceIfModifiedSince" :http-header
                                  "x-amz-copy-source-if-modified-since")
                                 (copy-source-if-none-match :target-type
                                  copy-source-if-none-match :member-name
                                  "CopySourceIfNoneMatch" :http-header
                                  "x-amz-copy-source-if-none-match")
                                 (copy-source-if-unmodified-since :target-type
                                  copy-source-if-unmodified-since :member-name
                                  "CopySourceIfUnmodifiedSince" :http-header
                                  "x-amz-copy-source-if-unmodified-since")
                                 (expires :target-type expires :member-name
                                  "Expires" :http-header "Expires")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (metadata :target-type metadata :member-name
                                  "Metadata" :http-prefix-headers
                                  "x-amz-meta-")
                                 (metadata-directive :target-type
                                  metadata-directive :member-name
                                  "MetadataDirective" :http-header
                                  "x-amz-metadata-directive")
                                 (tagging-directive :target-type
                                  tagging-directive :member-name
                                  "TaggingDirective" :http-header
                                  "x-amz-tagging-directive")
                                 (server-side-encryption :target-type
                                  server-side-encryption :member-name
                                  "ServerSideEncryption" :http-header
                                  "x-amz-server-side-encryption")
                                 (storage-class :target-type storage-class
                                  :member-name "StorageClass" :http-header
                                  "x-amz-storage-class")
                                 (website-redirect-location :target-type
                                  website-redirect-location :member-name
                                  "WebsiteRedirectLocation" :http-header
                                  "x-amz-website-redirect-location")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (ssekmskey-id :target-type ssekmskey-id
                                  :member-name "SSEKMSKeyId" :http-header
                                  "x-amz-server-side-encryption-aws-kms-key-id")
                                 (ssekmsencryption-context :target-type
                                  ssekmsencryption-context :member-name
                                  "SSEKMSEncryptionContext" :http-header
                                  "x-amz-server-side-encryption-context")
                                 (bucket-key-enabled :target-type
                                  bucket-key-enabled :member-name
                                  "BucketKeyEnabled" :http-header
                                  "x-amz-server-side-encryption-bucket-key-enabled")
                                 (copy-source-ssecustomer-algorithm
                                  :target-type
                                  copy-source-ssecustomer-algorithm
                                  :member-name "CopySourceSSECustomerAlgorithm"
                                  :http-header
                                  "x-amz-copy-source-server-side-encryption-customer-algorithm")
                                 (copy-source-ssecustomer-key :target-type
                                  copy-source-ssecustomer-key :member-name
                                  "CopySourceSSECustomerKey" :http-header
                                  "x-amz-copy-source-server-side-encryption-customer-key")
                                 (copy-source-ssecustomer-key-md5 :target-type
                                  copy-source-ssecustomer-key-md5 :member-name
                                  "CopySourceSSECustomerKeyMD5" :http-header
                                  "x-amz-copy-source-server-side-encryption-customer-key-MD5")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (tagging :target-type tagging-header
                                  :member-name "Tagging" :http-header
                                  "x-amz-tagging")
                                 (object-lock-mode :target-type
                                  object-lock-mode :member-name
                                  "ObjectLockMode" :http-header
                                  "x-amz-object-lock-mode")
                                 (object-lock-retain-until-date :target-type
                                  object-lock-retain-until-date :member-name
                                  "ObjectLockRetainUntilDate" :http-header
                                  "x-amz-object-lock-retain-until-date")
                                 (object-lock-legal-hold-status :target-type
                                  object-lock-legal-hold-status :member-name
                                  "ObjectLockLegalHoldStatus" :http-header
                                  "x-amz-object-lock-legal-hold")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (expected-source-bucket-owner :target-type
                                  account-id :member-name
                                  "ExpectedSourceBucketOwner" :http-header
                                  "x-amz-source-expected-bucket-owner"))
                                (:shape-name "CopyObjectRequest"))

(smithy/sdk/shapes:define-structure copy-object-result common-lisp:nil
                                    ((etag :target-type etag :member-name
                                      "ETag")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (checksum-type :target-type checksum-type
                                      :member-name "ChecksumType")
                                     (checksum-crc32 :target-type
                                      checksum-crc32 :member-name
                                      "ChecksumCRC32")
                                     (checksum-crc32c :target-type
                                      checksum-crc32c :member-name
                                      "ChecksumCRC32C")
                                     (checksum-crc64nvme :target-type
                                      checksum-crc64nvme :member-name
                                      "ChecksumCRC64NVME")
                                     (checksum-sha1 :target-type checksum-sha1
                                      :member-name "ChecksumSHA1")
                                     (checksum-sha256 :target-type
                                      checksum-sha256 :member-name
                                      "ChecksumSHA256"))
                                    (:shape-name "CopyObjectResult"))

(smithy/sdk/shapes:define-structure copy-part-result common-lisp:nil
                                    ((etag :target-type etag :member-name
                                      "ETag")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (checksum-crc32 :target-type
                                      checksum-crc32 :member-name
                                      "ChecksumCRC32")
                                     (checksum-crc32c :target-type
                                      checksum-crc32c :member-name
                                      "ChecksumCRC32C")
                                     (checksum-crc64nvme :target-type
                                      checksum-crc64nvme :member-name
                                      "ChecksumCRC64NVME")
                                     (checksum-sha1 :target-type checksum-sha1
                                      :member-name "ChecksumSHA1")
                                     (checksum-sha256 :target-type
                                      checksum-sha256 :member-name
                                      "ChecksumSHA256"))
                                    (:shape-name "CopyPartResult"))

(smithy/sdk/shapes:define-type copy-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-if-match
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-if-modified-since
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type copy-source-if-none-match
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-if-unmodified-since
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type copy-source-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-ssecustomer-algorithm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-ssecustomer-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-ssecustomer-key-md5
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type copy-source-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-bucket-configuration common-lisp:nil
                                    ((location-constraint :target-type
                                      bucket-location-constraint :member-name
                                      "LocationConstraint")
                                     (location :target-type location-info
                                      :member-name "Location")
                                     (bucket :target-type bucket-info
                                      :member-name "Bucket")
                                     (tags :target-type tag-set :member-name
                                      "Tags"))
                                    (:shape-name "CreateBucketConfiguration"))

(smithy/sdk/shapes:define-input create-bucket-metadata-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (metadata-configuration :target-type
                                  metadata-configuration :required
                                  common-lisp:t :member-name
                                  "MetadataConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "MetadataConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "CreateBucketMetadataConfigurationRequest"))

(smithy/sdk/shapes:define-input
 create-bucket-metadata-table-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (content-md5 :target-type content-md5 :member-name "ContentMD5" :http-header
   "Content-MD5")
  (checksum-algorithm :target-type checksum-algorithm :member-name
   "ChecksumAlgorithm" :http-header "x-amz-sdk-checksum-algorithm")
  (metadata-table-configuration :target-type metadata-table-configuration
   :required common-lisp:t :member-name "MetadataTableConfiguration"
   :http-payload common-lisp:t :xml-name "MetadataTableConfiguration")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "CreateBucketMetadataTableConfigurationRequest"))

(smithy/sdk/shapes:define-output create-bucket-output common-lisp:nil
                                 ((location :target-type location :member-name
                                   "Location" :http-header "Location")
                                  (bucket-arn :target-type
                                   s3regional-or-s3express-bucket-arn-string
                                   :member-name "BucketArn" :http-header
                                   "x-amz-bucket-arn"))
                                 (:shape-name "CreateBucketOutput"))

(smithy/sdk/shapes:define-input create-bucket-request common-lisp:nil
                                ((acl :target-type bucket-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (create-bucket-configuration :target-type
                                  create-bucket-configuration :member-name
                                  "CreateBucketConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "CreateBucketConfiguration")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write :target-type grant-write
                                  :member-name "GrantWrite" :http-header
                                  "x-amz-grant-write")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (object-lock-enabled-for-bucket :target-type
                                  object-lock-enabled-for-bucket :member-name
                                  "ObjectLockEnabledForBucket" :http-header
                                  "x-amz-bucket-object-lock-enabled")
                                 (object-ownership :target-type
                                  object-ownership :member-name
                                  "ObjectOwnership" :http-header
                                  "x-amz-object-ownership"))
                                (:shape-name "CreateBucketRequest"))

(smithy/sdk/shapes:define-output create-multipart-upload-output common-lisp:nil
                                 ((abort-date :target-type abort-date
                                   :member-name "AbortDate" :http-header
                                   "x-amz-abort-date")
                                  (abort-rule-id :target-type abort-rule-id
                                   :member-name "AbortRuleId" :http-header
                                   "x-amz-abort-rule-id")
                                  (bucket :target-type bucket-name :member-name
                                   "Bucket" :xml-name "Bucket")
                                  (key :target-type object-key :member-name
                                   "Key")
                                  (upload-id :target-type multipart-upload-id
                                   :member-name "UploadId")
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (ssekmsencryption-context :target-type
                                   ssekmsencryption-context :member-name
                                   "SSEKMSEncryptionContext" :http-header
                                   "x-amz-server-side-encryption-context")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (checksum-algorithm :target-type
                                   checksum-algorithm :member-name
                                   "ChecksumAlgorithm" :http-header
                                   "x-amz-checksum-algorithm")
                                  (checksum-type :target-type checksum-type
                                   :member-name "ChecksumType" :http-header
                                   "x-amz-checksum-type"))
                                 (:shape-name "CreateMultipartUploadOutput")
                                 (:xml-name "InitiateMultipartUploadResult"))

(smithy/sdk/shapes:define-input create-multipart-upload-request common-lisp:nil
                                ((acl :target-type object-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (cache-control :target-type cache-control
                                  :member-name "CacheControl" :http-header
                                  "Cache-Control")
                                 (content-disposition :target-type
                                  content-disposition :member-name
                                  "ContentDisposition" :http-header
                                  "Content-Disposition")
                                 (content-encoding :target-type
                                  content-encoding :member-name
                                  "ContentEncoding" :http-header
                                  "Content-Encoding")
                                 (content-language :target-type
                                  content-language :member-name
                                  "ContentLanguage" :http-header
                                  "Content-Language")
                                 (content-type :target-type content-type
                                  :member-name "ContentType" :http-header
                                  "Content-Type")
                                 (expires :target-type expires :member-name
                                  "Expires" :http-header "Expires")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (metadata :target-type metadata :member-name
                                  "Metadata" :http-prefix-headers
                                  "x-amz-meta-")
                                 (server-side-encryption :target-type
                                  server-side-encryption :member-name
                                  "ServerSideEncryption" :http-header
                                  "x-amz-server-side-encryption")
                                 (storage-class :target-type storage-class
                                  :member-name "StorageClass" :http-header
                                  "x-amz-storage-class")
                                 (website-redirect-location :target-type
                                  website-redirect-location :member-name
                                  "WebsiteRedirectLocation" :http-header
                                  "x-amz-website-redirect-location")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (ssekmskey-id :target-type ssekmskey-id
                                  :member-name "SSEKMSKeyId" :http-header
                                  "x-amz-server-side-encryption-aws-kms-key-id")
                                 (ssekmsencryption-context :target-type
                                  ssekmsencryption-context :member-name
                                  "SSEKMSEncryptionContext" :http-header
                                  "x-amz-server-side-encryption-context")
                                 (bucket-key-enabled :target-type
                                  bucket-key-enabled :member-name
                                  "BucketKeyEnabled" :http-header
                                  "x-amz-server-side-encryption-bucket-key-enabled")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (tagging :target-type tagging-header
                                  :member-name "Tagging" :http-header
                                  "x-amz-tagging")
                                 (object-lock-mode :target-type
                                  object-lock-mode :member-name
                                  "ObjectLockMode" :http-header
                                  "x-amz-object-lock-mode")
                                 (object-lock-retain-until-date :target-type
                                  object-lock-retain-until-date :member-name
                                  "ObjectLockRetainUntilDate" :http-header
                                  "x-amz-object-lock-retain-until-date")
                                 (object-lock-legal-hold-status :target-type
                                  object-lock-legal-hold-status :member-name
                                  "ObjectLockLegalHoldStatus" :http-header
                                  "x-amz-object-lock-legal-hold")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-checksum-algorithm")
                                 (checksum-type :target-type checksum-type
                                  :member-name "ChecksumType" :http-header
                                  "x-amz-checksum-type"))
                                (:shape-name "CreateMultipartUploadRequest"))

(smithy/sdk/shapes:define-output create-session-output common-lisp:nil
                                 ((server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (ssekmsencryption-context :target-type
                                   ssekmsencryption-context :member-name
                                   "SSEKMSEncryptionContext" :http-header
                                   "x-amz-server-side-encryption-context")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (credentials :target-type session-credentials
                                   :required common-lisp:t :member-name
                                   "Credentials" :xml-name "Credentials"))
                                 (:shape-name "CreateSessionOutput")
                                 (:xml-name "CreateSessionResult"))

(smithy/sdk/shapes:define-input create-session-request common-lisp:nil
                                ((session-mode :target-type session-mode
                                  :member-name "SessionMode" :http-header
                                  "x-amz-create-session-mode")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (server-side-encryption :target-type
                                  server-side-encryption :member-name
                                  "ServerSideEncryption" :http-header
                                  "x-amz-server-side-encryption")
                                 (ssekmskey-id :target-type ssekmskey-id
                                  :member-name "SSEKMSKeyId" :http-header
                                  "x-amz-server-side-encryption-aws-kms-key-id")
                                 (ssekmsencryption-context :target-type
                                  ssekmsencryption-context :member-name
                                  "SSEKMSEncryptionContext" :http-header
                                  "x-amz-server-side-encryption-context")
                                 (bucket-key-enabled :target-type
                                  bucket-key-enabled :member-name
                                  "BucketKeyEnabled" :http-header
                                  "x-amz-server-side-encryption-bucket-key-enabled"))
                                (:shape-name "CreateSessionRequest"))

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum data-redundancy
    common-lisp:nil
  (:single-availability-zone "SingleAvailabilityZone")
  (:single-local-zone "SingleLocalZone"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type days-after-initiation
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure default-retention common-lisp:nil
                                    ((mode :target-type
                                      object-lock-retention-mode :member-name
                                      "Mode")
                                     (days :target-type days :member-name
                                      "Days")
                                     (years :target-type years :member-name
                                      "Years"))
                                    (:shape-name "DefaultRetention"))

(smithy/sdk/shapes:define-structure delete common-lisp:nil
                                    ((objects :target-type
                                      object-identifier-list :required
                                      common-lisp:t :member-name "Objects"
                                      :xml-name "Object" :xml-flattened
                                      common-lisp:t)
                                     (quiet :target-type quiet :member-name
                                      "Quiet"))
                                    (:shape-name "Delete"))

(smithy/sdk/shapes:define-input delete-bucket-analytics-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type analytics-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "DeleteBucketAnalyticsConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-cors-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketCorsRequest"))

(smithy/sdk/shapes:define-input delete-bucket-encryption-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketEncryptionRequest"))

(smithy/sdk/shapes:define-input
 delete-bucket-intelligent-tiering-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (id :target-type intelligent-tiering-id :required common-lisp:t :member-name
   "Id" :http-query "id")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "DeleteBucketIntelligentTieringConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-inventory-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type inventory-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "DeleteBucketInventoryConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-lifecycle-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketLifecycleRequest"))

(smithy/sdk/shapes:define-input delete-bucket-metadata-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "DeleteBucketMetadataConfigurationRequest"))

(smithy/sdk/shapes:define-input
 delete-bucket-metadata-table-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "DeleteBucketMetadataTableConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-metrics-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type metrics-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "DeleteBucketMetricsConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-ownership-controls-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "DeleteBucketOwnershipControlsRequest"))

(smithy/sdk/shapes:define-input delete-bucket-policy-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketPolicyRequest"))

(smithy/sdk/shapes:define-input delete-bucket-replication-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketReplicationRequest"))

(smithy/sdk/shapes:define-input delete-bucket-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketRequest"))

(smithy/sdk/shapes:define-input delete-bucket-tagging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketTaggingRequest"))

(smithy/sdk/shapes:define-input delete-bucket-website-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeleteBucketWebsiteRequest"))

(smithy/sdk/shapes:define-type delete-marker smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure delete-marker-entry common-lisp:nil
                                    ((owner :target-type owner :member-name
                                      "Owner")
                                     (key :target-type object-key :member-name
                                      "Key")
                                     (version-id :target-type object-version-id
                                      :member-name "VersionId")
                                     (is-latest :target-type is-latest
                                      :member-name "IsLatest")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified"))
                                    (:shape-name "DeleteMarkerEntry"))

(smithy/sdk/shapes:define-structure delete-marker-replication common-lisp:nil
                                    ((status :target-type
                                      delete-marker-replication-status
                                      :member-name "Status"))
                                    (:shape-name "DeleteMarkerReplication"))

(smithy/sdk/shapes:define-enum delete-marker-replication-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type delete-marker-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list delete-markers :member delete-marker-entry)

(smithy/sdk/shapes:define-output delete-object-output common-lisp:nil
                                 ((delete-marker :target-type delete-marker
                                   :member-name "DeleteMarker" :http-header
                                   "x-amz-delete-marker")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "DeleteObjectOutput"))

(smithy/sdk/shapes:define-input delete-object-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (mfa :target-type mfa :member-name "MFA"
                                  :http-header "x-amz-mfa")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (bypass-governance-retention :target-type
                                  bypass-governance-retention :member-name
                                  "BypassGovernanceRetention" :http-header
                                  "x-amz-bypass-governance-retention")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (if-match :target-type if-match :member-name
                                  "IfMatch" :http-header "If-Match")
                                 (if-match-last-modified-time :target-type
                                  if-match-last-modified-time :member-name
                                  "IfMatchLastModifiedTime" :http-header
                                  "x-amz-if-match-last-modified-time")
                                 (if-match-size :target-type if-match-size
                                  :member-name "IfMatchSize" :http-header
                                  "x-amz-if-match-size"))
                                (:shape-name "DeleteObjectRequest"))

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

(smithy/sdk/shapes:define-output delete-objects-output common-lisp:nil
                                 ((deleted :target-type deleted-objects
                                   :member-name "Deleted" :xml-flattened
                                   common-lisp:t)
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (errors :target-type errors :member-name
                                   "Errors" :xml-name "Error" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name "DeleteObjectsOutput")
                                 (:xml-name "DeleteResult"))

(smithy/sdk/shapes:define-input delete-objects-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (delete :target-type delete :required
                                  common-lisp:t :member-name "Delete"
                                  :http-payload common-lisp:t :xml-name
                                  "Delete")
                                 (mfa :target-type mfa :member-name "MFA"
                                  :http-header "x-amz-mfa")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (bypass-governance-retention :target-type
                                  bypass-governance-retention :member-name
                                  "BypassGovernanceRetention" :http-header
                                  "x-amz-bypass-governance-retention")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm"))
                                (:shape-name "DeleteObjectsRequest"))

(smithy/sdk/shapes:define-input delete-public-access-block-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "DeletePublicAccessBlockRequest"))

(smithy/sdk/shapes:define-structure deleted-object common-lisp:nil
                                    ((key :target-type object-key :member-name
                                      "Key")
                                     (version-id :target-type object-version-id
                                      :member-name "VersionId")
                                     (delete-marker :target-type delete-marker
                                      :member-name "DeleteMarker")
                                     (delete-marker-version-id :target-type
                                      delete-marker-version-id :member-name
                                      "DeleteMarkerVersionId"))
                                    (:shape-name "DeletedObject"))

(smithy/sdk/shapes:define-list deleted-objects :member deleted-object)

(smithy/sdk/shapes:define-type delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "Bucket")
                                     (account :target-type account-id
                                      :member-name "Account")
                                     (storage-class :target-type storage-class
                                      :member-name "StorageClass")
                                     (access-control-translation :target-type
                                      access-control-translation :member-name
                                      "AccessControlTranslation")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (replication-time :target-type
                                      replication-time :member-name
                                      "ReplicationTime")
                                     (metrics :target-type metrics :member-name
                                      "Metrics"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure destination-result common-lisp:nil
                                    ((table-bucket-type :target-type
                                      s3tables-bucket-type :member-name
                                      "TableBucketType")
                                     (table-bucket-arn :target-type
                                      s3tables-bucket-arn :member-name
                                      "TableBucketArn")
                                     (table-namespace :target-type
                                      s3tables-namespace :member-name
                                      "TableNamespace"))
                                    (:shape-name "DestinationResult"))

(smithy/sdk/shapes:define-type directory-bucket-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enable-request-progress
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum encoding-type
    common-lisp:nil
  (:url "url"))

(smithy/sdk/shapes:define-structure encryption common-lisp:nil
                                    ((encryption-type :target-type
                                      server-side-encryption :required
                                      common-lisp:t :member-name
                                      "EncryptionType")
                                     (kmskey-id :target-type ssekmskey-id
                                      :member-name "KMSKeyId")
                                     (kmscontext :target-type kmscontext
                                      :member-name "KMSContext"))
                                    (:shape-name "Encryption"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((replica-kms-key-id :target-type
                                      replica-kms-key-id :member-name
                                      "ReplicaKmsKeyID"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-error encryption-type-mismatch common-lisp:nil
                                common-lisp:nil
                                (:shape-name "EncryptionTypeMismatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-type end smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure end-event common-lisp:nil common-lisp:nil
                                    (:shape-name "EndEvent"))

(smithy/sdk/shapes:define-structure error common-lisp:nil
                                    ((key :target-type object-key :member-name
                                      "Key")
                                     (version-id :target-type object-version-id
                                      :member-name "VersionId")
                                     (code :target-type code :member-name
                                      "Code")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "Error"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-structure error-document common-lisp:nil
                                    ((key :target-type object-key :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "ErrorDocument"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list errors :member error)

(smithy/sdk/shapes:define-enum event
    common-lisp:nil
  (:s3-reduced-redundancy-lost-object "s3:ReducedRedundancyLostObject")
  (:s3-object-created "s3:ObjectCreated:*")
  (:s3-object-created-put "s3:ObjectCreated:Put")
  (:s3-object-created-post "s3:ObjectCreated:Post")
  (:s3-object-created-copy "s3:ObjectCreated:Copy")
  (:s3-object-created-complete-multipart-upload
   "s3:ObjectCreated:CompleteMultipartUpload")
  (:s3-object-removed "s3:ObjectRemoved:*")
  (:s3-object-removed-delete "s3:ObjectRemoved:Delete")
  (:s3-object-removed-delete-marker-created
   "s3:ObjectRemoved:DeleteMarkerCreated")
  (:s3-object-restore "s3:ObjectRestore:*")
  (:s3-object-restore-post "s3:ObjectRestore:Post")
  (:s3-object-restore-completed "s3:ObjectRestore:Completed")
  (:s3-replication "s3:Replication:*")
  (:s3-replication-operation-failed-replication
   "s3:Replication:OperationFailedReplication")
  (:s3-replication-operation-not-tracked "s3:Replication:OperationNotTracked")
  (:s3-replication-operation-missed-threshold
   "s3:Replication:OperationMissedThreshold")
  (:s3-replication-operation-replicated-after-threshold
   "s3:Replication:OperationReplicatedAfterThreshold")
  (:s3-object-restore-delete "s3:ObjectRestore:Delete")
  (:s3-lifecycle-transition "s3:LifecycleTransition")
  (:s3-intelligent-tiering "s3:IntelligentTiering")
  (:s3-object-acl-put "s3:ObjectAcl:Put")
  (:s3-lifecycle-expiration "s3:LifecycleExpiration:*")
  (:s3-lifecycle-expiration-delete "s3:LifecycleExpiration:Delete")
  (:s3-lifecycle-expiration-delete-marker-created
   "s3:LifecycleExpiration:DeleteMarkerCreated")
  (:s3-object-tagging "s3:ObjectTagging:*")
  (:s3-object-tagging-put "s3:ObjectTagging:Put")
  (:s3-object-tagging-delete "s3:ObjectTagging:Delete"))

(smithy/sdk/shapes:define-structure event-bridge-configuration common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EventBridgeConfiguration"))

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-structure existing-object-replication common-lisp:nil
                                    ((status :target-type
                                      existing-object-replication-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "ExistingObjectReplication"))

(smithy/sdk/shapes:define-enum existing-object-replication-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type expiration smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum expiration-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum expiration-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type expired-object-delete-marker
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type expires smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type expose-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list expose-headers :member expose-header)

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum expression-type
    common-lisp:nil
  (:sql "SQL"))

(smithy/sdk/shapes:define-type fetch-owner smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type field-delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum file-header-info
    common-lisp:nil
  (:use "USE")
  (:ignore "IGNORE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure filter-rule common-lisp:nil
                                    ((name :target-type filter-rule-name
                                      :member-name "Name")
                                     (value :target-type filter-rule-value
                                      :member-name "Value"))
                                    (:shape-name "FilterRule"))

(smithy/sdk/shapes:define-list filter-rule-list :member filter-rule)

(smithy/sdk/shapes:define-enum filter-rule-name
    common-lisp:nil
  (:prefix "prefix")
  (:suffix "suffix"))

(smithy/sdk/shapes:define-type filter-rule-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output get-bucket-accelerate-configuration-output
                                 common-lisp:nil
                                 ((status :target-type bucket-accelerate-status
                                   :member-name "Status")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name
                                  "GetBucketAccelerateConfigurationOutput")
                                 (:xml-name "AccelerateConfiguration"))

(smithy/sdk/shapes:define-input get-bucket-accelerate-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer"))
                                (:shape-name
                                 "GetBucketAccelerateConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-acl-output common-lisp:nil
                                 ((owner :target-type owner :member-name
                                   "Owner")
                                  (grants :target-type grants :member-name
                                   "Grants" :xml-name "AccessControlList"))
                                 (:shape-name "GetBucketAclOutput")
                                 (:xml-name "AccessControlPolicy"))

(smithy/sdk/shapes:define-input get-bucket-acl-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketAclRequest"))

(smithy/sdk/shapes:define-output get-bucket-analytics-configuration-output
                                 common-lisp:nil
                                 ((analytics-configuration :target-type
                                   analytics-configuration :member-name
                                   "AnalyticsConfiguration" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetBucketAnalyticsConfigurationOutput"))

(smithy/sdk/shapes:define-input get-bucket-analytics-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type analytics-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketAnalyticsConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-cors-output common-lisp:nil
                                 ((corsrules :target-type corsrules
                                   :member-name "CORSRules" :xml-name
                                   "CORSRule" :xml-flattened common-lisp:t))
                                 (:shape-name "GetBucketCorsOutput")
                                 (:xml-name "CORSConfiguration"))

(smithy/sdk/shapes:define-input get-bucket-cors-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketCorsRequest"))

(smithy/sdk/shapes:define-output get-bucket-encryption-output common-lisp:nil
                                 ((server-side-encryption-configuration
                                   :target-type
                                   server-side-encryption-configuration
                                   :member-name
                                   "ServerSideEncryptionConfiguration"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetBucketEncryptionOutput"))

(smithy/sdk/shapes:define-input get-bucket-encryption-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketEncryptionRequest"))

(smithy/sdk/shapes:define-output
 get-bucket-intelligent-tiering-configuration-output common-lisp:nil
 ((intelligent-tiering-configuration :target-type
   intelligent-tiering-configuration :member-name
   "IntelligentTieringConfiguration" :http-payload common-lisp:t))
 (:shape-name "GetBucketIntelligentTieringConfigurationOutput"))

(smithy/sdk/shapes:define-input
 get-bucket-intelligent-tiering-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (id :target-type intelligent-tiering-id :required common-lisp:t :member-name
   "Id" :http-query "id")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "GetBucketIntelligentTieringConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-inventory-configuration-output
                                 common-lisp:nil
                                 ((inventory-configuration :target-type
                                   inventory-configuration :member-name
                                   "InventoryConfiguration" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetBucketInventoryConfigurationOutput"))

(smithy/sdk/shapes:define-input get-bucket-inventory-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type inventory-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketInventoryConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-lifecycle-configuration-output
                                 common-lisp:nil
                                 ((rules :target-type lifecycle-rules
                                   :member-name "Rules" :xml-name "Rule"
                                   :xml-flattened common-lisp:t)
                                  (transition-default-minimum-object-size
                                   :target-type
                                   transition-default-minimum-object-size
                                   :member-name
                                   "TransitionDefaultMinimumObjectSize"
                                   :http-header
                                   "x-amz-transition-default-minimum-object-size"))
                                 (:shape-name
                                  "GetBucketLifecycleConfigurationOutput")
                                 (:xml-name "LifecycleConfiguration"))

(smithy/sdk/shapes:define-input get-bucket-lifecycle-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-location-output common-lisp:nil
                                 ((location-constraint :target-type
                                   bucket-location-constraint :member-name
                                   "LocationConstraint"))
                                 (:shape-name "GetBucketLocationOutput")
                                 (:xml-name "LocationConstraint"))

(smithy/sdk/shapes:define-input get-bucket-location-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketLocationRequest"))

(smithy/sdk/shapes:define-output get-bucket-logging-output common-lisp:nil
                                 ((logging-enabled :target-type logging-enabled
                                   :member-name "LoggingEnabled"))
                                 (:shape-name "GetBucketLoggingOutput")
                                 (:xml-name "BucketLoggingStatus"))

(smithy/sdk/shapes:define-input get-bucket-logging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketLoggingRequest"))

(smithy/sdk/shapes:define-output get-bucket-metadata-configuration-output
                                 common-lisp:nil
                                 ((get-bucket-metadata-configuration-result
                                   :target-type
                                   get-bucket-metadata-configuration-result
                                   :member-name
                                   "GetBucketMetadataConfigurationResult"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetBucketMetadataConfigurationOutput"))

(smithy/sdk/shapes:define-input get-bucket-metadata-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketMetadataConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-bucket-metadata-configuration-result
                                    common-lisp:nil
                                    ((metadata-configuration-result
                                      :target-type
                                      metadata-configuration-result :required
                                      common-lisp:t :member-name
                                      "MetadataConfigurationResult"))
                                    (:shape-name
                                     "GetBucketMetadataConfigurationResult"))

(smithy/sdk/shapes:define-output get-bucket-metadata-table-configuration-output
                                 common-lisp:nil
                                 ((get-bucket-metadata-table-configuration-result
                                   :target-type
                                   get-bucket-metadata-table-configuration-result
                                   :member-name
                                   "GetBucketMetadataTableConfigurationResult"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetBucketMetadataTableConfigurationOutput"))

(smithy/sdk/shapes:define-input get-bucket-metadata-table-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketMetadataTableConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 get-bucket-metadata-table-configuration-result common-lisp:nil
 ((metadata-table-configuration-result :target-type
   metadata-table-configuration-result :required common-lisp:t :member-name
   "MetadataTableConfigurationResult")
  (status :target-type metadata-table-status :required common-lisp:t
   :member-name "Status")
  (error :target-type error-details :member-name "Error"))
 (:shape-name "GetBucketMetadataTableConfigurationResult"))

(smithy/sdk/shapes:define-output get-bucket-metrics-configuration-output
                                 common-lisp:nil
                                 ((metrics-configuration :target-type
                                   metrics-configuration :member-name
                                   "MetricsConfiguration" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetBucketMetricsConfigurationOutput"))

(smithy/sdk/shapes:define-input get-bucket-metrics-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type metrics-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketMetricsConfigurationRequest"))

(smithy/sdk/shapes:define-input get-bucket-notification-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output get-bucket-ownership-controls-output
                                 common-lisp:nil
                                 ((ownership-controls :target-type
                                   ownership-controls :member-name
                                   "OwnershipControls" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetBucketOwnershipControlsOutput"))

(smithy/sdk/shapes:define-input get-bucket-ownership-controls-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetBucketOwnershipControlsRequest"))

(smithy/sdk/shapes:define-output get-bucket-policy-output common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy" :http-payload common-lisp:t))
                                 (:shape-name "GetBucketPolicyOutput"))

(smithy/sdk/shapes:define-input get-bucket-policy-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketPolicyRequest"))

(smithy/sdk/shapes:define-output get-bucket-policy-status-output
                                 common-lisp:nil
                                 ((policy-status :target-type policy-status
                                   :member-name "PolicyStatus" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetBucketPolicyStatusOutput"))

(smithy/sdk/shapes:define-input get-bucket-policy-status-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketPolicyStatusRequest"))

(smithy/sdk/shapes:define-output get-bucket-replication-output common-lisp:nil
                                 ((replication-configuration :target-type
                                   replication-configuration :member-name
                                   "ReplicationConfiguration" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetBucketReplicationOutput"))

(smithy/sdk/shapes:define-input get-bucket-replication-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketReplicationRequest"))

(smithy/sdk/shapes:define-output get-bucket-request-payment-output
                                 common-lisp:nil
                                 ((payer :target-type payer :member-name
                                   "Payer"))
                                 (:shape-name "GetBucketRequestPaymentOutput")
                                 (:xml-name "RequestPaymentConfiguration"))

(smithy/sdk/shapes:define-input get-bucket-request-payment-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketRequestPaymentRequest"))

(smithy/sdk/shapes:define-output get-bucket-tagging-output common-lisp:nil
                                 ((tag-set :target-type tag-set :required
                                   common-lisp:t :member-name "TagSet"))
                                 (:shape-name "GetBucketTaggingOutput")
                                 (:xml-name "Tagging"))

(smithy/sdk/shapes:define-input get-bucket-tagging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketTaggingRequest"))

(smithy/sdk/shapes:define-output get-bucket-versioning-output common-lisp:nil
                                 ((status :target-type bucket-versioning-status
                                   :member-name "Status")
                                  (mfadelete :target-type mfadelete-status
                                   :member-name "MFADelete" :xml-name
                                   "MfaDelete"))
                                 (:shape-name "GetBucketVersioningOutput")
                                 (:xml-name "VersioningConfiguration"))

(smithy/sdk/shapes:define-input get-bucket-versioning-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketVersioningRequest"))

(smithy/sdk/shapes:define-output get-bucket-website-output common-lisp:nil
                                 ((redirect-all-requests-to :target-type
                                   redirect-all-requests-to :member-name
                                   "RedirectAllRequestsTo")
                                  (index-document :target-type index-document
                                   :member-name "IndexDocument")
                                  (error-document :target-type error-document
                                   :member-name "ErrorDocument")
                                  (routing-rules :target-type routing-rules
                                   :member-name "RoutingRules"))
                                 (:shape-name "GetBucketWebsiteOutput")
                                 (:xml-name "WebsiteConfiguration"))

(smithy/sdk/shapes:define-input get-bucket-website-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetBucketWebsiteRequest"))

(smithy/sdk/shapes:define-output get-object-acl-output common-lisp:nil
                                 ((owner :target-type owner :member-name
                                   "Owner")
                                  (grants :target-type grants :member-name
                                   "Grants" :xml-name "AccessControlList")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "GetObjectAclOutput")
                                 (:xml-name "AccessControlPolicy"))

(smithy/sdk/shapes:define-input get-object-acl-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetObjectAclRequest"))

(smithy/sdk/shapes:define-output get-object-attributes-output common-lisp:nil
                                 ((delete-marker :target-type delete-marker
                                   :member-name "DeleteMarker" :http-header
                                   "x-amz-delete-marker")
                                  (last-modified :target-type last-modified
                                   :member-name "LastModified" :http-header
                                   "Last-Modified")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (etag :target-type etag :member-name "ETag")
                                  (checksum :target-type checksum :member-name
                                   "Checksum")
                                  (object-parts :target-type
                                   get-object-attributes-parts :member-name
                                   "ObjectParts")
                                  (storage-class :target-type storage-class
                                   :member-name "StorageClass")
                                  (object-size :target-type object-size
                                   :member-name "ObjectSize"))
                                 (:shape-name "GetObjectAttributesOutput")
                                 (:xml-name "GetObjectAttributesResponse"))

(smithy/sdk/shapes:define-structure get-object-attributes-parts common-lisp:nil
                                    ((total-parts-count :target-type
                                      parts-count :member-name
                                      "TotalPartsCount" :xml-name "PartsCount")
                                     (part-number-marker :target-type
                                      part-number-marker :member-name
                                      "PartNumberMarker")
                                     (next-part-number-marker :target-type
                                      next-part-number-marker :member-name
                                      "NextPartNumberMarker")
                                     (max-parts :target-type max-parts
                                      :member-name "MaxParts")
                                     (is-truncated :target-type is-truncated
                                      :member-name "IsTruncated")
                                     (parts :target-type parts-list
                                      :member-name "Parts" :xml-name "Part"
                                      :xml-flattened common-lisp:t))
                                    (:shape-name "GetObjectAttributesParts"))

(smithy/sdk/shapes:define-input get-object-attributes-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (max-parts :target-type max-parts :member-name
                                  "MaxParts" :http-header "x-amz-max-parts")
                                 (part-number-marker :target-type
                                  part-number-marker :member-name
                                  "PartNumberMarker" :http-header
                                  "x-amz-part-number-marker")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (object-attributes :target-type
                                  object-attributes-list :required
                                  common-lisp:t :member-name "ObjectAttributes"
                                  :http-header "x-amz-object-attributes"))
                                (:shape-name "GetObjectAttributesRequest"))

(smithy/sdk/shapes:define-output get-object-legal-hold-output common-lisp:nil
                                 ((legal-hold :target-type
                                   object-lock-legal-hold :member-name
                                   "LegalHold" :http-payload common-lisp:t
                                   :xml-name "LegalHold"))
                                 (:shape-name "GetObjectLegalHoldOutput"))

(smithy/sdk/shapes:define-input get-object-legal-hold-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetObjectLegalHoldRequest"))

(smithy/sdk/shapes:define-output get-object-lock-configuration-output
                                 common-lisp:nil
                                 ((object-lock-configuration :target-type
                                   object-lock-configuration :member-name
                                   "ObjectLockConfiguration" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetObjectLockConfigurationOutput"))

(smithy/sdk/shapes:define-input get-object-lock-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "GetObjectLockConfigurationRequest"))

(smithy/sdk/shapes:define-output get-object-output common-lisp:nil
                                 ((body :target-type streaming-blob
                                   :member-name "Body" :http-payload
                                   common-lisp:t)
                                  (delete-marker :target-type delete-marker
                                   :member-name "DeleteMarker" :http-header
                                   "x-amz-delete-marker")
                                  (accept-ranges :target-type accept-ranges
                                   :member-name "AcceptRanges" :http-header
                                   "accept-ranges")
                                  (expiration :target-type expiration
                                   :member-name "Expiration" :http-header
                                   "x-amz-expiration")
                                  (restore :target-type restore :member-name
                                   "Restore" :http-header "x-amz-restore")
                                  (last-modified :target-type last-modified
                                   :member-name "LastModified" :http-header
                                   "Last-Modified")
                                  (content-length :target-type content-length
                                   :member-name "ContentLength" :http-header
                                   "Content-Length")
                                  (etag :target-type etag :member-name "ETag"
                                   :http-header "ETag")
                                  (checksum-crc32 :target-type checksum-crc32
                                   :member-name "ChecksumCRC32" :http-header
                                   "x-amz-checksum-crc32")
                                  (checksum-crc32c :target-type checksum-crc32c
                                   :member-name "ChecksumCRC32C" :http-header
                                   "x-amz-checksum-crc32c")
                                  (checksum-crc64nvme :target-type
                                   checksum-crc64nvme :member-name
                                   "ChecksumCRC64NVME" :http-header
                                   "x-amz-checksum-crc64nvme")
                                  (checksum-sha1 :target-type checksum-sha1
                                   :member-name "ChecksumSHA1" :http-header
                                   "x-amz-checksum-sha1")
                                  (checksum-sha256 :target-type checksum-sha256
                                   :member-name "ChecksumSHA256" :http-header
                                   "x-amz-checksum-sha256")
                                  (checksum-type :target-type checksum-type
                                   :member-name "ChecksumType" :http-header
                                   "x-amz-checksum-type")
                                  (missing-meta :target-type missing-meta
                                   :member-name "MissingMeta" :http-header
                                   "x-amz-missing-meta")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (cache-control :target-type cache-control
                                   :member-name "CacheControl" :http-header
                                   "Cache-Control")
                                  (content-disposition :target-type
                                   content-disposition :member-name
                                   "ContentDisposition" :http-header
                                   "Content-Disposition")
                                  (content-encoding :target-type
                                   content-encoding :member-name
                                   "ContentEncoding" :http-header
                                   "Content-Encoding")
                                  (content-language :target-type
                                   content-language :member-name
                                   "ContentLanguage" :http-header
                                   "Content-Language")
                                  (content-range :target-type content-range
                                   :member-name "ContentRange" :http-header
                                   "Content-Range")
                                  (content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (expires :target-type expires :member-name
                                   "Expires" :http-header "Expires")
                                  (website-redirect-location :target-type
                                   website-redirect-location :member-name
                                   "WebsiteRedirectLocation" :http-header
                                   "x-amz-website-redirect-location")
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (metadata :target-type metadata :member-name
                                   "Metadata" :http-prefix-headers
                                   "x-amz-meta-")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (storage-class :target-type storage-class
                                   :member-name "StorageClass" :http-header
                                   "x-amz-storage-class")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (replication-status :target-type
                                   replication-status :member-name
                                   "ReplicationStatus" :http-header
                                   "x-amz-replication-status")
                                  (parts-count :target-type parts-count
                                   :member-name "PartsCount" :http-header
                                   "x-amz-mp-parts-count")
                                  (tag-count :target-type tag-count
                                   :member-name "TagCount" :http-header
                                   "x-amz-tagging-count")
                                  (object-lock-mode :target-type
                                   object-lock-mode :member-name
                                   "ObjectLockMode" :http-header
                                   "x-amz-object-lock-mode")
                                  (object-lock-retain-until-date :target-type
                                   object-lock-retain-until-date :member-name
                                   "ObjectLockRetainUntilDate" :http-header
                                   "x-amz-object-lock-retain-until-date")
                                  (object-lock-legal-hold-status :target-type
                                   object-lock-legal-hold-status :member-name
                                   "ObjectLockLegalHoldStatus" :http-header
                                   "x-amz-object-lock-legal-hold"))
                                 (:shape-name "GetObjectOutput"))

(smithy/sdk/shapes:define-input get-object-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (if-match :target-type if-match :member-name
                                  "IfMatch" :http-header "If-Match")
                                 (if-modified-since :target-type
                                  if-modified-since :member-name
                                  "IfModifiedSince" :http-header
                                  "If-Modified-Since")
                                 (if-none-match :target-type if-none-match
                                  :member-name "IfNoneMatch" :http-header
                                  "If-None-Match")
                                 (if-unmodified-since :target-type
                                  if-unmodified-since :member-name
                                  "IfUnmodifiedSince" :http-header
                                  "If-Unmodified-Since")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (range :target-type range :member-name "Range"
                                  :http-header "Range")
                                 (response-cache-control :target-type
                                  response-cache-control :member-name
                                  "ResponseCacheControl" :http-query
                                  "response-cache-control")
                                 (response-content-disposition :target-type
                                  response-content-disposition :member-name
                                  "ResponseContentDisposition" :http-query
                                  "response-content-disposition")
                                 (response-content-encoding :target-type
                                  response-content-encoding :member-name
                                  "ResponseContentEncoding" :http-query
                                  "response-content-encoding")
                                 (response-content-language :target-type
                                  response-content-language :member-name
                                  "ResponseContentLanguage" :http-query
                                  "response-content-language")
                                 (response-content-type :target-type
                                  response-content-type :member-name
                                  "ResponseContentType" :http-query
                                  "response-content-type")
                                 (response-expires :target-type
                                  response-expires :member-name
                                  "ResponseExpires" :http-query
                                  "response-expires")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (part-number :target-type part-number
                                  :member-name "PartNumber" :http-query
                                  "partNumber")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (checksum-mode :target-type checksum-mode
                                  :member-name "ChecksumMode" :http-header
                                  "x-amz-checksum-mode"))
                                (:shape-name "GetObjectRequest"))

(smithy/sdk/shapes:define-type get-object-response-status-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output get-object-retention-output common-lisp:nil
                                 ((retention :target-type object-lock-retention
                                   :member-name "Retention" :http-payload
                                   common-lisp:t :xml-name "Retention"))
                                 (:shape-name "GetObjectRetentionOutput"))

(smithy/sdk/shapes:define-input get-object-retention-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetObjectRetentionRequest"))

(smithy/sdk/shapes:define-output get-object-tagging-output common-lisp:nil
                                 ((version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (tag-set :target-type tag-set :required
                                   common-lisp:t :member-name "TagSet"))
                                 (:shape-name "GetObjectTaggingOutput")
                                 (:xml-name "Tagging"))

(smithy/sdk/shapes:define-input get-object-tagging-request common-lisp:nil
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
                                  :http-header "x-amz-expected-bucket-owner")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer"))
                                (:shape-name "GetObjectTaggingRequest"))

(smithy/sdk/shapes:define-output get-object-torrent-output common-lisp:nil
                                 ((body :target-type streaming-blob
                                   :member-name "Body" :http-payload
                                   common-lisp:t)
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "GetObjectTorrentOutput"))

(smithy/sdk/shapes:define-input get-object-torrent-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetObjectTorrentRequest"))

(smithy/sdk/shapes:define-output get-public-access-block-output common-lisp:nil
                                 ((public-access-block-configuration
                                   :target-type
                                   public-access-block-configuration
                                   :member-name
                                   "PublicAccessBlockConfiguration"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetPublicAccessBlockOutput"))

(smithy/sdk/shapes:define-input get-public-access-block-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "GetPublicAccessBlockRequest"))

(smithy/sdk/shapes:define-structure glacier-job-parameters common-lisp:nil
                                    ((tier :target-type tier :required
                                      common-lisp:t :member-name "Tier"))
                                    (:shape-name "GlacierJobParameters"))

(smithy/sdk/shapes:define-structure grant common-lisp:nil
                                    ((grantee :target-type grantee :member-name
                                      "Grantee" :xml-namespace
                                      (:uri
                                       "http://www.w3.org/2001/XMLSchema-instance"
                                       :prefix "xsi"))
                                     (permission :target-type permission
                                      :member-name "Permission"))
                                    (:shape-name "Grant"))

(smithy/sdk/shapes:define-type grant-full-control
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-read smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-read-acp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-write smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grant-write-acp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure grantee common-lisp:nil
                                    ((display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (email-address :target-type email-address
                                      :member-name "EmailAddress")
                                     (id :target-type id :member-name "ID")
                                     (uri :target-type uri :member-name "URI")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"
                                      :xml-name "xsi:type" :xml-attribute
                                      common-lisp:t))
                                    (:shape-name "Grantee"))

(smithy/sdk/shapes:define-list grants :member (grant :xml-name "Grant"))

(smithy/sdk/shapes:define-output head-bucket-output common-lisp:nil
                                 ((bucket-arn :target-type
                                   s3regional-or-s3express-bucket-arn-string
                                   :member-name "BucketArn" :http-header
                                   "x-amz-bucket-arn")
                                  (bucket-location-type :target-type
                                   location-type :member-name
                                   "BucketLocationType" :http-header
                                   "x-amz-bucket-location-type")
                                  (bucket-location-name :target-type
                                   bucket-location-name :member-name
                                   "BucketLocationName" :http-header
                                   "x-amz-bucket-location-name")
                                  (bucket-region :target-type region
                                   :member-name "BucketRegion" :http-header
                                   "x-amz-bucket-region")
                                  (access-point-alias :target-type
                                   access-point-alias :member-name
                                   "AccessPointAlias" :http-header
                                   "x-amz-access-point-alias"))
                                 (:shape-name "HeadBucketOutput"))

(smithy/sdk/shapes:define-input head-bucket-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "HeadBucketRequest"))

(smithy/sdk/shapes:define-output head-object-output common-lisp:nil
                                 ((delete-marker :target-type delete-marker
                                   :member-name "DeleteMarker" :http-header
                                   "x-amz-delete-marker")
                                  (accept-ranges :target-type accept-ranges
                                   :member-name "AcceptRanges" :http-header
                                   "accept-ranges")
                                  (expiration :target-type expiration
                                   :member-name "Expiration" :http-header
                                   "x-amz-expiration")
                                  (restore :target-type restore :member-name
                                   "Restore" :http-header "x-amz-restore")
                                  (archive-status :target-type archive-status
                                   :member-name "ArchiveStatus" :http-header
                                   "x-amz-archive-status")
                                  (last-modified :target-type last-modified
                                   :member-name "LastModified" :http-header
                                   "Last-Modified")
                                  (content-length :target-type content-length
                                   :member-name "ContentLength" :http-header
                                   "Content-Length")
                                  (checksum-crc32 :target-type checksum-crc32
                                   :member-name "ChecksumCRC32" :http-header
                                   "x-amz-checksum-crc32")
                                  (checksum-crc32c :target-type checksum-crc32c
                                   :member-name "ChecksumCRC32C" :http-header
                                   "x-amz-checksum-crc32c")
                                  (checksum-crc64nvme :target-type
                                   checksum-crc64nvme :member-name
                                   "ChecksumCRC64NVME" :http-header
                                   "x-amz-checksum-crc64nvme")
                                  (checksum-sha1 :target-type checksum-sha1
                                   :member-name "ChecksumSHA1" :http-header
                                   "x-amz-checksum-sha1")
                                  (checksum-sha256 :target-type checksum-sha256
                                   :member-name "ChecksumSHA256" :http-header
                                   "x-amz-checksum-sha256")
                                  (checksum-type :target-type checksum-type
                                   :member-name "ChecksumType" :http-header
                                   "x-amz-checksum-type")
                                  (etag :target-type etag :member-name "ETag"
                                   :http-header "ETag")
                                  (missing-meta :target-type missing-meta
                                   :member-name "MissingMeta" :http-header
                                   "x-amz-missing-meta")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (cache-control :target-type cache-control
                                   :member-name "CacheControl" :http-header
                                   "Cache-Control")
                                  (content-disposition :target-type
                                   content-disposition :member-name
                                   "ContentDisposition" :http-header
                                   "Content-Disposition")
                                  (content-encoding :target-type
                                   content-encoding :member-name
                                   "ContentEncoding" :http-header
                                   "Content-Encoding")
                                  (content-language :target-type
                                   content-language :member-name
                                   "ContentLanguage" :http-header
                                   "Content-Language")
                                  (content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (content-range :target-type content-range
                                   :member-name "ContentRange" :http-header
                                   "Content-Range")
                                  (expires :target-type expires :member-name
                                   "Expires" :http-header "Expires")
                                  (website-redirect-location :target-type
                                   website-redirect-location :member-name
                                   "WebsiteRedirectLocation" :http-header
                                   "x-amz-website-redirect-location")
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (metadata :target-type metadata :member-name
                                   "Metadata" :http-prefix-headers
                                   "x-amz-meta-")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (storage-class :target-type storage-class
                                   :member-name "StorageClass" :http-header
                                   "x-amz-storage-class")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (replication-status :target-type
                                   replication-status :member-name
                                   "ReplicationStatus" :http-header
                                   "x-amz-replication-status")
                                  (parts-count :target-type parts-count
                                   :member-name "PartsCount" :http-header
                                   "x-amz-mp-parts-count")
                                  (tag-count :target-type tag-count
                                   :member-name "TagCount" :http-header
                                   "x-amz-tagging-count")
                                  (object-lock-mode :target-type
                                   object-lock-mode :member-name
                                   "ObjectLockMode" :http-header
                                   "x-amz-object-lock-mode")
                                  (object-lock-retain-until-date :target-type
                                   object-lock-retain-until-date :member-name
                                   "ObjectLockRetainUntilDate" :http-header
                                   "x-amz-object-lock-retain-until-date")
                                  (object-lock-legal-hold-status :target-type
                                   object-lock-legal-hold-status :member-name
                                   "ObjectLockLegalHoldStatus" :http-header
                                   "x-amz-object-lock-legal-hold"))
                                 (:shape-name "HeadObjectOutput"))

(smithy/sdk/shapes:define-input head-object-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (if-match :target-type if-match :member-name
                                  "IfMatch" :http-header "If-Match")
                                 (if-modified-since :target-type
                                  if-modified-since :member-name
                                  "IfModifiedSince" :http-header
                                  "If-Modified-Since")
                                 (if-none-match :target-type if-none-match
                                  :member-name "IfNoneMatch" :http-header
                                  "If-None-Match")
                                 (if-unmodified-since :target-type
                                  if-unmodified-since :member-name
                                  "IfUnmodifiedSince" :http-header
                                  "If-Unmodified-Since")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (range :target-type range :member-name "Range"
                                  :http-header "Range")
                                 (response-cache-control :target-type
                                  response-cache-control :member-name
                                  "ResponseCacheControl" :http-query
                                  "response-cache-control")
                                 (response-content-disposition :target-type
                                  response-content-disposition :member-name
                                  "ResponseContentDisposition" :http-query
                                  "response-content-disposition")
                                 (response-content-encoding :target-type
                                  response-content-encoding :member-name
                                  "ResponseContentEncoding" :http-query
                                  "response-content-encoding")
                                 (response-content-language :target-type
                                  response-content-language :member-name
                                  "ResponseContentLanguage" :http-query
                                  "response-content-language")
                                 (response-content-type :target-type
                                  response-content-type :member-name
                                  "ResponseContentType" :http-query
                                  "response-content-type")
                                 (response-expires :target-type
                                  response-expires :member-name
                                  "ResponseExpires" :http-query
                                  "response-expires")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (part-number :target-type part-number
                                  :member-name "PartNumber" :http-query
                                  "partNumber")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (checksum-mode :target-type checksum-mode
                                  :member-name "ChecksumMode" :http-header
                                  "x-amz-checksum-mode"))
                                (:shape-name "HeadObjectRequest"))

(smithy/sdk/shapes:define-type host-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-error-code-returned-equals
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-redirect-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotency-parameter-mismatch common-lisp:nil
                                common-lisp:nil
                                (:shape-name "IdempotencyParameterMismatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-type if-match smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type if-match-initiated-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "http-date")

(smithy/sdk/shapes:define-type if-match-last-modified-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "http-date")

(smithy/sdk/shapes:define-type if-match-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type if-modified-since
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type if-none-match smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type if-unmodified-since
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure index-document common-lisp:nil
                                    ((suffix :target-type suffix :required
                                      common-lisp:t :member-name "Suffix"))
                                    (:shape-name "IndexDocument"))

(smithy/sdk/shapes:define-type initiated smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure initiator common-lisp:nil
                                    ((id :target-type id :member-name "ID")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName"))
                                    (:shape-name "Initiator"))

(smithy/sdk/shapes:define-structure input-serialization common-lisp:nil
                                    ((csv :target-type csvinput :member-name
                                      "CSV")
                                     (compression-type :target-type
                                      compression-type :member-name
                                      "CompressionType")
                                     (json :target-type jsoninput :member-name
                                      "JSON")
                                     (parquet :target-type parquet-input
                                      :member-name "Parquet"))
                                    (:shape-name "InputSerialization"))

(smithy/sdk/shapes:define-enum intelligent-tiering-access-tier
    common-lisp:nil
  (:archive-access "ARCHIVE_ACCESS")
  (:deep-archive-access "DEEP_ARCHIVE_ACCESS"))

(smithy/sdk/shapes:define-structure intelligent-tiering-and-operator
                                    common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type tag-set :member-name
                                      "Tags" :xml-name "Tag" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name
                                     "IntelligentTieringAndOperator"))

(smithy/sdk/shapes:define-structure intelligent-tiering-configuration
                                    common-lisp:nil
                                    ((id :target-type intelligent-tiering-id
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (filter :target-type
                                      intelligent-tiering-filter :member-name
                                      "Filter")
                                     (status :target-type
                                      intelligent-tiering-status :required
                                      common-lisp:t :member-name "Status")
                                     (tierings :target-type tiering-list
                                      :required common-lisp:t :member-name
                                      "Tierings" :xml-name "Tiering"
                                      :xml-flattened common-lisp:t))
                                    (:shape-name
                                     "IntelligentTieringConfiguration"))

(smithy/sdk/shapes:define-list intelligent-tiering-configuration-list :member
                               intelligent-tiering-configuration)

(smithy/sdk/shapes:define-type intelligent-tiering-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure intelligent-tiering-filter common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tag :target-type tag :member-name "Tag")
                                     (and :target-type
                                      intelligent-tiering-and-operator
                                      :member-name "And"))
                                    (:shape-name "IntelligentTieringFilter"))

(smithy/sdk/shapes:define-type intelligent-tiering-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum intelligent-tiering-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-error invalid-object-state common-lisp:nil
                                ((storage-class :target-type storage-class
                                  :member-name "StorageClass")
                                 (access-tier :target-type
                                  intelligent-tiering-access-tier :member-name
                                  "AccessTier"))
                                (:shape-name "InvalidObjectState")
                                (:error-code 403))

(smithy/sdk/shapes:define-error invalid-request common-lisp:nil common-lisp:nil
                                (:shape-name "InvalidRequest")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-write-offset common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InvalidWriteOffset")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure inventory-configuration common-lisp:nil
                                    ((destination :target-type
                                      inventory-destination :required
                                      common-lisp:t :member-name "Destination")
                                     (is-enabled :target-type is-enabled
                                      :required common-lisp:t :member-name
                                      "IsEnabled")
                                     (filter :target-type inventory-filter
                                      :member-name "Filter")
                                     (id :target-type inventory-id :required
                                      common-lisp:t :member-name "Id")
                                     (included-object-versions :target-type
                                      inventory-included-object-versions
                                      :required common-lisp:t :member-name
                                      "IncludedObjectVersions")
                                     (optional-fields :target-type
                                      inventory-optional-fields :member-name
                                      "OptionalFields")
                                     (schedule :target-type inventory-schedule
                                      :required common-lisp:t :member-name
                                      "Schedule"))
                                    (:shape-name "InventoryConfiguration"))

(smithy/sdk/shapes:define-list inventory-configuration-list :member
                               inventory-configuration)

(smithy/sdk/shapes:define-enum inventory-configuration-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure inventory-destination common-lisp:nil
                                    ((s3bucket-destination :target-type
                                      inventory-s3bucket-destination :required
                                      common-lisp:t :member-name
                                      "S3BucketDestination"))
                                    (:shape-name "InventoryDestination"))

(smithy/sdk/shapes:define-structure inventory-encryption common-lisp:nil
                                    ((sses3 :target-type sses3 :member-name
                                      "SSES3" :xml-name "SSE-S3")
                                     (ssekms :target-type ssekms :member-name
                                      "SSEKMS" :xml-name "SSE-KMS"))
                                    (:shape-name "InventoryEncryption"))

(smithy/sdk/shapes:define-structure inventory-filter common-lisp:nil
                                    ((prefix :target-type prefix :required
                                      common-lisp:t :member-name "Prefix"))
                                    (:shape-name "InventoryFilter"))

(smithy/sdk/shapes:define-enum inventory-format
    common-lisp:nil
  (:csv "CSV")
  (:orc "ORC")
  (:parquet "Parquet"))

(smithy/sdk/shapes:define-enum inventory-frequency
    common-lisp:nil
  (:daily "Daily")
  (:weekly "Weekly"))

(smithy/sdk/shapes:define-type inventory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum inventory-included-object-versions
    common-lisp:nil
  (:all "All")
  (:current "Current"))

(smithy/sdk/shapes:define-enum inventory-optional-field
    common-lisp:nil
  (:size "Size")
  (:last-modified-date "LastModifiedDate")
  (:storage-class "StorageClass")
  (:etag "ETag")
  (:is-multipart-uploaded "IsMultipartUploaded")
  (:replication-status "ReplicationStatus")
  (:encryption-status "EncryptionStatus")
  (:object-lock-retain-until-date "ObjectLockRetainUntilDate")
  (:object-lock-mode "ObjectLockMode")
  (:object-lock-legal-hold-status "ObjectLockLegalHoldStatus")
  (:intelligent-tiering-access-tier "IntelligentTieringAccessTier")
  (:bucket-key-status "BucketKeyStatus")
  (:checksum-algorithm "ChecksumAlgorithm")
  (:object-access-control-list "ObjectAccessControlList")
  (:object-owner "ObjectOwner"))

(smithy/sdk/shapes:define-list inventory-optional-fields :member
                               (inventory-optional-field :xml-name "Field"))

(smithy/sdk/shapes:define-structure inventory-s3bucket-destination
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "Bucket")
                                     (format :target-type inventory-format
                                      :required common-lisp:t :member-name
                                      "Format")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (encryption :target-type
                                      inventory-encryption :member-name
                                      "Encryption"))
                                    (:shape-name
                                     "InventoryS3BucketDestination"))

(smithy/sdk/shapes:define-structure inventory-schedule common-lisp:nil
                                    ((frequency :target-type
                                      inventory-frequency :required
                                      common-lisp:t :member-name "Frequency"))
                                    (:shape-name "InventorySchedule"))

(smithy/sdk/shapes:define-structure inventory-table-configuration
                                    common-lisp:nil
                                    ((configuration-state :target-type
                                      inventory-configuration-state :required
                                      common-lisp:t :member-name
                                      "ConfigurationState")
                                     (encryption-configuration :target-type
                                      metadata-table-encryption-configuration
                                      :member-name "EncryptionConfiguration"))
                                    (:shape-name "InventoryTableConfiguration"))

(smithy/sdk/shapes:define-structure inventory-table-configuration-result
                                    common-lisp:nil
                                    ((configuration-state :target-type
                                      inventory-configuration-state :required
                                      common-lisp:t :member-name
                                      "ConfigurationState")
                                     (table-status :target-type
                                      metadata-table-status :member-name
                                      "TableStatus")
                                     (error :target-type error-details
                                      :member-name "Error")
                                     (table-name :target-type s3tables-name
                                      :member-name "TableName")
                                     (table-arn :target-type s3tables-arn
                                      :member-name "TableArn"))
                                    (:shape-name
                                     "InventoryTableConfigurationResult"))

(smithy/sdk/shapes:define-structure inventory-table-configuration-updates
                                    common-lisp:nil
                                    ((configuration-state :target-type
                                      inventory-configuration-state :required
                                      common-lisp:t :member-name
                                      "ConfigurationState")
                                     (encryption-configuration :target-type
                                      metadata-table-encryption-configuration
                                      :member-name "EncryptionConfiguration"))
                                    (:shape-name
                                     "InventoryTableConfigurationUpdates"))

(smithy/sdk/shapes:define-type is-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-latest smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-public smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-restore-in-progress
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-truncated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure jsoninput common-lisp:nil
                                    ((type :target-type jsontype :member-name
                                      "Type"))
                                    (:shape-name "JSONInput"))

(smithy/sdk/shapes:define-structure jsonoutput common-lisp:nil
                                    ((record-delimiter :target-type
                                      record-delimiter :member-name
                                      "RecordDelimiter"))
                                    (:shape-name "JSONOutput"))

(smithy/sdk/shapes:define-enum jsontype
    common-lisp:nil
  (:document "DOCUMENT")
  (:lines "LINES"))

(smithy/sdk/shapes:define-structure journal-table-configuration common-lisp:nil
                                    ((record-expiration :target-type
                                      record-expiration :required common-lisp:t
                                      :member-name "RecordExpiration")
                                     (encryption-configuration :target-type
                                      metadata-table-encryption-configuration
                                      :member-name "EncryptionConfiguration"))
                                    (:shape-name "JournalTableConfiguration"))

(smithy/sdk/shapes:define-structure journal-table-configuration-result
                                    common-lisp:nil
                                    ((table-status :target-type
                                      metadata-table-status :required
                                      common-lisp:t :member-name "TableStatus")
                                     (error :target-type error-details
                                      :member-name "Error")
                                     (table-name :target-type s3tables-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (table-arn :target-type s3tables-arn
                                      :member-name "TableArn")
                                     (record-expiration :target-type
                                      record-expiration :required common-lisp:t
                                      :member-name "RecordExpiration"))
                                    (:shape-name
                                     "JournalTableConfigurationResult"))

(smithy/sdk/shapes:define-structure journal-table-configuration-updates
                                    common-lisp:nil
                                    ((record-expiration :target-type
                                      record-expiration :required common-lisp:t
                                      :member-name "RecordExpiration"))
                                    (:shape-name
                                     "JournalTableConfigurationUpdates"))

(smithy/sdk/shapes:define-type kmscontext smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type key-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-prefix-equals smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function-configuration
                                    common-lisp:nil
                                    ((id :target-type notification-id
                                      :member-name "Id")
                                     (lambda-function-arn :target-type
                                      lambda-function-arn :required
                                      common-lisp:t :member-name
                                      "LambdaFunctionArn" :xml-name
                                      "CloudFunction")
                                     (events :target-type event-list :required
                                      common-lisp:t :member-name "Events"
                                      :xml-name "Event" :xml-flattened
                                      common-lisp:t)
                                     (filter :target-type
                                      notification-configuration-filter
                                      :member-name "Filter"))
                                    (:shape-name "LambdaFunctionConfiguration"))

(smithy/sdk/shapes:define-list lambda-function-configuration-list :member
                               lambda-function-configuration)

(smithy/sdk/shapes:define-type last-modified smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-modified-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "http-date")

(smithy/sdk/shapes:define-structure lifecycle-expiration common-lisp:nil
                                    ((date :target-type date :member-name
                                      "Date")
                                     (days :target-type days :member-name
                                      "Days")
                                     (expired-object-delete-marker :target-type
                                      expired-object-delete-marker :member-name
                                      "ExpiredObjectDeleteMarker"))
                                    (:shape-name "LifecycleExpiration"))

(smithy/sdk/shapes:define-structure lifecycle-rule common-lisp:nil
                                    ((expiration :target-type
                                      lifecycle-expiration :member-name
                                      "Expiration")
                                     (id :target-type id :member-name "ID")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (filter :target-type lifecycle-rule-filter
                                      :member-name "Filter")
                                     (status :target-type expiration-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (transitions :target-type transition-list
                                      :member-name "Transitions" :xml-name
                                      "Transition" :xml-flattened
                                      common-lisp:t)
                                     (noncurrent-version-transitions
                                      :target-type
                                      noncurrent-version-transition-list
                                      :member-name
                                      "NoncurrentVersionTransitions" :xml-name
                                      "NoncurrentVersionTransition"
                                      :xml-flattened common-lisp:t)
                                     (noncurrent-version-expiration
                                      :target-type
                                      noncurrent-version-expiration
                                      :member-name
                                      "NoncurrentVersionExpiration")
                                     (abort-incomplete-multipart-upload
                                      :target-type
                                      abort-incomplete-multipart-upload
                                      :member-name
                                      "AbortIncompleteMultipartUpload"))
                                    (:shape-name "LifecycleRule"))

(smithy/sdk/shapes:define-structure lifecycle-rule-and-operator common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type tag-set :member-name
                                      "Tags" :xml-name "Tag" :xml-flattened
                                      common-lisp:t)
                                     (object-size-greater-than :target-type
                                      object-size-greater-than-bytes
                                      :member-name "ObjectSizeGreaterThan")
                                     (object-size-less-than :target-type
                                      object-size-less-than-bytes :member-name
                                      "ObjectSizeLessThan"))
                                    (:shape-name "LifecycleRuleAndOperator"))

(smithy/sdk/shapes:define-structure lifecycle-rule-filter common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tag :target-type tag :member-name "Tag")
                                     (object-size-greater-than :target-type
                                      object-size-greater-than-bytes
                                      :member-name "ObjectSizeGreaterThan")
                                     (object-size-less-than :target-type
                                      object-size-less-than-bytes :member-name
                                      "ObjectSizeLessThan")
                                     (and :target-type
                                      lifecycle-rule-and-operator :member-name
                                      "And"))
                                    (:shape-name "LifecycleRuleFilter"))

(smithy/sdk/shapes:define-list lifecycle-rules :member lifecycle-rule)

(smithy/sdk/shapes:define-output list-bucket-analytics-configurations-output
                                 common-lisp:nil
                                 ((is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (continuation-token :target-type token
                                   :member-name "ContinuationToken")
                                  (next-continuation-token :target-type
                                   next-token :member-name
                                   "NextContinuationToken")
                                  (analytics-configuration-list :target-type
                                   analytics-configuration-list :member-name
                                   "AnalyticsConfigurationList" :xml-name
                                   "AnalyticsConfiguration" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name
                                  "ListBucketAnalyticsConfigurationsOutput")
                                 (:xml-name
                                  "ListBucketAnalyticsConfigurationResult"))

(smithy/sdk/shapes:define-input list-bucket-analytics-configurations-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (continuation-token :target-type token
                                  :member-name "ContinuationToken" :http-query
                                  "continuation-token")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "ListBucketAnalyticsConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 list-bucket-intelligent-tiering-configurations-output common-lisp:nil
 ((is-truncated :target-type is-truncated :member-name "IsTruncated")
  (continuation-token :target-type token :member-name "ContinuationToken")
  (next-continuation-token :target-type next-token :member-name
   "NextContinuationToken")
  (intelligent-tiering-configuration-list :target-type
   intelligent-tiering-configuration-list :member-name
   "IntelligentTieringConfigurationList" :xml-name
   "IntelligentTieringConfiguration" :xml-flattened common-lisp:t))
 (:shape-name "ListBucketIntelligentTieringConfigurationsOutput"))

(smithy/sdk/shapes:define-input
 list-bucket-intelligent-tiering-configurations-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (continuation-token :target-type token :member-name "ContinuationToken"
   :http-query "continuation-token")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "ListBucketIntelligentTieringConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-bucket-inventory-configurations-output
                                 common-lisp:nil
                                 ((continuation-token :target-type token
                                   :member-name "ContinuationToken")
                                  (inventory-configuration-list :target-type
                                   inventory-configuration-list :member-name
                                   "InventoryConfigurationList" :xml-name
                                   "InventoryConfiguration" :xml-flattened
                                   common-lisp:t)
                                  (is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (next-continuation-token :target-type
                                   next-token :member-name
                                   "NextContinuationToken"))
                                 (:shape-name
                                  "ListBucketInventoryConfigurationsOutput")
                                 (:xml-name
                                  "ListInventoryConfigurationsResult"))

(smithy/sdk/shapes:define-input list-bucket-inventory-configurations-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (continuation-token :target-type token
                                  :member-name "ContinuationToken" :http-query
                                  "continuation-token")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "ListBucketInventoryConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-bucket-metrics-configurations-output
                                 common-lisp:nil
                                 ((is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (continuation-token :target-type token
                                   :member-name "ContinuationToken")
                                  (next-continuation-token :target-type
                                   next-token :member-name
                                   "NextContinuationToken")
                                  (metrics-configuration-list :target-type
                                   metrics-configuration-list :member-name
                                   "MetricsConfigurationList" :xml-name
                                   "MetricsConfiguration" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name
                                  "ListBucketMetricsConfigurationsOutput")
                                 (:xml-name "ListMetricsConfigurationsResult"))

(smithy/sdk/shapes:define-input list-bucket-metrics-configurations-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (continuation-token :target-type token
                                  :member-name "ContinuationToken" :http-query
                                  "continuation-token")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "ListBucketMetricsConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-buckets-output common-lisp:nil
                                 ((buckets :target-type buckets :member-name
                                   "Buckets")
                                  (owner :target-type owner :member-name
                                   "Owner")
                                  (continuation-token :target-type next-token
                                   :member-name "ContinuationToken")
                                  (prefix :target-type prefix :member-name
                                   "Prefix"))
                                 (:shape-name "ListBucketsOutput")
                                 (:xml-name "ListAllMyBucketsResult"))

(smithy/sdk/shapes:define-input list-buckets-request common-lisp:nil
                                ((max-buckets :target-type max-buckets
                                  :member-name "MaxBuckets" :http-query
                                  "max-buckets")
                                 (continuation-token :target-type token
                                  :member-name "ContinuationToken" :http-query
                                  "continuation-token")
                                 (prefix :target-type prefix :member-name
                                  "Prefix" :http-query "prefix")
                                 (bucket-region :target-type bucket-region
                                  :member-name "BucketRegion" :http-query
                                  "bucket-region"))
                                (:shape-name "ListBucketsRequest"))

(smithy/sdk/shapes:define-output list-directory-buckets-output common-lisp:nil
                                 ((buckets :target-type buckets :member-name
                                   "Buckets")
                                  (continuation-token :target-type
                                   directory-bucket-token :member-name
                                   "ContinuationToken"))
                                 (:shape-name "ListDirectoryBucketsOutput")
                                 (:xml-name "ListAllMyDirectoryBucketsResult"))

(smithy/sdk/shapes:define-input list-directory-buckets-request common-lisp:nil
                                ((continuation-token :target-type
                                  directory-bucket-token :member-name
                                  "ContinuationToken" :http-query
                                  "continuation-token")
                                 (max-directory-buckets :target-type
                                  max-directory-buckets :member-name
                                  "MaxDirectoryBuckets" :http-query
                                  "max-directory-buckets"))
                                (:shape-name "ListDirectoryBucketsRequest"))

(smithy/sdk/shapes:define-output list-multipart-uploads-output common-lisp:nil
                                 ((bucket :target-type bucket-name :member-name
                                   "Bucket")
                                  (key-marker :target-type key-marker
                                   :member-name "KeyMarker")
                                  (upload-id-marker :target-type
                                   upload-id-marker :member-name
                                   "UploadIdMarker")
                                  (next-key-marker :target-type next-key-marker
                                   :member-name "NextKeyMarker")
                                  (prefix :target-type prefix :member-name
                                   "Prefix")
                                  (delimiter :target-type delimiter
                                   :member-name "Delimiter")
                                  (next-upload-id-marker :target-type
                                   next-upload-id-marker :member-name
                                   "NextUploadIdMarker")
                                  (max-uploads :target-type max-uploads
                                   :member-name "MaxUploads")
                                  (is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (uploads :target-type multipart-upload-list
                                   :member-name "Uploads" :xml-name "Upload"
                                   :xml-flattened common-lisp:t)
                                  (common-prefixes :target-type
                                   common-prefix-list :member-name
                                   "CommonPrefixes" :xml-flattened
                                   common-lisp:t)
                                  (encoding-type :target-type encoding-type
                                   :member-name "EncodingType")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "ListMultipartUploadsOutput")
                                 (:xml-name "ListMultipartUploadsResult"))

(smithy/sdk/shapes:define-input list-multipart-uploads-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (delimiter :target-type delimiter :member-name
                                  "Delimiter" :http-query "delimiter")
                                 (encoding-type :target-type encoding-type
                                  :member-name "EncodingType" :http-query
                                  "encoding-type")
                                 (key-marker :target-type key-marker
                                  :member-name "KeyMarker" :http-query
                                  "key-marker")
                                 (max-uploads :target-type max-uploads
                                  :member-name "MaxUploads" :http-query
                                  "max-uploads")
                                 (prefix :target-type prefix :member-name
                                  "Prefix" :http-query "prefix")
                                 (upload-id-marker :target-type
                                  upload-id-marker :member-name
                                  "UploadIdMarker" :http-query
                                  "upload-id-marker")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer"))
                                (:shape-name "ListMultipartUploadsRequest"))

(smithy/sdk/shapes:define-output list-object-versions-output common-lisp:nil
                                 ((is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (key-marker :target-type key-marker
                                   :member-name "KeyMarker")
                                  (version-id-marker :target-type
                                   version-id-marker :member-name
                                   "VersionIdMarker")
                                  (next-key-marker :target-type next-key-marker
                                   :member-name "NextKeyMarker")
                                  (next-version-id-marker :target-type
                                   next-version-id-marker :member-name
                                   "NextVersionIdMarker")
                                  (versions :target-type object-version-list
                                   :member-name "Versions" :xml-name "Version"
                                   :xml-flattened common-lisp:t)
                                  (delete-markers :target-type delete-markers
                                   :member-name "DeleteMarkers" :xml-name
                                   "DeleteMarker" :xml-flattened common-lisp:t)
                                  (name :target-type bucket-name :member-name
                                   "Name")
                                  (prefix :target-type prefix :member-name
                                   "Prefix")
                                  (delimiter :target-type delimiter
                                   :member-name "Delimiter")
                                  (max-keys :target-type max-keys :member-name
                                   "MaxKeys")
                                  (common-prefixes :target-type
                                   common-prefix-list :member-name
                                   "CommonPrefixes" :xml-flattened
                                   common-lisp:t)
                                  (encoding-type :target-type encoding-type
                                   :member-name "EncodingType")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "ListObjectVersionsOutput")
                                 (:xml-name "ListVersionsResult"))

(smithy/sdk/shapes:define-input list-object-versions-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (delimiter :target-type delimiter :member-name
                                  "Delimiter" :http-query "delimiter")
                                 (encoding-type :target-type encoding-type
                                  :member-name "EncodingType" :http-query
                                  "encoding-type")
                                 (key-marker :target-type key-marker
                                  :member-name "KeyMarker" :http-query
                                  "key-marker")
                                 (max-keys :target-type max-keys :member-name
                                  "MaxKeys" :http-query "max-keys")
                                 (prefix :target-type prefix :member-name
                                  "Prefix" :http-query "prefix")
                                 (version-id-marker :target-type
                                  version-id-marker :member-name
                                  "VersionIdMarker" :http-query
                                  "version-id-marker")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (optional-object-attributes :target-type
                                  optional-object-attributes-list :member-name
                                  "OptionalObjectAttributes" :http-header
                                  "x-amz-optional-object-attributes"))
                                (:shape-name "ListObjectVersionsRequest"))

(smithy/sdk/shapes:define-output list-objects-output common-lisp:nil
                                 ((is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (marker :target-type marker :member-name
                                   "Marker")
                                  (next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (contents :target-type object-list
                                   :member-name "Contents" :xml-flattened
                                   common-lisp:t)
                                  (name :target-type bucket-name :member-name
                                   "Name")
                                  (prefix :target-type prefix :member-name
                                   "Prefix")
                                  (delimiter :target-type delimiter
                                   :member-name "Delimiter")
                                  (max-keys :target-type max-keys :member-name
                                   "MaxKeys")
                                  (common-prefixes :target-type
                                   common-prefix-list :member-name
                                   "CommonPrefixes" :xml-flattened
                                   common-lisp:t)
                                  (encoding-type :target-type encoding-type
                                   :member-name "EncodingType")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "ListObjectsOutput")
                                 (:xml-name "ListBucketResult"))

(smithy/sdk/shapes:define-input list-objects-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (delimiter :target-type delimiter :member-name
                                  "Delimiter" :http-query "delimiter")
                                 (encoding-type :target-type encoding-type
                                  :member-name "EncodingType" :http-query
                                  "encoding-type")
                                 (marker :target-type marker :member-name
                                  "Marker" :http-query "marker")
                                 (max-keys :target-type max-keys :member-name
                                  "MaxKeys" :http-query "max-keys")
                                 (prefix :target-type prefix :member-name
                                  "Prefix" :http-query "prefix")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (optional-object-attributes :target-type
                                  optional-object-attributes-list :member-name
                                  "OptionalObjectAttributes" :http-header
                                  "x-amz-optional-object-attributes"))
                                (:shape-name "ListObjectsRequest"))

(smithy/sdk/shapes:define-output list-objects-v2output common-lisp:nil
                                 ((is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (contents :target-type object-list
                                   :member-name "Contents" :xml-flattened
                                   common-lisp:t)
                                  (name :target-type bucket-name :member-name
                                   "Name")
                                  (prefix :target-type prefix :member-name
                                   "Prefix")
                                  (delimiter :target-type delimiter
                                   :member-name "Delimiter")
                                  (max-keys :target-type max-keys :member-name
                                   "MaxKeys")
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
                                   :member-name "StartAfter")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "ListObjectsV2Output")
                                 (:xml-name "ListBucketResult"))

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
                                  :http-header "x-amz-expected-bucket-owner")
                                 (optional-object-attributes :target-type
                                  optional-object-attributes-list :member-name
                                  "OptionalObjectAttributes" :http-header
                                  "x-amz-optional-object-attributes"))
                                (:shape-name "ListObjectsV2Request"))

(smithy/sdk/shapes:define-output list-parts-output common-lisp:nil
                                 ((abort-date :target-type abort-date
                                   :member-name "AbortDate" :http-header
                                   "x-amz-abort-date")
                                  (abort-rule-id :target-type abort-rule-id
                                   :member-name "AbortRuleId" :http-header
                                   "x-amz-abort-rule-id")
                                  (bucket :target-type bucket-name :member-name
                                   "Bucket")
                                  (key :target-type object-key :member-name
                                   "Key")
                                  (upload-id :target-type multipart-upload-id
                                   :member-name "UploadId")
                                  (part-number-marker :target-type
                                   part-number-marker :member-name
                                   "PartNumberMarker")
                                  (next-part-number-marker :target-type
                                   next-part-number-marker :member-name
                                   "NextPartNumberMarker")
                                  (max-parts :target-type max-parts
                                   :member-name "MaxParts")
                                  (is-truncated :target-type is-truncated
                                   :member-name "IsTruncated")
                                  (parts :target-type parts :member-name
                                   "Parts" :xml-name "Part" :xml-flattened
                                   common-lisp:t)
                                  (initiator :target-type initiator
                                   :member-name "Initiator")
                                  (owner :target-type owner :member-name
                                   "Owner")
                                  (storage-class :target-type storage-class
                                   :member-name "StorageClass")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (checksum-algorithm :target-type
                                   checksum-algorithm :member-name
                                   "ChecksumAlgorithm")
                                  (checksum-type :target-type checksum-type
                                   :member-name "ChecksumType"))
                                 (:shape-name "ListPartsOutput")
                                 (:xml-name "ListPartsResult"))

(smithy/sdk/shapes:define-input list-parts-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (max-parts :target-type max-parts :member-name
                                  "MaxParts" :http-query "max-parts")
                                 (part-number-marker :target-type
                                  part-number-marker :member-name
                                  "PartNumberMarker" :http-query
                                  "part-number-marker")
                                 (upload-id :target-type multipart-upload-id
                                  :required common-lisp:t :member-name
                                  "UploadId" :http-query "uploadId")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5"))
                                (:shape-name "ListPartsRequest"))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure location-info common-lisp:nil
                                    ((type :target-type location-type
                                      :member-name "Type")
                                     (name :target-type location-name-as-string
                                      :member-name "Name"))
                                    (:shape-name "LocationInfo"))

(smithy/sdk/shapes:define-type location-name-as-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type location-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum location-type
    common-lisp:nil
  (:availability-zone "AvailabilityZone")
  (:local-zone "LocalZone"))

(smithy/sdk/shapes:define-structure logging-enabled common-lisp:nil
                                    ((target-bucket :target-type target-bucket
                                      :required common-lisp:t :member-name
                                      "TargetBucket")
                                     (target-grants :target-type target-grants
                                      :member-name "TargetGrants")
                                     (target-prefix :target-type target-prefix
                                      :required common-lisp:t :member-name
                                      "TargetPrefix")
                                     (target-object-key-format :target-type
                                      target-object-key-format :member-name
                                      "TargetObjectKeyFormat"))
                                    (:shape-name "LoggingEnabled"))

(smithy/sdk/shapes:define-type mfa smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mfadelete
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-enum mfadelete-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-age-seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-buckets smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-directory-buckets
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-keys smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-parts smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-uploads smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map metadata :key metadata-key :value metadata-value)

(smithy/sdk/shapes:define-structure metadata-configuration common-lisp:nil
                                    ((journal-table-configuration :target-type
                                      journal-table-configuration :required
                                      common-lisp:t :member-name
                                      "JournalTableConfiguration")
                                     (inventory-table-configuration
                                      :target-type
                                      inventory-table-configuration
                                      :member-name
                                      "InventoryTableConfiguration"))
                                    (:shape-name "MetadataConfiguration"))

(smithy/sdk/shapes:define-structure metadata-configuration-result
                                    common-lisp:nil
                                    ((destination-result :target-type
                                      destination-result :required
                                      common-lisp:t :member-name
                                      "DestinationResult")
                                     (journal-table-configuration-result
                                      :target-type
                                      journal-table-configuration-result
                                      :member-name
                                      "JournalTableConfigurationResult")
                                     (inventory-table-configuration-result
                                      :target-type
                                      inventory-table-configuration-result
                                      :member-name
                                      "InventoryTableConfigurationResult"))
                                    (:shape-name "MetadataConfigurationResult"))

(smithy/sdk/shapes:define-enum metadata-directive
    common-lisp:nil
  (:copy "COPY")
  (:replace "REPLACE"))

(smithy/sdk/shapes:define-structure metadata-entry common-lisp:nil
                                    ((name :target-type metadata-key
                                      :member-name "Name")
                                     (value :target-type metadata-value
                                      :member-name "Value"))
                                    (:shape-name "MetadataEntry"))

(smithy/sdk/shapes:define-type metadata-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata-table-configuration
                                    common-lisp:nil
                                    ((s3tables-destination :target-type
                                      s3tables-destination :required
                                      common-lisp:t :member-name
                                      "S3TablesDestination"))
                                    (:shape-name "MetadataTableConfiguration"))

(smithy/sdk/shapes:define-structure metadata-table-configuration-result
                                    common-lisp:nil
                                    ((s3tables-destination-result :target-type
                                      s3tables-destination-result :required
                                      common-lisp:t :member-name
                                      "S3TablesDestinationResult"))
                                    (:shape-name
                                     "MetadataTableConfigurationResult"))

(smithy/sdk/shapes:define-structure metadata-table-encryption-configuration
                                    common-lisp:nil
                                    ((sse-algorithm :target-type
                                      table-sse-algorithm :required
                                      common-lisp:t :member-name
                                      "SseAlgorithm")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn"))
                                    (:shape-name
                                     "MetadataTableEncryptionConfiguration"))

(smithy/sdk/shapes:define-type metadata-table-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metrics common-lisp:nil
                                    ((status :target-type metrics-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (event-threshold :target-type
                                      replication-time-value :member-name
                                      "EventThreshold"))
                                    (:shape-name "Metrics"))

(smithy/sdk/shapes:define-structure metrics-and-operator common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type tag-set :member-name
                                      "Tags" :xml-name "Tag" :xml-flattened
                                      common-lisp:t)
                                     (access-point-arn :target-type
                                      access-point-arn :member-name
                                      "AccessPointArn"))
                                    (:shape-name "MetricsAndOperator"))

(smithy/sdk/shapes:define-structure metrics-configuration common-lisp:nil
                                    ((id :target-type metrics-id :required
                                      common-lisp:t :member-name "Id")
                                     (filter :target-type metrics-filter
                                      :member-name "Filter"))
                                    (:shape-name "MetricsConfiguration"))

(smithy/sdk/shapes:define-list metrics-configuration-list :member
                               metrics-configuration)

(smithy/sdk/shapes:define-union metrics-filter common-lisp:nil
                                ((prefix :target-type prefix :member-name
                                  "Prefix")
                                 (tag :target-type tag :member-name "Tag")
                                 (access-point-arn :target-type
                                  access-point-arn :member-name
                                  "AccessPointArn")
                                 (and :target-type metrics-and-operator
                                  :member-name "And"))
                                (:shape-name "MetricsFilter"))

(smithy/sdk/shapes:define-type metrics-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum metrics-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type minutes smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type missing-meta smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mpu-object-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure multipart-upload common-lisp:nil
                                    ((upload-id :target-type
                                      multipart-upload-id :member-name
                                      "UploadId")
                                     (key :target-type object-key :member-name
                                      "Key")
                                     (initiated :target-type initiated
                                      :member-name "Initiated")
                                     (storage-class :target-type storage-class
                                      :member-name "StorageClass")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (initiator :target-type initiator
                                      :member-name "Initiator")
                                     (checksum-algorithm :target-type
                                      checksum-algorithm :member-name
                                      "ChecksumAlgorithm")
                                     (checksum-type :target-type checksum-type
                                      :member-name "ChecksumType"))
                                    (:shape-name "MultipartUpload"))

(smithy/sdk/shapes:define-type multipart-upload-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list multipart-upload-list :member multipart-upload)

(smithy/sdk/shapes:define-type next-key-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-part-number-marker
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-upload-id-marker
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-version-id-marker
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-such-bucket common-lisp:nil common-lisp:nil
                                (:shape-name "NoSuchBucket") (:error-code 404))

(smithy/sdk/shapes:define-error no-such-key common-lisp:nil common-lisp:nil
                                (:shape-name "NoSuchKey") (:error-code 404))

(smithy/sdk/shapes:define-error no-such-upload common-lisp:nil common-lisp:nil
                                (:shape-name "NoSuchUpload") (:error-code 404))

(smithy/sdk/shapes:define-structure noncurrent-version-expiration
                                    common-lisp:nil
                                    ((noncurrent-days :target-type days
                                      :member-name "NoncurrentDays")
                                     (newer-noncurrent-versions :target-type
                                      version-count :member-name
                                      "NewerNoncurrentVersions"))
                                    (:shape-name "NoncurrentVersionExpiration"))

(smithy/sdk/shapes:define-structure noncurrent-version-transition
                                    common-lisp:nil
                                    ((noncurrent-days :target-type days
                                      :member-name "NoncurrentDays")
                                     (storage-class :target-type
                                      transition-storage-class :member-name
                                      "StorageClass")
                                     (newer-noncurrent-versions :target-type
                                      version-count :member-name
                                      "NewerNoncurrentVersions"))
                                    (:shape-name "NoncurrentVersionTransition"))

(smithy/sdk/shapes:define-list noncurrent-version-transition-list :member
                               noncurrent-version-transition)

(smithy/sdk/shapes:define-error not-found common-lisp:nil common-lisp:nil
                                (:shape-name "NotFound") (:error-code 400))

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((topic-configurations :target-type
                                      topic-configuration-list :member-name
                                      "TopicConfigurations" :xml-name
                                      "TopicConfiguration" :xml-flattened
                                      common-lisp:t)
                                     (queue-configurations :target-type
                                      queue-configuration-list :member-name
                                      "QueueConfigurations" :xml-name
                                      "QueueConfiguration" :xml-flattened
                                      common-lisp:t)
                                     (lambda-function-configurations
                                      :target-type
                                      lambda-function-configuration-list
                                      :member-name
                                      "LambdaFunctionConfigurations" :xml-name
                                      "CloudFunctionConfiguration"
                                      :xml-flattened common-lisp:t)
                                     (event-bridge-configuration :target-type
                                      event-bridge-configuration :member-name
                                      "EventBridgeConfiguration"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-structure notification-configuration-filter
                                    common-lisp:nil
                                    ((key :target-type s3key-filter
                                      :member-name "Key" :xml-name "S3Key"))
                                    (:shape-name
                                     "NotificationConfigurationFilter"))

(smithy/sdk/shapes:define-type notification-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure object common-lisp:nil
                                    ((key :target-type object-key :member-name
                                      "Key")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (etag :target-type etag :member-name
                                      "ETag")
                                     (checksum-algorithm :target-type
                                      checksum-algorithm-list :member-name
                                      "ChecksumAlgorithm" :xml-flattened
                                      common-lisp:t)
                                     (checksum-type :target-type checksum-type
                                      :member-name "ChecksumType")
                                     (size :target-type size :member-name
                                      "Size")
                                     (storage-class :target-type
                                      object-storage-class :member-name
                                      "StorageClass")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (restore-status :target-type
                                      restore-status :member-name
                                      "RestoreStatus"))
                                    (:shape-name "Object"))

(smithy/sdk/shapes:define-error object-already-in-active-tier-error
                                common-lisp:nil common-lisp:nil
                                (:shape-name "ObjectAlreadyInActiveTierError")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum object-attributes
    common-lisp:nil
  (:etag "ETag")
  (:checksum "Checksum")
  (:object-parts "ObjectParts")
  (:storage-class "StorageClass")
  (:object-size "ObjectSize"))

(smithy/sdk/shapes:define-list object-attributes-list :member object-attributes)

(smithy/sdk/shapes:define-enum object-canned-acl
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:authenticated-read "authenticated-read")
  (:aws-exec-read "aws-exec-read")
  (:bucket-owner-read "bucket-owner-read")
  (:bucket-owner-full-control "bucket-owner-full-control"))

(smithy/sdk/shapes:define-structure object-identifier common-lisp:nil
                                    ((key :target-type object-key :required
                                      common-lisp:t :member-name "Key")
                                     (version-id :target-type object-version-id
                                      :member-name "VersionId")
                                     (etag :target-type etag :member-name
                                      "ETag")
                                     (last-modified-time :target-type
                                      last-modified-time :member-name
                                      "LastModifiedTime")
                                     (size :target-type size :member-name
                                      "Size"))
                                    (:shape-name "ObjectIdentifier"))

(smithy/sdk/shapes:define-list object-identifier-list :member object-identifier)

(smithy/sdk/shapes:define-type object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list object-list :member object)

(smithy/sdk/shapes:define-structure object-lock-configuration common-lisp:nil
                                    ((object-lock-enabled :target-type
                                      object-lock-enabled :member-name
                                      "ObjectLockEnabled")
                                     (rule :target-type object-lock-rule
                                      :member-name "Rule"))
                                    (:shape-name "ObjectLockConfiguration"))

(smithy/sdk/shapes:define-enum object-lock-enabled
    common-lisp:nil
  (:enabled "Enabled"))

(smithy/sdk/shapes:define-type object-lock-enabled-for-bucket
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure object-lock-legal-hold common-lisp:nil
                                    ((status :target-type
                                      object-lock-legal-hold-status
                                      :member-name "Status"))
                                    (:shape-name "ObjectLockLegalHold"))

(smithy/sdk/shapes:define-enum object-lock-legal-hold-status
    common-lisp:nil
  (:on "ON")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum object-lock-mode
    common-lisp:nil
  (:governance "GOVERNANCE")
  (:compliance "COMPLIANCE"))

(smithy/sdk/shapes:define-type object-lock-retain-until-date
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure object-lock-retention common-lisp:nil
                                    ((mode :target-type
                                      object-lock-retention-mode :member-name
                                      "Mode")
                                     (retain-until-date :target-type date
                                      :member-name "RetainUntilDate"))
                                    (:shape-name "ObjectLockRetention"))

(smithy/sdk/shapes:define-enum object-lock-retention-mode
    common-lisp:nil
  (:governance "GOVERNANCE")
  (:compliance "COMPLIANCE"))

(smithy/sdk/shapes:define-structure object-lock-rule common-lisp:nil
                                    ((default-retention :target-type
                                      default-retention :member-name
                                      "DefaultRetention"))
                                    (:shape-name "ObjectLockRule"))

(smithy/sdk/shapes:define-type object-lock-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error object-not-in-active-tier-error common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ObjectNotInActiveTierError")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum object-ownership
    common-lisp:nil
  (:bucket-owner-preferred "BucketOwnerPreferred")
  (:object-writer "ObjectWriter")
  (:bucket-owner-enforced "BucketOwnerEnforced"))

(smithy/sdk/shapes:define-structure object-part common-lisp:nil
                                    ((part-number :target-type part-number
                                      :member-name "PartNumber")
                                     (size :target-type size :member-name
                                      "Size")
                                     (checksum-crc32 :target-type
                                      checksum-crc32 :member-name
                                      "ChecksumCRC32")
                                     (checksum-crc32c :target-type
                                      checksum-crc32c :member-name
                                      "ChecksumCRC32C")
                                     (checksum-crc64nvme :target-type
                                      checksum-crc64nvme :member-name
                                      "ChecksumCRC64NVME")
                                     (checksum-sha1 :target-type checksum-sha1
                                      :member-name "ChecksumSHA1")
                                     (checksum-sha256 :target-type
                                      checksum-sha256 :member-name
                                      "ChecksumSHA256"))
                                    (:shape-name "ObjectPart"))

(smithy/sdk/shapes:define-type object-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type object-size-greater-than-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type object-size-less-than-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum object-storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:glacier "GLACIER")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:deep-archive "DEEP_ARCHIVE")
  (:outposts "OUTPOSTS")
  (:glacier-ir "GLACIER_IR")
  (:snow "SNOW")
  (:express-onezone "EXPRESS_ONEZONE")
  (:fsx-openzfs "FSX_OPENZFS"))

(smithy/sdk/shapes:define-structure object-version common-lisp:nil
                                    ((etag :target-type etag :member-name
                                      "ETag")
                                     (checksum-algorithm :target-type
                                      checksum-algorithm-list :member-name
                                      "ChecksumAlgorithm" :xml-flattened
                                      common-lisp:t)
                                     (checksum-type :target-type checksum-type
                                      :member-name "ChecksumType")
                                     (size :target-type size :member-name
                                      "Size")
                                     (storage-class :target-type
                                      object-version-storage-class :member-name
                                      "StorageClass")
                                     (key :target-type object-key :member-name
                                      "Key")
                                     (version-id :target-type object-version-id
                                      :member-name "VersionId")
                                     (is-latest :target-type is-latest
                                      :member-name "IsLatest")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (restore-status :target-type
                                      restore-status :member-name
                                      "RestoreStatus"))
                                    (:shape-name "ObjectVersion"))

(smithy/sdk/shapes:define-type object-version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list object-version-list :member object-version)

(smithy/sdk/shapes:define-enum object-version-storage-class
    common-lisp:nil
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-enum optional-object-attributes
    common-lisp:nil
  (:restore-status "RestoreStatus"))

(smithy/sdk/shapes:define-list optional-object-attributes-list :member
                               optional-object-attributes)

(smithy/sdk/shapes:define-structure output-location common-lisp:nil
                                    ((s3 :target-type s3location :member-name
                                      "S3"))
                                    (:shape-name "OutputLocation"))

(smithy/sdk/shapes:define-structure output-serialization common-lisp:nil
                                    ((csv :target-type csvoutput :member-name
                                      "CSV")
                                     (json :target-type jsonoutput :member-name
                                      "JSON"))
                                    (:shape-name "OutputSerialization"))

(smithy/sdk/shapes:define-structure owner common-lisp:nil
                                    ((display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (id :target-type id :member-name "ID"))
                                    (:shape-name "Owner"))

(smithy/sdk/shapes:define-enum owner-override
    common-lisp:nil
  (:destination "Destination"))

(smithy/sdk/shapes:define-structure ownership-controls common-lisp:nil
                                    ((rules :target-type
                                      ownership-controls-rules :required
                                      common-lisp:t :member-name "Rules"
                                      :xml-name "Rule" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name "OwnershipControls"))

(smithy/sdk/shapes:define-structure ownership-controls-rule common-lisp:nil
                                    ((object-ownership :target-type
                                      object-ownership :required common-lisp:t
                                      :member-name "ObjectOwnership"))
                                    (:shape-name "OwnershipControlsRule"))

(smithy/sdk/shapes:define-list ownership-controls-rules :member
                               ownership-controls-rule)

(smithy/sdk/shapes:define-structure parquet-input common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "ParquetInput"))

(smithy/sdk/shapes:define-structure part common-lisp:nil
                                    ((part-number :target-type part-number
                                      :member-name "PartNumber")
                                     (last-modified :target-type last-modified
                                      :member-name "LastModified")
                                     (etag :target-type etag :member-name
                                      "ETag")
                                     (size :target-type size :member-name
                                      "Size")
                                     (checksum-crc32 :target-type
                                      checksum-crc32 :member-name
                                      "ChecksumCRC32")
                                     (checksum-crc32c :target-type
                                      checksum-crc32c :member-name
                                      "ChecksumCRC32C")
                                     (checksum-crc64nvme :target-type
                                      checksum-crc64nvme :member-name
                                      "ChecksumCRC64NVME")
                                     (checksum-sha1 :target-type checksum-sha1
                                      :member-name "ChecksumSHA1")
                                     (checksum-sha256 :target-type
                                      checksum-sha256 :member-name
                                      "ChecksumSHA256"))
                                    (:shape-name "Part"))

(smithy/sdk/shapes:define-type part-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type part-number-marker
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum partition-date-source
    common-lisp:nil
  (:event-time "EventTime")
  (:delivery-time "DeliveryTime"))

(smithy/sdk/shapes:define-structure partitioned-prefix common-lisp:nil
                                    ((partition-date-source :target-type
                                      partition-date-source :member-name
                                      "PartitionDateSource"))
                                    (:shape-name "PartitionedPrefix")
                                    (:xml-name "PartitionedPrefix"))

(smithy/sdk/shapes:define-list parts :member part)

(smithy/sdk/shapes:define-type parts-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list parts-list :member object-part)

(smithy/sdk/shapes:define-enum payer
    common-lisp:nil
  (:requester "Requester")
  (:bucket-owner "BucketOwner"))

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:full-control "FULL_CONTROL")
  (:write "WRITE")
  (:write-acp "WRITE_ACP")
  (:read "READ")
  (:read-acp "READ_ACP"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-status common-lisp:nil
                                    ((is-public :target-type is-public
                                      :member-name "IsPublic" :xml-name
                                      "IsPublic"))
                                    (:shape-name "PolicyStatus"))

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure progress common-lisp:nil
                                    ((bytes-scanned :target-type bytes-scanned
                                      :member-name "BytesScanned")
                                     (bytes-processed :target-type
                                      bytes-processed :member-name
                                      "BytesProcessed")
                                     (bytes-returned :target-type
                                      bytes-returned :member-name
                                      "BytesReturned"))
                                    (:shape-name "Progress"))

(smithy/sdk/shapes:define-structure progress-event common-lisp:nil
                                    ((details :target-type progress
                                      :member-name "Details"))
                                    (:shape-name "ProgressEvent"))

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:http "http")
  (:https "https"))

(smithy/sdk/shapes:define-structure public-access-block-configuration
                                    common-lisp:nil
                                    ((block-public-acls :target-type setting
                                      :member-name "BlockPublicAcls" :xml-name
                                      "BlockPublicAcls")
                                     (ignore-public-acls :target-type setting
                                      :member-name "IgnorePublicAcls" :xml-name
                                      "IgnorePublicAcls")
                                     (block-public-policy :target-type setting
                                      :member-name "BlockPublicPolicy"
                                      :xml-name "BlockPublicPolicy")
                                     (restrict-public-buckets :target-type
                                      setting :member-name
                                      "RestrictPublicBuckets" :xml-name
                                      "RestrictPublicBuckets"))
                                    (:shape-name
                                     "PublicAccessBlockConfiguration"))

(smithy/sdk/shapes:define-input put-bucket-accelerate-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (accelerate-configuration :target-type
                                  accelerate-configuration :required
                                  common-lisp:t :member-name
                                  "AccelerateConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "AccelerateConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm"))
                                (:shape-name
                                 "PutBucketAccelerateConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-acl-request common-lisp:nil
                                ((acl :target-type bucket-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (access-control-policy :target-type
                                  access-control-policy :member-name
                                  "AccessControlPolicy" :http-payload
                                  common-lisp:t :xml-name
                                  "AccessControlPolicy")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write :target-type grant-write
                                  :member-name "GrantWrite" :http-header
                                  "x-amz-grant-write")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketAclRequest"))

(smithy/sdk/shapes:define-input put-bucket-analytics-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type analytics-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (analytics-configuration :target-type
                                  analytics-configuration :required
                                  common-lisp:t :member-name
                                  "AnalyticsConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "AnalyticsConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "PutBucketAnalyticsConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-cors-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (corsconfiguration :target-type
                                  corsconfiguration :required common-lisp:t
                                  :member-name "CORSConfiguration"
                                  :http-payload common-lisp:t :xml-name
                                  "CORSConfiguration")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketCorsRequest"))

(smithy/sdk/shapes:define-input put-bucket-encryption-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (server-side-encryption-configuration
                                  :target-type
                                  server-side-encryption-configuration
                                  :required common-lisp:t :member-name
                                  "ServerSideEncryptionConfiguration"
                                  :http-payload common-lisp:t :xml-name
                                  "ServerSideEncryptionConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketEncryptionRequest"))

(smithy/sdk/shapes:define-input
 put-bucket-intelligent-tiering-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (id :target-type intelligent-tiering-id :required common-lisp:t :member-name
   "Id" :http-query "id")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner")
  (intelligent-tiering-configuration :target-type
   intelligent-tiering-configuration :required common-lisp:t :member-name
   "IntelligentTieringConfiguration" :http-payload common-lisp:t :xml-name
   "IntelligentTieringConfiguration"))
 (:shape-name "PutBucketIntelligentTieringConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-inventory-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type inventory-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (inventory-configuration :target-type
                                  inventory-configuration :required
                                  common-lisp:t :member-name
                                  "InventoryConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "InventoryConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "PutBucketInventoryConfigurationRequest"))

(smithy/sdk/shapes:define-output put-bucket-lifecycle-configuration-output
                                 common-lisp:nil
                                 ((transition-default-minimum-object-size
                                   :target-type
                                   transition-default-minimum-object-size
                                   :member-name
                                   "TransitionDefaultMinimumObjectSize"
                                   :http-header
                                   "x-amz-transition-default-minimum-object-size"))
                                 (:shape-name
                                  "PutBucketLifecycleConfigurationOutput"))

(smithy/sdk/shapes:define-input put-bucket-lifecycle-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (lifecycle-configuration :target-type
                                  bucket-lifecycle-configuration :member-name
                                  "LifecycleConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "LifecycleConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (transition-default-minimum-object-size
                                  :target-type
                                  transition-default-minimum-object-size
                                  :member-name
                                  "TransitionDefaultMinimumObjectSize"
                                  :http-header
                                  "x-amz-transition-default-minimum-object-size"))
                                (:shape-name
                                 "PutBucketLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-logging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (bucket-logging-status :target-type
                                  bucket-logging-status :required common-lisp:t
                                  :member-name "BucketLoggingStatus"
                                  :http-payload common-lisp:t :xml-name
                                  "BucketLoggingStatus")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketLoggingRequest"))

(smithy/sdk/shapes:define-input put-bucket-metrics-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (id :target-type metrics-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id")
                                 (metrics-configuration :target-type
                                  metrics-configuration :required common-lisp:t
                                  :member-name "MetricsConfiguration"
                                  :http-payload common-lisp:t :xml-name
                                  "MetricsConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "PutBucketMetricsConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-notification-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (notification-configuration :target-type
                                  notification-configuration :required
                                  common-lisp:t :member-name
                                  "NotificationConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "NotificationConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (skip-destination-validation :target-type
                                  skip-validation :member-name
                                  "SkipDestinationValidation" :http-header
                                  "x-amz-skip-destination-validation"))
                                (:shape-name
                                 "PutBucketNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-input put-bucket-ownership-controls-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (ownership-controls :target-type
                                  ownership-controls :required common-lisp:t
                                  :member-name "OwnershipControls"
                                  :http-payload common-lisp:t :xml-name
                                  "OwnershipControls")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm"))
                                (:shape-name
                                 "PutBucketOwnershipControlsRequest"))

(smithy/sdk/shapes:define-input put-bucket-policy-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (confirm-remove-self-bucket-access
                                  :target-type
                                  confirm-remove-self-bucket-access
                                  :member-name "ConfirmRemoveSelfBucketAccess"
                                  :http-header
                                  "x-amz-confirm-remove-self-bucket-access")
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"
                                  :http-payload common-lisp:t)
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketPolicyRequest"))

(smithy/sdk/shapes:define-input put-bucket-replication-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (replication-configuration :target-type
                                  replication-configuration :required
                                  common-lisp:t :member-name
                                  "ReplicationConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "ReplicationConfiguration")
                                 (token :target-type object-lock-token
                                  :member-name "Token" :http-header
                                  "x-amz-bucket-object-lock-token")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketReplicationRequest"))

(smithy/sdk/shapes:define-input put-bucket-request-payment-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (request-payment-configuration :target-type
                                  request-payment-configuration :required
                                  common-lisp:t :member-name
                                  "RequestPaymentConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "RequestPaymentConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketRequestPaymentRequest"))

(smithy/sdk/shapes:define-input put-bucket-tagging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (tagging :target-type tagging :required
                                  common-lisp:t :member-name "Tagging"
                                  :http-payload common-lisp:t :xml-name
                                  "Tagging")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketTaggingRequest"))

(smithy/sdk/shapes:define-input put-bucket-versioning-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (mfa :target-type mfa :member-name "MFA"
                                  :http-header "x-amz-mfa")
                                 (versioning-configuration :target-type
                                  versioning-configuration :required
                                  common-lisp:t :member-name
                                  "VersioningConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "VersioningConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketVersioningRequest"))

(smithy/sdk/shapes:define-input put-bucket-website-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (website-configuration :target-type
                                  website-configuration :required common-lisp:t
                                  :member-name "WebsiteConfiguration"
                                  :http-payload common-lisp:t :xml-name
                                  "WebsiteConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutBucketWebsiteRequest"))

(smithy/sdk/shapes:define-output put-object-acl-output common-lisp:nil
                                 ((request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "PutObjectAclOutput"))

(smithy/sdk/shapes:define-input put-object-acl-request common-lisp:nil
                                ((acl :target-type object-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (access-control-policy :target-type
                                  access-control-policy :member-name
                                  "AccessControlPolicy" :http-payload
                                  common-lisp:t :xml-name
                                  "AccessControlPolicy")
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write :target-type grant-write
                                  :member-name "GrantWrite" :http-header
                                  "x-amz-grant-write")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutObjectAclRequest"))

(smithy/sdk/shapes:define-output put-object-legal-hold-output common-lisp:nil
                                 ((request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "PutObjectLegalHoldOutput"))

(smithy/sdk/shapes:define-input put-object-legal-hold-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (legal-hold :target-type
                                  object-lock-legal-hold :member-name
                                  "LegalHold" :http-payload common-lisp:t
                                  :xml-name "LegalHold")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutObjectLegalHoldRequest"))

(smithy/sdk/shapes:define-output put-object-lock-configuration-output
                                 common-lisp:nil
                                 ((request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name
                                  "PutObjectLockConfigurationOutput"))

(smithy/sdk/shapes:define-input put-object-lock-configuration-request
                                common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (object-lock-configuration :target-type
                                  object-lock-configuration :member-name
                                  "ObjectLockConfiguration" :http-payload
                                  common-lisp:t :xml-name
                                  "ObjectLockConfiguration")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (token :target-type object-lock-token
                                  :member-name "Token" :http-header
                                  "x-amz-bucket-object-lock-token")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name
                                 "PutObjectLockConfigurationRequest"))

(smithy/sdk/shapes:define-output put-object-output common-lisp:nil
                                 ((expiration :target-type expiration
                                   :member-name "Expiration" :http-header
                                   "x-amz-expiration")
                                  (etag :target-type etag :member-name "ETag"
                                   :http-header "ETag")
                                  (checksum-crc32 :target-type checksum-crc32
                                   :member-name "ChecksumCRC32" :http-header
                                   "x-amz-checksum-crc32")
                                  (checksum-crc32c :target-type checksum-crc32c
                                   :member-name "ChecksumCRC32C" :http-header
                                   "x-amz-checksum-crc32c")
                                  (checksum-crc64nvme :target-type
                                   checksum-crc64nvme :member-name
                                   "ChecksumCRC64NVME" :http-header
                                   "x-amz-checksum-crc64nvme")
                                  (checksum-sha1 :target-type checksum-sha1
                                   :member-name "ChecksumSHA1" :http-header
                                   "x-amz-checksum-sha1")
                                  (checksum-sha256 :target-type checksum-sha256
                                   :member-name "ChecksumSHA256" :http-header
                                   "x-amz-checksum-sha256")
                                  (checksum-type :target-type checksum-type
                                   :member-name "ChecksumType" :http-header
                                   "x-amz-checksum-type")
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (ssekmsencryption-context :target-type
                                   ssekmsencryption-context :member-name
                                   "SSEKMSEncryptionContext" :http-header
                                   "x-amz-server-side-encryption-context")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (size :target-type size :member-name "Size"
                                   :http-header "x-amz-object-size")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "PutObjectOutput"))

(smithy/sdk/shapes:define-input put-object-request common-lisp:nil
                                ((acl :target-type object-canned-acl
                                  :member-name "ACL" :http-header "x-amz-acl")
                                 (body :target-type streaming-blob :member-name
                                  "Body" :http-payload common-lisp:t)
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (cache-control :target-type cache-control
                                  :member-name "CacheControl" :http-header
                                  "Cache-Control")
                                 (content-disposition :target-type
                                  content-disposition :member-name
                                  "ContentDisposition" :http-header
                                  "Content-Disposition")
                                 (content-encoding :target-type
                                  content-encoding :member-name
                                  "ContentEncoding" :http-header
                                  "Content-Encoding")
                                 (content-language :target-type
                                  content-language :member-name
                                  "ContentLanguage" :http-header
                                  "Content-Language")
                                 (content-length :target-type content-length
                                  :member-name "ContentLength" :http-header
                                  "Content-Length")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (content-type :target-type content-type
                                  :member-name "ContentType" :http-header
                                  "Content-Type")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (checksum-crc32 :target-type checksum-crc32
                                  :member-name "ChecksumCRC32" :http-header
                                  "x-amz-checksum-crc32")
                                 (checksum-crc32c :target-type checksum-crc32c
                                  :member-name "ChecksumCRC32C" :http-header
                                  "x-amz-checksum-crc32c")
                                 (checksum-crc64nvme :target-type
                                  checksum-crc64nvme :member-name
                                  "ChecksumCRC64NVME" :http-header
                                  "x-amz-checksum-crc64nvme")
                                 (checksum-sha1 :target-type checksum-sha1
                                  :member-name "ChecksumSHA1" :http-header
                                  "x-amz-checksum-sha1")
                                 (checksum-sha256 :target-type checksum-sha256
                                  :member-name "ChecksumSHA256" :http-header
                                  "x-amz-checksum-sha256")
                                 (expires :target-type expires :member-name
                                  "Expires" :http-header "Expires")
                                 (if-match :target-type if-match :member-name
                                  "IfMatch" :http-header "If-Match")
                                 (if-none-match :target-type if-none-match
                                  :member-name "IfNoneMatch" :http-header
                                  "If-None-Match")
                                 (grant-full-control :target-type
                                  grant-full-control :member-name
                                  "GrantFullControl" :http-header
                                  "x-amz-grant-full-control")
                                 (grant-read :target-type grant-read
                                  :member-name "GrantRead" :http-header
                                  "x-amz-grant-read")
                                 (grant-read-acp :target-type grant-read-acp
                                  :member-name "GrantReadACP" :http-header
                                  "x-amz-grant-read-acp")
                                 (grant-write-acp :target-type grant-write-acp
                                  :member-name "GrantWriteACP" :http-header
                                  "x-amz-grant-write-acp")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (write-offset-bytes :target-type
                                  write-offset-bytes :member-name
                                  "WriteOffsetBytes" :http-header
                                  "x-amz-write-offset-bytes")
                                 (metadata :target-type metadata :member-name
                                  "Metadata" :http-prefix-headers
                                  "x-amz-meta-")
                                 (server-side-encryption :target-type
                                  server-side-encryption :member-name
                                  "ServerSideEncryption" :http-header
                                  "x-amz-server-side-encryption")
                                 (storage-class :target-type storage-class
                                  :member-name "StorageClass" :http-header
                                  "x-amz-storage-class")
                                 (website-redirect-location :target-type
                                  website-redirect-location :member-name
                                  "WebsiteRedirectLocation" :http-header
                                  "x-amz-website-redirect-location")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (ssekmskey-id :target-type ssekmskey-id
                                  :member-name "SSEKMSKeyId" :http-header
                                  "x-amz-server-side-encryption-aws-kms-key-id")
                                 (ssekmsencryption-context :target-type
                                  ssekmsencryption-context :member-name
                                  "SSEKMSEncryptionContext" :http-header
                                  "x-amz-server-side-encryption-context")
                                 (bucket-key-enabled :target-type
                                  bucket-key-enabled :member-name
                                  "BucketKeyEnabled" :http-header
                                  "x-amz-server-side-encryption-bucket-key-enabled")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (tagging :target-type tagging-header
                                  :member-name "Tagging" :http-header
                                  "x-amz-tagging")
                                 (object-lock-mode :target-type
                                  object-lock-mode :member-name
                                  "ObjectLockMode" :http-header
                                  "x-amz-object-lock-mode")
                                 (object-lock-retain-until-date :target-type
                                  object-lock-retain-until-date :member-name
                                  "ObjectLockRetainUntilDate" :http-header
                                  "x-amz-object-lock-retain-until-date")
                                 (object-lock-legal-hold-status :target-type
                                  object-lock-legal-hold-status :member-name
                                  "ObjectLockLegalHoldStatus" :http-header
                                  "x-amz-object-lock-legal-hold")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutObjectRequest"))

(smithy/sdk/shapes:define-output put-object-retention-output common-lisp:nil
                                 ((request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "PutObjectRetentionOutput"))

(smithy/sdk/shapes:define-input put-object-retention-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (retention :target-type object-lock-retention
                                  :member-name "Retention" :http-payload
                                  common-lisp:t :xml-name "Retention")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (bypass-governance-retention :target-type
                                  bypass-governance-retention :member-name
                                  "BypassGovernanceRetention" :http-header
                                  "x-amz-bypass-governance-retention")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutObjectRetentionRequest"))

(smithy/sdk/shapes:define-output put-object-tagging-output common-lisp:nil
                                 ((version-id :target-type object-version-id
                                   :member-name "VersionId" :http-header
                                   "x-amz-version-id"))
                                 (:shape-name "PutObjectTaggingOutput"))

(smithy/sdk/shapes:define-input put-object-tagging-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (tagging :target-type tagging :required
                                  common-lisp:t :member-name "Tagging"
                                  :http-payload common-lisp:t :xml-name
                                  "Tagging")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer"))
                                (:shape-name "PutObjectTaggingRequest"))

(smithy/sdk/shapes:define-input put-public-access-block-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (public-access-block-configuration
                                  :target-type
                                  public-access-block-configuration :required
                                  common-lisp:t :member-name
                                  "PublicAccessBlockConfiguration"
                                  :http-payload common-lisp:t :xml-name
                                  "PublicAccessBlockConfiguration")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "PutPublicAccessBlockRequest"))

(smithy/sdk/shapes:define-type queue-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure queue-configuration common-lisp:nil
                                    ((id :target-type notification-id
                                      :member-name "Id")
                                     (queue-arn :target-type queue-arn
                                      :required common-lisp:t :member-name
                                      "QueueArn" :xml-name "Queue")
                                     (events :target-type event-list :required
                                      common-lisp:t :member-name "Events"
                                      :xml-name "Event" :xml-flattened
                                      common-lisp:t)
                                     (filter :target-type
                                      notification-configuration-filter
                                      :member-name "Filter"))
                                    (:shape-name "QueueConfiguration"))

(smithy/sdk/shapes:define-list queue-configuration-list :member
                               queue-configuration)

(smithy/sdk/shapes:define-type quiet smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type quote-character smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quote-escape-character
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum quote-fields
    common-lisp:nil
  (:always "ALWAYS")
  (:asneeded "ASNEEDED"))

(smithy/sdk/shapes:define-type range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure record-expiration common-lisp:nil
                                    ((expiration :target-type expiration-state
                                      :required common-lisp:t :member-name
                                      "Expiration")
                                     (days :target-type record-expiration-days
                                      :member-name "Days"))
                                    (:shape-name "RecordExpiration"))

(smithy/sdk/shapes:define-type record-expiration-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure records-event common-lisp:nil
                                    ((payload :target-type body :member-name
                                      "Payload"))
                                    (:shape-name "RecordsEvent"))

(smithy/sdk/shapes:define-structure redirect common-lisp:nil
                                    ((host-name :target-type host-name
                                      :member-name "HostName")
                                     (http-redirect-code :target-type
                                      http-redirect-code :member-name
                                      "HttpRedirectCode")
                                     (protocol :target-type protocol
                                      :member-name "Protocol")
                                     (replace-key-prefix-with :target-type
                                      replace-key-prefix-with :member-name
                                      "ReplaceKeyPrefixWith")
                                     (replace-key-with :target-type
                                      replace-key-with :member-name
                                      "ReplaceKeyWith"))
                                    (:shape-name "Redirect"))

(smithy/sdk/shapes:define-structure redirect-all-requests-to common-lisp:nil
                                    ((host-name :target-type host-name
                                      :required common-lisp:t :member-name
                                      "HostName")
                                     (protocol :target-type protocol
                                      :member-name "Protocol"))
                                    (:shape-name "RedirectAllRequestsTo"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output rename-object-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RenameObjectOutput"))

(smithy/sdk/shapes:define-input rename-object-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (rename-source :target-type rename-source
                                  :required common-lisp:t :member-name
                                  "RenameSource" :http-header
                                  "x-amz-rename-source")
                                 (destination-if-match :target-type if-match
                                  :member-name "DestinationIfMatch"
                                  :http-header "If-Match")
                                 (destination-if-none-match :target-type
                                  if-none-match :member-name
                                  "DestinationIfNoneMatch" :http-header
                                  "If-None-Match")
                                 (destination-if-modified-since :target-type
                                  if-modified-since :member-name
                                  "DestinationIfModifiedSince" :http-header
                                  "If-Modified-Since")
                                 (destination-if-unmodified-since :target-type
                                  if-unmodified-since :member-name
                                  "DestinationIfUnmodifiedSince" :http-header
                                  "If-Unmodified-Since")
                                 (source-if-match :target-type
                                  rename-source-if-match :member-name
                                  "SourceIfMatch" :http-header
                                  "x-amz-rename-source-if-match")
                                 (source-if-none-match :target-type
                                  rename-source-if-none-match :member-name
                                  "SourceIfNoneMatch" :http-header
                                  "x-amz-rename-source-if-none-match")
                                 (source-if-modified-since :target-type
                                  rename-source-if-modified-since :member-name
                                  "SourceIfModifiedSince" :http-header
                                  "x-amz-rename-source-if-modified-since")
                                 (source-if-unmodified-since :target-type
                                  rename-source-if-unmodified-since
                                  :member-name "SourceIfUnmodifiedSince"
                                  :http-header
                                  "x-amz-rename-source-if-unmodified-since")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "x-amz-client-token"))
                                (:shape-name "RenameObjectRequest"))

(smithy/sdk/shapes:define-type rename-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rename-source-if-match
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rename-source-if-modified-since
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "http-date")

(smithy/sdk/shapes:define-type rename-source-if-none-match
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rename-source-if-unmodified-since
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "http-date")

(smithy/sdk/shapes:define-type replace-key-prefix-with
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replace-key-with smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replica-kms-key-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replica-modifications common-lisp:nil
                                    ((status :target-type
                                      replica-modifications-status :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "ReplicaModifications"))

(smithy/sdk/shapes:define-enum replica-modifications-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-structure replication-configuration common-lisp:nil
                                    ((role :target-type role :required
                                      common-lisp:t :member-name "Role")
                                     (rules :target-type replication-rules
                                      :required common-lisp:t :member-name
                                      "Rules" :xml-name "Rule" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name "ReplicationConfiguration"))

(smithy/sdk/shapes:define-structure replication-rule common-lisp:nil
                                    ((id :target-type id :member-name "ID")
                                     (priority :target-type priority
                                      :member-name "Priority")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (filter :target-type
                                      replication-rule-filter :member-name
                                      "Filter")
                                     (status :target-type
                                      replication-rule-status :required
                                      common-lisp:t :member-name "Status")
                                     (source-selection-criteria :target-type
                                      source-selection-criteria :member-name
                                      "SourceSelectionCriteria")
                                     (existing-object-replication :target-type
                                      existing-object-replication :member-name
                                      "ExistingObjectReplication")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "Destination")
                                     (delete-marker-replication :target-type
                                      delete-marker-replication :member-name
                                      "DeleteMarkerReplication"))
                                    (:shape-name "ReplicationRule"))

(smithy/sdk/shapes:define-structure replication-rule-and-operator
                                    common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tags :target-type tag-set :member-name
                                      "Tags" :xml-name "Tag" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name "ReplicationRuleAndOperator"))

(smithy/sdk/shapes:define-structure replication-rule-filter common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "Prefix")
                                     (tag :target-type tag :member-name "Tag")
                                     (and :target-type
                                      replication-rule-and-operator
                                      :member-name "And"))
                                    (:shape-name "ReplicationRuleFilter"))

(smithy/sdk/shapes:define-enum replication-rule-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list replication-rules :member replication-rule)

(smithy/sdk/shapes:define-enum replication-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:pending "PENDING")
  (:failed "FAILED")
  (:replica "REPLICA")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-structure replication-time common-lisp:nil
                                    ((status :target-type
                                      replication-time-status :required
                                      common-lisp:t :member-name "Status")
                                     (time :target-type replication-time-value
                                      :required common-lisp:t :member-name
                                      "Time"))
                                    (:shape-name "ReplicationTime"))

(smithy/sdk/shapes:define-enum replication-time-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-structure replication-time-value common-lisp:nil
                                    ((minutes :target-type minutes :member-name
                                      "Minutes"))
                                    (:shape-name "ReplicationTimeValue"))

(smithy/sdk/shapes:define-enum request-charged
    common-lisp:nil
  (:requester "requester"))

(smithy/sdk/shapes:define-enum request-payer
    common-lisp:nil
  (:requester "requester"))

(smithy/sdk/shapes:define-structure request-payment-configuration
                                    common-lisp:nil
                                    ((payer :target-type payer :required
                                      common-lisp:t :member-name "Payer"))
                                    (:shape-name "RequestPaymentConfiguration"))

(smithy/sdk/shapes:define-structure request-progress common-lisp:nil
                                    ((enabled :target-type
                                      enable-request-progress :member-name
                                      "Enabled"))
                                    (:shape-name "RequestProgress"))

(smithy/sdk/shapes:define-type request-route smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-cache-control
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-content-disposition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-content-encoding
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-content-language
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-content-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-expires
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "http-date")

(smithy/sdk/shapes:define-type restore smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type restore-expiry-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-output restore-object-output common-lisp:nil
                                 ((request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged")
                                  (restore-output-path :target-type
                                   restore-output-path :member-name
                                   "RestoreOutputPath" :http-header
                                   "x-amz-restore-output-path"))
                                 (:shape-name "RestoreObjectOutput"))

(smithy/sdk/shapes:define-input restore-object-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-query
                                  "versionId")
                                 (restore-request :target-type restore-request
                                  :member-name "RestoreRequest" :http-payload
                                  common-lisp:t :xml-name "RestoreRequest")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "RestoreObjectRequest"))

(smithy/sdk/shapes:define-type restore-output-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure restore-request common-lisp:nil
                                    ((days :target-type days :member-name
                                      "Days")
                                     (glacier-job-parameters :target-type
                                      glacier-job-parameters :member-name
                                      "GlacierJobParameters")
                                     (type :target-type restore-request-type
                                      :member-name "Type")
                                     (tier :target-type tier :member-name
                                      "Tier")
                                     (description :target-type description
                                      :member-name "Description")
                                     (select-parameters :target-type
                                      select-parameters :member-name
                                      "SelectParameters")
                                     (output-location :target-type
                                      output-location :member-name
                                      "OutputLocation"))
                                    (:shape-name "RestoreRequest"))

(smithy/sdk/shapes:define-enum restore-request-type
    common-lisp:nil
  (:select "SELECT"))

(smithy/sdk/shapes:define-structure restore-status common-lisp:nil
                                    ((is-restore-in-progress :target-type
                                      is-restore-in-progress :member-name
                                      "IsRestoreInProgress")
                                     (restore-expiry-date :target-type
                                      restore-expiry-date :member-name
                                      "RestoreExpiryDate"))
                                    (:shape-name "RestoreStatus"))

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure routing-rule common-lisp:nil
                                    ((condition :target-type condition
                                      :member-name "Condition")
                                     (redirect :target-type redirect :required
                                      common-lisp:t :member-name "Redirect"))
                                    (:shape-name "RoutingRule"))

(smithy/sdk/shapes:define-list routing-rules :member
                               (routing-rule :xml-name "RoutingRule"))

(smithy/sdk/shapes:define-structure s3key-filter common-lisp:nil
                                    ((filter-rules :target-type
                                      filter-rule-list :member-name
                                      "FilterRules" :xml-name "FilterRule"
                                      :xml-flattened common-lisp:t))
                                    (:shape-name "S3KeyFilter"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (prefix :target-type location-prefix
                                      :required common-lisp:t :member-name
                                      "Prefix")
                                     (encryption :target-type encryption
                                      :member-name "Encryption")
                                     (canned-acl :target-type object-canned-acl
                                      :member-name "CannedACL")
                                     (access-control-list :target-type grants
                                      :member-name "AccessControlList")
                                     (tagging :target-type tagging :member-name
                                      "Tagging")
                                     (user-metadata :target-type user-metadata
                                      :member-name "UserMetadata")
                                     (storage-class :target-type storage-class
                                      :member-name "StorageClass"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3regional-or-s3express-bucket-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3tables-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3tables-bucket-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3tables-bucket-type
    common-lisp:nil
  (:aws "aws")
  (:customer "customer"))

(smithy/sdk/shapes:define-structure s3tables-destination common-lisp:nil
                                    ((table-bucket-arn :target-type
                                      s3tables-bucket-arn :required
                                      common-lisp:t :member-name
                                      "TableBucketArn")
                                     (table-name :target-type s3tables-name
                                      :required common-lisp:t :member-name
                                      "TableName"))
                                    (:shape-name "S3TablesDestination"))

(smithy/sdk/shapes:define-structure s3tables-destination-result common-lisp:nil
                                    ((table-bucket-arn :target-type
                                      s3tables-bucket-arn :required
                                      common-lisp:t :member-name
                                      "TableBucketArn")
                                     (table-name :target-type s3tables-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (table-arn :target-type s3tables-arn
                                      :required common-lisp:t :member-name
                                      "TableArn")
                                     (table-namespace :target-type
                                      s3tables-namespace :required
                                      common-lisp:t :member-name
                                      "TableNamespace"))
                                    (:shape-name "S3TablesDestinationResult"))

(smithy/sdk/shapes:define-type s3tables-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3tables-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssecustomer-algorithm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssecustomer-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssecustomer-key-md5
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssekms common-lisp:nil
                                    ((key-id :target-type ssekmskey-id
                                      :required common-lisp:t :member-name
                                      "KeyId"))
                                    (:shape-name "SSEKMS")
                                    (:xml-name "SSE-KMS"))

(smithy/sdk/shapes:define-type ssekmsencryption-context
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssekmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sses3 common-lisp:nil common-lisp:nil
                                    (:shape-name "SSES3") (:xml-name "SSE-S3"))

(smithy/sdk/shapes:define-structure scan-range common-lisp:nil
                                    ((start :target-type start :member-name
                                      "Start")
                                     (end :target-type end :member-name "End"))
                                    (:shape-name "ScanRange"))

(smithy/sdk/shapes:define-union select-object-content-event-stream
                                common-lisp:nil
                                ((records :target-type records-event
                                  :member-name "Records")
                                 (stats :target-type stats-event :member-name
                                  "Stats")
                                 (progress :target-type progress-event
                                  :member-name "Progress")
                                 (cont :target-type continuation-event
                                  :member-name "Cont")
                                 (end :target-type end-event :member-name
                                  "End"))
                                (:shape-name "SelectObjectContentEventStream"))

(smithy/sdk/shapes:define-output select-object-content-output common-lisp:nil
                                 ((payload :target-type
                                   select-object-content-event-stream
                                   :member-name "Payload" :http-payload
                                   common-lisp:t))
                                 (:shape-name "SelectObjectContentOutput"))

(smithy/sdk/shapes:define-input select-object-content-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression")
                                 (expression-type :target-type expression-type
                                  :required common-lisp:t :member-name
                                  "ExpressionType")
                                 (request-progress :target-type
                                  request-progress :member-name
                                  "RequestProgress")
                                 (input-serialization :target-type
                                  input-serialization :required common-lisp:t
                                  :member-name "InputSerialization")
                                 (output-serialization :target-type
                                  output-serialization :required common-lisp:t
                                  :member-name "OutputSerialization")
                                 (scan-range :target-type scan-range
                                  :member-name "ScanRange")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "SelectObjectContentRequest"))

(smithy/sdk/shapes:define-structure select-parameters common-lisp:nil
                                    ((input-serialization :target-type
                                      input-serialization :required
                                      common-lisp:t :member-name
                                      "InputSerialization")
                                     (expression-type :target-type
                                      expression-type :required common-lisp:t
                                      :member-name "ExpressionType")
                                     (expression :target-type expression
                                      :required common-lisp:t :member-name
                                      "Expression")
                                     (output-serialization :target-type
                                      output-serialization :required
                                      common-lisp:t :member-name
                                      "OutputSerialization"))
                                    (:shape-name "SelectParameters"))

(smithy/sdk/shapes:define-enum server-side-encryption
    common-lisp:nil
  (:aes256 "AES256")
  (:aws-fsx "aws:fsx")
  (:aws-kms "aws:kms")
  (:aws-kms-dsse "aws:kms:dsse"))

(smithy/sdk/shapes:define-structure server-side-encryption-by-default
                                    common-lisp:nil
                                    ((ssealgorithm :target-type
                                      server-side-encryption :required
                                      common-lisp:t :member-name
                                      "SSEAlgorithm")
                                     (kmsmaster-key-id :target-type
                                      ssekmskey-id :member-name
                                      "KMSMasterKeyID"))
                                    (:shape-name
                                     "ServerSideEncryptionByDefault"))

(smithy/sdk/shapes:define-structure server-side-encryption-configuration
                                    common-lisp:nil
                                    ((rules :target-type
                                      server-side-encryption-rules :required
                                      common-lisp:t :member-name "Rules"
                                      :xml-name "Rule" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name
                                     "ServerSideEncryptionConfiguration"))

(smithy/sdk/shapes:define-structure server-side-encryption-rule common-lisp:nil
                                    ((apply-server-side-encryption-by-default
                                      :target-type
                                      server-side-encryption-by-default
                                      :member-name
                                      "ApplyServerSideEncryptionByDefault")
                                     (bucket-key-enabled :target-type
                                      bucket-key-enabled :member-name
                                      "BucketKeyEnabled"))
                                    (:shape-name "ServerSideEncryptionRule"))

(smithy/sdk/shapes:define-list server-side-encryption-rules :member
                               server-side-encryption-rule)

(smithy/sdk/shapes:define-type session-credential-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      access-key-id-value :required
                                      common-lisp:t :member-name "AccessKeyId"
                                      :xml-name "AccessKeyId")
                                     (secret-access-key :target-type
                                      session-credential-value :required
                                      common-lisp:t :member-name
                                      "SecretAccessKey" :xml-name
                                      "SecretAccessKey")
                                     (session-token :target-type
                                      session-credential-value :required
                                      common-lisp:t :member-name "SessionToken"
                                      :xml-name "SessionToken")
                                     (expiration :target-type
                                      session-expiration :required
                                      common-lisp:t :member-name "Expiration"
                                      :xml-name "Expiration"))
                                    (:shape-name "SessionCredentials"))

(smithy/sdk/shapes:define-type session-expiration
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum session-mode
    common-lisp:nil
  (:read-only "ReadOnly")
  (:read-write "ReadWrite"))

(smithy/sdk/shapes:define-type setting smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure simple-prefix common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "SimplePrefix")
                                    (:xml-name "SimplePrefix"))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type skip-validation smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure source-selection-criteria common-lisp:nil
                                    ((sse-kms-encrypted-objects :target-type
                                      sse-kms-encrypted-objects :member-name
                                      "SseKmsEncryptedObjects")
                                     (replica-modifications :target-type
                                      replica-modifications :member-name
                                      "ReplicaModifications"))
                                    (:shape-name "SourceSelectionCriteria"))

(smithy/sdk/shapes:define-structure sse-kms-encrypted-objects common-lisp:nil
                                    ((status :target-type
                                      sse-kms-encrypted-objects-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "SseKmsEncryptedObjects"))

(smithy/sdk/shapes:define-enum sse-kms-encrypted-objects-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type start smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type start-after smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stats common-lisp:nil
                                    ((bytes-scanned :target-type bytes-scanned
                                      :member-name "BytesScanned")
                                     (bytes-processed :target-type
                                      bytes-processed :member-name
                                      "BytesProcessed")
                                     (bytes-returned :target-type
                                      bytes-returned :member-name
                                      "BytesReturned"))
                                    (:shape-name "Stats"))

(smithy/sdk/shapes:define-structure stats-event common-lisp:nil
                                    ((details :target-type stats :member-name
                                      "Details"))
                                    (:shape-name "StatsEvent"))

(smithy/sdk/shapes:define-enum storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:glacier "GLACIER")
  (:deep-archive "DEEP_ARCHIVE")
  (:outposts "OUTPOSTS")
  (:glacier-ir "GLACIER_IR")
  (:snow "SNOW")
  (:express-onezone "EXPRESS_ONEZONE")
  (:fsx-openzfs "FSX_OPENZFS"))

(smithy/sdk/shapes:define-structure storage-class-analysis common-lisp:nil
                                    ((data-export :target-type
                                      storage-class-analysis-data-export
                                      :member-name "DataExport"))
                                    (:shape-name "StorageClassAnalysis"))

(smithy/sdk/shapes:define-structure storage-class-analysis-data-export
                                    common-lisp:nil
                                    ((output-schema-version :target-type
                                      storage-class-analysis-schema-version
                                      :required common-lisp:t :member-name
                                      "OutputSchemaVersion")
                                     (destination :target-type
                                      analytics-export-destination :required
                                      common-lisp:t :member-name
                                      "Destination"))
                                    (:shape-name
                                     "StorageClassAnalysisDataExport"))

(smithy/sdk/shapes:define-enum storage-class-analysis-schema-version
    common-lisp:nil
  (:v-1 "V_1"))

(smithy/sdk/shapes:define-type streaming-blob smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type suffix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum table-sse-algorithm
    common-lisp:nil
  (:aws-kms "aws:kms")
  (:aes256 "AES256"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type object-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list tag-set :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-structure tagging common-lisp:nil
                                    ((tag-set :target-type tag-set :required
                                      common-lisp:t :member-name "TagSet"))
                                    (:shape-name "Tagging"))

(smithy/sdk/shapes:define-enum tagging-directive
    common-lisp:nil
  (:copy "COPY")
  (:replace "REPLACE"))

(smithy/sdk/shapes:define-type tagging-header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-grant common-lisp:nil
                                    ((grantee :target-type grantee :member-name
                                      "Grantee" :xml-namespace
                                      (:uri
                                       "http://www.w3.org/2001/XMLSchema-instance"
                                       :prefix "xsi"))
                                     (permission :target-type
                                      bucket-logs-permission :member-name
                                      "Permission"))
                                    (:shape-name "TargetGrant"))

(smithy/sdk/shapes:define-list target-grants :member
                               (target-grant :xml-name "Grant"))

(smithy/sdk/shapes:define-structure target-object-key-format common-lisp:nil
                                    ((simple-prefix :target-type simple-prefix
                                      :member-name "SimplePrefix" :xml-name
                                      "SimplePrefix")
                                     (partitioned-prefix :target-type
                                      partitioned-prefix :member-name
                                      "PartitionedPrefix" :xml-name
                                      "PartitionedPrefix"))
                                    (:shape-name "TargetObjectKeyFormat"))

(smithy/sdk/shapes:define-type target-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum tier
    common-lisp:nil
  (:standard "Standard")
  (:bulk "Bulk")
  (:expedited "Expedited"))

(smithy/sdk/shapes:define-structure tiering common-lisp:nil
                                    ((days :target-type
                                      intelligent-tiering-days :required
                                      common-lisp:t :member-name "Days")
                                     (access-tier :target-type
                                      intelligent-tiering-access-tier :required
                                      common-lisp:t :member-name "AccessTier"))
                                    (:shape-name "Tiering"))

(smithy/sdk/shapes:define-list tiering-list :member tiering)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-parts common-lisp:nil common-lisp:nil
                                (:shape-name "TooManyParts") (:error-code 400))

(smithy/sdk/shapes:define-type topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure topic-configuration common-lisp:nil
                                    ((id :target-type notification-id
                                      :member-name "Id")
                                     (topic-arn :target-type topic-arn
                                      :required common-lisp:t :member-name
                                      "TopicArn" :xml-name "Topic")
                                     (events :target-type event-list :required
                                      common-lisp:t :member-name "Events"
                                      :xml-name "Event" :xml-flattened
                                      common-lisp:t)
                                     (filter :target-type
                                      notification-configuration-filter
                                      :member-name "Filter"))
                                    (:shape-name "TopicConfiguration"))

(smithy/sdk/shapes:define-list topic-configuration-list :member
                               topic-configuration)

(smithy/sdk/shapes:define-structure transition common-lisp:nil
                                    ((date :target-type date :member-name
                                      "Date")
                                     (days :target-type days :member-name
                                      "Days")
                                     (storage-class :target-type
                                      transition-storage-class :member-name
                                      "StorageClass"))
                                    (:shape-name "Transition"))

(smithy/sdk/shapes:define-enum transition-default-minimum-object-size
    common-lisp:nil
  (:varies-by-storage-class "varies_by_storage_class")
  (:all-storage-classes-128k "all_storage_classes_128K"))

(smithy/sdk/shapes:define-list transition-list :member transition)

(smithy/sdk/shapes:define-enum transition-storage-class
    common-lisp:nil
  (:glacier "GLACIER")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:deep-archive "DEEP_ARCHIVE")
  (:glacier-ir "GLACIER_IR"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:canonical-user "CanonicalUser")
  (:amazon-customer-by-email "AmazonCustomerByEmail")
  (:group "Group"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 update-bucket-metadata-inventory-table-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (content-md5 :target-type content-md5 :member-name "ContentMD5" :http-header
   "Content-MD5")
  (checksum-algorithm :target-type checksum-algorithm :member-name
   "ChecksumAlgorithm" :http-header "x-amz-sdk-checksum-algorithm")
  (inventory-table-configuration :target-type
   inventory-table-configuration-updates :required common-lisp:t :member-name
   "InventoryTableConfiguration" :http-payload common-lisp:t :xml-name
   "InventoryTableConfiguration")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "UpdateBucketMetadataInventoryTableConfigurationRequest"))

(smithy/sdk/shapes:define-input
 update-bucket-metadata-journal-table-configuration-request common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "Bucket" :http-label common-lisp:t)
  (content-md5 :target-type content-md5 :member-name "ContentMD5" :http-header
   "Content-MD5")
  (checksum-algorithm :target-type checksum-algorithm :member-name
   "ChecksumAlgorithm" :http-header "x-amz-sdk-checksum-algorithm")
  (journal-table-configuration :target-type journal-table-configuration-updates
   :required common-lisp:t :member-name "JournalTableConfiguration"
   :http-payload common-lisp:t :xml-name "JournalTableConfiguration")
  (expected-bucket-owner :target-type account-id :member-name
   "ExpectedBucketOwner" :http-header "x-amz-expected-bucket-owner"))
 (:shape-name "UpdateBucketMetadataJournalTableConfigurationRequest"))

(smithy/sdk/shapes:define-type upload-id-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output upload-part-copy-output common-lisp:nil
                                 ((copy-source-version-id :target-type
                                   copy-source-version-id :member-name
                                   "CopySourceVersionId" :http-header
                                   "x-amz-copy-source-version-id")
                                  (copy-part-result :target-type
                                   copy-part-result :member-name
                                   "CopyPartResult" :http-payload
                                   common-lisp:t)
                                  (server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "UploadPartCopyOutput"))

(smithy/sdk/shapes:define-input upload-part-copy-request common-lisp:nil
                                ((bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (copy-source :target-type copy-source
                                  :required common-lisp:t :member-name
                                  "CopySource" :http-header
                                  "x-amz-copy-source")
                                 (copy-source-if-match :target-type
                                  copy-source-if-match :member-name
                                  "CopySourceIfMatch" :http-header
                                  "x-amz-copy-source-if-match")
                                 (copy-source-if-modified-since :target-type
                                  copy-source-if-modified-since :member-name
                                  "CopySourceIfModifiedSince" :http-header
                                  "x-amz-copy-source-if-modified-since")
                                 (copy-source-if-none-match :target-type
                                  copy-source-if-none-match :member-name
                                  "CopySourceIfNoneMatch" :http-header
                                  "x-amz-copy-source-if-none-match")
                                 (copy-source-if-unmodified-since :target-type
                                  copy-source-if-unmodified-since :member-name
                                  "CopySourceIfUnmodifiedSince" :http-header
                                  "x-amz-copy-source-if-unmodified-since")
                                 (copy-source-range :target-type
                                  copy-source-range :member-name
                                  "CopySourceRange" :http-header
                                  "x-amz-copy-source-range")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (part-number :target-type part-number
                                  :required common-lisp:t :member-name
                                  "PartNumber" :http-query "partNumber")
                                 (upload-id :target-type multipart-upload-id
                                  :required common-lisp:t :member-name
                                  "UploadId" :http-query "uploadId")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (copy-source-ssecustomer-algorithm
                                  :target-type
                                  copy-source-ssecustomer-algorithm
                                  :member-name "CopySourceSSECustomerAlgorithm"
                                  :http-header
                                  "x-amz-copy-source-server-side-encryption-customer-algorithm")
                                 (copy-source-ssecustomer-key :target-type
                                  copy-source-ssecustomer-key :member-name
                                  "CopySourceSSECustomerKey" :http-header
                                  "x-amz-copy-source-server-side-encryption-customer-key")
                                 (copy-source-ssecustomer-key-md5 :target-type
                                  copy-source-ssecustomer-key-md5 :member-name
                                  "CopySourceSSECustomerKeyMD5" :http-header
                                  "x-amz-copy-source-server-side-encryption-customer-key-MD5")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner")
                                 (expected-source-bucket-owner :target-type
                                  account-id :member-name
                                  "ExpectedSourceBucketOwner" :http-header
                                  "x-amz-source-expected-bucket-owner"))
                                (:shape-name "UploadPartCopyRequest"))

(smithy/sdk/shapes:define-output upload-part-output common-lisp:nil
                                 ((server-side-encryption :target-type
                                   server-side-encryption :member-name
                                   "ServerSideEncryption" :http-header
                                   "x-amz-server-side-encryption")
                                  (etag :target-type etag :member-name "ETag"
                                   :http-header "ETag")
                                  (checksum-crc32 :target-type checksum-crc32
                                   :member-name "ChecksumCRC32" :http-header
                                   "x-amz-checksum-crc32")
                                  (checksum-crc32c :target-type checksum-crc32c
                                   :member-name "ChecksumCRC32C" :http-header
                                   "x-amz-checksum-crc32c")
                                  (checksum-crc64nvme :target-type
                                   checksum-crc64nvme :member-name
                                   "ChecksumCRC64NVME" :http-header
                                   "x-amz-checksum-crc64nvme")
                                  (checksum-sha1 :target-type checksum-sha1
                                   :member-name "ChecksumSHA1" :http-header
                                   "x-amz-checksum-sha1")
                                  (checksum-sha256 :target-type checksum-sha256
                                   :member-name "ChecksumSHA256" :http-header
                                   "x-amz-checksum-sha256")
                                  (ssecustomer-algorithm :target-type
                                   ssecustomer-algorithm :member-name
                                   "SSECustomerAlgorithm" :http-header
                                   "x-amz-server-side-encryption-customer-algorithm")
                                  (ssecustomer-key-md5 :target-type
                                   ssecustomer-key-md5 :member-name
                                   "SSECustomerKeyMD5" :http-header
                                   "x-amz-server-side-encryption-customer-key-MD5")
                                  (ssekmskey-id :target-type ssekmskey-id
                                   :member-name "SSEKMSKeyId" :http-header
                                   "x-amz-server-side-encryption-aws-kms-key-id")
                                  (bucket-key-enabled :target-type
                                   bucket-key-enabled :member-name
                                   "BucketKeyEnabled" :http-header
                                   "x-amz-server-side-encryption-bucket-key-enabled")
                                  (request-charged :target-type request-charged
                                   :member-name "RequestCharged" :http-header
                                   "x-amz-request-charged"))
                                 (:shape-name "UploadPartOutput"))

(smithy/sdk/shapes:define-input upload-part-request common-lisp:nil
                                ((body :target-type streaming-blob :member-name
                                  "Body" :http-payload common-lisp:t)
                                 (bucket :target-type bucket-name :required
                                  common-lisp:t :member-name "Bucket"
                                  :http-label common-lisp:t)
                                 (content-length :target-type content-length
                                  :member-name "ContentLength" :http-header
                                  "Content-Length")
                                 (content-md5 :target-type content-md5
                                  :member-name "ContentMD5" :http-header
                                  "Content-MD5")
                                 (checksum-algorithm :target-type
                                  checksum-algorithm :member-name
                                  "ChecksumAlgorithm" :http-header
                                  "x-amz-sdk-checksum-algorithm")
                                 (checksum-crc32 :target-type checksum-crc32
                                  :member-name "ChecksumCRC32" :http-header
                                  "x-amz-checksum-crc32")
                                 (checksum-crc32c :target-type checksum-crc32c
                                  :member-name "ChecksumCRC32C" :http-header
                                  "x-amz-checksum-crc32c")
                                 (checksum-crc64nvme :target-type
                                  checksum-crc64nvme :member-name
                                  "ChecksumCRC64NVME" :http-header
                                  "x-amz-checksum-crc64nvme")
                                 (checksum-sha1 :target-type checksum-sha1
                                  :member-name "ChecksumSHA1" :http-header
                                  "x-amz-checksum-sha1")
                                 (checksum-sha256 :target-type checksum-sha256
                                  :member-name "ChecksumSHA256" :http-header
                                  "x-amz-checksum-sha256")
                                 (key :target-type object-key :required
                                  common-lisp:t :member-name "Key" :http-label
                                  common-lisp:t)
                                 (part-number :target-type part-number
                                  :required common-lisp:t :member-name
                                  "PartNumber" :http-query "partNumber")
                                 (upload-id :target-type multipart-upload-id
                                  :required common-lisp:t :member-name
                                  "UploadId" :http-query "uploadId")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-server-side-encryption-customer-algorithm")
                                 (ssecustomer-key :target-type ssecustomer-key
                                  :member-name "SSECustomerKey" :http-header
                                  "x-amz-server-side-encryption-customer-key")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-server-side-encryption-customer-key-MD5")
                                 (request-payer :target-type request-payer
                                  :member-name "RequestPayer" :http-header
                                  "x-amz-request-payer")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner"
                                  :http-header "x-amz-expected-bucket-owner"))
                                (:shape-name "UploadPartRequest"))

(smithy/sdk/shapes:define-list user-metadata :member
                               (metadata-entry :xml-name "MetadataEntry"))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type version-id-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure versioning-configuration common-lisp:nil
                                    ((mfadelete :target-type mfadelete
                                      :member-name "MFADelete" :xml-name
                                      "MfaDelete")
                                     (status :target-type
                                      bucket-versioning-status :member-name
                                      "Status"))
                                    (:shape-name "VersioningConfiguration"))

(smithy/sdk/shapes:define-structure website-configuration common-lisp:nil
                                    ((error-document :target-type
                                      error-document :member-name
                                      "ErrorDocument")
                                     (index-document :target-type
                                      index-document :member-name
                                      "IndexDocument")
                                     (redirect-all-requests-to :target-type
                                      redirect-all-requests-to :member-name
                                      "RedirectAllRequestsTo")
                                     (routing-rules :target-type routing-rules
                                      :member-name "RoutingRules"))
                                    (:shape-name "WebsiteConfiguration"))

(smithy/sdk/shapes:define-type website-redirect-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input write-get-object-response-request
                                common-lisp:nil
                                ((request-route :target-type request-route
                                  :required common-lisp:t :member-name
                                  "RequestRoute" :host-label common-lisp:t
                                  :http-header "x-amz-request-route")
                                 (request-token :target-type request-token
                                  :required common-lisp:t :member-name
                                  "RequestToken" :http-header
                                  "x-amz-request-token")
                                 (body :target-type streaming-blob :member-name
                                  "Body" :http-payload common-lisp:t)
                                 (status-code :target-type
                                  get-object-response-status-code :member-name
                                  "StatusCode" :http-header "x-amz-fwd-status")
                                 (error-code :target-type error-code
                                  :member-name "ErrorCode" :http-header
                                  "x-amz-fwd-error-code")
                                 (error-message :target-type error-message
                                  :member-name "ErrorMessage" :http-header
                                  "x-amz-fwd-error-message")
                                 (accept-ranges :target-type accept-ranges
                                  :member-name "AcceptRanges" :http-header
                                  "x-amz-fwd-header-accept-ranges")
                                 (cache-control :target-type cache-control
                                  :member-name "CacheControl" :http-header
                                  "x-amz-fwd-header-Cache-Control")
                                 (content-disposition :target-type
                                  content-disposition :member-name
                                  "ContentDisposition" :http-header
                                  "x-amz-fwd-header-Content-Disposition")
                                 (content-encoding :target-type
                                  content-encoding :member-name
                                  "ContentEncoding" :http-header
                                  "x-amz-fwd-header-Content-Encoding")
                                 (content-language :target-type
                                  content-language :member-name
                                  "ContentLanguage" :http-header
                                  "x-amz-fwd-header-Content-Language")
                                 (content-length :target-type content-length
                                  :member-name "ContentLength" :http-header
                                  "Content-Length")
                                 (content-range :target-type content-range
                                  :member-name "ContentRange" :http-header
                                  "x-amz-fwd-header-Content-Range")
                                 (content-type :target-type content-type
                                  :member-name "ContentType" :http-header
                                  "x-amz-fwd-header-Content-Type")
                                 (checksum-crc32 :target-type checksum-crc32
                                  :member-name "ChecksumCRC32" :http-header
                                  "x-amz-fwd-header-x-amz-checksum-crc32")
                                 (checksum-crc32c :target-type checksum-crc32c
                                  :member-name "ChecksumCRC32C" :http-header
                                  "x-amz-fwd-header-x-amz-checksum-crc32c")
                                 (checksum-crc64nvme :target-type
                                  checksum-crc64nvme :member-name
                                  "ChecksumCRC64NVME" :http-header
                                  "x-amz-fwd-header-x-amz-checksum-crc64nvme")
                                 (checksum-sha1 :target-type checksum-sha1
                                  :member-name "ChecksumSHA1" :http-header
                                  "x-amz-fwd-header-x-amz-checksum-sha1")
                                 (checksum-sha256 :target-type checksum-sha256
                                  :member-name "ChecksumSHA256" :http-header
                                  "x-amz-fwd-header-x-amz-checksum-sha256")
                                 (delete-marker :target-type delete-marker
                                  :member-name "DeleteMarker" :http-header
                                  "x-amz-fwd-header-x-amz-delete-marker")
                                 (etag :target-type etag :member-name "ETag"
                                  :http-header "x-amz-fwd-header-ETag")
                                 (expires :target-type expires :member-name
                                  "Expires" :http-header
                                  "x-amz-fwd-header-Expires")
                                 (expiration :target-type expiration
                                  :member-name "Expiration" :http-header
                                  "x-amz-fwd-header-x-amz-expiration")
                                 (last-modified :target-type last-modified
                                  :member-name "LastModified" :http-header
                                  "x-amz-fwd-header-Last-Modified")
                                 (missing-meta :target-type missing-meta
                                  :member-name "MissingMeta" :http-header
                                  "x-amz-fwd-header-x-amz-missing-meta")
                                 (metadata :target-type metadata :member-name
                                  "Metadata" :http-prefix-headers
                                  "x-amz-meta-")
                                 (object-lock-mode :target-type
                                  object-lock-mode :member-name
                                  "ObjectLockMode" :http-header
                                  "x-amz-fwd-header-x-amz-object-lock-mode")
                                 (object-lock-legal-hold-status :target-type
                                  object-lock-legal-hold-status :member-name
                                  "ObjectLockLegalHoldStatus" :http-header
                                  "x-amz-fwd-header-x-amz-object-lock-legal-hold")
                                 (object-lock-retain-until-date :target-type
                                  object-lock-retain-until-date :member-name
                                  "ObjectLockRetainUntilDate" :http-header
                                  "x-amz-fwd-header-x-amz-object-lock-retain-until-date")
                                 (parts-count :target-type parts-count
                                  :member-name "PartsCount" :http-header
                                  "x-amz-fwd-header-x-amz-mp-parts-count")
                                 (replication-status :target-type
                                  replication-status :member-name
                                  "ReplicationStatus" :http-header
                                  "x-amz-fwd-header-x-amz-replication-status")
                                 (request-charged :target-type request-charged
                                  :member-name "RequestCharged" :http-header
                                  "x-amz-fwd-header-x-amz-request-charged")
                                 (restore :target-type restore :member-name
                                  "Restore" :http-header
                                  "x-amz-fwd-header-x-amz-restore")
                                 (server-side-encryption :target-type
                                  server-side-encryption :member-name
                                  "ServerSideEncryption" :http-header
                                  "x-amz-fwd-header-x-amz-server-side-encryption")
                                 (ssecustomer-algorithm :target-type
                                  ssecustomer-algorithm :member-name
                                  "SSECustomerAlgorithm" :http-header
                                  "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm")
                                 (ssekmskey-id :target-type ssekmskey-id
                                  :member-name "SSEKMSKeyId" :http-header
                                  "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id")
                                 (ssecustomer-key-md5 :target-type
                                  ssecustomer-key-md5 :member-name
                                  "SSECustomerKeyMD5" :http-header
                                  "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5")
                                 (storage-class :target-type storage-class
                                  :member-name "StorageClass" :http-header
                                  "x-amz-fwd-header-x-amz-storage-class")
                                 (tag-count :target-type tag-count :member-name
                                  "TagCount" :http-header
                                  "x-amz-fwd-header-x-amz-tagging-count")
                                 (version-id :target-type object-version-id
                                  :member-name "VersionId" :http-header
                                  "x-amz-fwd-header-x-amz-version-id")
                                 (bucket-key-enabled :target-type
                                  bucket-key-enabled :member-name
                                  "BucketKeyEnabled" :http-header
                                  "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled"))
                                (:shape-name "WriteGetObjectResponseRequest"))

(smithy/sdk/shapes:define-type write-offset-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type years smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation abort-multipart-upload :shape-name
                                       "AbortMultipartUpload" :input
                                       abort-multipart-upload-request :output
                                       abort-multipart-upload-output :errors
                                       (no-such-upload) :method "DELETE" :uri
                                       "/{Bucket}/{Key+}?x-id=AbortMultipartUpload"
                                       :code 204)

(smithy/sdk/operation:define-operation complete-multipart-upload :shape-name
                                       "CompleteMultipartUpload" :input
                                       complete-multipart-upload-request
                                       :output complete-multipart-upload-output
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/{Bucket}/{Key+}" :code 200)

(smithy/sdk/operation:define-operation copy-object :shape-name "CopyObject"
                                       :input copy-object-request :output
                                       copy-object-output :errors
                                       (object-not-in-active-tier-error)
                                       :method "PUT" :uri
                                       "/{Bucket}/{Key+}?x-id=CopyObject" :code
                                       200)

(smithy/sdk/operation:define-operation create-bucket :shape-name "CreateBucket"
                                       :input create-bucket-request :output
                                       create-bucket-output :errors
                                       (bucket-already-exists
                                        bucket-already-owned-by-you)
                                       :method "PUT" :uri "/{Bucket}" :code 200)

(smithy/sdk/operation:define-operation create-bucket-metadata-configuration
                                       :shape-name
                                       "CreateBucketMetadataConfiguration"
                                       :input
                                       create-bucket-metadata-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/{Bucket}?metadataConfiguration" :code
                                       200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation
 create-bucket-metadata-table-configuration :shape-name
 "CreateBucketMetadataTableConfiguration" :input
 create-bucket-metadata-table-configuration-request :output common-lisp:null
 :errors common-lisp:nil :method "POST" :uri "/{Bucket}?metadataTable" :code
 200 :request-algorithm-member "ChecksumAlgorithm" :request-checksum-required
 common-lisp:t)

(smithy/sdk/operation:define-operation create-multipart-upload :shape-name
                                       "CreateMultipartUpload" :input
                                       create-multipart-upload-request :output
                                       create-multipart-upload-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/{Bucket}/{Key+}?uploads" :code 200)

(smithy/sdk/operation:define-operation create-session :shape-name
                                       "CreateSession" :input
                                       create-session-request :output
                                       create-session-output :errors
                                       (no-such-bucket) :method "GET" :uri
                                       "/{Bucket}?session" :code 200)

(smithy/sdk/operation:define-operation delete-bucket :shape-name "DeleteBucket"
                                       :input delete-bucket-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri "/{Bucket}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-bucket-analytics-configuration
                                       :shape-name
                                       "DeleteBucketAnalyticsConfiguration"
                                       :input
                                       delete-bucket-analytics-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?analytics" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-cors :shape-name
                                       "DeleteBucketCors" :input
                                       delete-bucket-cors-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri "/{Bucket}?cors"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-bucket-encryption :shape-name
                                       "DeleteBucketEncryption" :input
                                       delete-bucket-encryption-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/{Bucket}?encryption" :code 204)

(smithy/sdk/operation:define-operation
 delete-bucket-intelligent-tiering-configuration :shape-name
 "DeleteBucketIntelligentTieringConfiguration" :input
 delete-bucket-intelligent-tiering-configuration-request :output
 common-lisp:null :errors common-lisp:nil :method "DELETE" :uri
 "/{Bucket}?intelligent-tiering" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-inventory-configuration
                                       :shape-name
                                       "DeleteBucketInventoryConfiguration"
                                       :input
                                       delete-bucket-inventory-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?inventory" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-lifecycle :shape-name
                                       "DeleteBucketLifecycle" :input
                                       delete-bucket-lifecycle-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/{Bucket}?lifecycle" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-metadata-configuration
                                       :shape-name
                                       "DeleteBucketMetadataConfiguration"
                                       :input
                                       delete-bucket-metadata-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?metadataConfiguration" :code
                                       204)

(smithy/sdk/operation:define-operation
 delete-bucket-metadata-table-configuration :shape-name
 "DeleteBucketMetadataTableConfiguration" :input
 delete-bucket-metadata-table-configuration-request :output common-lisp:null
 :errors common-lisp:nil :method "DELETE" :uri "/{Bucket}?metadataTable" :code
 204)

(smithy/sdk/operation:define-operation delete-bucket-metrics-configuration
                                       :shape-name
                                       "DeleteBucketMetricsConfiguration"
                                       :input
                                       delete-bucket-metrics-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?metrics" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-ownership-controls
                                       :shape-name
                                       "DeleteBucketOwnershipControls" :input
                                       delete-bucket-ownership-controls-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?ownershipControls" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-policy :shape-name
                                       "DeleteBucketPolicy" :input
                                       delete-bucket-policy-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri "/{Bucket}?policy"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-bucket-replication :shape-name
                                       "DeleteBucketReplication" :input
                                       delete-bucket-replication-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?replication" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-tagging :shape-name
                                       "DeleteBucketTagging" :input
                                       delete-bucket-tagging-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/{Bucket}?tagging" :code 204)

(smithy/sdk/operation:define-operation delete-bucket-website :shape-name
                                       "DeleteBucketWebsite" :input
                                       delete-bucket-website-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/{Bucket}?website" :code 204)

(smithy/sdk/operation:define-operation delete-object :shape-name "DeleteObject"
                                       :input delete-object-request :output
                                       delete-object-output :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}/{Key+}?x-id=DeleteObject"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-object-tagging :shape-name
                                       "DeleteObjectTagging" :input
                                       delete-object-tagging-request :output
                                       delete-object-tagging-output :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}/{Key+}?tagging" :code 204)

(smithy/sdk/operation:define-operation delete-objects :shape-name
                                       "DeleteObjects" :input
                                       delete-objects-request :output
                                       delete-objects-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/{Bucket}?delete" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation delete-public-access-block :shape-name
                                       "DeletePublicAccessBlock" :input
                                       delete-public-access-block-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/{Bucket}?publicAccessBlock" :code 204)

(smithy/sdk/operation:define-operation get-bucket-accelerate-configuration
                                       :shape-name
                                       "GetBucketAccelerateConfiguration"
                                       :input
                                       get-bucket-accelerate-configuration-request
                                       :output
                                       get-bucket-accelerate-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?accelerate" :code 200)

(smithy/sdk/operation:define-operation get-bucket-acl :shape-name
                                       "GetBucketAcl" :input
                                       get-bucket-acl-request :output
                                       get-bucket-acl-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?acl" :code 200)

(smithy/sdk/operation:define-operation get-bucket-analytics-configuration
                                       :shape-name
                                       "GetBucketAnalyticsConfiguration" :input
                                       get-bucket-analytics-configuration-request
                                       :output
                                       get-bucket-analytics-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/{Bucket}?analytics&x-id=GetBucketAnalyticsConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-cors :shape-name
                                       "GetBucketCors" :input
                                       get-bucket-cors-request :output
                                       get-bucket-cors-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?cors" :code 200)

(smithy/sdk/operation:define-operation get-bucket-encryption :shape-name
                                       "GetBucketEncryption" :input
                                       get-bucket-encryption-request :output
                                       get-bucket-encryption-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?encryption" :code 200)

(smithy/sdk/operation:define-operation
 get-bucket-intelligent-tiering-configuration :shape-name
 "GetBucketIntelligentTieringConfiguration" :input
 get-bucket-intelligent-tiering-configuration-request :output
 get-bucket-intelligent-tiering-configuration-output :errors common-lisp:nil
 :method "GET" :uri
 "/{Bucket}?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration"
 :code 200)

(smithy/sdk/operation:define-operation get-bucket-inventory-configuration
                                       :shape-name
                                       "GetBucketInventoryConfiguration" :input
                                       get-bucket-inventory-configuration-request
                                       :output
                                       get-bucket-inventory-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/{Bucket}?inventory&x-id=GetBucketInventoryConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-lifecycle-configuration
                                       :shape-name
                                       "GetBucketLifecycleConfiguration" :input
                                       get-bucket-lifecycle-configuration-request
                                       :output
                                       get-bucket-lifecycle-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?lifecycle" :code 200)

(smithy/sdk/operation:define-operation get-bucket-location :shape-name
                                       "GetBucketLocation" :input
                                       get-bucket-location-request :output
                                       get-bucket-location-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?location" :code 200)

(smithy/sdk/operation:define-operation get-bucket-logging :shape-name
                                       "GetBucketLogging" :input
                                       get-bucket-logging-request :output
                                       get-bucket-logging-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?logging" :code 200)

(smithy/sdk/operation:define-operation get-bucket-metadata-configuration
                                       :shape-name
                                       "GetBucketMetadataConfiguration" :input
                                       get-bucket-metadata-configuration-request
                                       :output
                                       get-bucket-metadata-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?metadataConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-metadata-table-configuration
                                       :shape-name
                                       "GetBucketMetadataTableConfiguration"
                                       :input
                                       get-bucket-metadata-table-configuration-request
                                       :output
                                       get-bucket-metadata-table-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?metadataTable" :code 200)

(smithy/sdk/operation:define-operation get-bucket-metrics-configuration
                                       :shape-name
                                       "GetBucketMetricsConfiguration" :input
                                       get-bucket-metrics-configuration-request
                                       :output
                                       get-bucket-metrics-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/{Bucket}?metrics&x-id=GetBucketMetricsConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-notification-configuration
                                       :shape-name
                                       "GetBucketNotificationConfiguration"
                                       :input
                                       get-bucket-notification-configuration-request
                                       :output notification-configuration
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?notification" :code 200)

(smithy/sdk/operation:define-operation get-bucket-ownership-controls
                                       :shape-name "GetBucketOwnershipControls"
                                       :input
                                       get-bucket-ownership-controls-request
                                       :output
                                       get-bucket-ownership-controls-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?ownershipControls" :code
                                       200)

(smithy/sdk/operation:define-operation get-bucket-policy :shape-name
                                       "GetBucketPolicy" :input
                                       get-bucket-policy-request :output
                                       get-bucket-policy-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?policy" :code 200)

(smithy/sdk/operation:define-operation get-bucket-policy-status :shape-name
                                       "GetBucketPolicyStatus" :input
                                       get-bucket-policy-status-request :output
                                       get-bucket-policy-status-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?policyStatus" :code 200)

(smithy/sdk/operation:define-operation get-bucket-replication :shape-name
                                       "GetBucketReplication" :input
                                       get-bucket-replication-request :output
                                       get-bucket-replication-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?replication" :code 200)

(smithy/sdk/operation:define-operation get-bucket-request-payment :shape-name
                                       "GetBucketRequestPayment" :input
                                       get-bucket-request-payment-request
                                       :output
                                       get-bucket-request-payment-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?requestPayment" :code
                                       200)

(smithy/sdk/operation:define-operation get-bucket-tagging :shape-name
                                       "GetBucketTagging" :input
                                       get-bucket-tagging-request :output
                                       get-bucket-tagging-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?tagging" :code 200)

(smithy/sdk/operation:define-operation get-bucket-versioning :shape-name
                                       "GetBucketVersioning" :input
                                       get-bucket-versioning-request :output
                                       get-bucket-versioning-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?versioning" :code 200)

(smithy/sdk/operation:define-operation get-bucket-website :shape-name
                                       "GetBucketWebsite" :input
                                       get-bucket-website-request :output
                                       get-bucket-website-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?website" :code 200)

(smithy/sdk/operation:define-operation get-object :shape-name "GetObject"
                                       :input get-object-request :output
                                       get-object-output :errors
                                       (invalid-object-state no-such-key)
                                       :method "GET" :uri
                                       "/{Bucket}/{Key+}?x-id=GetObject" :code
                                       200 :request-checksum-required
                                       common-lisp:t
                                       :request-validation-mode-member
                                       "ChecksumMode" :response-algorithms
                                       '#("CRC64NVME" "CRC32" "CRC32C" "SHA256"
                                          "SHA1"))

(smithy/sdk/operation:define-operation get-object-acl :shape-name
                                       "GetObjectAcl" :input
                                       get-object-acl-request :output
                                       get-object-acl-output :errors
                                       (no-such-key) :method "GET" :uri
                                       "/{Bucket}/{Key+}?acl" :code 200)

(smithy/sdk/operation:define-operation get-object-attributes :shape-name
                                       "GetObjectAttributes" :input
                                       get-object-attributes-request :output
                                       get-object-attributes-output :errors
                                       (no-such-key) :method "GET" :uri
                                       "/{Bucket}/{Key+}?attributes" :code 200)

(smithy/sdk/operation:define-operation get-object-legal-hold :shape-name
                                       "GetObjectLegalHold" :input
                                       get-object-legal-hold-request :output
                                       get-object-legal-hold-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}/{Key+}?legal-hold" :code 200)

(smithy/sdk/operation:define-operation get-object-lock-configuration
                                       :shape-name "GetObjectLockConfiguration"
                                       :input
                                       get-object-lock-configuration-request
                                       :output
                                       get-object-lock-configuration-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/{Bucket}?object-lock" :code 200)

(smithy/sdk/operation:define-operation get-object-retention :shape-name
                                       "GetObjectRetention" :input
                                       get-object-retention-request :output
                                       get-object-retention-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}/{Key+}?retention" :code 200)

(smithy/sdk/operation:define-operation get-object-tagging :shape-name
                                       "GetObjectTagging" :input
                                       get-object-tagging-request :output
                                       get-object-tagging-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}/{Key+}?tagging" :code 200)

(smithy/sdk/operation:define-operation get-object-torrent :shape-name
                                       "GetObjectTorrent" :input
                                       get-object-torrent-request :output
                                       get-object-torrent-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}/{Key+}?torrent" :code 200)

(smithy/sdk/operation:define-operation get-public-access-block :shape-name
                                       "GetPublicAccessBlock" :input
                                       get-public-access-block-request :output
                                       get-public-access-block-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?publicAccessBlock" :code 200)

(smithy/sdk/operation:define-operation head-bucket :shape-name "HeadBucket"
                                       :input head-bucket-request :output
                                       head-bucket-output :errors (not-found)
                                       :method "HEAD" :uri "/{Bucket}" :code
                                       200)

(smithy/sdk/operation:define-operation head-object :shape-name "HeadObject"
                                       :input head-object-request :output
                                       head-object-output :errors (not-found)
                                       :method "HEAD" :uri "/{Bucket}/{Key+}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bucket-analytics-configurations
                                       :shape-name
                                       "ListBucketAnalyticsConfigurations"
                                       :input
                                       list-bucket-analytics-configurations-request
                                       :output
                                       list-bucket-analytics-configurations-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/{Bucket}?analytics&x-id=ListBucketAnalyticsConfigurations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-bucket-intelligent-tiering-configurations :shape-name
 "ListBucketIntelligentTieringConfigurations" :input
 list-bucket-intelligent-tiering-configurations-request :output
 list-bucket-intelligent-tiering-configurations-output :errors common-lisp:nil
 :method "GET" :uri
 "/{Bucket}?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations"
 :code 200)

(smithy/sdk/operation:define-operation list-bucket-inventory-configurations
                                       :shape-name
                                       "ListBucketInventoryConfigurations"
                                       :input
                                       list-bucket-inventory-configurations-request
                                       :output
                                       list-bucket-inventory-configurations-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/{Bucket}?inventory&x-id=ListBucketInventoryConfigurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bucket-metrics-configurations
                                       :shape-name
                                       "ListBucketMetricsConfigurations" :input
                                       list-bucket-metrics-configurations-request
                                       :output
                                       list-bucket-metrics-configurations-output
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/{Bucket}?metrics&x-id=ListBucketMetricsConfigurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-buckets :shape-name "ListBuckets"
                                       :input list-buckets-request :output
                                       list-buckets-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/?x-id=ListBuckets" :code 200)

(smithy/sdk/operation:define-operation list-directory-buckets :shape-name
                                       "ListDirectoryBuckets" :input
                                       list-directory-buckets-request :output
                                       list-directory-buckets-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/?x-id=ListDirectoryBuckets" :code 200)

(smithy/sdk/operation:define-operation list-multipart-uploads :shape-name
                                       "ListMultipartUploads" :input
                                       list-multipart-uploads-request :output
                                       list-multipart-uploads-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?uploads" :code 200)

(smithy/sdk/operation:define-operation list-object-versions :shape-name
                                       "ListObjectVersions" :input
                                       list-object-versions-request :output
                                       list-object-versions-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}?versions" :code 200)

(smithy/sdk/operation:define-operation list-objects :shape-name "ListObjects"
                                       :input list-objects-request :output
                                       list-objects-output :errors
                                       (no-such-bucket) :method "GET" :uri
                                       "/{Bucket}" :code 200)

(smithy/sdk/operation:define-operation list-objects-v2 :shape-name
                                       "ListObjectsV2" :input
                                       list-objects-v2request :output
                                       list-objects-v2output :errors
                                       (no-such-bucket) :method "GET" :uri
                                       "/{Bucket}?list-type=2" :code 200)

(smithy/sdk/operation:define-operation list-parts :shape-name "ListParts"
                                       :input list-parts-request :output
                                       list-parts-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/{Bucket}/{Key+}?x-id=ListParts" :code
                                       200)

(smithy/sdk/operation:define-operation put-bucket-accelerate-configuration
                                       :shape-name
                                       "PutBucketAccelerateConfiguration"
                                       :input
                                       put-bucket-accelerate-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?accelerate" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-acl :shape-name
                                       "PutBucketAcl" :input
                                       put-bucket-acl-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri "/{Bucket}?acl" :code
                                       200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-analytics-configuration
                                       :shape-name
                                       "PutBucketAnalyticsConfiguration" :input
                                       put-bucket-analytics-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?analytics" :code 200)

(smithy/sdk/operation:define-operation put-bucket-cors :shape-name
                                       "PutBucketCors" :input
                                       put-bucket-cors-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri "/{Bucket}?cors"
                                       :code 200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-encryption :shape-name
                                       "PutBucketEncryption" :input
                                       put-bucket-encryption-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/{Bucket}?encryption" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation
 put-bucket-intelligent-tiering-configuration :shape-name
 "PutBucketIntelligentTieringConfiguration" :input
 put-bucket-intelligent-tiering-configuration-request :output common-lisp:null
 :errors common-lisp:nil :method "PUT" :uri "/{Bucket}?intelligent-tiering"
 :code 200)

(smithy/sdk/operation:define-operation put-bucket-inventory-configuration
                                       :shape-name
                                       "PutBucketInventoryConfiguration" :input
                                       put-bucket-inventory-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?inventory" :code 200)

(smithy/sdk/operation:define-operation put-bucket-lifecycle-configuration
                                       :shape-name
                                       "PutBucketLifecycleConfiguration" :input
                                       put-bucket-lifecycle-configuration-request
                                       :output
                                       put-bucket-lifecycle-configuration-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/{Bucket}?lifecycle" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-logging :shape-name
                                       "PutBucketLogging" :input
                                       put-bucket-logging-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri "/{Bucket}?logging"
                                       :code 200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-metrics-configuration
                                       :shape-name
                                       "PutBucketMetricsConfiguration" :input
                                       put-bucket-metrics-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?metrics" :code 200)

(smithy/sdk/operation:define-operation put-bucket-notification-configuration
                                       :shape-name
                                       "PutBucketNotificationConfiguration"
                                       :input
                                       put-bucket-notification-configuration-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?notification" :code 200)

(smithy/sdk/operation:define-operation put-bucket-ownership-controls
                                       :shape-name "PutBucketOwnershipControls"
                                       :input
                                       put-bucket-ownership-controls-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?ownershipControls" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-policy :shape-name
                                       "PutBucketPolicy" :input
                                       put-bucket-policy-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri "/{Bucket}?policy"
                                       :code 200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-replication :shape-name
                                       "PutBucketReplication" :input
                                       put-bucket-replication-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/{Bucket}?replication" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-request-payment :shape-name
                                       "PutBucketRequestPayment" :input
                                       put-bucket-request-payment-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}?requestPayment" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-tagging :shape-name
                                       "PutBucketTagging" :input
                                       put-bucket-tagging-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri "/{Bucket}?tagging"
                                       :code 200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-versioning :shape-name
                                       "PutBucketVersioning" :input
                                       put-bucket-versioning-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/{Bucket}?versioning" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-bucket-website :shape-name
                                       "PutBucketWebsite" :input
                                       put-bucket-website-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri "/{Bucket}?website"
                                       :code 200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-object :shape-name "PutObject"
                                       :input put-object-request :output
                                       put-object-output :errors
                                       (encryption-type-mismatch
                                        invalid-request invalid-write-offset
                                        too-many-parts)
                                       :method "PUT" :uri
                                       "/{Bucket}/{Key+}?x-id=PutObject" :code
                                       200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-object-acl :shape-name
                                       "PutObjectAcl" :input
                                       put-object-acl-request :output
                                       put-object-acl-output :errors
                                       (no-such-key) :method "PUT" :uri
                                       "/{Bucket}/{Key+}?acl" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-object-legal-hold :shape-name
                                       "PutObjectLegalHold" :input
                                       put-object-legal-hold-request :output
                                       put-object-legal-hold-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}/{Key+}?legal-hold" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-object-lock-configuration
                                       :shape-name "PutObjectLockConfiguration"
                                       :input
                                       put-object-lock-configuration-request
                                       :output
                                       put-object-lock-configuration-output
                                       :errors common-lisp:nil :method "PUT"
                                       :uri "/{Bucket}?object-lock" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-object-retention :shape-name
                                       "PutObjectRetention" :input
                                       put-object-retention-request :output
                                       put-object-retention-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}/{Key+}?retention" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-object-tagging :shape-name
                                       "PutObjectTagging" :input
                                       put-object-tagging-request :output
                                       put-object-tagging-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}/{Key+}?tagging" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation put-public-access-block :shape-name
                                       "PutPublicAccessBlock" :input
                                       put-public-access-block-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "PUT" :uri
                                       "/{Bucket}?publicAccessBlock" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation rename-object :shape-name "RenameObject"
                                       :input rename-object-request :output
                                       rename-object-output :errors
                                       (idempotency-parameter-mismatch) :method
                                       "PUT" :uri
                                       "/{Bucket}/{Key+}?renameObject" :code
                                       200)

(smithy/sdk/operation:define-operation restore-object :shape-name
                                       "RestoreObject" :input
                                       restore-object-request :output
                                       restore-object-output :errors
                                       (object-already-in-active-tier-error)
                                       :method "POST" :uri
                                       "/{Bucket}/{Key+}?restore" :code 200
                                       :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation select-object-content :shape-name
                                       "SelectObjectContent" :input
                                       select-object-content-request :output
                                       select-object-content-output :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/{Bucket}/{Key+}?select&select-type=2"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-bucket-metadata-inventory-table-configuration :shape-name
 "UpdateBucketMetadataInventoryTableConfiguration" :input
 update-bucket-metadata-inventory-table-configuration-request :output
 common-lisp:null :errors common-lisp:nil :method "PUT" :uri
 "/{Bucket}?metadataInventoryTable" :code 200 :request-algorithm-member
 "ChecksumAlgorithm" :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation
 update-bucket-metadata-journal-table-configuration :shape-name
 "UpdateBucketMetadataJournalTableConfiguration" :input
 update-bucket-metadata-journal-table-configuration-request :output
 common-lisp:null :errors common-lisp:nil :method "PUT" :uri
 "/{Bucket}?metadataJournalTable" :code 200 :request-algorithm-member
 "ChecksumAlgorithm" :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation upload-part :shape-name "UploadPart"
                                       :input upload-part-request :output
                                       upload-part-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}/{Key+}?x-id=UploadPart" :code
                                       200 :request-algorithm-member
                                       "ChecksumAlgorithm"
                                       :request-checksum-required common-lisp:t)

(smithy/sdk/operation:define-operation upload-part-copy :shape-name
                                       "UploadPartCopy" :input
                                       upload-part-copy-request :output
                                       upload-part-copy-output :errors
                                       common-lisp:nil :method "PUT" :uri
                                       "/{Bucket}/{Key+}?x-id=UploadPartCopy"
                                       :code 200)

(smithy/sdk/operation:define-operation write-get-object-response :shape-name
                                       "WriteGetObjectResponse" :input
                                       write-get-object-response-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/WriteGetObjectResponse" :code 200
                                       :endpoint-host-prefix "{RequestRoute}.")
