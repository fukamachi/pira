(uiop/package:define-package #:pira/glacier (:use)
                             (:export #:abort-multipart-upload
                              #:abort-vault-lock #:access-control-policy-list
                              #:action-code #:add-tags-to-vault
                              #:archive-creation-output #:csvinput #:csvoutput
                              #:canned-acl #:complete-multipart-upload
                              #:complete-vault-lock #:create-vault
                              #:data-retrieval-policy #:data-retrieval-rule
                              #:data-retrieval-rules-list #:date-time
                              #:delete-archive #:delete-vault
                              #:delete-vault-access-policy
                              #:delete-vault-notifications #:describe-job
                              #:describe-vault #:describe-vault-output
                              #:encryption #:encryption-type #:expression-type
                              #:file-header-info #:get-data-retrieval-policy
                              #:get-job-output #:get-vault-access-policy
                              #:get-vault-lock #:get-vault-notifications
                              #:glacier #:glacier-job-description #:grant
                              #:grantee #:initiate-job
                              #:initiate-multipart-upload #:initiate-vault-lock
                              #:input-serialization
                              #:inventory-retrieval-job-description
                              #:inventory-retrieval-job-input #:job-list
                              #:job-parameters #:list-jobs
                              #:list-multipart-uploads #:list-parts
                              #:list-provisioned-capacity #:list-tags-for-vault
                              #:list-vaults #:notification-event-list
                              #:nullable-long #:output-location
                              #:output-serialization #:part-list
                              #:part-list-element #:permission
                              #:provisioned-capacity-description
                              #:provisioned-capacity-list
                              #:purchase-provisioned-capacity #:quote-fields
                              #:remove-tags-from-vault #:s3location
                              #:select-parameters #:set-data-retrieval-policy
                              #:set-vault-access-policy
                              #:set-vault-notifications #:size #:status-code
                              #:storage-class #:stream #:tag-key #:tag-key-list
                              #:tag-map #:tag-value #:type #:upload-archive
                              #:upload-list-element #:upload-multipart-part
                              #:uploads-list #:vault-access-policy #:vault-list
                              #:vault-lock-policy #:vault-notification-config
                              #:boolean #:hashmap #:httpstatus #:long #:string))
(common-lisp:in-package #:pira/glacier)

(smithy/sdk/service:define-service glacier :shape-name "Glacier" :version
                                   "2012-06-01" :title "Amazon Glacier"
                                   :operations
                                   '(abort-multipart-upload abort-vault-lock
                                     add-tags-to-vault
                                     complete-multipart-upload
                                     complete-vault-lock create-vault
                                     delete-archive delete-vault
                                     delete-vault-access-policy
                                     delete-vault-notifications describe-job
                                     describe-vault get-data-retrieval-policy
                                     get-job-output get-vault-access-policy
                                     get-vault-lock get-vault-notifications
                                     initiate-job initiate-multipart-upload
                                     initiate-vault-lock list-jobs
                                     list-multipart-uploads list-parts
                                     list-provisioned-capacity
                                     list-tags-for-vault list-vaults
                                     purchase-provisioned-capacity
                                     remove-tags-from-vault
                                     set-data-retrieval-policy
                                     set-vault-access-policy
                                     set-vault-notifications upload-archive
                                     upload-multipart-part)
                                   :xml-namespace
                                   '(:uri
                                     "http://glacier.amazonaws.com/doc/2012-06-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Glacier")
                                      ("arnNamespace" . "glacier")
                                      ("cloudFormationName" . "Glacier")
                                      ("cloudTrailEventSource"
                                       . "glacier.amazonaws.com")
                                      ("endpointPrefix" . "glacier"))
                                     ("aws.auth#sigv4" ("name" . "glacier"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input abort-multipart-upload-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (upload-id :target-type string :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t))
                                (:shape-name "AbortMultipartUploadInput"))

(smithy/sdk/shapes:define-input abort-vault-lock-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "AbortVaultLockInput"))

(smithy/sdk/shapes:define-list access-control-policy-list :member grant)

(smithy/sdk/shapes:define-enum action-code
    common-lisp:nil
  (:archive-retrieval "ArchiveRetrieval")
  (:inventory-retrieval "InventoryRetrieval")
  (:select "Select"))

(smithy/sdk/shapes:define-input add-tags-to-vault-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "AddTagsToVaultInput"))

(smithy/sdk/shapes:define-structure archive-creation-output common-lisp:nil
                                    ((location :target-type string :member-name
                                      "location" :http-header "Location")
                                     (checksum :target-type string :member-name
                                      "checksum" :http-header
                                      "x-amz-sha256-tree-hash")
                                     (archive-id :target-type string
                                      :member-name "archiveId" :http-header
                                      "x-amz-archive-id"))
                                    (:shape-name "ArchiveCreationOutput"))

(smithy/sdk/shapes:define-structure csvinput common-lisp:nil
                                    ((file-header-info :target-type
                                      file-header-info :member-name
                                      "FileHeaderInfo")
                                     (comments :target-type string :member-name
                                      "Comments")
                                     (quote-escape-character :target-type
                                      string :member-name
                                      "QuoteEscapeCharacter")
                                     (record-delimiter :target-type string
                                      :member-name "RecordDelimiter")
                                     (field-delimiter :target-type string
                                      :member-name "FieldDelimiter")
                                     (quote-character :target-type string
                                      :member-name "QuoteCharacter"))
                                    (:shape-name "CSVInput"))

(smithy/sdk/shapes:define-structure csvoutput common-lisp:nil
                                    ((quote-fields :target-type quote-fields
                                      :member-name "QuoteFields")
                                     (quote-escape-character :target-type
                                      string :member-name
                                      "QuoteEscapeCharacter")
                                     (record-delimiter :target-type string
                                      :member-name "RecordDelimiter")
                                     (field-delimiter :target-type string
                                      :member-name "FieldDelimiter")
                                     (quote-character :target-type string
                                      :member-name "QuoteCharacter"))
                                    (:shape-name "CSVOutput"))

(smithy/sdk/shapes:define-enum canned-acl
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:aws-exec-read "aws-exec-read")
  (:authenticated-read "authenticated-read")
  (:bucket-owner-read "bucket-owner-read")
  (:bucket-owner-full-control "bucket-owner-full-control"))

(smithy/sdk/shapes:define-input complete-multipart-upload-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (upload-id :target-type string :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (archive-size :target-type string :member-name
                                  "archiveSize" :http-header
                                  "x-amz-archive-size")
                                 (checksum :target-type string :member-name
                                  "checksum" :http-header
                                  "x-amz-sha256-tree-hash"))
                                (:shape-name "CompleteMultipartUploadInput"))

(smithy/sdk/shapes:define-input complete-vault-lock-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (lock-id :target-type string :required
                                  common-lisp:t :member-name "lockId"
                                  :http-label common-lisp:t))
                                (:shape-name "CompleteVaultLockInput"))

(smithy/sdk/shapes:define-input create-vault-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "CreateVaultInput"))

(smithy/sdk/shapes:define-output create-vault-output common-lisp:nil
                                 ((location :target-type string :member-name
                                   "location" :http-header "Location"))
                                 (:shape-name "CreateVaultOutput"))

(smithy/sdk/shapes:define-structure data-retrieval-policy common-lisp:nil
                                    ((rules :target-type
                                      data-retrieval-rules-list :member-name
                                      "Rules"))
                                    (:shape-name "DataRetrievalPolicy"))

(smithy/sdk/shapes:define-structure data-retrieval-rule common-lisp:nil
                                    ((strategy :target-type string :member-name
                                      "Strategy")
                                     (bytes-per-hour :target-type nullable-long
                                      :member-name "BytesPerHour"))
                                    (:shape-name "DataRetrievalRule"))

(smithy/sdk/shapes:define-list data-retrieval-rules-list :member
                               data-retrieval-rule)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-archive-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (archive-id :target-type string :required
                                  common-lisp:t :member-name "archiveId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteArchiveInput"))

(smithy/sdk/shapes:define-input delete-vault-access-policy-input
                                common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVaultAccessPolicyInput"))

(smithy/sdk/shapes:define-input delete-vault-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVaultInput"))

(smithy/sdk/shapes:define-input delete-vault-notifications-input
                                common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVaultNotificationsInput"))

(smithy/sdk/shapes:define-input describe-job-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type string :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeJobInput"))

(smithy/sdk/shapes:define-input describe-vault-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeVaultInput"))

(smithy/sdk/shapes:define-structure describe-vault-output common-lisp:nil
                                    ((vault-arn :target-type string
                                      :member-name "VaultARN")
                                     (vault-name :target-type string
                                      :member-name "VaultName")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (last-inventory-date :target-type string
                                      :member-name "LastInventoryDate")
                                     (number-of-archives :target-type long
                                      :member-name "NumberOfArchives")
                                     (size-in-bytes :target-type long
                                      :member-name "SizeInBytes"))
                                    (:shape-name "DescribeVaultOutput"))

(smithy/sdk/shapes:define-structure encryption common-lisp:nil
                                    ((encryption-type :target-type
                                      encryption-type :member-name
                                      "EncryptionType")
                                     (kmskey-id :target-type string
                                      :member-name "KMSKeyId")
                                     (kmscontext :target-type string
                                      :member-name "KMSContext"))
                                    (:shape-name "Encryption"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:kms "aws:kms")
  (:s3 "AES256"))

(smithy/sdk/shapes:define-enum expression-type
    common-lisp:nil
  (:sql "SQL"))

(smithy/sdk/shapes:define-enum file-header-info
    common-lisp:nil
  (:use "USE")
  (:ignore "IGNORE")
  (:none "NONE"))

(smithy/sdk/shapes:define-input get-data-retrieval-policy-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataRetrievalPolicyInput"))

(smithy/sdk/shapes:define-output get-data-retrieval-policy-output
                                 common-lisp:nil
                                 ((policy :target-type data-retrieval-policy
                                   :member-name "Policy"))
                                 (:shape-name "GetDataRetrievalPolicyOutput"))

(smithy/sdk/shapes:define-input get-job-output-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type string :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (range :target-type string :member-name
                                  "range" :http-header "Range"))
                                (:shape-name "GetJobOutputInput"))

(smithy/sdk/shapes:define-output get-job-output-output common-lisp:nil
                                 ((body :target-type stream :member-name "body"
                                   :http-payload common-lisp:t)
                                  (checksum :target-type string :member-name
                                   "checksum" :http-header
                                   "x-amz-sha256-tree-hash")
                                  (status :target-type httpstatus :member-name
                                   "status" :http-response-code common-lisp:t)
                                  (content-range :target-type string
                                   :member-name "contentRange" :http-header
                                   "Content-Range")
                                  (accept-ranges :target-type string
                                   :member-name "acceptRanges" :http-header
                                   "Accept-Ranges")
                                  (content-type :target-type string
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (archive-description :target-type string
                                   :member-name "archiveDescription"
                                   :http-header "x-amz-archive-description"))
                                 (:shape-name "GetJobOutputOutput"))

(smithy/sdk/shapes:define-input get-vault-access-policy-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVaultAccessPolicyInput"))

(smithy/sdk/shapes:define-output get-vault-access-policy-output common-lisp:nil
                                 ((policy :target-type vault-access-policy
                                   :member-name "policy" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetVaultAccessPolicyOutput"))

(smithy/sdk/shapes:define-input get-vault-lock-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVaultLockInput"))

(smithy/sdk/shapes:define-output get-vault-lock-output common-lisp:nil
                                 ((policy :target-type string :member-name
                                   "Policy")
                                  (state :target-type string :member-name
                                   "State")
                                  (expiration-date :target-type string
                                   :member-name "ExpirationDate")
                                  (creation-date :target-type string
                                   :member-name "CreationDate"))
                                 (:shape-name "GetVaultLockOutput"))

(smithy/sdk/shapes:define-input get-vault-notifications-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVaultNotificationsInput"))

(smithy/sdk/shapes:define-output get-vault-notifications-output common-lisp:nil
                                 ((vault-notification-config :target-type
                                   vault-notification-config :member-name
                                   "vaultNotificationConfig" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetVaultNotificationsOutput"))

(smithy/sdk/shapes:define-structure glacier-job-description common-lisp:nil
                                    ((job-id :target-type string :member-name
                                      "JobId")
                                     (job-description :target-type string
                                      :member-name "JobDescription")
                                     (action :target-type action-code
                                      :member-name "Action")
                                     (archive-id :target-type string
                                      :member-name "ArchiveId")
                                     (vault-arn :target-type string
                                      :member-name "VaultARN")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (completed :target-type boolean
                                      :member-name "Completed")
                                     (status-code :target-type status-code
                                      :member-name "StatusCode")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (archive-size-in-bytes :target-type size
                                      :member-name "ArchiveSizeInBytes")
                                     (inventory-size-in-bytes :target-type size
                                      :member-name "InventorySizeInBytes")
                                     (snstopic :target-type string :member-name
                                      "SNSTopic")
                                     (completion-date :target-type string
                                      :member-name "CompletionDate")
                                     (sha256tree-hash :target-type string
                                      :member-name "SHA256TreeHash")
                                     (archive-sha256tree-hash :target-type
                                      string :member-name
                                      "ArchiveSHA256TreeHash")
                                     (retrieval-byte-range :target-type string
                                      :member-name "RetrievalByteRange")
                                     (tier :target-type string :member-name
                                      "Tier")
                                     (inventory-retrieval-parameters
                                      :target-type
                                      inventory-retrieval-job-description
                                      :member-name
                                      "InventoryRetrievalParameters")
                                     (job-output-path :target-type string
                                      :member-name "JobOutputPath")
                                     (select-parameters :target-type
                                      select-parameters :member-name
                                      "SelectParameters")
                                     (output-location :target-type
                                      output-location :member-name
                                      "OutputLocation"))
                                    (:shape-name "GlacierJobDescription"))

(smithy/sdk/shapes:define-structure grant common-lisp:nil
                                    ((grantee :target-type grantee :member-name
                                      "Grantee")
                                     (permission :target-type permission
                                      :member-name "Permission"))
                                    (:shape-name "Grant"))

(smithy/sdk/shapes:define-structure grantee common-lisp:nil
                                    ((type :target-type type :required
                                      common-lisp:t :member-name "Type")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (uri :target-type string :member-name
                                      "URI")
                                     (id :target-type string :member-name "ID")
                                     (email-address :target-type string
                                      :member-name "EmailAddress"))
                                    (:shape-name "Grantee"))

(smithy/sdk/shapes:define-input initiate-job-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (job-parameters :target-type job-parameters
                                  :member-name "jobParameters" :http-payload
                                  common-lisp:t))
                                (:shape-name "InitiateJobInput"))

(smithy/sdk/shapes:define-output initiate-job-output common-lisp:nil
                                 ((location :target-type string :member-name
                                   "location" :http-header "Location")
                                  (job-id :target-type string :member-name
                                   "jobId" :http-header "x-amz-job-id")
                                  (job-output-path :target-type string
                                   :member-name "jobOutputPath" :http-header
                                   "x-amz-job-output-path"))
                                 (:shape-name "InitiateJobOutput"))

(smithy/sdk/shapes:define-input initiate-multipart-upload-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (archive-description :target-type string
                                  :member-name "archiveDescription"
                                  :http-header "x-amz-archive-description")
                                 (part-size :target-type string :member-name
                                  "partSize" :http-header "x-amz-part-size"))
                                (:shape-name "InitiateMultipartUploadInput"))

(smithy/sdk/shapes:define-output initiate-multipart-upload-output
                                 common-lisp:nil
                                 ((location :target-type string :member-name
                                   "location" :http-header "Location")
                                  (upload-id :target-type string :member-name
                                   "uploadId" :http-header
                                   "x-amz-multipart-upload-id"))
                                 (:shape-name "InitiateMultipartUploadOutput"))

(smithy/sdk/shapes:define-input initiate-vault-lock-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (policy :target-type vault-lock-policy
                                  :member-name "policy" :http-payload
                                  common-lisp:t))
                                (:shape-name "InitiateVaultLockInput"))

(smithy/sdk/shapes:define-output initiate-vault-lock-output common-lisp:nil
                                 ((lock-id :target-type string :member-name
                                   "lockId" :http-header "x-amz-lock-id"))
                                 (:shape-name "InitiateVaultLockOutput"))

(smithy/sdk/shapes:define-structure input-serialization common-lisp:nil
                                    ((csv :target-type csvinput :member-name
                                      "csv"))
                                    (:shape-name "InputSerialization"))

(smithy/sdk/shapes:define-error insufficient-capacity-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InsufficientCapacityException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure inventory-retrieval-job-description
                                    common-lisp:nil
                                    ((format :target-type string :member-name
                                      "Format")
                                     (start-date :target-type date-time
                                      :member-name "StartDate")
                                     (end-date :target-type date-time
                                      :member-name "EndDate")
                                     (limit :target-type string :member-name
                                      "Limit")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name
                                     "InventoryRetrievalJobDescription"))

(smithy/sdk/shapes:define-structure inventory-retrieval-job-input
                                    common-lisp:nil
                                    ((start-date :target-type string
                                      :member-name "StartDate")
                                     (end-date :target-type string :member-name
                                      "EndDate")
                                     (limit :target-type string :member-name
                                      "Limit")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name "InventoryRetrievalJobInput"))

(smithy/sdk/shapes:define-list job-list :member glacier-job-description)

(smithy/sdk/shapes:define-structure job-parameters common-lisp:nil
                                    ((format :target-type string :member-name
                                      "Format")
                                     (type :target-type string :member-name
                                      "Type")
                                     (archive-id :target-type string
                                      :member-name "ArchiveId")
                                     (description :target-type string
                                      :member-name "Description")
                                     (snstopic :target-type string :member-name
                                      "SNSTopic")
                                     (retrieval-byte-range :target-type string
                                      :member-name "RetrievalByteRange")
                                     (tier :target-type string :member-name
                                      "Tier")
                                     (inventory-retrieval-parameters
                                      :target-type
                                      inventory-retrieval-job-input
                                      :member-name
                                      "InventoryRetrievalParameters")
                                     (select-parameters :target-type
                                      select-parameters :member-name
                                      "SelectParameters")
                                     (output-location :target-type
                                      output-location :member-name
                                      "OutputLocation"))
                                    (:shape-name "JobParameters"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-jobs-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (limit :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "limit" :http-query "limit")
                                 (marker :target-type string :member-name
                                  "marker" :http-query "marker")
                                 (statuscode :target-type string :member-name
                                  "statuscode" :http-query "statuscode")
                                 (completed :target-type string :member-name
                                  "completed" :http-query "completed"))
                                (:shape-name "ListJobsInput"))

(smithy/sdk/shapes:define-output list-jobs-output common-lisp:nil
                                 ((job-list :target-type job-list :member-name
                                   "JobList")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "ListJobsOutput"))

(smithy/sdk/shapes:define-input list-multipart-uploads-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (limit :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "limit" :http-query "limit")
                                 (marker :target-type string :member-name
                                  "marker" :http-query "marker"))
                                (:shape-name "ListMultipartUploadsInput"))

(smithy/sdk/shapes:define-output list-multipart-uploads-output common-lisp:nil
                                 ((uploads-list :target-type uploads-list
                                   :member-name "UploadsList")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "ListMultipartUploadsOutput"))

(smithy/sdk/shapes:define-input list-parts-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (upload-id :target-type string :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "marker" :http-query "marker")
                                 (limit :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "limit" :http-query "limit"))
                                (:shape-name "ListPartsInput"))

(smithy/sdk/shapes:define-output list-parts-output common-lisp:nil
                                 ((multipart-upload-id :target-type string
                                   :member-name "MultipartUploadId")
                                  (vault-arn :target-type string :member-name
                                   "VaultARN")
                                  (archive-description :target-type string
                                   :member-name "ArchiveDescription")
                                  (part-size-in-bytes :target-type long
                                   :member-name "PartSizeInBytes")
                                  (creation-date :target-type string
                                   :member-name "CreationDate")
                                  (parts :target-type part-list :member-name
                                   "Parts")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "ListPartsOutput"))

(smithy/sdk/shapes:define-input list-provisioned-capacity-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t))
                                (:shape-name "ListProvisionedCapacityInput"))

(smithy/sdk/shapes:define-output list-provisioned-capacity-output
                                 common-lisp:nil
                                 ((provisioned-capacity-list :target-type
                                   provisioned-capacity-list :member-name
                                   "ProvisionedCapacityList"))
                                 (:shape-name "ListProvisionedCapacityOutput"))

(smithy/sdk/shapes:define-input list-tags-for-vault-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForVaultInput"))

(smithy/sdk/shapes:define-output list-tags-for-vault-output common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForVaultOutput"))

(smithy/sdk/shapes:define-input list-vaults-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "marker" :http-query "marker")
                                 (limit :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "limit" :http-query "limit"))
                                (:shape-name "ListVaultsInput"))

(smithy/sdk/shapes:define-output list-vaults-output common-lisp:nil
                                 ((vault-list :target-type vault-list
                                   :member-name "VaultList")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "ListVaultsOutput"))

(smithy/sdk/shapes:define-error missing-parameter-value-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "MissingParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list notification-event-list :member string)

(smithy/sdk/shapes:define-type nullable-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure output-location common-lisp:nil
                                    ((s3 :target-type s3location :member-name
                                      "S3"))
                                    (:shape-name "OutputLocation"))

(smithy/sdk/shapes:define-structure output-serialization common-lisp:nil
                                    ((csv :target-type csvoutput :member-name
                                      "csv"))
                                    (:shape-name "OutputSerialization"))

(smithy/sdk/shapes:define-list part-list :member part-list-element)

(smithy/sdk/shapes:define-structure part-list-element common-lisp:nil
                                    ((range-in-bytes :target-type string
                                      :member-name "RangeInBytes")
                                     (sha256tree-hash :target-type string
                                      :member-name "SHA256TreeHash"))
                                    (:shape-name "PartListElement"))

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:full-control "FULL_CONTROL")
  (:write "WRITE")
  (:write-acp "WRITE_ACP")
  (:read "READ")
  (:read-acp "READ_ACP"))

(smithy/sdk/shapes:define-error policy-enforced-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "PolicyEnforcedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure provisioned-capacity-description
                                    common-lisp:nil
                                    ((capacity-id :target-type string
                                      :member-name "CapacityId")
                                     (start-date :target-type string
                                      :member-name "StartDate")
                                     (expiration-date :target-type string
                                      :member-name "ExpirationDate"))
                                    (:shape-name
                                     "ProvisionedCapacityDescription"))

(smithy/sdk/shapes:define-list provisioned-capacity-list :member
                               provisioned-capacity-description)

(smithy/sdk/shapes:define-input purchase-provisioned-capacity-input
                                common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "PurchaseProvisionedCapacityInput"))

(smithy/sdk/shapes:define-output purchase-provisioned-capacity-output
                                 common-lisp:nil
                                 ((capacity-id :target-type string :member-name
                                   "capacityId" :http-header
                                   "x-amz-capacity-id"))
                                 (:shape-name
                                  "PurchaseProvisionedCapacityOutput"))

(smithy/sdk/shapes:define-enum quote-fields
    common-lisp:nil
  (:always "ALWAYS")
  (:as-needed "ASNEEDED"))

(smithy/sdk/shapes:define-input remove-tags-from-vault-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromVaultInput"))

(smithy/sdk/shapes:define-error request-timeout-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket-name :target-type string
                                      :member-name "BucketName")
                                     (prefix :target-type string :member-name
                                      "Prefix")
                                     (encryption :target-type encryption
                                      :member-name "Encryption")
                                     (canned-acl :target-type canned-acl
                                      :member-name "CannedACL")
                                     (access-control-list :target-type
                                      access-control-policy-list :member-name
                                      "AccessControlList")
                                     (tagging :target-type hashmap :member-name
                                      "Tagging")
                                     (user-metadata :target-type hashmap
                                      :member-name "UserMetadata")
                                     (storage-class :target-type storage-class
                                      :member-name "StorageClass"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure select-parameters common-lisp:nil
                                    ((input-serialization :target-type
                                      input-serialization :member-name
                                      "InputSerialization")
                                     (expression-type :target-type
                                      expression-type :member-name
                                      "ExpressionType")
                                     (expression :target-type string
                                      :member-name "Expression")
                                     (output-serialization :target-type
                                      output-serialization :member-name
                                      "OutputSerialization"))
                                    (:shape-name "SelectParameters"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input set-data-retrieval-policy-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (policy :target-type data-retrieval-policy
                                  :member-name "Policy"))
                                (:shape-name "SetDataRetrievalPolicyInput"))

(smithy/sdk/shapes:define-input set-vault-access-policy-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (policy :target-type vault-access-policy
                                  :member-name "policy" :http-payload
                                  common-lisp:t))
                                (:shape-name "SetVaultAccessPolicyInput"))

(smithy/sdk/shapes:define-input set-vault-notifications-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (vault-notification-config :target-type
                                  vault-notification-config :member-name
                                  "vaultNotificationConfig" :http-payload
                                  common-lisp:t))
                                (:shape-name "SetVaultNotificationsInput"))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum status-code
    common-lisp:nil
  (:in-progress "InProgress")
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:standard-infrequent-access "STANDARD_IA"))

(smithy/sdk/shapes:define-type stream smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member string)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:amazon-customer-by-email "AmazonCustomerByEmail")
  (:canonical-user "CanonicalUser")
  (:group "Group"))

(smithy/sdk/shapes:define-input upload-archive-input common-lisp:nil
                                ((vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (archive-description :target-type string
                                  :member-name "archiveDescription"
                                  :http-header "x-amz-archive-description")
                                 (checksum :target-type string :member-name
                                  "checksum" :http-header
                                  "x-amz-sha256-tree-hash")
                                 (body :target-type stream :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "UploadArchiveInput"))

(smithy/sdk/shapes:define-structure upload-list-element common-lisp:nil
                                    ((multipart-upload-id :target-type string
                                      :member-name "MultipartUploadId")
                                     (vault-arn :target-type string
                                      :member-name "VaultARN")
                                     (archive-description :target-type string
                                      :member-name "ArchiveDescription")
                                     (part-size-in-bytes :target-type long
                                      :member-name "PartSizeInBytes")
                                     (creation-date :target-type string
                                      :member-name "CreationDate"))
                                    (:shape-name "UploadListElement"))

(smithy/sdk/shapes:define-input upload-multipart-part-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (upload-id :target-type string :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (checksum :target-type string :member-name
                                  "checksum" :http-header
                                  "x-amz-sha256-tree-hash")
                                 (range :target-type string :member-name
                                  "range" :http-header "Content-Range")
                                 (body :target-type stream :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "UploadMultipartPartInput"))

(smithy/sdk/shapes:define-output upload-multipart-part-output common-lisp:nil
                                 ((checksum :target-type string :member-name
                                   "checksum" :http-header
                                   "x-amz-sha256-tree-hash"))
                                 (:shape-name "UploadMultipartPartOutput"))

(smithy/sdk/shapes:define-list uploads-list :member upload-list-element)

(smithy/sdk/shapes:define-structure vault-access-policy common-lisp:nil
                                    ((policy :target-type string :member-name
                                      "Policy"))
                                    (:shape-name "VaultAccessPolicy"))

(smithy/sdk/shapes:define-list vault-list :member describe-vault-output)

(smithy/sdk/shapes:define-structure vault-lock-policy common-lisp:nil
                                    ((policy :target-type string :member-name
                                      "Policy"))
                                    (:shape-name "VaultLockPolicy"))

(smithy/sdk/shapes:define-structure vault-notification-config common-lisp:nil
                                    ((snstopic :target-type string :member-name
                                      "SNSTopic")
                                     (events :target-type
                                      notification-event-list :member-name
                                      "Events"))
                                    (:shape-name "VaultNotificationConfig"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map hashmap :key string :value string)

(smithy/sdk/shapes:define-type httpstatus smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation abort-multipart-upload :shape-name
                                       "AbortMultipartUpload" :input
                                       abort-multipart-upload-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}"
                                       :code 204)

(smithy/sdk/operation:define-operation abort-vault-lock :shape-name
                                       "AbortVaultLock" :input
                                       abort-vault-lock-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/{accountId}/vaults/{vaultName}/lock-policy"
                                       :code 204)

(smithy/sdk/operation:define-operation add-tags-to-vault :shape-name
                                       "AddTagsToVault" :input
                                       add-tags-to-vault-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/tags?operation=add"
                                       :code 204)

(smithy/sdk/operation:define-operation complete-multipart-upload :shape-name
                                       "CompleteMultipartUpload" :input
                                       complete-multipart-upload-input :output
                                       archive-creation-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}"
                                       :code 201)

(smithy/sdk/operation:define-operation complete-vault-lock :shape-name
                                       "CompleteVaultLock" :input
                                       complete-vault-lock-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}"
                                       :code 204)

(smithy/sdk/operation:define-operation create-vault :shape-name "CreateVault"
                                       :input create-vault-input :output
                                       create-vault-output :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/{accountId}/vaults/{vaultName}" :code
                                       201)

(smithy/sdk/operation:define-operation delete-archive :shape-name
                                       "DeleteArchive" :input
                                       delete-archive-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/{accountId}/vaults/{vaultName}/archives/{archiveId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-vault :shape-name "DeleteVault"
                                       :input delete-vault-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/{accountId}/vaults/{vaultName}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-vault-access-policy :shape-name
                                       "DeleteVaultAccessPolicy" :input
                                       delete-vault-access-policy-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/{accountId}/vaults/{vaultName}/access-policy"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-vault-notifications :shape-name
                                       "DeleteVaultNotifications" :input
                                       delete-vault-notifications-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/{accountId}/vaults/{vaultName}/notification-configuration"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-job :shape-name "DescribeJob"
                                       :input describe-job-input :output
                                       glacier-job-description :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-vault :shape-name
                                       "DescribeVault" :input
                                       describe-vault-input :output
                                       describe-vault-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}" :code
                                       200)

(smithy/sdk/operation:define-operation get-data-retrieval-policy :shape-name
                                       "GetDataRetrievalPolicy" :input
                                       get-data-retrieval-policy-input :output
                                       get-data-retrieval-policy-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/policies/data-retrieval"
                                       :code 200)

(smithy/sdk/operation:define-operation get-job-output :shape-name
                                       "GetJobOutput" :input
                                       get-job-output-input :output
                                       get-job-output-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output"
                                       :code 200)

(smithy/sdk/operation:define-operation get-vault-access-policy :shape-name
                                       "GetVaultAccessPolicy" :input
                                       get-vault-access-policy-input :output
                                       get-vault-access-policy-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/access-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-vault-lock :shape-name
                                       "GetVaultLock" :input
                                       get-vault-lock-input :output
                                       get-vault-lock-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/lock-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-vault-notifications :shape-name
                                       "GetVaultNotifications" :input
                                       get-vault-notifications-input :output
                                       get-vault-notifications-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/notification-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation initiate-job :shape-name "InitiateJob"
                                       :input initiate-job-input :output
                                       initiate-job-output :errors
                                       (insufficient-capacity-exception
                                        invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        policy-enforced-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/jobs"
                                       :code 202)

(smithy/sdk/operation:define-operation initiate-multipart-upload :shape-name
                                       "InitiateMultipartUpload" :input
                                       initiate-multipart-upload-input :output
                                       initiate-multipart-upload-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads"
                                       :code 201)

(smithy/sdk/operation:define-operation initiate-vault-lock :shape-name
                                       "InitiateVaultLock" :input
                                       initiate-vault-lock-input :output
                                       initiate-vault-lock-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/lock-policy"
                                       :code 201)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-input :output list-jobs-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-multipart-uploads :shape-name
                                       "ListMultipartUploads" :input
                                       list-multipart-uploads-input :output
                                       list-multipart-uploads-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads"
                                       :code 200)

(smithy/sdk/operation:define-operation list-parts :shape-name "ListParts"
                                       :input list-parts-input :output
                                       list-parts-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-provisioned-capacity :shape-name
                                       "ListProvisionedCapacity" :input
                                       list-provisioned-capacity-input :output
                                       list-provisioned-capacity-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/provisioned-capacity"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-vault :shape-name
                                       "ListTagsForVault" :input
                                       list-tags-for-vault-input :output
                                       list-tags-for-vault-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/{accountId}/vaults/{vaultName}/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vaults :shape-name "ListVaults"
                                       :input list-vaults-input :output
                                       list-vaults-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/{accountId}/vaults"
                                       :code 200)

(smithy/sdk/operation:define-operation purchase-provisioned-capacity
                                       :shape-name
                                       "PurchaseProvisionedCapacity" :input
                                       purchase-provisioned-capacity-input
                                       :output
                                       purchase-provisioned-capacity-output
                                       :errors
                                       (invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/provisioned-capacity"
                                       :code 201)

(smithy/sdk/operation:define-operation remove-tags-from-vault :shape-name
                                       "RemoveTagsFromVault" :input
                                       remove-tags-from-vault-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/tags?operation=remove"
                                       :code 204)

(smithy/sdk/operation:define-operation set-data-retrieval-policy :shape-name
                                       "SetDataRetrievalPolicy" :input
                                       set-data-retrieval-policy-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/{accountId}/policies/data-retrieval"
                                       :code 204)

(smithy/sdk/operation:define-operation set-vault-access-policy :shape-name
                                       "SetVaultAccessPolicy" :input
                                       set-vault-access-policy-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/{accountId}/vaults/{vaultName}/access-policy"
                                       :code 204)

(smithy/sdk/operation:define-operation set-vault-notifications :shape-name
                                       "SetVaultNotifications" :input
                                       set-vault-notifications-input :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/{accountId}/vaults/{vaultName}/notification-configuration"
                                       :code 204)

(smithy/sdk/operation:define-operation upload-archive :shape-name
                                       "UploadArchive" :input
                                       upload-archive-input :output
                                       archive-creation-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/archives"
                                       :code 201)

(smithy/sdk/operation:define-operation upload-multipart-part :shape-name
                                       "UploadMultipartPart" :input
                                       upload-multipart-part-input :output
                                       upload-multipart-part-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}"
                                       :code 204)
