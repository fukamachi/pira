(uiop/package:define-package #:pira/healthlake (:use)
                             (:export #:access-denied-exception
                              #:amazon-resource-name #:authorization-strategy
                              #:boolean #:bounded-length-string
                              #:client-token-string #:cmk-type
                              #:configuration-metadata #:conflict-exception
                              #:create-fhirdatastore
                              #:create-fhirdatastore-request
                              #:create-fhirdatastore-response #:datastore-arn
                              #:datastore-filter #:datastore-id
                              #:datastore-name #:datastore-properties
                              #:datastore-properties-list #:datastore-status
                              #:delete-fhirdatastore
                              #:delete-fhirdatastore-request
                              #:delete-fhirdatastore-response
                              #:describe-fhirdatastore
                              #:describe-fhirdatastore-request
                              #:describe-fhirdatastore-response
                              #:describe-fhirexport-job
                              #:describe-fhirexport-job-request
                              #:describe-fhirexport-job-response
                              #:describe-fhirimport-job
                              #:describe-fhirimport-job-request
                              #:describe-fhirimport-job-response
                              #:encryption-key-id #:error-category
                              #:error-cause #:error-message
                              #:export-job-properties
                              #:export-job-properties-list #:fhirversion
                              #:generic-double #:generic-long #:health-lake
                              #:iam-role-arn #:identity-provider-configuration
                              #:import-job-properties
                              #:import-job-properties-list #:input-data-config
                              #:internal-server-exception #:job-id #:job-name
                              #:job-progress-report #:job-status
                              #:kms-encryption-config #:lambda-arn
                              #:list-fhirdatastores
                              #:list-fhirdatastores-request
                              #:list-fhirdatastores-response
                              #:list-fhirexport-jobs
                              #:list-fhirexport-jobs-request
                              #:list-fhirexport-jobs-response
                              #:list-fhirimport-jobs
                              #:list-fhirimport-jobs-request
                              #:list-fhirimport-jobs-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:max-results-integer #:message #:next-token
                              #:output-data-config #:preload-data-config
                              #:preload-data-type
                              #:resource-not-found-exception #:s3configuration
                              #:s3uri #:sse-configuration
                              #:start-fhirexport-job
                              #:start-fhirexport-job-request
                              #:start-fhirexport-job-response
                              #:start-fhirimport-job
                              #:start-fhirimport-job-request
                              #:start-fhirimport-job-response #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:throttling-exception #:timestamp
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:validation-exception))
(common-lisp:in-package #:pira/healthlake)

(smithy/sdk/service:define-service health-lake :shape-name "HealthLake"
                                   :version "2017-07-01" :title
                                   "Amazon HealthLake" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "HealthLake")
                                      ("arnNamespace" . "healthlake")
                                      ("cloudFormationName" . "HealthLake")
                                      ("cloudTrailEventSource"
                                       . "healthlake.amazonaws.com")
                                      ("endpointPrefix" . "healthlake"))
                                     ("aws.auth#sigv4" ("name" . "healthlake"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum authorization-strategy
    common-lisp:nil
  (:smartv1 "SMART_ON_FHIR_V1")
  (:smart-on-fhir "SMART_ON_FHIR")
  (:aws-auth "AWS_AUTH"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bounded-length-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cmk-type
    common-lisp:nil
  (:cm-cmk "CUSTOMER_MANAGED_KMS_KEY")
  (:ao-cmk "AWS_OWNED_KMS_KEY"))

(smithy/sdk/shapes:define-type configuration-metadata
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-fhirdatastore-request common-lisp:nil
                                ((datastore-name :target-type datastore-name
                                  :member-name "DatastoreName")
                                 (datastore-type-version :target-type
                                  fhirversion :required common-lisp:t
                                  :member-name "DatastoreTypeVersion")
                                 (sse-configuration :target-type
                                  sse-configuration :member-name
                                  "SseConfiguration")
                                 (preload-data-config :target-type
                                  preload-data-config :member-name
                                  "PreloadDataConfig")
                                 (client-token :target-type client-token-string
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (identity-provider-configuration :target-type
                                  identity-provider-configuration :member-name
                                  "IdentityProviderConfiguration"))
                                (:shape-name "CreateFHIRDatastoreRequest"))

(smithy/sdk/shapes:define-output create-fhirdatastore-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "DatastoreId")
                                  (datastore-arn :target-type datastore-arn
                                   :required common-lisp:t :member-name
                                   "DatastoreArn")
                                  (datastore-status :target-type
                                   datastore-status :required common-lisp:t
                                   :member-name "DatastoreStatus")
                                  (datastore-endpoint :target-type
                                   bounded-length-string :required
                                   common-lisp:t :member-name
                                   "DatastoreEndpoint"))
                                 (:shape-name "CreateFHIRDatastoreResponse"))

(smithy/sdk/shapes:define-type datastore-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datastore-filter common-lisp:nil
                                    ((datastore-name :target-type
                                      datastore-name :member-name
                                      "DatastoreName")
                                     (datastore-status :target-type
                                      datastore-status :member-name
                                      "DatastoreStatus")
                                     (created-before :target-type timestamp
                                      :member-name "CreatedBefore")
                                     (created-after :target-type timestamp
                                      :member-name "CreatedAfter"))
                                    (:shape-name "DatastoreFilter"))

(smithy/sdk/shapes:define-type datastore-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type datastore-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datastore-properties common-lisp:nil
                                    ((datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "DatastoreId")
                                     (datastore-arn :target-type datastore-arn
                                      :required common-lisp:t :member-name
                                      "DatastoreArn")
                                     (datastore-name :target-type
                                      datastore-name :member-name
                                      "DatastoreName")
                                     (datastore-status :target-type
                                      datastore-status :required common-lisp:t
                                      :member-name "DatastoreStatus")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (datastore-type-version :target-type
                                      fhirversion :required common-lisp:t
                                      :member-name "DatastoreTypeVersion")
                                     (datastore-endpoint :target-type string
                                      :required common-lisp:t :member-name
                                      "DatastoreEndpoint")
                                     (sse-configuration :target-type
                                      sse-configuration :member-name
                                      "SseConfiguration")
                                     (preload-data-config :target-type
                                      preload-data-config :member-name
                                      "PreloadDataConfig")
                                     (identity-provider-configuration
                                      :target-type
                                      identity-provider-configuration
                                      :member-name
                                      "IdentityProviderConfiguration")
                                     (error-cause :target-type error-cause
                                      :member-name "ErrorCause"))
                                    (:shape-name "DatastoreProperties"))

(smithy/sdk/shapes:define-list datastore-properties-list :member
                               datastore-properties)

(smithy/sdk/shapes:define-enum datastore-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:create-failed "CREATE_FAILED"))

(smithy/sdk/shapes:define-input delete-fhirdatastore-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId"))
                                (:shape-name "DeleteFHIRDatastoreRequest"))

(smithy/sdk/shapes:define-output delete-fhirdatastore-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "DatastoreId")
                                  (datastore-arn :target-type datastore-arn
                                   :required common-lisp:t :member-name
                                   "DatastoreArn")
                                  (datastore-status :target-type
                                   datastore-status :required common-lisp:t
                                   :member-name "DatastoreStatus")
                                  (datastore-endpoint :target-type
                                   bounded-length-string :required
                                   common-lisp:t :member-name
                                   "DatastoreEndpoint"))
                                 (:shape-name "DeleteFHIRDatastoreResponse"))

(smithy/sdk/shapes:define-input describe-fhirdatastore-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId"))
                                (:shape-name "DescribeFHIRDatastoreRequest"))

(smithy/sdk/shapes:define-output describe-fhirdatastore-response
                                 common-lisp:nil
                                 ((datastore-properties :target-type
                                   datastore-properties :required common-lisp:t
                                   :member-name "DatastoreProperties"))
                                 (:shape-name "DescribeFHIRDatastoreResponse"))

(smithy/sdk/shapes:define-input describe-fhirexport-job-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "DescribeFHIRExportJobRequest"))

(smithy/sdk/shapes:define-output describe-fhirexport-job-response
                                 common-lisp:nil
                                 ((export-job-properties :target-type
                                   export-job-properties :required
                                   common-lisp:t :member-name
                                   "ExportJobProperties"))
                                 (:shape-name "DescribeFHIRExportJobResponse"))

(smithy/sdk/shapes:define-input describe-fhirimport-job-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId")
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "DescribeFHIRImportJobRequest"))

(smithy/sdk/shapes:define-output describe-fhirimport-job-response
                                 common-lisp:nil
                                 ((import-job-properties :target-type
                                   import-job-properties :required
                                   common-lisp:t :member-name
                                   "ImportJobProperties"))
                                 (:shape-name "DescribeFHIRImportJobResponse"))

(smithy/sdk/shapes:define-type encryption-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum error-category
    common-lisp:nil
  (:retryable-error "RETRYABLE_ERROR")
  (:non-retryable-error "NON_RETRYABLE_ERROR"))

(smithy/sdk/shapes:define-structure error-cause common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "ErrorMessage")
                                     (error-category :target-type
                                      error-category :member-name
                                      "ErrorCategory"))
                                    (:shape-name "ErrorCause"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-job-properties common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "JobStatus")
                                     (submit-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "DatastoreId")
                                     (output-data-config :target-type
                                      output-data-config :required
                                      common-lisp:t :member-name
                                      "OutputDataConfig")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "ExportJobProperties"))

(smithy/sdk/shapes:define-list export-job-properties-list :member
                               export-job-properties)

(smithy/sdk/shapes:define-enum fhirversion
    common-lisp:nil
  (:r4 "R4"))

(smithy/sdk/shapes:define-type generic-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type generic-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-provider-configuration
                                    common-lisp:nil
                                    ((authorization-strategy :target-type
                                      authorization-strategy :required
                                      common-lisp:t :member-name
                                      "AuthorizationStrategy")
                                     (fine-grained-authorization-enabled
                                      :target-type boolean :member-name
                                      "FineGrainedAuthorizationEnabled")
                                     (metadata :target-type
                                      configuration-metadata :member-name
                                      "Metadata")
                                     (idp-lambda-arn :target-type lambda-arn
                                      :member-name "IdpLambdaArn"))
                                    (:shape-name
                                     "IdentityProviderConfiguration"))

(smithy/sdk/shapes:define-structure import-job-properties common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "JobStatus")
                                     (submit-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SubmitTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "DatastoreId")
                                     (input-data-config :target-type
                                      input-data-config :required common-lisp:t
                                      :member-name "InputDataConfig")
                                     (job-output-data-config :target-type
                                      output-data-config :member-name
                                      "JobOutputDataConfig")
                                     (job-progress-report :target-type
                                      job-progress-report :member-name
                                      "JobProgressReport")
                                     (data-access-role-arn :target-type
                                      iam-role-arn :member-name
                                      "DataAccessRoleArn")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "ImportJobProperties"))

(smithy/sdk/shapes:define-list import-job-properties-list :member
                               import-job-properties)

(smithy/sdk/shapes:define-union input-data-config common-lisp:nil
                                ((s3uri :target-type s3uri :member-name
                                  "S3Uri"))
                                (:shape-name "InputDataConfig"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-progress-report common-lisp:nil
                                    ((total-number-of-scanned-files
                                      :target-type generic-long :member-name
                                      "TotalNumberOfScannedFiles")
                                     (total-size-of-scanned-files-in-mb
                                      :target-type generic-double :member-name
                                      "TotalSizeOfScannedFilesInMB")
                                     (total-number-of-imported-files
                                      :target-type generic-long :member-name
                                      "TotalNumberOfImportedFiles")
                                     (total-number-of-resources-scanned
                                      :target-type generic-long :member-name
                                      "TotalNumberOfResourcesScanned")
                                     (total-number-of-resources-imported
                                      :target-type generic-long :member-name
                                      "TotalNumberOfResourcesImported")
                                     (total-number-of-resources-with-customer-error
                                      :target-type generic-long :member-name
                                      "TotalNumberOfResourcesWithCustomerError")
                                     (total-number-of-files-read-with-customer-error
                                      :target-type generic-long :member-name
                                      "TotalNumberOfFilesReadWithCustomerError")
                                     (throughput :target-type generic-double
                                      :member-name "Throughput"))
                                    (:shape-name "JobProgressReport"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:completed-with-errors "COMPLETED_WITH_ERRORS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancel-submitted "CANCEL_SUBMITTED")
  (:cancel-in-progress "CANCEL_IN_PROGRESS")
  (:cancel-completed "CANCEL_COMPLETED")
  (:cancel-failed "CANCEL_FAILED"))

(smithy/sdk/shapes:define-structure kms-encryption-config common-lisp:nil
                                    ((cmk-type :target-type cmk-type :required
                                      common-lisp:t :member-name "CmkType")
                                     (kms-key-id :target-type encryption-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name "KmsEncryptionConfig"))

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-fhirdatastores-request common-lisp:nil
                                ((filter :target-type datastore-filter
                                  :member-name "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListFHIRDatastoresRequest"))

(smithy/sdk/shapes:define-output list-fhirdatastores-response common-lisp:nil
                                 ((datastore-properties-list :target-type
                                   datastore-properties-list :required
                                   common-lisp:t :member-name
                                   "DatastorePropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFHIRDatastoresResponse"))

(smithy/sdk/shapes:define-input list-fhirexport-jobs-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (job-status :target-type job-status
                                  :member-name "JobStatus")
                                 (submitted-before :target-type timestamp
                                  :member-name "SubmittedBefore")
                                 (submitted-after :target-type timestamp
                                  :member-name "SubmittedAfter"))
                                (:shape-name "ListFHIRExportJobsRequest"))

(smithy/sdk/shapes:define-output list-fhirexport-jobs-response common-lisp:nil
                                 ((export-job-properties-list :target-type
                                   export-job-properties-list :required
                                   common-lisp:t :member-name
                                   "ExportJobPropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFHIRExportJobsResponse"))

(smithy/sdk/shapes:define-input list-fhirimport-jobs-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults")
                                 (job-name :target-type job-name :member-name
                                  "JobName")
                                 (job-status :target-type job-status
                                  :member-name "JobStatus")
                                 (submitted-before :target-type timestamp
                                  :member-name "SubmittedBefore")
                                 (submitted-after :target-type timestamp
                                  :member-name "SubmittedAfter"))
                                (:shape-name "ListFHIRImportJobsRequest"))

(smithy/sdk/shapes:define-output list-fhirimport-jobs-response common-lisp:nil
                                 ((import-job-properties-list :target-type
                                   import-job-properties-list :required
                                   common-lisp:t :member-name
                                   "ImportJobPropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFHIRImportJobsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union output-data-config common-lisp:nil
                                ((s3configuration :target-type s3configuration
                                  :member-name "S3Configuration"))
                                (:shape-name "OutputDataConfig"))

(smithy/sdk/shapes:define-structure preload-data-config common-lisp:nil
                                    ((preload-data-type :target-type
                                      preload-data-type :required common-lisp:t
                                      :member-name "PreloadDataType"))
                                    (:shape-name "PreloadDataConfig"))

(smithy/sdk/shapes:define-enum preload-data-type
    common-lisp:nil
  (:synthea "SYNTHEA"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (kms-key-id :target-type encryption-key-id
                                      :required common-lisp:t :member-name
                                      "KmsKeyId"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sse-configuration common-lisp:nil
                                    ((kms-encryption-config :target-type
                                      kms-encryption-config :required
                                      common-lisp:t :member-name
                                      "KmsEncryptionConfig"))
                                    (:shape-name "SseConfiguration"))

(smithy/sdk/shapes:define-input start-fhirexport-job-request common-lisp:nil
                                ((job-name :target-type job-name :member-name
                                  "JobName")
                                 (output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "OutputDataConfig")
                                 (datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (client-token :target-type client-token-string
                                  :member-name "ClientToken"))
                                (:shape-name "StartFHIRExportJobRequest"))

(smithy/sdk/shapes:define-output start-fhirexport-job-response common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "JobId")
                                  (job-status :target-type job-status :required
                                   common-lisp:t :member-name "JobStatus")
                                  (datastore-id :target-type datastore-id
                                   :member-name "DatastoreId"))
                                 (:shape-name "StartFHIRExportJobResponse"))

(smithy/sdk/shapes:define-input start-fhirimport-job-request common-lisp:nil
                                ((job-name :target-type job-name :member-name
                                  "JobName")
                                 (input-data-config :target-type
                                  input-data-config :required common-lisp:t
                                  :member-name "InputDataConfig")
                                 (job-output-data-config :target-type
                                  output-data-config :required common-lisp:t
                                  :member-name "JobOutputDataConfig")
                                 (datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "DatastoreId")
                                 (data-access-role-arn :target-type
                                  iam-role-arn :required common-lisp:t
                                  :member-name "DataAccessRoleArn")
                                 (client-token :target-type client-token-string
                                  :member-name "ClientToken"))
                                (:shape-name "StartFHIRImportJobRequest"))

(smithy/sdk/shapes:define-output start-fhirimport-job-response common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "JobId")
                                  (job-status :target-type job-status :required
                                   common-lisp:t :member-name "JobStatus")
                                  (datastore-id :target-type datastore-id
                                   :member-name "DatastoreId"))
                                 (:shape-name "StartFHIRImportJobResponse"))

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-fhirdatastore :shape-name
                                       "CreateFHIRDatastore" :input
                                       create-fhirdatastore-request :output
                                       create-fhirdatastore-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-fhirdatastore :shape-name
                                       "DeleteFHIRDatastore" :input
                                       delete-fhirdatastore-request :output
                                       delete-fhirdatastore-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-fhirdatastore :shape-name
                                       "DescribeFHIRDatastore" :input
                                       describe-fhirdatastore-request :output
                                       describe-fhirdatastore-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-fhirexport-job :shape-name
                                       "DescribeFHIRExportJob" :input
                                       describe-fhirexport-job-request :output
                                       describe-fhirexport-job-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-fhirimport-job :shape-name
                                       "DescribeFHIRImportJob" :input
                                       describe-fhirimport-job-request :output
                                       describe-fhirimport-job-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-fhirdatastores :shape-name
                                       "ListFHIRDatastores" :input
                                       list-fhirdatastores-request :output
                                       list-fhirdatastores-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-fhirexport-jobs :shape-name
                                       "ListFHIRExportJobs" :input
                                       list-fhirexport-jobs-request :output
                                       list-fhirexport-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-fhirimport-jobs :shape-name
                                       "ListFHIRImportJobs" :input
                                       list-fhirimport-jobs-request :output
                                       list-fhirimport-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-fhirexport-job :shape-name
                                       "StartFHIRExportJob" :input
                                       start-fhirexport-job-request :output
                                       start-fhirexport-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-fhirimport-job :shape-name
                                       "StartFHIRImportJob" :input
                                       start-fhirimport-job-request :output
                                       start-fhirimport-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))
