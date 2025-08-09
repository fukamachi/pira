(uiop/package:define-package #:pira/backupsearch (:use)
                             (:export #:access-denied-exception
                              #:backup-creation-time-filter
                              #:conflict-exception #:cryo-backup-search-service
                              #:current-search-progress #:ebsitem-filter
                              #:ebsitem-filters #:ebsresult-item
                              #:encryption-key-arn #:export-job-arn
                              #:export-job-status #:export-job-summaries
                              #:export-job-summary #:export-specification
                              #:file-path #:generic-id #:get-search-job
                              #:get-search-job-input #:get-search-job-output
                              #:get-search-result-export-job
                              #:get-search-result-export-job-input
                              #:get-search-result-export-job-output
                              #:iam-role-arn #:internal-server-exception
                              #:item-filters #:list-search-job-backups
                              #:list-search-job-backups-input
                              #:list-search-job-backups-output
                              #:list-search-job-results
                              #:list-search-job-results-input
                              #:list-search-job-results-output
                              #:list-search-jobs #:list-search-jobs-input
                              #:list-search-jobs-output
                              #:list-search-result-export-jobs
                              #:list-search-result-export-jobs-input
                              #:list-search-result-export-jobs-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:long-condition #:long-condition-list
                              #:long-condition-operator #:object-key
                              #:recovery-point #:recovery-point-arn-list
                              #:resource-arn-list
                              #:resource-not-found-exception #:resource-type
                              #:resource-type-list #:result-item #:results
                              #:s3export-specification #:s3item-filter
                              #:s3item-filters #:s3result-item #:search-job
                              #:search-job-arn #:search-job-backups-result
                              #:search-job-backups-results #:search-job-state
                              #:search-job-summary #:search-jobs
                              #:search-result-export-job #:search-scope
                              #:search-scope-summary
                              #:service-quota-exceeded-exception
                              #:start-search-job #:start-search-job-input
                              #:start-search-job-output
                              #:start-search-result-export-job
                              #:start-search-result-export-job-input
                              #:start-search-result-export-job-output
                              #:stop-search-job #:stop-search-job-input
                              #:stop-search-job-output #:string-condition
                              #:string-condition-list
                              #:string-condition-operator #:tag-keys #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:throttling-exception
                              #:time-condition #:time-condition-list
                              #:time-condition-operator #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:validation-exception))
(common-lisp:in-package #:pira/backupsearch)

(smithy/sdk/service:define-service cryo-backup-search-service :shape-name
                                   "CryoBackupSearchService" :version
                                   "2018-05-10" :title "AWS Backup Search"
                                   :errors
                                   '(access-denied-exception
                                     internal-server-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "BackupSearch")
                                      ("arnNamespace" . "backup-search")
                                      ("endpointPrefix" . "backup-search")
                                      ("cloudTrailEventSource"
                                       . "backup.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "backup-search"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure backup-creation-time-filter common-lisp:nil
                                    ((created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAfter")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedBefore"))
                                    (:shape-name "BackupCreationTimeFilter"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure current-search-progress common-lisp:nil
                                    ((recovery-points-scanned-count
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "RecoveryPointsScannedCount")
                                     (items-scanned-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "ItemsScannedCount")
                                     (items-matched-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "ItemsMatchedCount"))
                                    (:shape-name "CurrentSearchProgress"))

(smithy/sdk/shapes:define-structure ebsitem-filter common-lisp:nil
                                    ((file-paths :target-type
                                      string-condition-list :member-name
                                      "FilePaths")
                                     (sizes :target-type long-condition-list
                                      :member-name "Sizes")
                                     (creation-times :target-type
                                      time-condition-list :member-name
                                      "CreationTimes")
                                     (last-modification-times :target-type
                                      time-condition-list :member-name
                                      "LastModificationTimes"))
                                    (:shape-name "EBSItemFilter"))

(smithy/sdk/shapes:define-list ebsitem-filters :member ebsitem-filter)

(smithy/sdk/shapes:define-structure ebsresult-item common-lisp:nil
                                    ((backup-resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BackupResourceArn")
                                     (source-resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceResourceArn")
                                     (backup-vault-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BackupVaultName")
                                     (file-system-identifier :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "FileSystemIdentifier")
                                     (file-path :target-type file-path
                                      :member-name "FilePath")
                                     (file-size :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "FileSize")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "EBSResultItem"))

(smithy/sdk/shapes:define-type encryption-key-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum export-job-status
    common-lisp:nil
  (:running "RUNNING")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list export-job-summaries :member export-job-summary)

(smithy/sdk/shapes:define-structure export-job-summary common-lisp:nil
                                    ((export-job-identifier :target-type
                                      generic-id :required common-lisp:t
                                      :member-name "ExportJobIdentifier")
                                     (export-job-arn :target-type
                                      export-job-arn :member-name
                                      "ExportJobArn")
                                     (status :target-type export-job-status
                                      :member-name "Status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreationTime")
                                     (completion-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CompletionTime")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (search-job-arn :target-type
                                      search-job-arn :member-name
                                      "SearchJobArn"))
                                    (:shape-name "ExportJobSummary"))

(smithy/sdk/shapes:define-union export-specification common-lisp:nil
                                ((s3export-specification :target-type
                                  s3export-specification :member-name
                                  "s3ExportSpecification"))
                                (:shape-name "ExportSpecification"))

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-search-job-input common-lisp:nil
                                ((search-job-identifier :target-type generic-id
                                  :required common-lisp:t :member-name
                                  "SearchJobIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSearchJobInput"))

(smithy/sdk/shapes:define-output get-search-job-output common-lisp:nil
                                 ((name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Name")
                                  (search-scope-summary :target-type
                                   search-scope-summary :member-name
                                   "SearchScopeSummary")
                                  (current-search-progress :target-type
                                   current-search-progress :member-name
                                   "CurrentSearchProgress")
                                  (status-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "StatusMessage")
                                  (encryption-key-arn :target-type
                                   encryption-key-arn :member-name
                                   "EncryptionKeyArn")
                                  (completion-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CompletionTime")
                                  (status :target-type search-job-state
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (search-scope :target-type search-scope
                                   :required common-lisp:t :member-name
                                   "SearchScope")
                                  (item-filters :target-type item-filters
                                   :required common-lisp:t :member-name
                                   "ItemFilters")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime")
                                  (search-job-identifier :target-type
                                   generic-id :required common-lisp:t
                                   :member-name "SearchJobIdentifier")
                                  (search-job-arn :target-type search-job-arn
                                   :required common-lisp:t :member-name
                                   "SearchJobArn"))
                                 (:shape-name "GetSearchJobOutput"))

(smithy/sdk/shapes:define-input get-search-result-export-job-input
                                common-lisp:nil
                                ((export-job-identifier :target-type generic-id
                                  :required common-lisp:t :member-name
                                  "ExportJobIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSearchResultExportJobInput"))

(smithy/sdk/shapes:define-output get-search-result-export-job-output
                                 common-lisp:nil
                                 ((export-job-identifier :target-type
                                   generic-id :required common-lisp:t
                                   :member-name "ExportJobIdentifier")
                                  (export-job-arn :target-type export-job-arn
                                   :member-name "ExportJobArn")
                                  (status :target-type export-job-status
                                   :member-name "Status")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreationTime")
                                  (completion-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CompletionTime")
                                  (status-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "StatusMessage")
                                  (export-specification :target-type
                                   export-specification :member-name
                                   "ExportSpecification")
                                  (search-job-arn :target-type search-job-arn
                                   :member-name "SearchJobArn"))
                                 (:shape-name "GetSearchResultExportJobOutput"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure item-filters common-lisp:nil
                                    ((s3item-filters :target-type
                                      s3item-filters :member-name
                                      "S3ItemFilters")
                                     (ebsitem-filters :target-type
                                      ebsitem-filters :member-name
                                      "EBSItemFilters"))
                                    (:shape-name "ItemFilters"))

(smithy/sdk/shapes:define-input list-search-job-backups-input common-lisp:nil
                                ((search-job-identifier :target-type generic-id
                                  :required common-lisp:t :member-name
                                  "SearchJobIdentifier" :http-label
                                  common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxResults"))
                                (:shape-name "ListSearchJobBackupsInput"))

(smithy/sdk/shapes:define-output list-search-job-backups-output common-lisp:nil
                                 ((results :target-type
                                   search-job-backups-results :required
                                   common-lisp:t :member-name "Results")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListSearchJobBackupsOutput"))

(smithy/sdk/shapes:define-input list-search-job-results-input common-lisp:nil
                                ((search-job-identifier :target-type generic-id
                                  :required common-lisp:t :member-name
                                  "SearchJobIdentifier" :http-label
                                  common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxResults"))
                                (:shape-name "ListSearchJobResultsInput"))

(smithy/sdk/shapes:define-output list-search-job-results-output common-lisp:nil
                                 ((results :target-type results :required
                                   common-lisp:t :member-name "Results")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListSearchJobResultsOutput"))

(smithy/sdk/shapes:define-input list-search-jobs-input common-lisp:nil
                                ((by-status :target-type search-job-state
                                  :member-name "ByStatus" :http-query "Status")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "MaxResults"))
                                (:shape-name "ListSearchJobsInput"))

(smithy/sdk/shapes:define-output list-search-jobs-output common-lisp:nil
                                 ((search-jobs :target-type search-jobs
                                   :required common-lisp:t :member-name
                                   "SearchJobs")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListSearchJobsOutput"))

(smithy/sdk/shapes:define-input list-search-result-export-jobs-input
                                common-lisp:nil
                                ((status :target-type export-job-status
                                  :member-name "Status" :http-query "Status")
                                 (search-job-identifier :target-type generic-id
                                  :member-name "SearchJobIdentifier"
                                  :http-query "SearchJobIdentifier")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "MaxResults"))
                                (:shape-name "ListSearchResultExportJobsInput"))

(smithy/sdk/shapes:define-output list-search-result-export-jobs-output
                                 common-lisp:nil
                                 ((export-jobs :target-type
                                   export-job-summaries :required common-lisp:t
                                   :member-name "ExportJobs")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListSearchResultExportJobsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure long-condition common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "Value")
                                     (operator :target-type
                                      long-condition-operator :member-name
                                      "Operator"))
                                    (:shape-name "LongCondition"))

(smithy/sdk/shapes:define-list long-condition-list :member long-condition)

(smithy/sdk/shapes:define-enum long-condition-operator
    common-lisp:nil
  (:equals-to "EQUALS_TO")
  (:not-equals-to "NOT_EQUALS_TO")
  (:less-than-equal-to "LESS_THAN_EQUAL_TO")
  (:greater-than-equal-to "GREATER_THAN_EQUAL_TO"))

(smithy/sdk/shapes:define-type object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recovery-point smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recovery-point-arn-list :member recovery-point)

(smithy/sdk/shapes:define-list resource-arn-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:s3 "S3")
  (:ebs "EBS"))

(smithy/sdk/shapes:define-list resource-type-list :member resource-type)

(smithy/sdk/shapes:define-union result-item common-lisp:nil
                                ((s3result-item :target-type s3result-item
                                  :member-name "S3ResultItem")
                                 (ebsresult-item :target-type ebsresult-item
                                  :member-name "EBSResultItem"))
                                (:shape-name "ResultItem"))

(smithy/sdk/shapes:define-list results :member result-item)

(smithy/sdk/shapes:define-structure s3export-specification common-lisp:nil
                                    ((destination-bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "DestinationBucket")
                                     (destination-prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DestinationPrefix"))
                                    (:shape-name "S3ExportSpecification"))

(smithy/sdk/shapes:define-structure s3item-filter common-lisp:nil
                                    ((object-keys :target-type
                                      string-condition-list :member-name
                                      "ObjectKeys")
                                     (sizes :target-type long-condition-list
                                      :member-name "Sizes")
                                     (creation-times :target-type
                                      time-condition-list :member-name
                                      "CreationTimes")
                                     (version-ids :target-type
                                      string-condition-list :member-name
                                      "VersionIds")
                                     (etags :target-type string-condition-list
                                      :member-name "ETags"))
                                    (:shape-name "S3ItemFilter"))

(smithy/sdk/shapes:define-list s3item-filters :member s3item-filter)

(smithy/sdk/shapes:define-structure s3result-item common-lisp:nil
                                    ((backup-resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BackupResourceArn")
                                     (source-resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceResourceArn")
                                     (backup-vault-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BackupVaultName")
                                     (object-key :target-type object-key
                                      :member-name "ObjectKey")
                                     (object-size :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "ObjectSize")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreationTime")
                                     (etag :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ETag")
                                     (version-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "VersionId"))
                                    (:shape-name "S3ResultItem"))

common-lisp:nil

(smithy/sdk/shapes:define-type search-job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure search-job-backups-result common-lisp:nil
                                    ((status :target-type search-job-state
                                      :member-name "Status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (backup-resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BackupResourceArn")
                                     (source-resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceResourceArn")
                                     (index-creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "IndexCreationTime")
                                     (backup-creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "BackupCreationTime"))
                                    (:shape-name "SearchJobBackupsResult"))

(smithy/sdk/shapes:define-list search-job-backups-results :member
                               search-job-backups-result)

(smithy/sdk/shapes:define-enum search-job-state
    common-lisp:nil
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure search-job-summary common-lisp:nil
                                    ((search-job-identifier :target-type
                                      generic-id :member-name
                                      "SearchJobIdentifier")
                                     (search-job-arn :target-type
                                      search-job-arn :member-name
                                      "SearchJobArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (status :target-type search-job-state
                                      :member-name "Status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreationTime")
                                     (completion-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CompletionTime")
                                     (search-scope-summary :target-type
                                      search-scope-summary :member-name
                                      "SearchScopeSummary")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage"))
                                    (:shape-name "SearchJobSummary"))

(smithy/sdk/shapes:define-list search-jobs :member search-job-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure search-scope common-lisp:nil
                                    ((backup-resource-types :target-type
                                      resource-type-list :required
                                      common-lisp:t :member-name
                                      "BackupResourceTypes")
                                     (backup-resource-creation-time
                                      :target-type backup-creation-time-filter
                                      :member-name
                                      "BackupResourceCreationTime")
                                     (source-resource-arns :target-type
                                      resource-arn-list :member-name
                                      "SourceResourceArns")
                                     (backup-resource-arns :target-type
                                      recovery-point-arn-list :member-name
                                      "BackupResourceArns")
                                     (backup-resource-tags :target-type tag-map
                                      :member-name "BackupResourceTags"))
                                    (:shape-name "SearchScope"))

(smithy/sdk/shapes:define-structure search-scope-summary common-lisp:nil
                                    ((total-recovery-points-to-scan-count
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "TotalRecoveryPointsToScanCount")
                                     (total-items-to-scan-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "TotalItemsToScanCount"))
                                    (:shape-name "SearchScopeSummary"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-input start-search-job-input common-lisp:nil
                                ((tags :target-type tag-map :member-name
                                  "Tags")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Name")
                                 (encryption-key-arn :target-type
                                  encryption-key-arn :member-name
                                  "EncryptionKeyArn")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (search-scope :target-type search-scope
                                  :required common-lisp:t :member-name
                                  "SearchScope")
                                 (item-filters :target-type item-filters
                                  :member-name "ItemFilters"))
                                (:shape-name "StartSearchJobInput"))

(smithy/sdk/shapes:define-output start-search-job-output common-lisp:nil
                                 ((search-job-arn :target-type search-job-arn
                                   :member-name "SearchJobArn")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreationTime")
                                  (search-job-identifier :target-type
                                   generic-id :member-name
                                   "SearchJobIdentifier"))
                                 (:shape-name "StartSearchJobOutput"))

(smithy/sdk/shapes:define-input start-search-result-export-job-input
                                common-lisp:nil
                                ((search-job-identifier :target-type generic-id
                                  :required common-lisp:t :member-name
                                  "SearchJobIdentifier")
                                 (export-specification :target-type
                                  export-specification :required common-lisp:t
                                  :member-name "ExportSpecification")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn"))
                                (:shape-name "StartSearchResultExportJobInput"))

(smithy/sdk/shapes:define-output start-search-result-export-job-output
                                 common-lisp:nil
                                 ((export-job-arn :target-type export-job-arn
                                   :member-name "ExportJobArn")
                                  (export-job-identifier :target-type
                                   generic-id :required common-lisp:t
                                   :member-name "ExportJobIdentifier"))
                                 (:shape-name
                                  "StartSearchResultExportJobOutput"))

(smithy/sdk/shapes:define-input stop-search-job-input common-lisp:nil
                                ((search-job-identifier :target-type generic-id
                                  :required common-lisp:t :member-name
                                  "SearchJobIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "StopSearchJobInput"))

(smithy/sdk/shapes:define-output stop-search-job-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopSearchJobOutput"))

(smithy/sdk/shapes:define-structure string-condition common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value")
                                     (operator :target-type
                                      string-condition-operator :member-name
                                      "Operator"))
                                    (:shape-name "StringCondition"))

(smithy/sdk/shapes:define-list string-condition-list :member string-condition)

(smithy/sdk/shapes:define-enum string-condition-operator
    common-lisp:nil
  (:equals-to "EQUALS_TO")
  (:not-equals-to "NOT_EQUALS_TO")
  (:contains "CONTAINS")
  (:does-not-contain "DOES_NOT_CONTAIN")
  (:begins-with "BEGINS_WITH")
  (:ends-with "ENDS_WITH")
  (:does-not-begin-with "DOES_NOT_BEGIN_WITH")
  (:does-not-end-with "DOES_NOT_END_WITH"))

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tag-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-condition common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (operator :target-type
                                      time-condition-operator :member-name
                                      "Operator"))
                                    (:shape-name "TimeCondition"))

(smithy/sdk/shapes:define-list time-condition-list :member time-condition)

(smithy/sdk/shapes:define-enum time-condition-operator
    common-lisp:nil
  (:equals-to "EQUALS_TO")
  (:not-equals-to "NOT_EQUALS_TO")
  (:less-than-equal-to "LESS_THAN_EQUAL_TO")
  (:greater-than-equal-to "GREATER_THAN_EQUAL_TO"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation get-search-job :shape-name
                                       "GetSearchJob" :input
                                       get-search-job-input :output
                                       get-search-job-output :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri
                                       "/search-jobs/{SearchJobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-search-result-export-job :shape-name
                                       "GetSearchResultExportJob" :input
                                       get-search-result-export-job-input
                                       :output
                                       get-search-result-export-job-output
                                       :errors (resource-not-found-exception)
                                       :method "GET" :uri
                                       "/export-search-jobs/{ExportJobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-search-job-backups :shape-name
                                       "ListSearchJobBackups" :input
                                       list-search-job-backups-input :output
                                       list-search-job-backups-output :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri
                                       "/search-jobs/{SearchJobIdentifier}/backups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-search-job-results :shape-name
                                       "ListSearchJobResults" :input
                                       list-search-job-results-input :output
                                       list-search-job-results-output :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri
                                       "/search-jobs/{SearchJobIdentifier}/search-results"
                                       :code 200)

(smithy/sdk/operation:define-operation list-search-jobs :shape-name
                                       "ListSearchJobs" :input
                                       list-search-jobs-input :output
                                       list-search-jobs-output :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/search-jobs" :code 200)

(smithy/sdk/operation:define-operation list-search-result-export-jobs
                                       :shape-name "ListSearchResultExportJobs"
                                       :input
                                       list-search-result-export-jobs-input
                                       :output
                                       list-search-result-export-jobs-output
                                       :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "GET" :uri "/export-search-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation start-search-job :shape-name
                                       "StartSearchJob" :input
                                       start-search-job-input :output
                                       start-search-job-output :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception)
                                       :method "PUT" :uri "/search-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation start-search-result-export-job
                                       :shape-name "StartSearchResultExportJob"
                                       :input
                                       start-search-result-export-job-input
                                       :output
                                       start-search-result-export-job-output
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "PUT" :uri "/export-search-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-search-job :shape-name
                                       "StopSearchJob" :input
                                       stop-search-job-input :output
                                       stop-search-job-output :errors
                                       (conflict-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri
                                       "/search-jobs/{SearchJobIdentifier}/actions/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "POST" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "DELETE" :uri "/tags/{ResourceArn}")
