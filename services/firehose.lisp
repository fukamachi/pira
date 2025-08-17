(uiop/package:define-package #:pira/firehose (:use)
                             (:export #:awskmskey-arn
                              #:amazon-open-search-serverless-buffering-hints
                              #:amazon-open-search-serverless-buffering-interval-in-seconds
                              #:amazon-open-search-serverless-buffering-size-in-mbs
                              #:amazon-open-search-serverless-collection-endpoint
                              #:amazon-open-search-serverless-destination-configuration
                              #:amazon-open-search-serverless-destination-description
                              #:amazon-open-search-serverless-destination-update
                              #:amazon-open-search-serverless-index-name
                              #:amazon-open-search-serverless-retry-duration-in-seconds
                              #:amazon-open-search-serverless-retry-options
                              #:amazon-open-search-serverless-s3backup-mode
                              #:amazonopensearchservice-buffering-hints
                              #:amazonopensearchservice-buffering-interval-in-seconds
                              #:amazonopensearchservice-buffering-size-in-mbs
                              #:amazonopensearchservice-cluster-endpoint
                              #:amazonopensearchservice-destination-configuration
                              #:amazonopensearchservice-destination-description
                              #:amazonopensearchservice-destination-update
                              #:amazonopensearchservice-domain-arn
                              #:amazonopensearchservice-index-name
                              #:amazonopensearchservice-index-rotation-period
                              #:amazonopensearchservice-retry-duration-in-seconds
                              #:amazonopensearchservice-retry-options
                              #:amazonopensearchservice-s3backup-mode
                              #:amazonopensearchservice-type-name
                              #:authentication-configuration #:block-size-bytes
                              #:boolean-object #:bucket-arn #:buffering-hints
                              #:catalog-configuration
                              #:cloud-watch-logging-options #:cluster-jdbcurl
                              #:column-to-json-key-mappings
                              #:compression-format #:connectivity
                              #:content-encoding #:copy-command #:copy-options
                              #:create-delivery-stream #:custom-time-zone
                              #:data #:data-format-conversion-configuration
                              #:data-table-columns #:data-table-name
                              #:database-column-include-or-exclude-list
                              #:database-column-list #:database-column-name
                              #:database-endpoint
                              #:database-include-or-exclude-list
                              #:database-list #:database-name #:database-port
                              #:database-snapshot-info
                              #:database-snapshot-info-list
                              #:database-source-authentication-configuration
                              #:database-source-configuration
                              #:database-source-description
                              #:database-source-vpcconfiguration
                              #:database-surrogate-key-list
                              #:database-table-include-or-exclude-list
                              #:database-table-list #:database-table-name
                              #:database-type #:default-document-id-format
                              #:delete-delivery-stream
                              #:delivery-start-timestamp #:delivery-stream-arn
                              #:delivery-stream-description
                              #:delivery-stream-encryption-configuration
                              #:delivery-stream-encryption-configuration-input
                              #:delivery-stream-encryption-status
                              #:delivery-stream-failure-type
                              #:delivery-stream-name
                              #:delivery-stream-name-list
                              #:delivery-stream-status #:delivery-stream-type
                              #:delivery-stream-version-id
                              #:describe-delivery-stream
                              #:describe-delivery-stream-input-limit
                              #:deserializer #:destination-description
                              #:destination-description-list #:destination-id
                              #:destination-table-configuration
                              #:destination-table-configuration-list
                              #:direct-put-source-configuration
                              #:direct-put-source-description
                              #:document-id-options
                              #:dynamic-partitioning-configuration
                              #:elasticsearch-buffering-hints
                              #:elasticsearch-buffering-interval-in-seconds
                              #:elasticsearch-buffering-size-in-mbs
                              #:elasticsearch-cluster-endpoint
                              #:elasticsearch-destination-configuration
                              #:elasticsearch-destination-description
                              #:elasticsearch-destination-update
                              #:elasticsearch-domain-arn
                              #:elasticsearch-index-name
                              #:elasticsearch-index-rotation-period
                              #:elasticsearch-retry-duration-in-seconds
                              #:elasticsearch-retry-options
                              #:elasticsearch-s3backup-mode
                              #:elasticsearch-type-name
                              #:encryption-configuration #:error-code
                              #:error-message #:error-output-prefix
                              #:extended-s3destination-configuration
                              #:extended-s3destination-description
                              #:extended-s3destination-update
                              #:failure-description #:file-extension
                              #:firehose-20150804 #:glue-data-catalog-arn
                              #:hecacknowledgment-timeout-in-seconds
                              #:hecendpoint #:hecendpoint-type #:hectoken
                              #:hive-json-ser-de #:http-endpoint-access-key
                              #:http-endpoint-attribute-name
                              #:http-endpoint-attribute-value
                              #:http-endpoint-buffering-hints
                              #:http-endpoint-buffering-interval-in-seconds
                              #:http-endpoint-buffering-size-in-mbs
                              #:http-endpoint-common-attribute
                              #:http-endpoint-common-attributes-list
                              #:http-endpoint-configuration
                              #:http-endpoint-description
                              #:http-endpoint-destination-configuration
                              #:http-endpoint-destination-description
                              #:http-endpoint-destination-update
                              #:http-endpoint-name
                              #:http-endpoint-request-configuration
                              #:http-endpoint-retry-duration-in-seconds
                              #:http-endpoint-retry-options
                              #:http-endpoint-s3backup-mode #:http-endpoint-url
                              #:iceberg-destination-configuration
                              #:iceberg-destination-description
                              #:iceberg-destination-update
                              #:iceberg-s3backup-mode
                              #:input-format-configuration
                              #:interval-in-seconds #:kmsencryption-config
                              #:key-type #:kinesis-stream-arn
                              #:kinesis-stream-source-configuration
                              #:kinesis-stream-source-description
                              #:list-delivery-streams
                              #:list-delivery-streams-input-limit
                              #:list-of-non-empty-strings
                              #:list-of-non-empty-strings-without-whitespace
                              #:list-tags-for-delivery-stream
                              #:list-tags-for-delivery-stream-input-limit
                              #:list-tags-for-delivery-stream-output-tag-list
                              #:log-group-name #:log-stream-name
                              #:mskcluster-arn #:msksource-configuration
                              #:msksource-description #:no-encryption-config
                              #:non-empty-string
                              #:non-empty-string-without-whitespace
                              #:non-negative-integer-object #:open-xjson-ser-de
                              #:orc-compression #:orc-format-version
                              #:orc-row-index-stride #:orc-ser-de
                              #:orc-stripe-size-bytes
                              #:output-format-configuration
                              #:parquet-compression #:parquet-page-size-bytes
                              #:parquet-ser-de #:parquet-writer-version
                              #:partition-field #:partition-fields
                              #:partition-spec #:password #:prefix
                              #:processing-configuration #:processor
                              #:processor-list #:processor-parameter
                              #:processor-parameter-list
                              #:processor-parameter-name
                              #:processor-parameter-value #:processor-type
                              #:proportion #:put-record #:put-record-batch
                              #:put-record-batch-request-entry-list
                              #:put-record-batch-response-entry
                              #:put-record-batch-response-entry-list
                              #:put-response-record-id #:read-from-timestamp
                              #:record #:redshift-destination-configuration
                              #:redshift-destination-description
                              #:redshift-destination-update
                              #:redshift-retry-duration-in-seconds
                              #:redshift-retry-options #:redshift-s3backup-mode
                              #:retry-duration-in-seconds #:retry-options
                              #:role-arn #:s3backup-mode
                              #:s3destination-configuration
                              #:s3destination-description
                              #:s3destination-update #:sslmode
                              #:schema-configuration
                              #:schema-evolution-configuration #:secret-arn
                              #:secrets-manager-configuration
                              #:security-group-id-list #:serializer
                              #:size-in-mbs #:snapshot-requested-by
                              #:snapshot-status #:snowflake-account-url
                              #:snowflake-buffering-hints
                              #:snowflake-buffering-interval-in-seconds
                              #:snowflake-buffering-size-in-mbs
                              #:snowflake-content-column-name
                              #:snowflake-data-loading-option
                              #:snowflake-database
                              #:snowflake-destination-configuration
                              #:snowflake-destination-description
                              #:snowflake-destination-update
                              #:snowflake-key-passphrase
                              #:snowflake-meta-data-column-name
                              #:snowflake-private-key
                              #:snowflake-private-link-vpce-id
                              #:snowflake-retry-duration-in-seconds
                              #:snowflake-retry-options #:snowflake-role
                              #:snowflake-role-configuration
                              #:snowflake-s3backup-mode #:snowflake-schema
                              #:snowflake-table #:snowflake-user
                              #:snowflake-vpc-configuration
                              #:source-description #:splunk-buffering-hints
                              #:splunk-buffering-interval-in-seconds
                              #:splunk-buffering-size-in-mbs
                              #:splunk-destination-configuration
                              #:splunk-destination-description
                              #:splunk-destination-update
                              #:splunk-retry-duration-in-seconds
                              #:splunk-retry-options #:splunk-s3backup-mode
                              #:start-delivery-stream-encryption
                              #:stop-delivery-stream-encryption
                              #:string-with-letters-digits-underscores-dots
                              #:subnet-id-list #:table-creation-configuration
                              #:tag #:tag-delivery-stream
                              #:tag-delivery-stream-input-tag-list #:tag-key
                              #:tag-key-list #:tag-value
                              #:throughput-hint-in-mbs #:timestamp #:topic-name
                              #:untag-delivery-stream #:update-destination
                              #:username #:vpc-configuration
                              #:vpc-configuration-description
                              #:vpc-endpoint-service-name #:warehouse-location))
(common-lisp:in-package #:pira/firehose)

(smithy/sdk/service:define-service firehose-20150804 :shape-name
                                   "Firehose_20150804" :version "2015-08-04"
                                   :title "Amazon Kinesis Firehose" :operations
                                   '(create-delivery-stream
                                     delete-delivery-stream
                                     describe-delivery-stream
                                     list-delivery-streams
                                     list-tags-for-delivery-stream put-record
                                     put-record-batch
                                     start-delivery-stream-encryption
                                     stop-delivery-stream-encryption
                                     tag-delivery-stream untag-delivery-stream
                                     update-destination)
                                   :xml-namespace
                                   '(:uri
                                     "http://firehose.amazonaws.com/doc/2015-08-04"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Firehose")
                                      ("arnNamespace" . "firehose")
                                      ("cloudFormationName"
                                       . "KinesisFirehose")
                                      ("cloudTrailEventSource"
                                       . "firehose.amazonaws.com")
                                      ("endpointPrefix" . "firehose"))
                                     ("aws.auth#sigv4" ("name" . "firehose"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awskmskey-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 amazon-open-search-serverless-buffering-hints common-lisp:nil
 ((interval-in-seconds :target-type
   amazon-open-search-serverless-buffering-interval-in-seconds :member-name
   "IntervalInSeconds")
  (size-in-mbs :target-type amazon-open-search-serverless-buffering-size-in-mbs
   :member-name "SizeInMBs"))
 (:shape-name "AmazonOpenSearchServerlessBufferingHints"))

(smithy/sdk/shapes:define-type
 amazon-open-search-serverless-buffering-interval-in-seconds
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 amazon-open-search-serverless-buffering-size-in-mbs
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type
 amazon-open-search-serverless-collection-endpoint
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 amazon-open-search-serverless-destination-configuration common-lisp:nil
 ((role-arn :target-type role-arn :required common-lisp:t :member-name
   "RoleARN")
  (collection-endpoint :target-type
   amazon-open-search-serverless-collection-endpoint :member-name
   "CollectionEndpoint")
  (index-name :target-type amazon-open-search-serverless-index-name :required
   common-lisp:t :member-name "IndexName")
  (buffering-hints :target-type amazon-open-search-serverless-buffering-hints
   :member-name "BufferingHints")
  (retry-options :target-type amazon-open-search-serverless-retry-options
   :member-name "RetryOptions")
  (s3backup-mode :target-type amazon-open-search-serverless-s3backup-mode
   :member-name "S3BackupMode")
  (s3configuration :target-type s3destination-configuration :required
   common-lisp:t :member-name "S3Configuration")
  (processing-configuration :target-type processing-configuration :member-name
   "ProcessingConfiguration")
  (cloud-watch-logging-options :target-type cloud-watch-logging-options
   :member-name "CloudWatchLoggingOptions")
  (vpc-configuration :target-type vpc-configuration :member-name
   "VpcConfiguration"))
 (:shape-name "AmazonOpenSearchServerlessDestinationConfiguration"))

(smithy/sdk/shapes:define-structure
 amazon-open-search-serverless-destination-description common-lisp:nil
 ((role-arn :target-type role-arn :member-name "RoleARN")
  (collection-endpoint :target-type
   amazon-open-search-serverless-collection-endpoint :member-name
   "CollectionEndpoint")
  (index-name :target-type amazon-open-search-serverless-index-name
   :member-name "IndexName")
  (buffering-hints :target-type amazon-open-search-serverless-buffering-hints
   :member-name "BufferingHints")
  (retry-options :target-type amazon-open-search-serverless-retry-options
   :member-name "RetryOptions")
  (s3backup-mode :target-type amazon-open-search-serverless-s3backup-mode
   :member-name "S3BackupMode")
  (s3destination-description :target-type s3destination-description
   :member-name "S3DestinationDescription")
  (processing-configuration :target-type processing-configuration :member-name
   "ProcessingConfiguration")
  (cloud-watch-logging-options :target-type cloud-watch-logging-options
   :member-name "CloudWatchLoggingOptions")
  (vpc-configuration-description :target-type vpc-configuration-description
   :member-name "VpcConfigurationDescription"))
 (:shape-name "AmazonOpenSearchServerlessDestinationDescription"))

(smithy/sdk/shapes:define-structure
 amazon-open-search-serverless-destination-update common-lisp:nil
 ((role-arn :target-type role-arn :member-name "RoleARN")
  (collection-endpoint :target-type
   amazon-open-search-serverless-collection-endpoint :member-name
   "CollectionEndpoint")
  (index-name :target-type amazon-open-search-serverless-index-name
   :member-name "IndexName")
  (buffering-hints :target-type amazon-open-search-serverless-buffering-hints
   :member-name "BufferingHints")
  (retry-options :target-type amazon-open-search-serverless-retry-options
   :member-name "RetryOptions")
  (s3update :target-type s3destination-update :member-name "S3Update")
  (processing-configuration :target-type processing-configuration :member-name
   "ProcessingConfiguration")
  (cloud-watch-logging-options :target-type cloud-watch-logging-options
   :member-name "CloudWatchLoggingOptions"))
 (:shape-name "AmazonOpenSearchServerlessDestinationUpdate"))

(smithy/sdk/shapes:define-type amazon-open-search-serverless-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 amazon-open-search-serverless-retry-duration-in-seconds
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure amazon-open-search-serverless-retry-options
                                    common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      amazon-open-search-serverless-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name
                                     "AmazonOpenSearchServerlessRetryOptions"))

(smithy/sdk/shapes:define-enum amazon-open-search-serverless-s3backup-mode
    common-lisp:nil
  (:failed-documents-only "FailedDocumentsOnly")
  (:all-documents "AllDocuments"))

(smithy/sdk/shapes:define-structure amazonopensearchservice-buffering-hints
                                    common-lisp:nil
                                    ((interval-in-seconds :target-type
                                      amazonopensearchservice-buffering-interval-in-seconds
                                      :member-name "IntervalInSeconds")
                                     (size-in-mbs :target-type
                                      amazonopensearchservice-buffering-size-in-mbs
                                      :member-name "SizeInMBs"))
                                    (:shape-name
                                     "AmazonopensearchserviceBufferingHints"))

(smithy/sdk/shapes:define-type
 amazonopensearchservice-buffering-interval-in-seconds
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type amazonopensearchservice-buffering-size-in-mbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type amazonopensearchservice-cluster-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 amazonopensearchservice-destination-configuration common-lisp:nil
 ((role-arn :target-type role-arn :required common-lisp:t :member-name
   "RoleARN")
  (domain-arn :target-type amazonopensearchservice-domain-arn :member-name
   "DomainARN")
  (cluster-endpoint :target-type amazonopensearchservice-cluster-endpoint
   :member-name "ClusterEndpoint")
  (index-name :target-type amazonopensearchservice-index-name :required
   common-lisp:t :member-name "IndexName")
  (type-name :target-type amazonopensearchservice-type-name :member-name
   "TypeName")
  (index-rotation-period :target-type
   amazonopensearchservice-index-rotation-period :member-name
   "IndexRotationPeriod")
  (buffering-hints :target-type amazonopensearchservice-buffering-hints
   :member-name "BufferingHints")
  (retry-options :target-type amazonopensearchservice-retry-options
   :member-name "RetryOptions")
  (s3backup-mode :target-type amazonopensearchservice-s3backup-mode
   :member-name "S3BackupMode")
  (s3configuration :target-type s3destination-configuration :required
   common-lisp:t :member-name "S3Configuration")
  (processing-configuration :target-type processing-configuration :member-name
   "ProcessingConfiguration")
  (cloud-watch-logging-options :target-type cloud-watch-logging-options
   :member-name "CloudWatchLoggingOptions")
  (vpc-configuration :target-type vpc-configuration :member-name
   "VpcConfiguration")
  (document-id-options :target-type document-id-options :member-name
   "DocumentIdOptions"))
 (:shape-name "AmazonopensearchserviceDestinationConfiguration"))

(smithy/sdk/shapes:define-structure
 amazonopensearchservice-destination-description common-lisp:nil
 ((role-arn :target-type role-arn :member-name "RoleARN")
  (domain-arn :target-type amazonopensearchservice-domain-arn :member-name
   "DomainARN")
  (cluster-endpoint :target-type amazonopensearchservice-cluster-endpoint
   :member-name "ClusterEndpoint")
  (index-name :target-type amazonopensearchservice-index-name :member-name
   "IndexName")
  (type-name :target-type amazonopensearchservice-type-name :member-name
   "TypeName")
  (index-rotation-period :target-type
   amazonopensearchservice-index-rotation-period :member-name
   "IndexRotationPeriod")
  (buffering-hints :target-type amazonopensearchservice-buffering-hints
   :member-name "BufferingHints")
  (retry-options :target-type amazonopensearchservice-retry-options
   :member-name "RetryOptions")
  (s3backup-mode :target-type amazonopensearchservice-s3backup-mode
   :member-name "S3BackupMode")
  (s3destination-description :target-type s3destination-description
   :member-name "S3DestinationDescription")
  (processing-configuration :target-type processing-configuration :member-name
   "ProcessingConfiguration")
  (cloud-watch-logging-options :target-type cloud-watch-logging-options
   :member-name "CloudWatchLoggingOptions")
  (vpc-configuration-description :target-type vpc-configuration-description
   :member-name "VpcConfigurationDescription")
  (document-id-options :target-type document-id-options :member-name
   "DocumentIdOptions"))
 (:shape-name "AmazonopensearchserviceDestinationDescription"))

(smithy/sdk/shapes:define-structure amazonopensearchservice-destination-update
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (domain-arn :target-type
                                      amazonopensearchservice-domain-arn
                                      :member-name "DomainARN")
                                     (cluster-endpoint :target-type
                                      amazonopensearchservice-cluster-endpoint
                                      :member-name "ClusterEndpoint")
                                     (index-name :target-type
                                      amazonopensearchservice-index-name
                                      :member-name "IndexName")
                                     (type-name :target-type
                                      amazonopensearchservice-type-name
                                      :member-name "TypeName")
                                     (index-rotation-period :target-type
                                      amazonopensearchservice-index-rotation-period
                                      :member-name "IndexRotationPeriod")
                                     (buffering-hints :target-type
                                      amazonopensearchservice-buffering-hints
                                      :member-name "BufferingHints")
                                     (retry-options :target-type
                                      amazonopensearchservice-retry-options
                                      :member-name "RetryOptions")
                                     (s3update :target-type
                                      s3destination-update :member-name
                                      "S3Update")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (document-id-options :target-type
                                      document-id-options :member-name
                                      "DocumentIdOptions"))
                                    (:shape-name
                                     "AmazonopensearchserviceDestinationUpdate"))

(smithy/sdk/shapes:define-type amazonopensearchservice-domain-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazonopensearchservice-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum amazonopensearchservice-index-rotation-period
    common-lisp:nil
  (:no-rotation "NoRotation")
  (:one-hour "OneHour")
  (:one-day "OneDay")
  (:one-week "OneWeek")
  (:one-month "OneMonth"))

(smithy/sdk/shapes:define-type
 amazonopensearchservice-retry-duration-in-seconds
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure amazonopensearchservice-retry-options
                                    common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      amazonopensearchservice-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name
                                     "AmazonopensearchserviceRetryOptions"))

(smithy/sdk/shapes:define-enum amazonopensearchservice-s3backup-mode
    common-lisp:nil
  (:failed-documents-only "FailedDocumentsOnly")
  (:all-documents "AllDocuments"))

(smithy/sdk/shapes:define-type amazonopensearchservice-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure authentication-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (connectivity :target-type connectivity
                                      :required common-lisp:t :member-name
                                      "Connectivity"))
                                    (:shape-name "AuthenticationConfiguration"))

(smithy/sdk/shapes:define-type block-size-bytes smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure buffering-hints common-lisp:nil
                                    ((size-in-mbs :target-type size-in-mbs
                                      :member-name "SizeInMBs")
                                     (interval-in-seconds :target-type
                                      interval-in-seconds :member-name
                                      "IntervalInSeconds"))
                                    (:shape-name "BufferingHints"))

(smithy/sdk/shapes:define-structure catalog-configuration common-lisp:nil
                                    ((catalog-arn :target-type
                                      glue-data-catalog-arn :member-name
                                      "CatalogARN")
                                     (warehouse-location :target-type
                                      warehouse-location :member-name
                                      "WarehouseLocation"))
                                    (:shape-name "CatalogConfiguration"))

(smithy/sdk/shapes:define-structure cloud-watch-logging-options common-lisp:nil
                                    ((enabled :target-type boolean-object
                                      :member-name "Enabled")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "LogGroupName")
                                     (log-stream-name :target-type
                                      log-stream-name :member-name
                                      "LogStreamName"))
                                    (:shape-name "CloudWatchLoggingOptions"))

(smithy/sdk/shapes:define-type cluster-jdbcurl smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map column-to-json-key-mappings :key
                              non-empty-string-without-whitespace :value
                              non-empty-string)

(smithy/sdk/shapes:define-enum compression-format
    common-lisp:nil
  (:uncompressed "UNCOMPRESSED")
  (:gzip "GZIP")
  (:zip "ZIP")
  (:snappy "Snappy")
  (:hadoop-snappy "HADOOP_SNAPPY"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum connectivity
    common-lisp:nil
  (:public "PUBLIC")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-enum content-encoding
    common-lisp:nil
  (:none "NONE")
  (:gzip "GZIP"))

(smithy/sdk/shapes:define-structure copy-command common-lisp:nil
                                    ((data-table-name :target-type
                                      data-table-name :required common-lisp:t
                                      :member-name "DataTableName")
                                     (data-table-columns :target-type
                                      data-table-columns :member-name
                                      "DataTableColumns")
                                     (copy-options :target-type copy-options
                                      :member-name "CopyOptions"))
                                    (:shape-name "CopyCommand"))

(smithy/sdk/shapes:define-type copy-options smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-delivery-stream-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (delivery-stream-type :target-type
                                  delivery-stream-type :member-name
                                  "DeliveryStreamType")
                                 (direct-put-source-configuration :target-type
                                  direct-put-source-configuration :member-name
                                  "DirectPutSourceConfiguration")
                                 (kinesis-stream-source-configuration
                                  :target-type
                                  kinesis-stream-source-configuration
                                  :member-name
                                  "KinesisStreamSourceConfiguration")
                                 (delivery-stream-encryption-configuration-input
                                  :target-type
                                  delivery-stream-encryption-configuration-input
                                  :member-name
                                  "DeliveryStreamEncryptionConfigurationInput")
                                 (s3destination-configuration :target-type
                                  s3destination-configuration :member-name
                                  "S3DestinationConfiguration")
                                 (extended-s3destination-configuration
                                  :target-type
                                  extended-s3destination-configuration
                                  :member-name
                                  "ExtendedS3DestinationConfiguration")
                                 (redshift-destination-configuration
                                  :target-type
                                  redshift-destination-configuration
                                  :member-name
                                  "RedshiftDestinationConfiguration")
                                 (elasticsearch-destination-configuration
                                  :target-type
                                  elasticsearch-destination-configuration
                                  :member-name
                                  "ElasticsearchDestinationConfiguration")
                                 (amazonopensearchservice-destination-configuration
                                  :target-type
                                  amazonopensearchservice-destination-configuration
                                  :member-name
                                  "AmazonopensearchserviceDestinationConfiguration")
                                 (splunk-destination-configuration :target-type
                                  splunk-destination-configuration :member-name
                                  "SplunkDestinationConfiguration")
                                 (http-endpoint-destination-configuration
                                  :target-type
                                  http-endpoint-destination-configuration
                                  :member-name
                                  "HttpEndpointDestinationConfiguration")
                                 (tags :target-type
                                  tag-delivery-stream-input-tag-list
                                  :member-name "Tags")
                                 (amazon-open-search-serverless-destination-configuration
                                  :target-type
                                  amazon-open-search-serverless-destination-configuration
                                  :member-name
                                  "AmazonOpenSearchServerlessDestinationConfiguration")
                                 (msksource-configuration :target-type
                                  msksource-configuration :member-name
                                  "MSKSourceConfiguration")
                                 (snowflake-destination-configuration
                                  :target-type
                                  snowflake-destination-configuration
                                  :member-name
                                  "SnowflakeDestinationConfiguration")
                                 (iceberg-destination-configuration
                                  :target-type
                                  iceberg-destination-configuration
                                  :member-name
                                  "IcebergDestinationConfiguration")
                                 (database-source-configuration :target-type
                                  database-source-configuration :member-name
                                  "DatabaseSourceConfiguration"))
                                (:shape-name "CreateDeliveryStreamInput"))

(smithy/sdk/shapes:define-output create-delivery-stream-output common-lisp:nil
                                 ((delivery-stream-arn :target-type
                                   delivery-stream-arn :member-name
                                   "DeliveryStreamARN"))
                                 (:shape-name "CreateDeliveryStreamOutput"))

(smithy/sdk/shapes:define-type custom-time-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure data-format-conversion-configuration
                                    common-lisp:nil
                                    ((schema-configuration :target-type
                                      schema-configuration :member-name
                                      "SchemaConfiguration")
                                     (input-format-configuration :target-type
                                      input-format-configuration :member-name
                                      "InputFormatConfiguration")
                                     (output-format-configuration :target-type
                                      output-format-configuration :member-name
                                      "OutputFormatConfiguration")
                                     (enabled :target-type boolean-object
                                      :member-name "Enabled"))
                                    (:shape-name
                                     "DataFormatConversionConfiguration"))

(smithy/sdk/shapes:define-type data-table-columns
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list database-column-include-or-exclude-list :member
                               database-column-name)

(smithy/sdk/shapes:define-structure database-column-list common-lisp:nil
                                    ((include :target-type
                                      database-column-include-or-exclude-list
                                      :member-name "Include")
                                     (exclude :target-type
                                      database-column-include-or-exclude-list
                                      :member-name "Exclude"))
                                    (:shape-name "DatabaseColumnList"))

(smithy/sdk/shapes:define-type database-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list database-include-or-exclude-list :member
                               database-name)

(smithy/sdk/shapes:define-structure database-list common-lisp:nil
                                    ((include :target-type
                                      database-include-or-exclude-list
                                      :member-name "Include")
                                     (exclude :target-type
                                      database-include-or-exclude-list
                                      :member-name "Exclude"))
                                    (:shape-name "DatabaseList"))

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure database-snapshot-info common-lisp:nil
                                    ((id :target-type
                                      non-empty-string-without-whitespace
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (table :target-type database-table-name
                                      :required common-lisp:t :member-name
                                      "Table")
                                     (request-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "RequestTimestamp")
                                     (requested-by :target-type
                                      snapshot-requested-by :required
                                      common-lisp:t :member-name "RequestedBy")
                                     (status :target-type snapshot-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (failure-description :target-type
                                      failure-description :member-name
                                      "FailureDescription"))
                                    (:shape-name "DatabaseSnapshotInfo"))

(smithy/sdk/shapes:define-list database-snapshot-info-list :member
                               database-snapshot-info)

(smithy/sdk/shapes:define-structure
 database-source-authentication-configuration common-lisp:nil
 ((secrets-manager-configuration :target-type secrets-manager-configuration
   :required common-lisp:t :member-name "SecretsManagerConfiguration"))
 (:shape-name "DatabaseSourceAuthenticationConfiguration"))

(smithy/sdk/shapes:define-structure database-source-configuration
                                    common-lisp:nil
                                    ((type :target-type database-type :required
                                      common-lisp:t :member-name "Type")
                                     (endpoint :target-type database-endpoint
                                      :required common-lisp:t :member-name
                                      "Endpoint")
                                     (port :target-type database-port :required
                                      common-lisp:t :member-name "Port")
                                     (sslmode :target-type sslmode :member-name
                                      "SSLMode")
                                     (databases :target-type database-list
                                      :required common-lisp:t :member-name
                                      "Databases")
                                     (tables :target-type database-table-list
                                      :required common-lisp:t :member-name
                                      "Tables")
                                     (columns :target-type database-column-list
                                      :member-name "Columns")
                                     (surrogate-keys :target-type
                                      database-surrogate-key-list :member-name
                                      "SurrogateKeys")
                                     (snapshot-watermark-table :target-type
                                      database-table-name :required
                                      common-lisp:t :member-name
                                      "SnapshotWatermarkTable")
                                     (database-source-authentication-configuration
                                      :target-type
                                      database-source-authentication-configuration
                                      :required common-lisp:t :member-name
                                      "DatabaseSourceAuthenticationConfiguration")
                                     (database-source-vpcconfiguration
                                      :target-type
                                      database-source-vpcconfiguration
                                      :required common-lisp:t :member-name
                                      "DatabaseSourceVPCConfiguration"))
                                    (:shape-name "DatabaseSourceConfiguration"))

(smithy/sdk/shapes:define-structure database-source-description common-lisp:nil
                                    ((type :target-type database-type
                                      :member-name "Type")
                                     (endpoint :target-type database-endpoint
                                      :member-name "Endpoint")
                                     (port :target-type database-port
                                      :member-name "Port")
                                     (sslmode :target-type sslmode :member-name
                                      "SSLMode")
                                     (databases :target-type database-list
                                      :member-name "Databases")
                                     (tables :target-type database-table-list
                                      :member-name "Tables")
                                     (columns :target-type database-column-list
                                      :member-name "Columns")
                                     (surrogate-keys :target-type
                                      database-column-include-or-exclude-list
                                      :member-name "SurrogateKeys")
                                     (snapshot-watermark-table :target-type
                                      database-table-name :member-name
                                      "SnapshotWatermarkTable")
                                     (snapshot-info :target-type
                                      database-snapshot-info-list :member-name
                                      "SnapshotInfo")
                                     (database-source-authentication-configuration
                                      :target-type
                                      database-source-authentication-configuration
                                      :member-name
                                      "DatabaseSourceAuthenticationConfiguration")
                                     (database-source-vpcconfiguration
                                      :target-type
                                      database-source-vpcconfiguration
                                      :member-name
                                      "DatabaseSourceVPCConfiguration"))
                                    (:shape-name "DatabaseSourceDescription"))

(smithy/sdk/shapes:define-structure database-source-vpcconfiguration
                                    common-lisp:nil
                                    ((vpc-endpoint-service-name :target-type
                                      vpc-endpoint-service-name :required
                                      common-lisp:t :member-name
                                      "VpcEndpointServiceName"))
                                    (:shape-name
                                     "DatabaseSourceVPCConfiguration"))

(smithy/sdk/shapes:define-list database-surrogate-key-list :member
                               non-empty-string-without-whitespace)

(smithy/sdk/shapes:define-list database-table-include-or-exclude-list :member
                               database-table-name)

(smithy/sdk/shapes:define-structure database-table-list common-lisp:nil
                                    ((include :target-type
                                      database-table-include-or-exclude-list
                                      :member-name "Include")
                                     (exclude :target-type
                                      database-table-include-or-exclude-list
                                      :member-name "Exclude"))
                                    (:shape-name "DatabaseTableList"))

(smithy/sdk/shapes:define-type database-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum database-type
    common-lisp:nil
  (:my-sql "MySQL")
  (:postgre-sql "PostgreSQL"))

(smithy/sdk/shapes:define-enum default-document-id-format
    common-lisp:nil
  (:firehose-default "FIREHOSE_DEFAULT")
  (:no-document-id "NO_DOCUMENT_ID"))

(smithy/sdk/shapes:define-input delete-delivery-stream-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (allow-force-delete :target-type
                                  boolean-object :member-name
                                  "AllowForceDelete"))
                                (:shape-name "DeleteDeliveryStreamInput"))

(smithy/sdk/shapes:define-output delete-delivery-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDeliveryStreamOutput"))

(smithy/sdk/shapes:define-type delivery-start-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type delivery-stream-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delivery-stream-description common-lisp:nil
                                    ((delivery-stream-name :target-type
                                      delivery-stream-name :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamName")
                                     (delivery-stream-arn :target-type
                                      delivery-stream-arn :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamARN")
                                     (delivery-stream-status :target-type
                                      delivery-stream-status :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamStatus")
                                     (failure-description :target-type
                                      failure-description :member-name
                                      "FailureDescription")
                                     (delivery-stream-encryption-configuration
                                      :target-type
                                      delivery-stream-encryption-configuration
                                      :member-name
                                      "DeliveryStreamEncryptionConfiguration")
                                     (delivery-stream-type :target-type
                                      delivery-stream-type :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamType")
                                     (version-id :target-type
                                      delivery-stream-version-id :required
                                      common-lisp:t :member-name "VersionId")
                                     (create-timestamp :target-type timestamp
                                      :member-name "CreateTimestamp")
                                     (last-update-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdateTimestamp")
                                     (source :target-type source-description
                                      :member-name "Source")
                                     (destinations :target-type
                                      destination-description-list :required
                                      common-lisp:t :member-name
                                      "Destinations")
                                     (has-more-destinations :target-type
                                      boolean-object :required common-lisp:t
                                      :member-name "HasMoreDestinations"))
                                    (:shape-name "DeliveryStreamDescription"))

(smithy/sdk/shapes:define-structure delivery-stream-encryption-configuration
                                    common-lisp:nil
                                    ((key-arn :target-type awskmskey-arn
                                      :member-name "KeyARN")
                                     (key-type :target-type key-type
                                      :member-name "KeyType")
                                     (status :target-type
                                      delivery-stream-encryption-status
                                      :member-name "Status")
                                     (failure-description :target-type
                                      failure-description :member-name
                                      "FailureDescription"))
                                    (:shape-name
                                     "DeliveryStreamEncryptionConfiguration"))

(smithy/sdk/shapes:define-structure
 delivery-stream-encryption-configuration-input common-lisp:nil
 ((key-arn :target-type awskmskey-arn :member-name "KeyARN")
  (key-type :target-type key-type :required common-lisp:t :member-name
   "KeyType"))
 (:shape-name "DeliveryStreamEncryptionConfigurationInput"))

(smithy/sdk/shapes:define-enum delivery-stream-encryption-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:enabling "ENABLING")
  (:enabling-failed "ENABLING_FAILED")
  (:disabled "DISABLED")
  (:disabling "DISABLING")
  (:disabling-failed "DISABLING_FAILED"))

(smithy/sdk/shapes:define-enum delivery-stream-failure-type
    common-lisp:nil
  (:vpc-endpoint-service-name-not-found "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND")
  (:vpc-interface-endpoint-service-access-denied
   "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED")
  (:retire-kms-grant-failed "RETIRE_KMS_GRANT_FAILED")
  (:create-kms-grant-failed "CREATE_KMS_GRANT_FAILED")
  (:kms-access-denied "KMS_ACCESS_DENIED")
  (:disabled-kms-key "DISABLED_KMS_KEY")
  (:invalid-kms-key "INVALID_KMS_KEY")
  (:kms-key-not-found "KMS_KEY_NOT_FOUND")
  (:kms-opt-in-required "KMS_OPT_IN_REQUIRED")
  (:create-eni-failed "CREATE_ENI_FAILED")
  (:delete-eni-failed "DELETE_ENI_FAILED")
  (:subnet-not-found "SUBNET_NOT_FOUND")
  (:security-group-not-found "SECURITY_GROUP_NOT_FOUND")
  (:eni-access-denied "ENI_ACCESS_DENIED")
  (:subnet-access-denied "SUBNET_ACCESS_DENIED")
  (:security-group-access-denied "SECURITY_GROUP_ACCESS_DENIED")
  (:unknown-error "UNKNOWN_ERROR"))

(smithy/sdk/shapes:define-type delivery-stream-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list delivery-stream-name-list :member
                               delivery-stream-name)

(smithy/sdk/shapes:define-enum delivery-stream-status
    common-lisp:nil
  (:creating "CREATING")
  (:creating-failed "CREATING_FAILED")
  (:deleting "DELETING")
  (:deleting-failed "DELETING_FAILED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-enum delivery-stream-type
    common-lisp:nil
  (:direct-put "DirectPut")
  (:kinesis-stream-as-source "KinesisStreamAsSource")
  (:mskas-source "MSKAsSource")
  (:database-as-source "DatabaseAsSource"))

(smithy/sdk/shapes:define-type delivery-stream-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-delivery-stream-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (limit :target-type
                                  describe-delivery-stream-input-limit
                                  :member-name "Limit")
                                 (exclusive-start-destination-id :target-type
                                  destination-id :member-name
                                  "ExclusiveStartDestinationId"))
                                (:shape-name "DescribeDeliveryStreamInput"))

(smithy/sdk/shapes:define-type describe-delivery-stream-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output describe-delivery-stream-output
                                 common-lisp:nil
                                 ((delivery-stream-description :target-type
                                   delivery-stream-description :required
                                   common-lisp:t :member-name
                                   "DeliveryStreamDescription"))
                                 (:shape-name "DescribeDeliveryStreamOutput"))

(smithy/sdk/shapes:define-structure deserializer common-lisp:nil
                                    ((open-xjson-ser-de :target-type
                                      open-xjson-ser-de :member-name
                                      "OpenXJsonSerDe")
                                     (hive-json-ser-de :target-type
                                      hive-json-ser-de :member-name
                                      "HiveJsonSerDe"))
                                    (:shape-name "Deserializer"))

(smithy/sdk/shapes:define-structure destination-description common-lisp:nil
                                    ((destination-id :target-type
                                      destination-id :required common-lisp:t
                                      :member-name "DestinationId")
                                     (s3destination-description :target-type
                                      s3destination-description :member-name
                                      "S3DestinationDescription")
                                     (extended-s3destination-description
                                      :target-type
                                      extended-s3destination-description
                                      :member-name
                                      "ExtendedS3DestinationDescription")
                                     (redshift-destination-description
                                      :target-type
                                      redshift-destination-description
                                      :member-name
                                      "RedshiftDestinationDescription")
                                     (elasticsearch-destination-description
                                      :target-type
                                      elasticsearch-destination-description
                                      :member-name
                                      "ElasticsearchDestinationDescription")
                                     (amazonopensearchservice-destination-description
                                      :target-type
                                      amazonopensearchservice-destination-description
                                      :member-name
                                      "AmazonopensearchserviceDestinationDescription")
                                     (splunk-destination-description
                                      :target-type
                                      splunk-destination-description
                                      :member-name
                                      "SplunkDestinationDescription")
                                     (http-endpoint-destination-description
                                      :target-type
                                      http-endpoint-destination-description
                                      :member-name
                                      "HttpEndpointDestinationDescription")
                                     (snowflake-destination-description
                                      :target-type
                                      snowflake-destination-description
                                      :member-name
                                      "SnowflakeDestinationDescription")
                                     (amazon-open-search-serverless-destination-description
                                      :target-type
                                      amazon-open-search-serverless-destination-description
                                      :member-name
                                      "AmazonOpenSearchServerlessDestinationDescription")
                                     (iceberg-destination-description
                                      :target-type
                                      iceberg-destination-description
                                      :member-name
                                      "IcebergDestinationDescription"))
                                    (:shape-name "DestinationDescription"))

(smithy/sdk/shapes:define-list destination-description-list :member
                               destination-description)

(smithy/sdk/shapes:define-type destination-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-table-configuration
                                    common-lisp:nil
                                    ((destination-table-name :target-type
                                      string-with-letters-digits-underscores-dots
                                      :required common-lisp:t :member-name
                                      "DestinationTableName")
                                     (destination-database-name :target-type
                                      string-with-letters-digits-underscores-dots
                                      :required common-lisp:t :member-name
                                      "DestinationDatabaseName")
                                     (unique-keys :target-type
                                      list-of-non-empty-strings-without-whitespace
                                      :member-name "UniqueKeys")
                                     (partition-spec :target-type
                                      partition-spec :member-name
                                      "PartitionSpec")
                                     (s3error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "S3ErrorOutputPrefix"))
                                    (:shape-name
                                     "DestinationTableConfiguration"))

(smithy/sdk/shapes:define-list destination-table-configuration-list :member
                               destination-table-configuration)

(smithy/sdk/shapes:define-structure direct-put-source-configuration
                                    common-lisp:nil
                                    ((throughput-hint-in-mbs :target-type
                                      throughput-hint-in-mbs :required
                                      common-lisp:t :member-name
                                      "ThroughputHintInMBs"))
                                    (:shape-name
                                     "DirectPutSourceConfiguration"))

(smithy/sdk/shapes:define-structure direct-put-source-description
                                    common-lisp:nil
                                    ((throughput-hint-in-mbs :target-type
                                      throughput-hint-in-mbs :member-name
                                      "ThroughputHintInMBs"))
                                    (:shape-name "DirectPutSourceDescription"))

(smithy/sdk/shapes:define-structure document-id-options common-lisp:nil
                                    ((default-document-id-format :target-type
                                      default-document-id-format :required
                                      common-lisp:t :member-name
                                      "DefaultDocumentIdFormat"))
                                    (:shape-name "DocumentIdOptions"))

(smithy/sdk/shapes:define-structure dynamic-partitioning-configuration
                                    common-lisp:nil
                                    ((retry-options :target-type retry-options
                                      :member-name "RetryOptions")
                                     (enabled :target-type boolean-object
                                      :member-name "Enabled"))
                                    (:shape-name
                                     "DynamicPartitioningConfiguration"))

(smithy/sdk/shapes:define-structure elasticsearch-buffering-hints
                                    common-lisp:nil
                                    ((interval-in-seconds :target-type
                                      elasticsearch-buffering-interval-in-seconds
                                      :member-name "IntervalInSeconds")
                                     (size-in-mbs :target-type
                                      elasticsearch-buffering-size-in-mbs
                                      :member-name "SizeInMBs"))
                                    (:shape-name "ElasticsearchBufferingHints"))

(smithy/sdk/shapes:define-type elasticsearch-buffering-interval-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type elasticsearch-buffering-size-in-mbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type elasticsearch-cluster-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure elasticsearch-destination-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (domain-arn :target-type
                                      elasticsearch-domain-arn :member-name
                                      "DomainARN")
                                     (cluster-endpoint :target-type
                                      elasticsearch-cluster-endpoint
                                      :member-name "ClusterEndpoint")
                                     (index-name :target-type
                                      elasticsearch-index-name :required
                                      common-lisp:t :member-name "IndexName")
                                     (type-name :target-type
                                      elasticsearch-type-name :member-name
                                      "TypeName")
                                     (index-rotation-period :target-type
                                      elasticsearch-index-rotation-period
                                      :member-name "IndexRotationPeriod")
                                     (buffering-hints :target-type
                                      elasticsearch-buffering-hints
                                      :member-name "BufferingHints")
                                     (retry-options :target-type
                                      elasticsearch-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      elasticsearch-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3configuration :target-type
                                      s3destination-configuration :required
                                      common-lisp:t :member-name
                                      "S3Configuration")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "VpcConfiguration")
                                     (document-id-options :target-type
                                      document-id-options :member-name
                                      "DocumentIdOptions"))
                                    (:shape-name
                                     "ElasticsearchDestinationConfiguration"))

(smithy/sdk/shapes:define-structure elasticsearch-destination-description
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (domain-arn :target-type
                                      elasticsearch-domain-arn :member-name
                                      "DomainARN")
                                     (cluster-endpoint :target-type
                                      elasticsearch-cluster-endpoint
                                      :member-name "ClusterEndpoint")
                                     (index-name :target-type
                                      elasticsearch-index-name :member-name
                                      "IndexName")
                                     (type-name :target-type
                                      elasticsearch-type-name :member-name
                                      "TypeName")
                                     (index-rotation-period :target-type
                                      elasticsearch-index-rotation-period
                                      :member-name "IndexRotationPeriod")
                                     (buffering-hints :target-type
                                      elasticsearch-buffering-hints
                                      :member-name "BufferingHints")
                                     (retry-options :target-type
                                      elasticsearch-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      elasticsearch-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3destination-description :target-type
                                      s3destination-description :member-name
                                      "S3DestinationDescription")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (vpc-configuration-description
                                      :target-type
                                      vpc-configuration-description
                                      :member-name
                                      "VpcConfigurationDescription")
                                     (document-id-options :target-type
                                      document-id-options :member-name
                                      "DocumentIdOptions"))
                                    (:shape-name
                                     "ElasticsearchDestinationDescription"))

(smithy/sdk/shapes:define-structure elasticsearch-destination-update
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (domain-arn :target-type
                                      elasticsearch-domain-arn :member-name
                                      "DomainARN")
                                     (cluster-endpoint :target-type
                                      elasticsearch-cluster-endpoint
                                      :member-name "ClusterEndpoint")
                                     (index-name :target-type
                                      elasticsearch-index-name :member-name
                                      "IndexName")
                                     (type-name :target-type
                                      elasticsearch-type-name :member-name
                                      "TypeName")
                                     (index-rotation-period :target-type
                                      elasticsearch-index-rotation-period
                                      :member-name "IndexRotationPeriod")
                                     (buffering-hints :target-type
                                      elasticsearch-buffering-hints
                                      :member-name "BufferingHints")
                                     (retry-options :target-type
                                      elasticsearch-retry-options :member-name
                                      "RetryOptions")
                                     (s3update :target-type
                                      s3destination-update :member-name
                                      "S3Update")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (document-id-options :target-type
                                      document-id-options :member-name
                                      "DocumentIdOptions"))
                                    (:shape-name
                                     "ElasticsearchDestinationUpdate"))

(smithy/sdk/shapes:define-type elasticsearch-domain-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type elasticsearch-index-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum elasticsearch-index-rotation-period
    common-lisp:nil
  (:no-rotation "NoRotation")
  (:one-hour "OneHour")
  (:one-day "OneDay")
  (:one-week "OneWeek")
  (:one-month "OneMonth"))

(smithy/sdk/shapes:define-type elasticsearch-retry-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure elasticsearch-retry-options common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      elasticsearch-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name "ElasticsearchRetryOptions"))

(smithy/sdk/shapes:define-enum elasticsearch-s3backup-mode
    common-lisp:nil
  (:failed-documents-only "FailedDocumentsOnly")
  (:all-documents "AllDocuments"))

(smithy/sdk/shapes:define-type elasticsearch-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((no-encryption-config :target-type
                                      no-encryption-config :member-name
                                      "NoEncryptionConfig")
                                     (kmsencryption-config :target-type
                                      kmsencryption-config :member-name
                                      "KMSEncryptionConfig"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-output-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure extended-s3destination-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "ErrorOutputPrefix")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (compression-format :target-type
                                      compression-format :member-name
                                      "CompressionFormat")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type s3backup-mode
                                      :member-name "S3BackupMode")
                                     (s3backup-configuration :target-type
                                      s3destination-configuration :member-name
                                      "S3BackupConfiguration")
                                     (data-format-conversion-configuration
                                      :target-type
                                      data-format-conversion-configuration
                                      :member-name
                                      "DataFormatConversionConfiguration")
                                     (dynamic-partitioning-configuration
                                      :target-type
                                      dynamic-partitioning-configuration
                                      :member-name
                                      "DynamicPartitioningConfiguration")
                                     (file-extension :target-type
                                      file-extension :member-name
                                      "FileExtension")
                                     (custom-time-zone :target-type
                                      custom-time-zone :member-name
                                      "CustomTimeZone"))
                                    (:shape-name
                                     "ExtendedS3DestinationConfiguration"))

(smithy/sdk/shapes:define-structure extended-s3destination-description
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "ErrorOutputPrefix")
                                     (buffering-hints :target-type
                                      buffering-hints :required common-lisp:t
                                      :member-name "BufferingHints")
                                     (compression-format :target-type
                                      compression-format :required
                                      common-lisp:t :member-name
                                      "CompressionFormat")
                                     (encryption-configuration :target-type
                                      encryption-configuration :required
                                      common-lisp:t :member-name
                                      "EncryptionConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type s3backup-mode
                                      :member-name "S3BackupMode")
                                     (s3backup-description :target-type
                                      s3destination-description :member-name
                                      "S3BackupDescription")
                                     (data-format-conversion-configuration
                                      :target-type
                                      data-format-conversion-configuration
                                      :member-name
                                      "DataFormatConversionConfiguration")
                                     (dynamic-partitioning-configuration
                                      :target-type
                                      dynamic-partitioning-configuration
                                      :member-name
                                      "DynamicPartitioningConfiguration")
                                     (file-extension :target-type
                                      file-extension :member-name
                                      "FileExtension")
                                     (custom-time-zone :target-type
                                      custom-time-zone :member-name
                                      "CustomTimeZone"))
                                    (:shape-name
                                     "ExtendedS3DestinationDescription"))

(smithy/sdk/shapes:define-structure extended-s3destination-update
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :member-name "BucketARN")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "ErrorOutputPrefix")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (compression-format :target-type
                                      compression-format :member-name
                                      "CompressionFormat")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type s3backup-mode
                                      :member-name "S3BackupMode")
                                     (s3backup-update :target-type
                                      s3destination-update :member-name
                                      "S3BackupUpdate")
                                     (data-format-conversion-configuration
                                      :target-type
                                      data-format-conversion-configuration
                                      :member-name
                                      "DataFormatConversionConfiguration")
                                     (dynamic-partitioning-configuration
                                      :target-type
                                      dynamic-partitioning-configuration
                                      :member-name
                                      "DynamicPartitioningConfiguration")
                                     (file-extension :target-type
                                      file-extension :member-name
                                      "FileExtension")
                                     (custom-time-zone :target-type
                                      custom-time-zone :member-name
                                      "CustomTimeZone"))
                                    (:shape-name "ExtendedS3DestinationUpdate"))

(smithy/sdk/shapes:define-structure failure-description common-lisp:nil
                                    ((type :target-type
                                      delivery-stream-failure-type :required
                                      common-lisp:t :member-name "Type")
                                     (details :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "Details"))
                                    (:shape-name "FailureDescription"))

(smithy/sdk/shapes:define-type file-extension smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glue-data-catalog-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hecacknowledgment-timeout-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type hecendpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum hecendpoint-type
    common-lisp:nil
  (:raw "Raw")
  (:event "Event"))

(smithy/sdk/shapes:define-type hectoken smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure hive-json-ser-de common-lisp:nil
                                    ((timestamp-formats :target-type
                                      list-of-non-empty-strings :member-name
                                      "TimestampFormats"))
                                    (:shape-name "HiveJsonSerDe"))

(smithy/sdk/shapes:define-type http-endpoint-access-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-endpoint-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-endpoint-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-endpoint-buffering-hints
                                    common-lisp:nil
                                    ((size-in-mbs :target-type
                                      http-endpoint-buffering-size-in-mbs
                                      :member-name "SizeInMBs")
                                     (interval-in-seconds :target-type
                                      http-endpoint-buffering-interval-in-seconds
                                      :member-name "IntervalInSeconds"))
                                    (:shape-name "HttpEndpointBufferingHints"))

(smithy/sdk/shapes:define-type http-endpoint-buffering-interval-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type http-endpoint-buffering-size-in-mbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure http-endpoint-common-attribute
                                    common-lisp:nil
                                    ((attribute-name :target-type
                                      http-endpoint-attribute-name :required
                                      common-lisp:t :member-name
                                      "AttributeName")
                                     (attribute-value :target-type
                                      http-endpoint-attribute-value :required
                                      common-lisp:t :member-name
                                      "AttributeValue"))
                                    (:shape-name "HttpEndpointCommonAttribute"))

(smithy/sdk/shapes:define-list http-endpoint-common-attributes-list :member
                               http-endpoint-common-attribute)

(smithy/sdk/shapes:define-structure http-endpoint-configuration common-lisp:nil
                                    ((url :target-type http-endpoint-url
                                      :required common-lisp:t :member-name
                                      "Url")
                                     (name :target-type http-endpoint-name
                                      :member-name "Name")
                                     (access-key :target-type
                                      http-endpoint-access-key :member-name
                                      "AccessKey"))
                                    (:shape-name "HttpEndpointConfiguration"))

(smithy/sdk/shapes:define-structure http-endpoint-description common-lisp:nil
                                    ((url :target-type http-endpoint-url
                                      :member-name "Url")
                                     (name :target-type http-endpoint-name
                                      :member-name "Name"))
                                    (:shape-name "HttpEndpointDescription"))

(smithy/sdk/shapes:define-structure http-endpoint-destination-configuration
                                    common-lisp:nil
                                    ((endpoint-configuration :target-type
                                      http-endpoint-configuration :required
                                      common-lisp:t :member-name
                                      "EndpointConfiguration")
                                     (buffering-hints :target-type
                                      http-endpoint-buffering-hints
                                      :member-name "BufferingHints")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (request-configuration :target-type
                                      http-endpoint-request-configuration
                                      :member-name "RequestConfiguration")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (retry-options :target-type
                                      http-endpoint-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      http-endpoint-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3configuration :target-type
                                      s3destination-configuration :required
                                      common-lisp:t :member-name
                                      "S3Configuration")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "HttpEndpointDestinationConfiguration"))

(smithy/sdk/shapes:define-structure http-endpoint-destination-description
                                    common-lisp:nil
                                    ((endpoint-configuration :target-type
                                      http-endpoint-description :member-name
                                      "EndpointConfiguration")
                                     (buffering-hints :target-type
                                      http-endpoint-buffering-hints
                                      :member-name "BufferingHints")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (request-configuration :target-type
                                      http-endpoint-request-configuration
                                      :member-name "RequestConfiguration")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (retry-options :target-type
                                      http-endpoint-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      http-endpoint-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3destination-description :target-type
                                      s3destination-description :member-name
                                      "S3DestinationDescription")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "HttpEndpointDestinationDescription"))

(smithy/sdk/shapes:define-structure http-endpoint-destination-update
                                    common-lisp:nil
                                    ((endpoint-configuration :target-type
                                      http-endpoint-configuration :member-name
                                      "EndpointConfiguration")
                                     (buffering-hints :target-type
                                      http-endpoint-buffering-hints
                                      :member-name "BufferingHints")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (request-configuration :target-type
                                      http-endpoint-request-configuration
                                      :member-name "RequestConfiguration")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (retry-options :target-type
                                      http-endpoint-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      http-endpoint-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3update :target-type
                                      s3destination-update :member-name
                                      "S3Update")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "HttpEndpointDestinationUpdate"))

(smithy/sdk/shapes:define-type http-endpoint-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-endpoint-request-configuration
                                    common-lisp:nil
                                    ((content-encoding :target-type
                                      content-encoding :member-name
                                      "ContentEncoding")
                                     (common-attributes :target-type
                                      http-endpoint-common-attributes-list
                                      :member-name "CommonAttributes"))
                                    (:shape-name
                                     "HttpEndpointRequestConfiguration"))

(smithy/sdk/shapes:define-type http-endpoint-retry-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure http-endpoint-retry-options common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      http-endpoint-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name "HttpEndpointRetryOptions"))

(smithy/sdk/shapes:define-enum http-endpoint-s3backup-mode
    common-lisp:nil
  (:failed-data-only "FailedDataOnly")
  (:all-data "AllData"))

(smithy/sdk/shapes:define-type http-endpoint-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iceberg-destination-configuration
                                    common-lisp:nil
                                    ((destination-table-configuration-list
                                      :target-type
                                      destination-table-configuration-list
                                      :member-name
                                      "DestinationTableConfigurationList")
                                     (schema-evolution-configuration
                                      :target-type
                                      schema-evolution-configuration
                                      :member-name
                                      "SchemaEvolutionConfiguration")
                                     (table-creation-configuration :target-type
                                      table-creation-configuration :member-name
                                      "TableCreationConfiguration")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type
                                      iceberg-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (retry-options :target-type retry-options
                                      :member-name "RetryOptions")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (append-only :target-type boolean-object
                                      :member-name "AppendOnly")
                                     (catalog-configuration :target-type
                                      catalog-configuration :required
                                      common-lisp:t :member-name
                                      "CatalogConfiguration")
                                     (s3configuration :target-type
                                      s3destination-configuration :required
                                      common-lisp:t :member-name
                                      "S3Configuration"))
                                    (:shape-name
                                     "IcebergDestinationConfiguration"))

(smithy/sdk/shapes:define-structure iceberg-destination-description
                                    common-lisp:nil
                                    ((destination-table-configuration-list
                                      :target-type
                                      destination-table-configuration-list
                                      :member-name
                                      "DestinationTableConfigurationList")
                                     (schema-evolution-configuration
                                      :target-type
                                      schema-evolution-configuration
                                      :member-name
                                      "SchemaEvolutionConfiguration")
                                     (table-creation-configuration :target-type
                                      table-creation-configuration :member-name
                                      "TableCreationConfiguration")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type
                                      iceberg-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (retry-options :target-type retry-options
                                      :member-name "RetryOptions")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (append-only :target-type boolean-object
                                      :member-name "AppendOnly")
                                     (catalog-configuration :target-type
                                      catalog-configuration :member-name
                                      "CatalogConfiguration")
                                     (s3destination-description :target-type
                                      s3destination-description :member-name
                                      "S3DestinationDescription"))
                                    (:shape-name
                                     "IcebergDestinationDescription"))

(smithy/sdk/shapes:define-structure iceberg-destination-update common-lisp:nil
                                    ((destination-table-configuration-list
                                      :target-type
                                      destination-table-configuration-list
                                      :member-name
                                      "DestinationTableConfigurationList")
                                     (schema-evolution-configuration
                                      :target-type
                                      schema-evolution-configuration
                                      :member-name
                                      "SchemaEvolutionConfiguration")
                                     (table-creation-configuration :target-type
                                      table-creation-configuration :member-name
                                      "TableCreationConfiguration")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type
                                      iceberg-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (retry-options :target-type retry-options
                                      :member-name "RetryOptions")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (append-only :target-type boolean-object
                                      :member-name "AppendOnly")
                                     (catalog-configuration :target-type
                                      catalog-configuration :member-name
                                      "CatalogConfiguration")
                                     (s3configuration :target-type
                                      s3destination-configuration :member-name
                                      "S3Configuration"))
                                    (:shape-name "IcebergDestinationUpdate"))

(smithy/sdk/shapes:define-enum iceberg-s3backup-mode
    common-lisp:nil
  (:failed-data-only "FailedDataOnly")
  (:all-data "AllData"))

(smithy/sdk/shapes:define-structure input-format-configuration common-lisp:nil
                                    ((deserializer :target-type deserializer
                                      :member-name "Deserializer"))
                                    (:shape-name "InputFormatConfiguration"))

(smithy/sdk/shapes:define-type interval-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-kmsresource-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "code")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidKMSResourceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-source-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "code")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSourceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure kmsencryption-config common-lisp:nil
                                    ((awskmskey-arn :target-type awskmskey-arn
                                      :required common-lisp:t :member-name
                                      "AWSKMSKeyARN"))
                                    (:shape-name "KMSEncryptionConfig"))

(smithy/sdk/shapes:define-enum key-type
    common-lisp:nil
  (:aws-owned-cmk "AWS_OWNED_CMK")
  (:customer-managed-cmk "CUSTOMER_MANAGED_CMK"))

(smithy/sdk/shapes:define-type kinesis-stream-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-stream-source-configuration
                                    common-lisp:nil
                                    ((kinesis-stream-arn :target-type
                                      kinesis-stream-arn :required
                                      common-lisp:t :member-name
                                      "KinesisStreamARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisStreamSourceConfiguration"))

(smithy/sdk/shapes:define-structure kinesis-stream-source-description
                                    common-lisp:nil
                                    ((kinesis-stream-arn :target-type
                                      kinesis-stream-arn :member-name
                                      "KinesisStreamARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (delivery-start-timestamp :target-type
                                      delivery-start-timestamp :member-name
                                      "DeliveryStartTimestamp"))
                                    (:shape-name
                                     "KinesisStreamSourceDescription"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-delivery-streams-input common-lisp:nil
                                ((limit :target-type
                                  list-delivery-streams-input-limit
                                  :member-name "Limit")
                                 (delivery-stream-type :target-type
                                  delivery-stream-type :member-name
                                  "DeliveryStreamType")
                                 (exclusive-start-delivery-stream-name
                                  :target-type delivery-stream-name
                                  :member-name
                                  "ExclusiveStartDeliveryStreamName"))
                                (:shape-name "ListDeliveryStreamsInput"))

(smithy/sdk/shapes:define-type list-delivery-streams-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-delivery-streams-output common-lisp:nil
                                 ((delivery-stream-names :target-type
                                   delivery-stream-name-list :required
                                   common-lisp:t :member-name
                                   "DeliveryStreamNames")
                                  (has-more-delivery-streams :target-type
                                   boolean-object :required common-lisp:t
                                   :member-name "HasMoreDeliveryStreams"))
                                 (:shape-name "ListDeliveryStreamsOutput"))

(smithy/sdk/shapes:define-list list-of-non-empty-strings :member
                               non-empty-string)

(smithy/sdk/shapes:define-list list-of-non-empty-strings-without-whitespace
                               :member non-empty-string-without-whitespace)

(smithy/sdk/shapes:define-input list-tags-for-delivery-stream-input
                                common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (exclusive-start-tag-key :target-type tag-key
                                  :member-name "ExclusiveStartTagKey")
                                 (limit :target-type
                                  list-tags-for-delivery-stream-input-limit
                                  :member-name "Limit"))
                                (:shape-name "ListTagsForDeliveryStreamInput"))

(smithy/sdk/shapes:define-type list-tags-for-delivery-stream-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-tags-for-delivery-stream-output
                                 common-lisp:nil
                                 ((tags :target-type
                                   list-tags-for-delivery-stream-output-tag-list
                                   :required common-lisp:t :member-name "Tags")
                                  (has-more-tags :target-type boolean-object
                                   :required common-lisp:t :member-name
                                   "HasMoreTags"))
                                 (:shape-name
                                  "ListTagsForDeliveryStreamOutput"))

(smithy/sdk/shapes:define-list list-tags-for-delivery-stream-output-tag-list
                               :member tag)

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mskcluster-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure msksource-configuration common-lisp:nil
                                    ((mskcluster-arn :target-type
                                      mskcluster-arn :required common-lisp:t
                                      :member-name "MSKClusterARN")
                                     (topic-name :target-type topic-name
                                      :required common-lisp:t :member-name
                                      "TopicName")
                                     (authentication-configuration :target-type
                                      authentication-configuration :required
                                      common-lisp:t :member-name
                                      "AuthenticationConfiguration")
                                     (read-from-timestamp :target-type
                                      read-from-timestamp :member-name
                                      "ReadFromTimestamp"))
                                    (:shape-name "MSKSourceConfiguration"))

(smithy/sdk/shapes:define-structure msksource-description common-lisp:nil
                                    ((mskcluster-arn :target-type
                                      mskcluster-arn :member-name
                                      "MSKClusterARN")
                                     (topic-name :target-type topic-name
                                      :member-name "TopicName")
                                     (authentication-configuration :target-type
                                      authentication-configuration :member-name
                                      "AuthenticationConfiguration")
                                     (delivery-start-timestamp :target-type
                                      delivery-start-timestamp :member-name
                                      "DeliveryStartTimestamp")
                                     (read-from-timestamp :target-type
                                      read-from-timestamp :member-name
                                      "ReadFromTimestamp"))
                                    (:shape-name "MSKSourceDescription"))

(smithy/sdk/shapes:define-enum no-encryption-config
    common-lisp:nil
  (:no-encryption "NoEncryption"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string-without-whitespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-integer-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure open-xjson-ser-de common-lisp:nil
                                    ((convert-dots-in-json-keys-to-underscores
                                      :target-type boolean-object :member-name
                                      "ConvertDotsInJsonKeysToUnderscores")
                                     (case-insensitive :target-type
                                      boolean-object :member-name
                                      "CaseInsensitive")
                                     (column-to-json-key-mappings :target-type
                                      column-to-json-key-mappings :member-name
                                      "ColumnToJsonKeyMappings"))
                                    (:shape-name "OpenXJsonSerDe"))

(smithy/sdk/shapes:define-enum orc-compression
    common-lisp:nil
  (:none "NONE")
  (:zlib "ZLIB")
  (:snappy "SNAPPY"))

(smithy/sdk/shapes:define-enum orc-format-version
    common-lisp:nil
  (:v0-11 "V0_11")
  (:v0-12 "V0_12"))

(smithy/sdk/shapes:define-type orc-row-index-stride
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure orc-ser-de common-lisp:nil
                                    ((stripe-size-bytes :target-type
                                      orc-stripe-size-bytes :member-name
                                      "StripeSizeBytes")
                                     (block-size-bytes :target-type
                                      block-size-bytes :member-name
                                      "BlockSizeBytes")
                                     (row-index-stride :target-type
                                      orc-row-index-stride :member-name
                                      "RowIndexStride")
                                     (enable-padding :target-type
                                      boolean-object :member-name
                                      "EnablePadding")
                                     (padding-tolerance :target-type proportion
                                      :member-name "PaddingTolerance")
                                     (compression :target-type orc-compression
                                      :member-name "Compression")
                                     (bloom-filter-columns :target-type
                                      list-of-non-empty-strings-without-whitespace
                                      :member-name "BloomFilterColumns")
                                     (bloom-filter-false-positive-probability
                                      :target-type proportion :member-name
                                      "BloomFilterFalsePositiveProbability")
                                     (dictionary-key-threshold :target-type
                                      proportion :member-name
                                      "DictionaryKeyThreshold")
                                     (format-version :target-type
                                      orc-format-version :member-name
                                      "FormatVersion"))
                                    (:shape-name "OrcSerDe"))

(smithy/sdk/shapes:define-type orc-stripe-size-bytes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure output-format-configuration common-lisp:nil
                                    ((serializer :target-type serializer
                                      :member-name "Serializer"))
                                    (:shape-name "OutputFormatConfiguration"))

(smithy/sdk/shapes:define-enum parquet-compression
    common-lisp:nil
  (:uncompressed "UNCOMPRESSED")
  (:gzip "GZIP")
  (:snappy "SNAPPY"))

(smithy/sdk/shapes:define-type parquet-page-size-bytes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure parquet-ser-de common-lisp:nil
                                    ((block-size-bytes :target-type
                                      block-size-bytes :member-name
                                      "BlockSizeBytes")
                                     (page-size-bytes :target-type
                                      parquet-page-size-bytes :member-name
                                      "PageSizeBytes")
                                     (compression :target-type
                                      parquet-compression :member-name
                                      "Compression")
                                     (enable-dictionary-compression
                                      :target-type boolean-object :member-name
                                      "EnableDictionaryCompression")
                                     (max-padding-bytes :target-type
                                      non-negative-integer-object :member-name
                                      "MaxPaddingBytes")
                                     (writer-version :target-type
                                      parquet-writer-version :member-name
                                      "WriterVersion"))
                                    (:shape-name "ParquetSerDe"))

(smithy/sdk/shapes:define-enum parquet-writer-version
    common-lisp:nil
  (:v1 "V1")
  (:v2 "V2"))

(smithy/sdk/shapes:define-structure partition-field common-lisp:nil
                                    ((source-name :target-type
                                      non-empty-string-without-whitespace
                                      :required common-lisp:t :member-name
                                      "SourceName"))
                                    (:shape-name "PartitionField"))

(smithy/sdk/shapes:define-list partition-fields :member partition-field)

(smithy/sdk/shapes:define-structure partition-spec common-lisp:nil
                                    ((identity :target-type partition-fields
                                      :member-name "Identity"))
                                    (:shape-name "PartitionSpec"))

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure processing-configuration common-lisp:nil
                                    ((enabled :target-type boolean-object
                                      :member-name "Enabled")
                                     (processors :target-type processor-list
                                      :member-name "Processors"))
                                    (:shape-name "ProcessingConfiguration"))

(smithy/sdk/shapes:define-structure processor common-lisp:nil
                                    ((type :target-type processor-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (parameters :target-type
                                      processor-parameter-list :member-name
                                      "Parameters"))
                                    (:shape-name "Processor"))

(smithy/sdk/shapes:define-list processor-list :member processor)

(smithy/sdk/shapes:define-structure processor-parameter common-lisp:nil
                                    ((parameter-name :target-type
                                      processor-parameter-name :required
                                      common-lisp:t :member-name
                                      "ParameterName")
                                     (parameter-value :target-type
                                      processor-parameter-value :required
                                      common-lisp:t :member-name
                                      "ParameterValue"))
                                    (:shape-name "ProcessorParameter"))

(smithy/sdk/shapes:define-list processor-parameter-list :member
                               processor-parameter)

(smithy/sdk/shapes:define-enum processor-parameter-name
    common-lisp:nil
  (:lambda-arn "LambdaArn")
  (:lambda-number-of-retries "NumberOfRetries")
  (:metadata-extraction-query "MetadataExtractionQuery")
  (:json-parsing-engine "JsonParsingEngine")
  (:role-arn "RoleArn")
  (:buffer-size-in-mb "BufferSizeInMBs")
  (:buffer-interval-in-seconds "BufferIntervalInSeconds")
  (:sub-record-type "SubRecordType")
  (:delimiter "Delimiter")
  (:compression-format "CompressionFormat")
  (:data-message-extraction "DataMessageExtraction"))

(smithy/sdk/shapes:define-type processor-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum processor-type
    common-lisp:nil
  (:record-de-aggregation "RecordDeAggregation")
  (:decompression "Decompression")
  (:cloud-watch-log-processing "CloudWatchLogProcessing")
  (:lambda "Lambda")
  (:metadata-extraction "MetadataExtraction")
  (:append-delimiter-to-record "AppendDelimiterToRecord"))

(smithy/sdk/shapes:define-type proportion smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input put-record-batch-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (records :target-type
                                  put-record-batch-request-entry-list :required
                                  common-lisp:t :member-name "Records"))
                                (:shape-name "PutRecordBatchInput"))

(smithy/sdk/shapes:define-output put-record-batch-output common-lisp:nil
                                 ((failed-put-count :target-type
                                   non-negative-integer-object :required
                                   common-lisp:t :member-name "FailedPutCount")
                                  (encrypted :target-type boolean-object
                                   :member-name "Encrypted")
                                  (request-responses :target-type
                                   put-record-batch-response-entry-list
                                   :required common-lisp:t :member-name
                                   "RequestResponses"))
                                 (:shape-name "PutRecordBatchOutput"))

(smithy/sdk/shapes:define-list put-record-batch-request-entry-list :member
                               record)

(smithy/sdk/shapes:define-structure put-record-batch-response-entry
                                    common-lisp:nil
                                    ((record-id :target-type
                                      put-response-record-id :member-name
                                      "RecordId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PutRecordBatchResponseEntry"))

(smithy/sdk/shapes:define-list put-record-batch-response-entry-list :member
                               put-record-batch-response-entry)

(smithy/sdk/shapes:define-input put-record-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (record :target-type record :required
                                  common-lisp:t :member-name "Record"))
                                (:shape-name "PutRecordInput"))

(smithy/sdk/shapes:define-output put-record-output common-lisp:nil
                                 ((record-id :target-type
                                   put-response-record-id :required
                                   common-lisp:t :member-name "RecordId")
                                  (encrypted :target-type boolean-object
                                   :member-name "Encrypted"))
                                 (:shape-name "PutRecordOutput"))

(smithy/sdk/shapes:define-type put-response-record-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-from-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((data :target-type data :required
                                      common-lisp:t :member-name "Data"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-structure redshift-destination-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (cluster-jdbcurl :target-type
                                      cluster-jdbcurl :required common-lisp:t
                                      :member-name "ClusterJDBCURL")
                                     (copy-command :target-type copy-command
                                      :required common-lisp:t :member-name
                                      "CopyCommand")
                                     (username :target-type username
                                      :member-name "Username")
                                     (password :target-type password
                                      :member-name "Password")
                                     (retry-options :target-type
                                      redshift-retry-options :member-name
                                      "RetryOptions")
                                     (s3configuration :target-type
                                      s3destination-configuration :required
                                      common-lisp:t :member-name
                                      "S3Configuration")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type
                                      redshift-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3backup-configuration :target-type
                                      s3destination-configuration :member-name
                                      "S3BackupConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "RedshiftDestinationConfiguration"))

(smithy/sdk/shapes:define-structure redshift-destination-description
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (cluster-jdbcurl :target-type
                                      cluster-jdbcurl :required common-lisp:t
                                      :member-name "ClusterJDBCURL")
                                     (copy-command :target-type copy-command
                                      :required common-lisp:t :member-name
                                      "CopyCommand")
                                     (username :target-type username
                                      :member-name "Username")
                                     (retry-options :target-type
                                      redshift-retry-options :member-name
                                      "RetryOptions")
                                     (s3destination-description :target-type
                                      s3destination-description :required
                                      common-lisp:t :member-name
                                      "S3DestinationDescription")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type
                                      redshift-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3backup-description :target-type
                                      s3destination-description :member-name
                                      "S3BackupDescription")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "RedshiftDestinationDescription"))

(smithy/sdk/shapes:define-structure redshift-destination-update common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (cluster-jdbcurl :target-type
                                      cluster-jdbcurl :member-name
                                      "ClusterJDBCURL")
                                     (copy-command :target-type copy-command
                                      :member-name "CopyCommand")
                                     (username :target-type username
                                      :member-name "Username")
                                     (password :target-type password
                                      :member-name "Password")
                                     (retry-options :target-type
                                      redshift-retry-options :member-name
                                      "RetryOptions")
                                     (s3update :target-type
                                      s3destination-update :member-name
                                      "S3Update")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (s3backup-mode :target-type
                                      redshift-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3backup-update :target-type
                                      s3destination-update :member-name
                                      "S3BackupUpdate")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name "RedshiftDestinationUpdate"))

(smithy/sdk/shapes:define-type redshift-retry-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure redshift-retry-options common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      redshift-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name "RedshiftRetryOptions"))

(smithy/sdk/shapes:define-enum redshift-s3backup-mode
    common-lisp:nil
  (:disabled "Disabled")
  (:enabled "Enabled"))

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

(smithy/sdk/shapes:define-type retry-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retry-options common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      retry-duration-in-seconds :member-name
                                      "DurationInSeconds"))
                                    (:shape-name "RetryOptions"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3backup-mode
    common-lisp:nil
  (:disabled "Disabled")
  (:enabled "Enabled"))

(smithy/sdk/shapes:define-structure s3destination-configuration common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "ErrorOutputPrefix")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (compression-format :target-type
                                      compression-format :member-name
                                      "CompressionFormat")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions"))
                                    (:shape-name "S3DestinationConfiguration"))

(smithy/sdk/shapes:define-structure s3destination-description common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "ErrorOutputPrefix")
                                     (buffering-hints :target-type
                                      buffering-hints :required common-lisp:t
                                      :member-name "BufferingHints")
                                     (compression-format :target-type
                                      compression-format :required
                                      common-lisp:t :member-name
                                      "CompressionFormat")
                                     (encryption-configuration :target-type
                                      encryption-configuration :required
                                      common-lisp:t :member-name
                                      "EncryptionConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions"))
                                    (:shape-name "S3DestinationDescription"))

(smithy/sdk/shapes:define-structure s3destination-update common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :member-name "BucketARN")
                                     (prefix :target-type prefix :member-name
                                      "Prefix")
                                     (error-output-prefix :target-type
                                      error-output-prefix :member-name
                                      "ErrorOutputPrefix")
                                     (buffering-hints :target-type
                                      buffering-hints :member-name
                                      "BufferingHints")
                                     (compression-format :target-type
                                      compression-format :member-name
                                      "CompressionFormat")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions"))
                                    (:shape-name "S3DestinationUpdate"))

(smithy/sdk/shapes:define-enum sslmode
    common-lisp:nil
  (:disabled "Disabled")
  (:enabled "Enabled"))

(smithy/sdk/shapes:define-structure schema-configuration common-lisp:nil
                                    ((role-arn :target-type
                                      non-empty-string-without-whitespace
                                      :member-name "RoleARN")
                                     (catalog-id :target-type
                                      non-empty-string-without-whitespace
                                      :member-name "CatalogId")
                                     (database-name :target-type
                                      non-empty-string-without-whitespace
                                      :member-name "DatabaseName")
                                     (table-name :target-type
                                      non-empty-string-without-whitespace
                                      :member-name "TableName")
                                     (region :target-type
                                      non-empty-string-without-whitespace
                                      :member-name "Region")
                                     (version-id :target-type
                                      non-empty-string-without-whitespace
                                      :member-name "VersionId"))
                                    (:shape-name "SchemaConfiguration"))

(smithy/sdk/shapes:define-structure schema-evolution-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean-object
                                      :required common-lisp:t :member-name
                                      "Enabled"))
                                    (:shape-name
                                     "SchemaEvolutionConfiguration"))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure secrets-manager-configuration
                                    common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :member-name "SecretARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (enabled :target-type boolean-object
                                      :required common-lisp:t :member-name
                                      "Enabled"))
                                    (:shape-name "SecretsManagerConfiguration"))

(smithy/sdk/shapes:define-list security-group-id-list :member
                               non-empty-string-without-whitespace)

(smithy/sdk/shapes:define-structure serializer common-lisp:nil
                                    ((parquet-ser-de :target-type
                                      parquet-ser-de :member-name
                                      "ParquetSerDe")
                                     (orc-ser-de :target-type orc-ser-de
                                      :member-name "OrcSerDe"))
                                    (:shape-name "Serializer"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type size-in-mbs smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum snapshot-requested-by
    common-lisp:nil
  (:user "USER")
  (:firehose "FIREHOSE"))

(smithy/sdk/shapes:define-enum snapshot-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-type snowflake-account-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snowflake-buffering-hints common-lisp:nil
                                    ((size-in-mbs :target-type
                                      snowflake-buffering-size-in-mbs
                                      :member-name "SizeInMBs")
                                     (interval-in-seconds :target-type
                                      snowflake-buffering-interval-in-seconds
                                      :member-name "IntervalInSeconds"))
                                    (:shape-name "SnowflakeBufferingHints"))

(smithy/sdk/shapes:define-type snowflake-buffering-interval-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type snowflake-buffering-size-in-mbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type snowflake-content-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum snowflake-data-loading-option
    common-lisp:nil
  (:json-mapping "JSON_MAPPING")
  (:variant-content-mapping "VARIANT_CONTENT_MAPPING")
  (:variant-content-and-metadata-mapping
   "VARIANT_CONTENT_AND_METADATA_MAPPING"))

(smithy/sdk/shapes:define-type snowflake-database
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snowflake-destination-configuration
                                    common-lisp:nil
                                    ((account-url :target-type
                                      snowflake-account-url :required
                                      common-lisp:t :member-name "AccountUrl")
                                     (private-key :target-type
                                      snowflake-private-key :member-name
                                      "PrivateKey")
                                     (key-passphrase :target-type
                                      snowflake-key-passphrase :member-name
                                      "KeyPassphrase")
                                     (user :target-type snowflake-user
                                      :member-name "User")
                                     (database :target-type snowflake-database
                                      :required common-lisp:t :member-name
                                      "Database")
                                     (schema :target-type snowflake-schema
                                      :required common-lisp:t :member-name
                                      "Schema")
                                     (table :target-type snowflake-table
                                      :required common-lisp:t :member-name
                                      "Table")
                                     (snowflake-role-configuration :target-type
                                      snowflake-role-configuration :member-name
                                      "SnowflakeRoleConfiguration")
                                     (data-loading-option :target-type
                                      snowflake-data-loading-option
                                      :member-name "DataLoadingOption")
                                     (meta-data-column-name :target-type
                                      snowflake-meta-data-column-name
                                      :member-name "MetaDataColumnName")
                                     (content-column-name :target-type
                                      snowflake-content-column-name
                                      :member-name "ContentColumnName")
                                     (snowflake-vpc-configuration :target-type
                                      snowflake-vpc-configuration :member-name
                                      "SnowflakeVpcConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (retry-options :target-type
                                      snowflake-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      snowflake-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3configuration :target-type
                                      s3destination-configuration :required
                                      common-lisp:t :member-name
                                      "S3Configuration")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration")
                                     (buffering-hints :target-type
                                      snowflake-buffering-hints :member-name
                                      "BufferingHints"))
                                    (:shape-name
                                     "SnowflakeDestinationConfiguration"))

(smithy/sdk/shapes:define-structure snowflake-destination-description
                                    common-lisp:nil
                                    ((account-url :target-type
                                      snowflake-account-url :member-name
                                      "AccountUrl")
                                     (user :target-type snowflake-user
                                      :member-name "User")
                                     (database :target-type snowflake-database
                                      :member-name "Database")
                                     (schema :target-type snowflake-schema
                                      :member-name "Schema")
                                     (table :target-type snowflake-table
                                      :member-name "Table")
                                     (snowflake-role-configuration :target-type
                                      snowflake-role-configuration :member-name
                                      "SnowflakeRoleConfiguration")
                                     (data-loading-option :target-type
                                      snowflake-data-loading-option
                                      :member-name "DataLoadingOption")
                                     (meta-data-column-name :target-type
                                      snowflake-meta-data-column-name
                                      :member-name "MetaDataColumnName")
                                     (content-column-name :target-type
                                      snowflake-content-column-name
                                      :member-name "ContentColumnName")
                                     (snowflake-vpc-configuration :target-type
                                      snowflake-vpc-configuration :member-name
                                      "SnowflakeVpcConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (retry-options :target-type
                                      snowflake-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      snowflake-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3destination-description :target-type
                                      s3destination-description :member-name
                                      "S3DestinationDescription")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration")
                                     (buffering-hints :target-type
                                      snowflake-buffering-hints :member-name
                                      "BufferingHints"))
                                    (:shape-name
                                     "SnowflakeDestinationDescription"))

(smithy/sdk/shapes:define-structure snowflake-destination-update
                                    common-lisp:nil
                                    ((account-url :target-type
                                      snowflake-account-url :member-name
                                      "AccountUrl")
                                     (private-key :target-type
                                      snowflake-private-key :member-name
                                      "PrivateKey")
                                     (key-passphrase :target-type
                                      snowflake-key-passphrase :member-name
                                      "KeyPassphrase")
                                     (user :target-type snowflake-user
                                      :member-name "User")
                                     (database :target-type snowflake-database
                                      :member-name "Database")
                                     (schema :target-type snowflake-schema
                                      :member-name "Schema")
                                     (table :target-type snowflake-table
                                      :member-name "Table")
                                     (snowflake-role-configuration :target-type
                                      snowflake-role-configuration :member-name
                                      "SnowflakeRoleConfiguration")
                                     (data-loading-option :target-type
                                      snowflake-data-loading-option
                                      :member-name "DataLoadingOption")
                                     (meta-data-column-name :target-type
                                      snowflake-meta-data-column-name
                                      :member-name "MetaDataColumnName")
                                     (content-column-name :target-type
                                      snowflake-content-column-name
                                      :member-name "ContentColumnName")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (retry-options :target-type
                                      snowflake-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      snowflake-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3update :target-type
                                      s3destination-update :member-name
                                      "S3Update")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration")
                                     (buffering-hints :target-type
                                      snowflake-buffering-hints :member-name
                                      "BufferingHints"))
                                    (:shape-name "SnowflakeDestinationUpdate"))

(smithy/sdk/shapes:define-type snowflake-key-passphrase
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-meta-data-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-private-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-private-link-vpce-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-retry-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure snowflake-retry-options common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      snowflake-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name "SnowflakeRetryOptions"))

(smithy/sdk/shapes:define-type snowflake-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snowflake-role-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean-object
                                      :member-name "Enabled")
                                     (snowflake-role :target-type
                                      snowflake-role :member-name
                                      "SnowflakeRole"))
                                    (:shape-name "SnowflakeRoleConfiguration"))

(smithy/sdk/shapes:define-enum snowflake-s3backup-mode
    common-lisp:nil
  (:failed-data-only "FailedDataOnly")
  (:all-data "AllData"))

(smithy/sdk/shapes:define-type snowflake-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-table smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snowflake-vpc-configuration common-lisp:nil
                                    ((private-link-vpce-id :target-type
                                      snowflake-private-link-vpce-id :required
                                      common-lisp:t :member-name
                                      "PrivateLinkVpceId"))
                                    (:shape-name "SnowflakeVpcConfiguration"))

(smithy/sdk/shapes:define-structure source-description common-lisp:nil
                                    ((direct-put-source-description
                                      :target-type
                                      direct-put-source-description
                                      :member-name
                                      "DirectPutSourceDescription")
                                     (kinesis-stream-source-description
                                      :target-type
                                      kinesis-stream-source-description
                                      :member-name
                                      "KinesisStreamSourceDescription")
                                     (msksource-description :target-type
                                      msksource-description :member-name
                                      "MSKSourceDescription")
                                     (database-source-description :target-type
                                      database-source-description :member-name
                                      "DatabaseSourceDescription"))
                                    (:shape-name "SourceDescription"))

(smithy/sdk/shapes:define-structure splunk-buffering-hints common-lisp:nil
                                    ((interval-in-seconds :target-type
                                      splunk-buffering-interval-in-seconds
                                      :member-name "IntervalInSeconds")
                                     (size-in-mbs :target-type
                                      splunk-buffering-size-in-mbs :member-name
                                      "SizeInMBs"))
                                    (:shape-name "SplunkBufferingHints"))

(smithy/sdk/shapes:define-type splunk-buffering-interval-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type splunk-buffering-size-in-mbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure splunk-destination-configuration
                                    common-lisp:nil
                                    ((hecendpoint :target-type hecendpoint
                                      :required common-lisp:t :member-name
                                      "HECEndpoint")
                                     (hecendpoint-type :target-type
                                      hecendpoint-type :required common-lisp:t
                                      :member-name "HECEndpointType")
                                     (hectoken :target-type hectoken
                                      :member-name "HECToken")
                                     (hecacknowledgment-timeout-in-seconds
                                      :target-type
                                      hecacknowledgment-timeout-in-seconds
                                      :member-name
                                      "HECAcknowledgmentTimeoutInSeconds")
                                     (retry-options :target-type
                                      splunk-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      splunk-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3configuration :target-type
                                      s3destination-configuration :required
                                      common-lisp:t :member-name
                                      "S3Configuration")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (buffering-hints :target-type
                                      splunk-buffering-hints :member-name
                                      "BufferingHints")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "SplunkDestinationConfiguration"))

(smithy/sdk/shapes:define-structure splunk-destination-description
                                    common-lisp:nil
                                    ((hecendpoint :target-type hecendpoint
                                      :member-name "HECEndpoint")
                                     (hecendpoint-type :target-type
                                      hecendpoint-type :member-name
                                      "HECEndpointType")
                                     (hectoken :target-type hectoken
                                      :member-name "HECToken")
                                     (hecacknowledgment-timeout-in-seconds
                                      :target-type
                                      hecacknowledgment-timeout-in-seconds
                                      :member-name
                                      "HECAcknowledgmentTimeoutInSeconds")
                                     (retry-options :target-type
                                      splunk-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      splunk-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3destination-description :target-type
                                      s3destination-description :member-name
                                      "S3DestinationDescription")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (buffering-hints :target-type
                                      splunk-buffering-hints :member-name
                                      "BufferingHints")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name
                                     "SplunkDestinationDescription"))

(smithy/sdk/shapes:define-structure splunk-destination-update common-lisp:nil
                                    ((hecendpoint :target-type hecendpoint
                                      :member-name "HECEndpoint")
                                     (hecendpoint-type :target-type
                                      hecendpoint-type :member-name
                                      "HECEndpointType")
                                     (hectoken :target-type hectoken
                                      :member-name "HECToken")
                                     (hecacknowledgment-timeout-in-seconds
                                      :target-type
                                      hecacknowledgment-timeout-in-seconds
                                      :member-name
                                      "HECAcknowledgmentTimeoutInSeconds")
                                     (retry-options :target-type
                                      splunk-retry-options :member-name
                                      "RetryOptions")
                                     (s3backup-mode :target-type
                                      splunk-s3backup-mode :member-name
                                      "S3BackupMode")
                                     (s3update :target-type
                                      s3destination-update :member-name
                                      "S3Update")
                                     (processing-configuration :target-type
                                      processing-configuration :member-name
                                      "ProcessingConfiguration")
                                     (cloud-watch-logging-options :target-type
                                      cloud-watch-logging-options :member-name
                                      "CloudWatchLoggingOptions")
                                     (buffering-hints :target-type
                                      splunk-buffering-hints :member-name
                                      "BufferingHints")
                                     (secrets-manager-configuration
                                      :target-type
                                      secrets-manager-configuration
                                      :member-name
                                      "SecretsManagerConfiguration"))
                                    (:shape-name "SplunkDestinationUpdate"))

(smithy/sdk/shapes:define-type splunk-retry-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure splunk-retry-options common-lisp:nil
                                    ((duration-in-seconds :target-type
                                      splunk-retry-duration-in-seconds
                                      :member-name "DurationInSeconds"))
                                    (:shape-name "SplunkRetryOptions"))

(smithy/sdk/shapes:define-enum splunk-s3backup-mode
    common-lisp:nil
  (:failed-events-only "FailedEventsOnly")
  (:all-events "AllEvents"))

(smithy/sdk/shapes:define-input start-delivery-stream-encryption-input
                                common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (delivery-stream-encryption-configuration-input
                                  :target-type
                                  delivery-stream-encryption-configuration-input
                                  :member-name
                                  "DeliveryStreamEncryptionConfigurationInput"))
                                (:shape-name
                                 "StartDeliveryStreamEncryptionInput"))

(smithy/sdk/shapes:define-output start-delivery-stream-encryption-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartDeliveryStreamEncryptionOutput"))

(smithy/sdk/shapes:define-input stop-delivery-stream-encryption-input
                                common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName"))
                                (:shape-name
                                 "StopDeliveryStreamEncryptionInput"))

(smithy/sdk/shapes:define-output stop-delivery-stream-encryption-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopDeliveryStreamEncryptionOutput"))

(smithy/sdk/shapes:define-type string-with-letters-digits-underscores-dots
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member
                               non-empty-string-without-whitespace)

(smithy/sdk/shapes:define-structure table-creation-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean-object
                                      :required common-lisp:t :member-name
                                      "Enabled"))
                                    (:shape-name "TableCreationConfiguration"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-input tag-delivery-stream-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (tags :target-type
                                  tag-delivery-stream-input-tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagDeliveryStreamInput"))

(smithy/sdk/shapes:define-list tag-delivery-stream-input-tag-list :member tag)

(smithy/sdk/shapes:define-output tag-delivery-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagDeliveryStreamOutput"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type throughput-hint-in-mbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type topic-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-delivery-stream-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagDeliveryStreamInput"))

(smithy/sdk/shapes:define-output untag-delivery-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagDeliveryStreamOutput"))

(smithy/sdk/shapes:define-input update-destination-input common-lisp:nil
                                ((delivery-stream-name :target-type
                                  delivery-stream-name :required common-lisp:t
                                  :member-name "DeliveryStreamName")
                                 (current-delivery-stream-version-id
                                  :target-type delivery-stream-version-id
                                  :required common-lisp:t :member-name
                                  "CurrentDeliveryStreamVersionId")
                                 (destination-id :target-type destination-id
                                  :required common-lisp:t :member-name
                                  "DestinationId")
                                 (s3destination-update :target-type
                                  s3destination-update :member-name
                                  "S3DestinationUpdate")
                                 (extended-s3destination-update :target-type
                                  extended-s3destination-update :member-name
                                  "ExtendedS3DestinationUpdate")
                                 (redshift-destination-update :target-type
                                  redshift-destination-update :member-name
                                  "RedshiftDestinationUpdate")
                                 (elasticsearch-destination-update :target-type
                                  elasticsearch-destination-update :member-name
                                  "ElasticsearchDestinationUpdate")
                                 (amazonopensearchservice-destination-update
                                  :target-type
                                  amazonopensearchservice-destination-update
                                  :member-name
                                  "AmazonopensearchserviceDestinationUpdate")
                                 (splunk-destination-update :target-type
                                  splunk-destination-update :member-name
                                  "SplunkDestinationUpdate")
                                 (http-endpoint-destination-update :target-type
                                  http-endpoint-destination-update :member-name
                                  "HttpEndpointDestinationUpdate")
                                 (amazon-open-search-serverless-destination-update
                                  :target-type
                                  amazon-open-search-serverless-destination-update
                                  :member-name
                                  "AmazonOpenSearchServerlessDestinationUpdate")
                                 (snowflake-destination-update :target-type
                                  snowflake-destination-update :member-name
                                  "SnowflakeDestinationUpdate")
                                 (iceberg-destination-update :target-type
                                  iceberg-destination-update :member-name
                                  "IcebergDestinationUpdate"))
                                (:shape-name "UpdateDestinationInput"))

(smithy/sdk/shapes:define-output update-destination-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDestinationOutput"))

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (security-group-ids :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-structure vpc-configuration-description
                                    common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (security-group-ids :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds")
                                     (vpc-id :target-type
                                      non-empty-string-without-whitespace
                                      :required common-lisp:t :member-name
                                      "VpcId"))
                                    (:shape-name "VpcConfigurationDescription"))

(smithy/sdk/shapes:define-type vpc-endpoint-service-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type warehouse-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-delivery-stream :shape-name
                                       "CreateDeliveryStream" :input
                                       create-delivery-stream-input :output
                                       create-delivery-stream-output :errors
                                       (invalid-argument-exception
                                        invalid-kmsresource-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-delivery-stream :shape-name
                                       "DeleteDeliveryStream" :input
                                       delete-delivery-stream-input :output
                                       delete-delivery-stream-output :errors
                                       (resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-delivery-stream :shape-name
                                       "DescribeDeliveryStream" :input
                                       describe-delivery-stream-input :output
                                       describe-delivery-stream-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-delivery-streams :shape-name
                                       "ListDeliveryStreams" :input
                                       list-delivery-streams-input :output
                                       list-delivery-streams-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-tags-for-delivery-stream
                                       :shape-name "ListTagsForDeliveryStream"
                                       :input
                                       list-tags-for-delivery-stream-input
                                       :output
                                       list-tags-for-delivery-stream-output
                                       :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-record :shape-name "PutRecord"
                                       :input put-record-input :output
                                       put-record-output :errors
                                       (invalid-argument-exception
                                        invalid-kmsresource-exception
                                        invalid-source-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation put-record-batch :shape-name
                                       "PutRecordBatch" :input
                                       put-record-batch-input :output
                                       put-record-batch-output :errors
                                       (invalid-argument-exception
                                        invalid-kmsresource-exception
                                        invalid-source-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation start-delivery-stream-encryption
                                       :shape-name
                                       "StartDeliveryStreamEncryption" :input
                                       start-delivery-stream-encryption-input
                                       :output
                                       start-delivery-stream-encryption-output
                                       :errors
                                       (invalid-argument-exception
                                        invalid-kmsresource-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-delivery-stream-encryption
                                       :shape-name
                                       "StopDeliveryStreamEncryption" :input
                                       stop-delivery-stream-encryption-input
                                       :output
                                       stop-delivery-stream-encryption-output
                                       :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-delivery-stream :shape-name
                                       "TagDeliveryStream" :input
                                       tag-delivery-stream-input :output
                                       tag-delivery-stream-output :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-delivery-stream :shape-name
                                       "UntagDeliveryStream" :input
                                       untag-delivery-stream-input :output
                                       untag-delivery-stream-output :errors
                                       (invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-destination :shape-name
                                       "UpdateDestination" :input
                                       update-destination-input :output
                                       update-destination-output :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))
