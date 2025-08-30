(uiop/package:define-package #:pira/qldb (:use)
                             (:export #:amazon-qldb #:arn #:boolean
                              #:cancel-journal-kinesis-stream #:create-ledger
                              #:delete-ledger #:deletion-protection
                              #:describe-journal-kinesis-stream
                              #:describe-journal-s3export #:describe-ledger
                              #:digest #:encryption-status #:error-cause
                              #:error-message #:export-journal-to-s3
                              #:export-status #:get-block #:get-digest
                              #:get-revision #:invalid-parameter-exception
                              #:ion-text #:journal-kinesis-stream-description
                              #:journal-kinesis-stream-description-list
                              #:journal-s3export-description
                              #:journal-s3export-list #:kinesis-configuration
                              #:kms-key #:ledger-encryption-description
                              #:ledger-list #:ledger-name #:ledger-state
                              #:ledger-summary #:limit-exceeded-exception
                              #:list-journal-kinesis-streams-for-ledger
                              #:list-journal-s3exports
                              #:list-journal-s3exports-for-ledger
                              #:list-ledgers #:list-tags-for-resource
                              #:max-results #:next-token #:output-format
                              #:parameter-name #:permissions-mode
                              #:resource-already-exists-exception
                              #:resource-in-use-exception #:resource-name
                              #:resource-not-found-exception
                              #:resource-precondition-not-met-exception
                              #:resource-type #:s3bucket
                              #:s3encryption-configuration
                              #:s3export-configuration
                              #:s3object-encryption-type #:s3prefix
                              #:stream-journal-to-kinesis #:stream-name
                              #:stream-status #:tag-key #:tag-key-list
                              #:tag-resource #:tag-value #:tags #:timestamp
                              #:unique-id #:untag-resource #:update-ledger
                              #:update-ledger-permissions-mode #:value-holder
                              #:qldb-error))
(common-lisp:in-package #:pira/qldb)

(common-lisp:define-condition qldb-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-qldb :shape-name "AmazonQLDB"
                                   :version "2019-01-02" :title "Amazon QLDB"
                                   :operations
                                   '(cancel-journal-kinesis-stream
                                     create-ledger delete-ledger
                                     describe-journal-kinesis-stream
                                     describe-journal-s3export describe-ledger
                                     export-journal-to-s3 get-block get-digest
                                     get-revision
                                     list-journal-kinesis-streams-for-ledger
                                     list-journal-s3exports
                                     list-journal-s3exports-for-ledger
                                     list-ledgers list-tags-for-resource
                                     stream-journal-to-kinesis tag-resource
                                     untag-resource update-ledger
                                     update-ledger-permissions-mode)
                                   :xml-namespace
                                   '(:uri
                                     "http://ledger.amazonaws.com/doc/2019-01-02/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "QLDB")
                                      ("arnNamespace" . "qldb")
                                      ("cloudFormationName" . "QLDB")
                                      ("cloudTrailEventSource"
                                       . "qldb.amazonaws.com")
                                      ("endpointPrefix" . "qldb"))
                                     ("aws.auth#sigv4" ("name" . "qldb"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-journal-kinesis-stream-request
                                common-lisp:nil
                                ((ledger-name :target-type ledger-name
                                  :required common-lisp:t :member-name
                                  "LedgerName" :http-label common-lisp:t)
                                 (stream-id :target-type unique-id :required
                                  common-lisp:t :member-name "StreamId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "CancelJournalKinesisStreamRequest"))

(smithy/sdk/shapes:define-output cancel-journal-kinesis-stream-response
                                 common-lisp:nil
                                 ((stream-id :target-type unique-id
                                   :member-name "StreamId"))
                                 (:shape-name
                                  "CancelJournalKinesisStreamResponse"))

(smithy/sdk/shapes:define-input create-ledger-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tags :member-name "Tags")
                                 (permissions-mode :target-type
                                  permissions-mode :required common-lisp:t
                                  :member-name "PermissionsMode")
                                 (deletion-protection :target-type
                                  deletion-protection :member-name
                                  "DeletionProtection")
                                 (kms-key :target-type kms-key :member-name
                                  "KmsKey"))
                                (:shape-name "CreateLedgerRequest"))

(smithy/sdk/shapes:define-output create-ledger-response common-lisp:nil
                                 ((name :target-type ledger-name :member-name
                                   "Name")
                                  (arn :target-type arn :member-name "Arn")
                                  (state :target-type ledger-state :member-name
                                   "State")
                                  (creation-date-time :target-type timestamp
                                   :member-name "CreationDateTime")
                                  (permissions-mode :target-type
                                   permissions-mode :member-name
                                   "PermissionsMode")
                                  (deletion-protection :target-type
                                   deletion-protection :member-name
                                   "DeletionProtection")
                                  (kms-key-arn :target-type arn :member-name
                                   "KmsKeyArn"))
                                 (:shape-name "CreateLedgerResponse"))

(smithy/sdk/shapes:define-input delete-ledger-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteLedgerRequest"))

(smithy/sdk/shapes:define-type deletion-protection
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input describe-journal-kinesis-stream-request
                                common-lisp:nil
                                ((ledger-name :target-type ledger-name
                                  :required common-lisp:t :member-name
                                  "LedgerName" :http-label common-lisp:t)
                                 (stream-id :target-type unique-id :required
                                  common-lisp:t :member-name "StreamId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeJournalKinesisStreamRequest"))

(smithy/sdk/shapes:define-output describe-journal-kinesis-stream-response
                                 common-lisp:nil
                                 ((stream :target-type
                                   journal-kinesis-stream-description
                                   :member-name "Stream"))
                                 (:shape-name
                                  "DescribeJournalKinesisStreamResponse"))

(smithy/sdk/shapes:define-input describe-journal-s3export-request
                                common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (export-id :target-type unique-id :required
                                  common-lisp:t :member-name "ExportId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeJournalS3ExportRequest"))

(smithy/sdk/shapes:define-output describe-journal-s3export-response
                                 common-lisp:nil
                                 ((export-description :target-type
                                   journal-s3export-description :required
                                   common-lisp:t :member-name
                                   "ExportDescription"))
                                 (:shape-name
                                  "DescribeJournalS3ExportResponse"))

(smithy/sdk/shapes:define-input describe-ledger-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeLedgerRequest"))

(smithy/sdk/shapes:define-output describe-ledger-response common-lisp:nil
                                 ((name :target-type ledger-name :member-name
                                   "Name")
                                  (arn :target-type arn :member-name "Arn")
                                  (state :target-type ledger-state :member-name
                                   "State")
                                  (creation-date-time :target-type timestamp
                                   :member-name "CreationDateTime")
                                  (permissions-mode :target-type
                                   permissions-mode :member-name
                                   "PermissionsMode")
                                  (deletion-protection :target-type
                                   deletion-protection :member-name
                                   "DeletionProtection")
                                  (encryption-description :target-type
                                   ledger-encryption-description :member-name
                                   "EncryptionDescription"))
                                 (:shape-name "DescribeLedgerResponse"))

(smithy/sdk/shapes:define-type digest smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum encryption-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:updating "UPDATING")
  (:kms-key-inaccessible "KMS_KEY_INACCESSIBLE"))

(smithy/sdk/shapes:define-enum error-cause
    common-lisp:nil
  (:kinesis-stream-not-found "KINESIS_STREAM_NOT_FOUND")
  (:iam-permission-revoked "IAM_PERMISSION_REVOKED"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input export-journal-to-s3request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (inclusive-start-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "InclusiveStartTime")
                                 (exclusive-end-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "ExclusiveEndTime")
                                 (s3export-configuration :target-type
                                  s3export-configuration :required
                                  common-lisp:t :member-name
                                  "S3ExportConfiguration")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (output-format :target-type output-format
                                  :member-name "OutputFormat"))
                                (:shape-name "ExportJournalToS3Request"))

(smithy/sdk/shapes:define-output export-journal-to-s3response common-lisp:nil
                                 ((export-id :target-type unique-id :required
                                   common-lisp:t :member-name "ExportId"))
                                 (:shape-name "ExportJournalToS3Response"))

(smithy/sdk/shapes:define-enum export-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-input get-block-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (block-address :target-type value-holder
                                  :required common-lisp:t :member-name
                                  "BlockAddress")
                                 (digest-tip-address :target-type value-holder
                                  :member-name "DigestTipAddress"))
                                (:shape-name "GetBlockRequest"))

(smithy/sdk/shapes:define-output get-block-response common-lisp:nil
                                 ((block :target-type value-holder :required
                                   common-lisp:t :member-name "Block")
                                  (proof :target-type value-holder :member-name
                                   "Proof"))
                                 (:shape-name "GetBlockResponse"))

(smithy/sdk/shapes:define-input get-digest-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDigestRequest"))

(smithy/sdk/shapes:define-output get-digest-response common-lisp:nil
                                 ((digest :target-type digest :required
                                   common-lisp:t :member-name "Digest")
                                  (digest-tip-address :target-type value-holder
                                   :required common-lisp:t :member-name
                                   "DigestTipAddress"))
                                 (:shape-name "GetDigestResponse"))

(smithy/sdk/shapes:define-input get-revision-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (block-address :target-type value-holder
                                  :required common-lisp:t :member-name
                                  "BlockAddress")
                                 (document-id :target-type unique-id :required
                                  common-lisp:t :member-name "DocumentId")
                                 (digest-tip-address :target-type value-holder
                                  :member-name "DigestTipAddress"))
                                (:shape-name "GetRevisionRequest"))

(smithy/sdk/shapes:define-output get-revision-response common-lisp:nil
                                 ((proof :target-type value-holder :member-name
                                   "Proof")
                                  (revision :target-type value-holder :required
                                   common-lisp:t :member-name "Revision"))
                                 (:shape-name "GetRevisionResponse"))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (parameter-name :target-type parameter-name
                                  :member-name "ParameterName"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400) (:base-class qldb-error))

(smithy/sdk/shapes:define-type ion-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure journal-kinesis-stream-description
                                    common-lisp:nil
                                    ((ledger-name :target-type ledger-name
                                      :required common-lisp:t :member-name
                                      "LedgerName")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (inclusive-start-time :target-type
                                      timestamp :member-name
                                      "InclusiveStartTime")
                                     (exclusive-end-time :target-type timestamp
                                      :member-name "ExclusiveEndTime")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (stream-id :target-type unique-id
                                      :required common-lisp:t :member-name
                                      "StreamId")
                                     (arn :target-type arn :member-name "Arn")
                                     (status :target-type stream-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (kinesis-configuration :target-type
                                      kinesis-configuration :required
                                      common-lisp:t :member-name
                                      "KinesisConfiguration")
                                     (error-cause :target-type error-cause
                                      :member-name "ErrorCause")
                                     (stream-name :target-type stream-name
                                      :required common-lisp:t :member-name
                                      "StreamName"))
                                    (:shape-name
                                     "JournalKinesisStreamDescription"))

(smithy/sdk/shapes:define-list journal-kinesis-stream-description-list :member
                               journal-kinesis-stream-description)

(smithy/sdk/shapes:define-structure journal-s3export-description
                                    common-lisp:nil
                                    ((ledger-name :target-type ledger-name
                                      :required common-lisp:t :member-name
                                      "LedgerName")
                                     (export-id :target-type unique-id
                                      :required common-lisp:t :member-name
                                      "ExportId")
                                     (export-creation-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "ExportCreationTime")
                                     (status :target-type export-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (inclusive-start-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "InclusiveStartTime")
                                     (exclusive-end-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "ExclusiveEndTime")
                                     (s3export-configuration :target-type
                                      s3export-configuration :required
                                      common-lisp:t :member-name
                                      "S3ExportConfiguration")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "RoleArn")
                                     (output-format :target-type output-format
                                      :member-name "OutputFormat"))
                                    (:shape-name "JournalS3ExportDescription"))

(smithy/sdk/shapes:define-list journal-s3export-list :member
                               journal-s3export-description)

(smithy/sdk/shapes:define-structure kinesis-configuration common-lisp:nil
                                    ((stream-arn :target-type arn :required
                                      common-lisp:t :member-name "StreamArn")
                                     (aggregation-enabled :target-type boolean
                                      :member-name "AggregationEnabled"))
                                    (:shape-name "KinesisConfiguration"))

(smithy/sdk/shapes:define-type kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ledger-encryption-description
                                    common-lisp:nil
                                    ((kms-key-arn :target-type arn :required
                                      common-lisp:t :member-name "KmsKeyArn")
                                     (encryption-status :target-type
                                      encryption-status :required common-lisp:t
                                      :member-name "EncryptionStatus")
                                     (inaccessible-kms-key-date-time
                                      :target-type timestamp :member-name
                                      "InaccessibleKmsKeyDateTime"))
                                    (:shape-name "LedgerEncryptionDescription"))

(smithy/sdk/shapes:define-list ledger-list :member ledger-summary)

(smithy/sdk/shapes:define-type ledger-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ledger-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure ledger-summary common-lisp:nil
                                    ((name :target-type ledger-name
                                      :member-name "Name")
                                     (state :target-type ledger-state
                                      :member-name "State")
                                     (creation-date-time :target-type timestamp
                                      :member-name "CreationDateTime"))
                                    (:shape-name "LedgerSummary"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400) (:base-class qldb-error))

(smithy/sdk/shapes:define-input list-journal-kinesis-streams-for-ledger-request
                                common-lisp:nil
                                ((ledger-name :target-type ledger-name
                                  :required common-lisp:t :member-name
                                  "LedgerName" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name
                                 "ListJournalKinesisStreamsForLedgerRequest"))

(smithy/sdk/shapes:define-output
 list-journal-kinesis-streams-for-ledger-response common-lisp:nil
 ((streams :target-type journal-kinesis-stream-description-list :member-name
   "Streams")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListJournalKinesisStreamsForLedgerResponse"))

(smithy/sdk/shapes:define-input list-journal-s3exports-for-ledger-request
                                common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name
                                 "ListJournalS3ExportsForLedgerRequest"))

(smithy/sdk/shapes:define-output list-journal-s3exports-for-ledger-response
                                 common-lisp:nil
                                 ((journal-s3exports :target-type
                                   journal-s3export-list :member-name
                                   "JournalS3Exports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListJournalS3ExportsForLedgerResponse"))

(smithy/sdk/shapes:define-input list-journal-s3exports-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name "ListJournalS3ExportsRequest"))

(smithy/sdk/shapes:define-output list-journal-s3exports-response
                                 common-lisp:nil
                                 ((journal-s3exports :target-type
                                   journal-s3export-list :member-name
                                   "JournalS3Exports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListJournalS3ExportsResponse"))

(smithy/sdk/shapes:define-input list-ledgers-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name "ListLedgersRequest"))

(smithy/sdk/shapes:define-output list-ledgers-response common-lisp:nil
                                 ((ledgers :target-type ledger-list
                                   :member-name "Ledgers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLedgersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum output-format
    common-lisp:nil
  (:ion-binary "ION_BINARY")
  (:ion-text "ION_TEXT")
  (:json "JSON"))

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum permissions-mode
    common-lisp:nil
  (:allow-all "ALLOW_ALL")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-name :target-type resource-name
                                  :member-name "ResourceName"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409) (:base-class qldb-error))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-name :target-type resource-name
                                  :member-name "ResourceName"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409) (:base-class qldb-error))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-name :target-type resource-name
                                  :member-name "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class qldb-error))

(smithy/sdk/shapes:define-error resource-precondition-not-met-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-name :target-type resource-name
                                  :member-name "ResourceName"))
                                (:shape-name
                                 "ResourcePreconditionNotMetException")
                                (:error-code 412) (:base-class qldb-error))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3encryption-configuration common-lisp:nil
                                    ((object-encryption-type :target-type
                                      s3object-encryption-type :required
                                      common-lisp:t :member-name
                                      "ObjectEncryptionType")
                                     (kms-key-arn :target-type arn :member-name
                                      "KmsKeyArn"))
                                    (:shape-name "S3EncryptionConfiguration"))

(smithy/sdk/shapes:define-structure s3export-configuration common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type s3prefix :required
                                      common-lisp:t :member-name "Prefix")
                                     (encryption-configuration :target-type
                                      s3encryption-configuration :required
                                      common-lisp:t :member-name
                                      "EncryptionConfiguration"))
                                    (:shape-name "S3ExportConfiguration"))

(smithy/sdk/shapes:define-enum s3object-encryption-type
    common-lisp:nil
  (:sse-kms "SSE_KMS")
  (:sse-s3 "SSE_S3")
  (:no-encryption "NO_ENCRYPTION"))

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stream-journal-to-kinesis-request
                                common-lisp:nil
                                ((ledger-name :target-type ledger-name
                                  :required common-lisp:t :member-name
                                  "LedgerName" :http-label common-lisp:t)
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tags :member-name "Tags")
                                 (inclusive-start-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "InclusiveStartTime")
                                 (exclusive-end-time :target-type timestamp
                                  :member-name "ExclusiveEndTime")
                                 (kinesis-configuration :target-type
                                  kinesis-configuration :required common-lisp:t
                                  :member-name "KinesisConfiguration")
                                 (stream-name :target-type stream-name
                                  :required common-lisp:t :member-name
                                  "StreamName"))
                                (:shape-name "StreamJournalToKinesisRequest"))

(smithy/sdk/shapes:define-output stream-journal-to-kinesis-response
                                 common-lisp:nil
                                 ((stream-id :target-type unique-id
                                   :member-name "StreamId"))
                                 (:shape-name "StreamJournalToKinesisResponse"))

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum stream-status
    common-lisp:nil
  (:active "ACTIVE")
  (:completed "COMPLETED")
  (:canceled "CANCELED")
  (:failed "FAILED")
  (:impaired "IMPAIRED"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type unique-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-ledger-permissions-mode-request
                                common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (permissions-mode :target-type
                                  permissions-mode :required common-lisp:t
                                  :member-name "PermissionsMode"))
                                (:shape-name
                                 "UpdateLedgerPermissionsModeRequest"))

(smithy/sdk/shapes:define-output update-ledger-permissions-mode-response
                                 common-lisp:nil
                                 ((name :target-type ledger-name :member-name
                                   "Name")
                                  (arn :target-type arn :member-name "Arn")
                                  (permissions-mode :target-type
                                   permissions-mode :member-name
                                   "PermissionsMode"))
                                 (:shape-name
                                  "UpdateLedgerPermissionsModeResponse"))

(smithy/sdk/shapes:define-input update-ledger-request common-lisp:nil
                                ((name :target-type ledger-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (deletion-protection :target-type
                                  deletion-protection :member-name
                                  "DeletionProtection")
                                 (kms-key :target-type kms-key :member-name
                                  "KmsKey"))
                                (:shape-name "UpdateLedgerRequest"))

(smithy/sdk/shapes:define-output update-ledger-response common-lisp:nil
                                 ((name :target-type ledger-name :member-name
                                   "Name")
                                  (arn :target-type arn :member-name "Arn")
                                  (state :target-type ledger-state :member-name
                                   "State")
                                  (creation-date-time :target-type timestamp
                                   :member-name "CreationDateTime")
                                  (deletion-protection :target-type
                                   deletion-protection :member-name
                                   "DeletionProtection")
                                  (encryption-description :target-type
                                   ledger-encryption-description :member-name
                                   "EncryptionDescription"))
                                 (:shape-name "UpdateLedgerResponse"))

(smithy/sdk/shapes:define-structure value-holder common-lisp:nil
                                    ((ion-text :target-type ion-text
                                      :member-name "IonText"))
                                    (:shape-name "ValueHolder"))

(smithy/sdk/operation:define-operation cancel-journal-kinesis-stream
                                       :shape-name "CancelJournalKinesisStream"
                                       :input
                                       cancel-journal-kinesis-stream-request
                                       :output
                                       cancel-journal-kinesis-stream-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "DELETE" :uri
                                       "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-ledger :shape-name "CreateLedger"
                                       :input create-ledger-request :output
                                       create-ledger-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception)
                                       :method "POST" :uri "/ledgers" :code 200)

(smithy/sdk/operation:define-operation delete-ledger :shape-name "DeleteLedger"
                                       :input delete-ledger-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "DELETE" :uri "/ledgers/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-journal-kinesis-stream
                                       :shape-name
                                       "DescribeJournalKinesisStream" :input
                                       describe-journal-kinesis-stream-request
                                       :output
                                       describe-journal-kinesis-stream-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "GET" :uri
                                       "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-journal-s3export :shape-name
                                       "DescribeJournalS3Export" :input
                                       describe-journal-s3export-request
                                       :output
                                       describe-journal-s3export-response
                                       :errors (resource-not-found-exception)
                                       :method "GET" :uri
                                       "/ledgers/{Name}/journal-s3-exports/{ExportId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-ledger :shape-name
                                       "DescribeLedger" :input
                                       describe-ledger-request :output
                                       describe-ledger-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/ledgers/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation export-journal-to-s3 :shape-name
                                       "ExportJournalToS3" :input
                                       export-journal-to-s3request :output
                                       export-journal-to-s3response :errors
                                       (resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "POST" :uri
                                       "/ledgers/{Name}/journal-s3-exports"
                                       :code 200)

(smithy/sdk/operation:define-operation get-block :shape-name "GetBlock" :input
                                       get-block-request :output
                                       get-block-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "POST" :uri
                                       "/ledgers/{Name}/block" :code 200)

(smithy/sdk/operation:define-operation get-digest :shape-name "GetDigest"
                                       :input get-digest-request :output
                                       get-digest-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "POST" :uri
                                       "/ledgers/{Name}/digest" :code 200)

(smithy/sdk/operation:define-operation get-revision :shape-name "GetRevision"
                                       :input get-revision-request :output
                                       get-revision-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "POST" :uri
                                       "/ledgers/{Name}/revision" :code 200)

(smithy/sdk/operation:define-operation list-journal-kinesis-streams-for-ledger
                                       :shape-name
                                       "ListJournalKinesisStreamsForLedger"
                                       :input
                                       list-journal-kinesis-streams-for-ledger-request
                                       :output
                                       list-journal-kinesis-streams-for-ledger-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "GET" :uri
                                       "/ledgers/{LedgerName}/journal-kinesis-streams"
                                       :code 200)

(smithy/sdk/operation:define-operation list-journal-s3exports :shape-name
                                       "ListJournalS3Exports" :input
                                       list-journal-s3exports-request :output
                                       list-journal-s3exports-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/journal-s3-exports" :code 200)

(smithy/sdk/operation:define-operation list-journal-s3exports-for-ledger
                                       :shape-name
                                       "ListJournalS3ExportsForLedger" :input
                                       list-journal-s3exports-for-ledger-request
                                       :output
                                       list-journal-s3exports-for-ledger-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/ledgers/{Name}/journal-s3-exports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-ledgers :shape-name "ListLedgers"
                                       :input list-ledgers-request :output
                                       list-ledgers-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/ledgers" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation stream-journal-to-kinesis :shape-name
                                       "StreamJournalToKinesis" :input
                                       stream-journal-to-kinesis-request
                                       :output
                                       stream-journal-to-kinesis-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        resource-precondition-not-met-exception)
                                       :method "POST" :uri
                                       "/ledgers/{LedgerName}/journal-kinesis-streams"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-ledger :shape-name "UpdateLedger"
                                       :input update-ledger-request :output
                                       update-ledger-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri "/ledgers/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-ledger-permissions-mode
                                       :shape-name
                                       "UpdateLedgerPermissionsMode" :input
                                       update-ledger-permissions-mode-request
                                       :output
                                       update-ledger-permissions-mode-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/ledgers/{Name}/permissions-mode" :code
                                       200)
