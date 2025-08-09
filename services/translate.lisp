(uiop/package:define-package #:pira/translate (:use)
                             (:export #:awsshine-frontend-service-20170701
                              #:applied-terminology #:applied-terminology-list
                              #:bounded-length-string #:brevity
                              #:client-token-string #:content-type
                              #:create-parallel-data #:delete-parallel-data
                              #:delete-terminology
                              #:describe-text-translation-job #:description
                              #:directionality #:display-language-code
                              #:document #:document-content #:encryption-key
                              #:encryption-key-id #:encryption-key-type
                              #:formality #:get-parallel-data #:get-terminology
                              #:iam-role-arn #:import-terminology
                              #:input-data-config #:integer #:job-details
                              #:job-id #:job-name #:job-status #:language
                              #:language-code-string
                              #:language-code-string-list #:languages-list
                              #:list-languages #:list-parallel-data
                              #:list-tags-for-resource #:list-terminologies
                              #:list-text-translation-jobs
                              #:localized-name-string #:long
                              #:max-results-integer #:merge-strategy
                              #:next-token #:output-data-config
                              #:parallel-data-arn #:parallel-data-config
                              #:parallel-data-data-location
                              #:parallel-data-format #:parallel-data-properties
                              #:parallel-data-properties-list
                              #:parallel-data-status #:profanity #:resource-arn
                              #:resource-name #:resource-name-list #:s3uri
                              #:start-text-translation-job
                              #:stop-text-translation-job #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value
                              #:target-language-code-string-list #:term
                              #:term-list #:terminology-arn #:terminology-data
                              #:terminology-data-format
                              #:terminology-data-location #:terminology-file
                              #:terminology-properties
                              #:terminology-properties-list
                              #:text-translation-job-filter
                              #:text-translation-job-properties
                              #:text-translation-job-properties-list
                              #:timestamp #:translate-document #:translate-text
                              #:translated-document
                              #:translated-document-content
                              #:translated-text-string #:translation-settings
                              #:unbounded-length-string #:untag-resource
                              #:update-parallel-data))
(common-lisp:in-package #:pira/translate)

(smithy/sdk/service:define-service awsshine-frontend-service-20170701
                                   :shape-name
                                   "AWSShineFrontendService_20170701" :version
                                   "2017-07-01" :title "Amazon Translate"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Translate")
                                      ("arnNamespace" . "translate")
                                      ("cloudFormationName" . "Translate")
                                      ("cloudTrailEventSource"
                                       . "translate.amazonaws.com")
                                      ("endpointPrefix" . "translate"))
                                     ("aws.auth#sigv4" ("name" . "translate"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure applied-terminology common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (terms :target-type term-list :member-name
                                      "Terms"))
                                    (:shape-name "AppliedTerminology"))

(smithy/sdk/shapes:define-list applied-terminology-list :member
                               applied-terminology)

(smithy/sdk/shapes:define-type bounded-length-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum brevity
    common-lisp:nil
  (:on "ON"))

(smithy/sdk/shapes:define-type client-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-parallel-data-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (parallel-data-config :target-type
                                  parallel-data-config :required common-lisp:t
                                  :member-name "ParallelDataConfig")
                                 (encryption-key :target-type encryption-key
                                  :member-name "EncryptionKey")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateParallelDataRequest"))

(smithy/sdk/shapes:define-output create-parallel-data-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "Name")
                                  (status :target-type parallel-data-status
                                   :member-name "Status"))
                                 (:shape-name "CreateParallelDataResponse"))

(smithy/sdk/shapes:define-input delete-parallel-data-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteParallelDataRequest"))

(smithy/sdk/shapes:define-output delete-parallel-data-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "Name")
                                  (status :target-type parallel-data-status
                                   :member-name "Status"))
                                 (:shape-name "DeleteParallelDataResponse"))

(smithy/sdk/shapes:define-input delete-terminology-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteTerminologyRequest"))

(smithy/sdk/shapes:define-input describe-text-translation-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeTextTranslationJobRequest"))

(smithy/sdk/shapes:define-output describe-text-translation-job-response
                                 common-lisp:nil
                                 ((text-translation-job-properties :target-type
                                   text-translation-job-properties :member-name
                                   "TextTranslationJobProperties"))
                                 (:shape-name
                                  "DescribeTextTranslationJobResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error detected-language-low-confidence-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (detected-language-code :target-type
                                  language-code-string :member-name
                                  "DetectedLanguageCode"))
                                (:shape-name
                                 "DetectedLanguageLowConfidenceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum directionality
    common-lisp:nil
  (:uni "UNI")
  (:multi "MULTI"))

(smithy/sdk/shapes:define-enum display-language-code
    common-lisp:nil
  (:de "de")
  (:en "en")
  (:es "es")
  (:fr "fr")
  (:it "it")
  (:ja "ja")
  (:ko "ko")
  (:pt "pt")
  (:zh "zh")
  (:zh-tw "zh-TW"))

(smithy/sdk/shapes:define-structure document common-lisp:nil
                                    ((content :target-type document-content
                                      :required common-lisp:t :member-name
                                      "Content")
                                     (content-type :target-type content-type
                                      :required common-lisp:t :member-name
                                      "ContentType"))
                                    (:shape-name "Document"))

(smithy/sdk/shapes:define-type document-content smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure encryption-key common-lisp:nil
                                    ((type :target-type encryption-key-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (id :target-type encryption-key-id
                                      :required common-lisp:t :member-name
                                      "Id"))
                                    (:shape-name "EncryptionKey"))

(smithy/sdk/shapes:define-type encryption-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-key-type
    common-lisp:nil
  (:kms "KMS"))

(smithy/sdk/shapes:define-enum formality
    common-lisp:nil
  (:formal "FORMAL")
  (:informal "INFORMAL"))

(smithy/sdk/shapes:define-input get-parallel-data-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "GetParallelDataRequest"))

(smithy/sdk/shapes:define-output get-parallel-data-response common-lisp:nil
                                 ((parallel-data-properties :target-type
                                   parallel-data-properties :member-name
                                   "ParallelDataProperties")
                                  (data-location :target-type
                                   parallel-data-data-location :member-name
                                   "DataLocation")
                                  (auxiliary-data-location :target-type
                                   parallel-data-data-location :member-name
                                   "AuxiliaryDataLocation")
                                  (latest-update-attempt-auxiliary-data-location
                                   :target-type parallel-data-data-location
                                   :member-name
                                   "LatestUpdateAttemptAuxiliaryDataLocation"))
                                 (:shape-name "GetParallelDataResponse"))

(smithy/sdk/shapes:define-input get-terminology-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (terminology-data-format :target-type
                                  terminology-data-format :member-name
                                  "TerminologyDataFormat"))
                                (:shape-name "GetTerminologyRequest"))

(smithy/sdk/shapes:define-output get-terminology-response common-lisp:nil
                                 ((terminology-properties :target-type
                                   terminology-properties :member-name
                                   "TerminologyProperties")
                                  (terminology-data-location :target-type
                                   terminology-data-location :member-name
                                   "TerminologyDataLocation")
                                  (auxiliary-data-location :target-type
                                   terminology-data-location :member-name
                                   "AuxiliaryDataLocation"))
                                 (:shape-name "GetTerminologyResponse"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-terminology-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (merge-strategy :target-type merge-strategy
                                  :required common-lisp:t :member-name
                                  "MergeStrategy")
                                 (description :target-type description
                                  :member-name "Description")
                                 (terminology-data :target-type
                                  terminology-data :required common-lisp:t
                                  :member-name "TerminologyData")
                                 (encryption-key :target-type encryption-key
                                  :member-name "EncryptionKey")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "ImportTerminologyRequest"))

(smithy/sdk/shapes:define-output import-terminology-response common-lisp:nil
                                 ((terminology-properties :target-type
                                   terminology-properties :member-name
                                   "TerminologyProperties")
                                  (auxiliary-data-location :target-type
                                   terminology-data-location :member-name
                                   "AuxiliaryDataLocation"))
                                 (:shape-name "ImportTerminologyResponse"))

(smithy/sdk/shapes:define-structure input-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (content-type :target-type content-type
                                      :required common-lisp:t :member-name
                                      "ContentType"))
                                    (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-filter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidFilterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure job-details common-lisp:nil
                                    ((translated-documents-count :target-type
                                      integer :member-name
                                      "TranslatedDocumentsCount")
                                     (documents-with-errors-count :target-type
                                      integer :member-name
                                      "DocumentsWithErrorsCount")
                                     (input-documents-count :target-type
                                      integer :member-name
                                      "InputDocumentsCount"))
                                    (:shape-name "JobDetails"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:completed-with-error "COMPLETED_WITH_ERROR")
  (:failed "FAILED")
  (:stop-requested "STOP_REQUESTED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure language common-lisp:nil
                                    ((language-name :target-type
                                      localized-name-string :required
                                      common-lisp:t :member-name
                                      "LanguageName")
                                     (language-code :target-type
                                      language-code-string :required
                                      common-lisp:t :member-name
                                      "LanguageCode"))
                                    (:shape-name "Language"))

(smithy/sdk/shapes:define-type language-code-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list language-code-string-list :member
                               language-code-string)

(smithy/sdk/shapes:define-list languages-list :member language)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-languages-request common-lisp:nil
                                ((display-language-code :target-type
                                  display-language-code :member-name
                                  "DisplayLanguageCode")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListLanguagesRequest"))

(smithy/sdk/shapes:define-output list-languages-response common-lisp:nil
                                 ((languages :target-type languages-list
                                   :member-name "Languages")
                                  (display-language-code :target-type
                                   display-language-code :member-name
                                   "DisplayLanguageCode")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLanguagesResponse"))

(smithy/sdk/shapes:define-input list-parallel-data-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListParallelDataRequest"))

(smithy/sdk/shapes:define-output list-parallel-data-response common-lisp:nil
                                 ((parallel-data-properties-list :target-type
                                   parallel-data-properties-list :member-name
                                   "ParallelDataPropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListParallelDataResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-terminologies-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListTerminologiesRequest"))

(smithy/sdk/shapes:define-output list-terminologies-response common-lisp:nil
                                 ((terminology-properties-list :target-type
                                   terminology-properties-list :member-name
                                   "TerminologyPropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTerminologiesResponse"))

(smithy/sdk/shapes:define-input list-text-translation-jobs-request
                                common-lisp:nil
                                ((filter :target-type
                                  text-translation-job-filter :member-name
                                  "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListTextTranslationJobsRequest"))

(smithy/sdk/shapes:define-output list-text-translation-jobs-response
                                 common-lisp:nil
                                 ((text-translation-job-properties-list
                                   :target-type
                                   text-translation-job-properties-list
                                   :member-name
                                   "TextTranslationJobPropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListTextTranslationJobsResponse"))

(smithy/sdk/shapes:define-type localized-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum merge-strategy
    common-lisp:nil
  (:overwrite "OVERWRITE"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure output-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (encryption-key :target-type
                                      encryption-key :member-name
                                      "EncryptionKey"))
                                    (:shape-name "OutputDataConfig"))

(smithy/sdk/shapes:define-type parallel-data-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parallel-data-config common-lisp:nil
                                    ((s3uri :target-type s3uri :member-name
                                      "S3Uri")
                                     (format :target-type parallel-data-format
                                      :member-name "Format"))
                                    (:shape-name "ParallelDataConfig"))

(smithy/sdk/shapes:define-structure parallel-data-data-location common-lisp:nil
                                    ((repository-type :target-type string
                                      :required common-lisp:t :member-name
                                      "RepositoryType")
                                     (location :target-type string :required
                                      common-lisp:t :member-name "Location"))
                                    (:shape-name "ParallelDataDataLocation"))

(smithy/sdk/shapes:define-enum parallel-data-format
    common-lisp:nil
  (:tsv "TSV")
  (:csv "CSV")
  (:tmx "TMX"))

(smithy/sdk/shapes:define-structure parallel-data-properties common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (arn :target-type parallel-data-arn
                                      :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type parallel-data-status
                                      :member-name "Status")
                                     (source-language-code :target-type
                                      language-code-string :member-name
                                      "SourceLanguageCode")
                                     (target-language-codes :target-type
                                      language-code-string-list :member-name
                                      "TargetLanguageCodes")
                                     (parallel-data-config :target-type
                                      parallel-data-config :member-name
                                      "ParallelDataConfig")
                                     (message :target-type
                                      unbounded-length-string :member-name
                                      "Message")
                                     (imported-data-size :target-type long
                                      :member-name "ImportedDataSize")
                                     (imported-record-count :target-type long
                                      :member-name "ImportedRecordCount")
                                     (failed-record-count :target-type long
                                      :member-name "FailedRecordCount")
                                     (skipped-record-count :target-type long
                                      :member-name "SkippedRecordCount")
                                     (encryption-key :target-type
                                      encryption-key :member-name
                                      "EncryptionKey")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (latest-update-attempt-status :target-type
                                      parallel-data-status :member-name
                                      "LatestUpdateAttemptStatus")
                                     (latest-update-attempt-at :target-type
                                      timestamp :member-name
                                      "LatestUpdateAttemptAt"))
                                    (:shape-name "ParallelDataProperties"))

(smithy/sdk/shapes:define-list parallel-data-properties-list :member
                               parallel-data-properties)

(smithy/sdk/shapes:define-enum parallel-data-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum profanity
    common-lisp:nil
  (:mask "MASK"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-name-list :member resource-name)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-input start-text-translation-job-request
                                common-lisp:nil
                                ((job-name :target-type job-name :member-name
                                  "JobName")
                                 (input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (source-language-code :target-type
                                  language-code-string :required common-lisp:t
                                  :member-name "SourceLanguageCode")
                                 (target-language-codes :target-type
                                  target-language-code-string-list :required
                                  common-lisp:t :member-name
                                  "TargetLanguageCodes")
                                 (terminology-names :target-type
                                  resource-name-list :member-name
                                  "TerminologyNames")
                                 (parallel-data-names :target-type
                                  resource-name-list :member-name
                                  "ParallelDataNames")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (settings :target-type translation-settings
                                  :member-name "Settings"))
                                (:shape-name "StartTextTranslationJobRequest"))

(smithy/sdk/shapes:define-output start-text-translation-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name
                                  "StartTextTranslationJobResponse"))

(smithy/sdk/shapes:define-input stop-text-translation-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopTextTranslationJobRequest"))

(smithy/sdk/shapes:define-output stop-text-translation-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus"))
                                 (:shape-name "StopTextTranslationJobResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-language-code-string-list :member
                               language-code-string)

(smithy/sdk/shapes:define-structure term common-lisp:nil
                                    ((source-text :target-type string
                                      :member-name "SourceText")
                                     (target-text :target-type string
                                      :member-name "TargetText"))
                                    (:shape-name "Term"))

(smithy/sdk/shapes:define-list term-list :member term)

(smithy/sdk/shapes:define-type terminology-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure terminology-data common-lisp:nil
                                    ((file :target-type terminology-file
                                      :required common-lisp:t :member-name
                                      "File")
                                     (format :target-type
                                      terminology-data-format :required
                                      common-lisp:t :member-name "Format")
                                     (directionality :target-type
                                      directionality :member-name
                                      "Directionality"))
                                    (:shape-name "TerminologyData"))

(smithy/sdk/shapes:define-enum terminology-data-format
    common-lisp:nil
  (:csv "CSV")
  (:tmx "TMX")
  (:tsv "TSV"))

(smithy/sdk/shapes:define-structure terminology-data-location common-lisp:nil
                                    ((repository-type :target-type string
                                      :required common-lisp:t :member-name
                                      "RepositoryType")
                                     (location :target-type string :required
                                      common-lisp:t :member-name "Location"))
                                    (:shape-name "TerminologyDataLocation"))

(smithy/sdk/shapes:define-type terminology-file smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure terminology-properties common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (arn :target-type terminology-arn
                                      :member-name "Arn")
                                     (source-language-code :target-type
                                      language-code-string :member-name
                                      "SourceLanguageCode")
                                     (target-language-codes :target-type
                                      language-code-string-list :member-name
                                      "TargetLanguageCodes")
                                     (encryption-key :target-type
                                      encryption-key :member-name
                                      "EncryptionKey")
                                     (size-bytes :target-type integer
                                      :member-name "SizeBytes")
                                     (term-count :target-type integer
                                      :member-name "TermCount")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (directionality :target-type
                                      directionality :member-name
                                      "Directionality")
                                     (message :target-type
                                      unbounded-length-string :member-name
                                      "Message")
                                     (skipped-term-count :target-type integer
                                      :member-name "SkippedTermCount")
                                     (format :target-type
                                      terminology-data-format :member-name
                                      "Format"))
                                    (:shape-name "TerminologyProperties"))

(smithy/sdk/shapes:define-list terminology-properties-list :member
                               terminology-properties)

(smithy/sdk/shapes:define-error text-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TextSizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure text-translation-job-filter common-lisp:nil
                                    ((job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (submitted-before-time :target-type
                                      timestamp :member-name
                                      "SubmittedBeforeTime")
                                     (submitted-after-time :target-type
                                      timestamp :member-name
                                      "SubmittedAfterTime"))
                                    (:shape-name "TextTranslationJobFilter"))

(smithy/sdk/shapes:define-structure text-translation-job-properties
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (job-details :target-type job-details
                                      :member-name "JobDetails")
                                     (source-language-code :target-type
                                      language-code-string :member-name
                                      "SourceLanguageCode")
                                     (target-language-codes :target-type
                                      target-language-code-string-list
                                      :member-name "TargetLanguageCodes")
                                     (terminology-names :target-type
                                      resource-name-list :member-name
                                      "TerminologyNames")
                                     (parallel-data-names :target-type
                                      resource-name-list :member-name
                                      "ParallelDataNames")
                                     (message :target-type
                                      unbounded-length-string :member-name
                                      "Message")
                                     (submitted-time :target-type timestamp
                                      :member-name "SubmittedTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (input-data-config :target-type
                                      input-data-config :member-name
                                      "InputDataConfig")
                                     (output-data-config :target-type
                                      output-data-config :member-name
                                      "OutputDataConfig")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (settings :target-type
                                      translation-settings :member-name
                                      "Settings"))
                                    (:shape-name
                                     "TextTranslationJobProperties"))

(smithy/sdk/shapes:define-list text-translation-job-properties-list :member
                               text-translation-job-properties)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceArn"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input translate-document-request common-lisp:nil
                                ((document :target-type document :required
                                  common-lisp:t :member-name "Document")
                                 (terminology-names :target-type
                                  resource-name-list :member-name
                                  "TerminologyNames")
                                 (source-language-code :target-type
                                  language-code-string :required common-lisp:t
                                  :member-name "SourceLanguageCode")
                                 (target-language-code :target-type
                                  language-code-string :required common-lisp:t
                                  :member-name "TargetLanguageCode")
                                 (settings :target-type translation-settings
                                  :member-name "Settings"))
                                (:shape-name "TranslateDocumentRequest"))

(smithy/sdk/shapes:define-output translate-document-response common-lisp:nil
                                 ((translated-document :target-type
                                   translated-document :required common-lisp:t
                                   :member-name "TranslatedDocument")
                                  (source-language-code :target-type
                                   language-code-string :required common-lisp:t
                                   :member-name "SourceLanguageCode")
                                  (target-language-code :target-type
                                   language-code-string :required common-lisp:t
                                   :member-name "TargetLanguageCode")
                                  (applied-terminologies :target-type
                                   applied-terminology-list :member-name
                                   "AppliedTerminologies")
                                  (applied-settings :target-type
                                   translation-settings :member-name
                                   "AppliedSettings"))
                                 (:shape-name "TranslateDocumentResponse"))

(smithy/sdk/shapes:define-input translate-text-request common-lisp:nil
                                ((text :target-type bounded-length-string
                                  :required common-lisp:t :member-name "Text")
                                 (terminology-names :target-type
                                  resource-name-list :member-name
                                  "TerminologyNames")
                                 (source-language-code :target-type
                                  language-code-string :required common-lisp:t
                                  :member-name "SourceLanguageCode")
                                 (target-language-code :target-type
                                  language-code-string :required common-lisp:t
                                  :member-name "TargetLanguageCode")
                                 (settings :target-type translation-settings
                                  :member-name "Settings"))
                                (:shape-name "TranslateTextRequest"))

(smithy/sdk/shapes:define-output translate-text-response common-lisp:nil
                                 ((translated-text :target-type
                                   translated-text-string :required
                                   common-lisp:t :member-name "TranslatedText")
                                  (source-language-code :target-type
                                   language-code-string :required common-lisp:t
                                   :member-name "SourceLanguageCode")
                                  (target-language-code :target-type
                                   language-code-string :required common-lisp:t
                                   :member-name "TargetLanguageCode")
                                  (applied-terminologies :target-type
                                   applied-terminology-list :member-name
                                   "AppliedTerminologies")
                                  (applied-settings :target-type
                                   translation-settings :member-name
                                   "AppliedSettings"))
                                 (:shape-name "TranslateTextResponse"))

(smithy/sdk/shapes:define-structure translated-document common-lisp:nil
                                    ((content :target-type
                                      translated-document-content :required
                                      common-lisp:t :member-name "Content"))
                                    (:shape-name "TranslatedDocument"))

(smithy/sdk/shapes:define-type translated-document-content
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type translated-text-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure translation-settings common-lisp:nil
                                    ((formality :target-type formality
                                      :member-name "Formality")
                                     (profanity :target-type profanity
                                      :member-name "Profanity")
                                     (brevity :target-type brevity :member-name
                                      "Brevity"))
                                    (:shape-name "TranslationSettings"))

(smithy/sdk/shapes:define-type unbounded-length-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-display-language-code-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (display-language-code :target-type
                                  language-code-string :member-name
                                  "DisplayLanguageCode"))
                                (:shape-name
                                 "UnsupportedDisplayLanguageCodeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-language-pair-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (source-language-code :target-type
                                  language-code-string :member-name
                                  "SourceLanguageCode")
                                 (target-language-code :target-type
                                  language-code-string :member-name
                                  "TargetLanguageCode"))
                                (:shape-name
                                 "UnsupportedLanguagePairException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-parallel-data-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (parallel-data-config :target-type
                                  parallel-data-config :required common-lisp:t
                                  :member-name "ParallelDataConfig")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "UpdateParallelDataRequest"))

(smithy/sdk/shapes:define-output update-parallel-data-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "Name")
                                  (status :target-type parallel-data-status
                                   :member-name "Status")
                                  (latest-update-attempt-status :target-type
                                   parallel-data-status :member-name
                                   "LatestUpdateAttemptStatus")
                                  (latest-update-attempt-at :target-type
                                   timestamp :member-name
                                   "LatestUpdateAttemptAt"))
                                 (:shape-name "UpdateParallelDataResponse"))

(smithy/sdk/operation:define-operation create-parallel-data :shape-name
                                       "CreateParallelData" :input
                                       create-parallel-data-request :output
                                       create-parallel-data-response :errors
                                       (concurrent-modification-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation delete-parallel-data :shape-name
                                       "DeleteParallelData" :input
                                       delete-parallel-data-request :output
                                       delete-parallel-data-response :errors
                                       (concurrent-modification-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-terminology :shape-name
                                       "DeleteTerminology" :input
                                       delete-terminology-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-text-translation-job
                                       :shape-name "DescribeTextTranslationJob"
                                       :input
                                       describe-text-translation-job-request
                                       :output
                                       describe-text-translation-job-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-parallel-data :shape-name
                                       "GetParallelData" :input
                                       get-parallel-data-request :output
                                       get-parallel-data-response :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-terminology :shape-name
                                       "GetTerminology" :input
                                       get-terminology-request :output
                                       get-terminology-response :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation import-terminology :shape-name
                                       "ImportTerminology" :input
                                       import-terminology-request :output
                                       import-terminology-response :errors
                                       (concurrent-modification-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation list-languages :shape-name
                                       "ListLanguages" :input
                                       list-languages-request :output
                                       list-languages-response :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        too-many-requests-exception
                                        unsupported-display-language-code-exception))

(smithy/sdk/operation:define-operation list-parallel-data :shape-name
                                       "ListParallelData" :input
                                       list-parallel-data-request :output
                                       list-parallel-data-response :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-terminologies :shape-name
                                       "ListTerminologies" :input
                                       list-terminologies-request :output
                                       list-terminologies-response :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-text-translation-jobs :shape-name
                                       "ListTextTranslationJobs" :input
                                       list-text-translation-jobs-request
                                       :output
                                       list-text-translation-jobs-response
                                       :errors
                                       (internal-server-exception
                                        invalid-filter-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-text-translation-job :shape-name
                                       "StartTextTranslationJob" :input
                                       start-text-translation-job-request
                                       :output
                                       start-text-translation-job-response
                                       :errors
                                       (internal-server-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unsupported-language-pair-exception))

(smithy/sdk/operation:define-operation stop-text-translation-job :shape-name
                                       "StopTextTranslationJob" :input
                                       stop-text-translation-job-request
                                       :output
                                       stop-text-translation-job-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (concurrent-modification-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation translate-document :shape-name
                                       "TranslateDocument" :input
                                       translate-document-request :output
                                       translate-document-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unsupported-language-pair-exception))

(smithy/sdk/operation:define-operation translate-text :shape-name
                                       "TranslateText" :input
                                       translate-text-request :output
                                       translate-text-response :errors
                                       (detected-language-low-confidence-exception
                                        internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        text-size-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-language-pair-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (concurrent-modification-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-parallel-data :shape-name
                                       "UpdateParallelData" :input
                                       update-parallel-data-request :output
                                       update-parallel-data-response :errors
                                       (concurrent-modification-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))
