(uiop/package:define-package #:pira/lookoutvision (:use)
                             (:export #:access-denied-exception #:anomaly
                              #:anomaly-class-filter #:anomaly-list
                              #:anomaly-mask #:anomaly-name #:boolean
                              #:client-token #:color #:compiler-options
                              #:component-description #:component-name
                              #:component-version #:component-version-arn
                              #:conflict-exception #:content-type
                              #:create-dataset #:create-model #:create-project
                              #:dataset-changes #:dataset-description
                              #:dataset-entry #:dataset-entry-list
                              #:dataset-ground-truth-manifest
                              #:dataset-image-stats #:dataset-metadata
                              #:dataset-metadata-list #:dataset-source
                              #:dataset-status #:dataset-status-message
                              #:dataset-type #:date-time #:delete-dataset
                              #:delete-model #:delete-project
                              #:describe-dataset #:describe-model
                              #:describe-model-packaging-job #:describe-project
                              #:detect-anomalies #:detect-anomaly-result
                              #:exception-string #:float
                              #:greengrass-configuration
                              #:greengrass-output-details #:image-source
                              #:image-source-type #:inference-units
                              #:input-s3object #:integer
                              #:internal-server-exception #:is-labeled
                              #:kms-key-id #:list-dataset-entries
                              #:list-model-packaging-jobs #:list-models
                              #:list-projects #:list-tags-for-resource
                              #:lookout-vision-service #:model-arn
                              #:model-description #:model-description-message
                              #:model-hosting-status #:model-metadata
                              #:model-metadata-list
                              #:model-packaging-configuration
                              #:model-packaging-description
                              #:model-packaging-job-description
                              #:model-packaging-job-metadata
                              #:model-packaging-job-name
                              #:model-packaging-job-status
                              #:model-packaging-jobs-list
                              #:model-packaging-method
                              #:model-packaging-output-details
                              #:model-packaging-status-message
                              #:model-performance #:model-status
                              #:model-status-message #:model-version
                              #:model-version-no-latest #:output-config
                              #:output-s3object #:page-size #:pagination-token
                              #:pixel-anomaly #:project-arn
                              #:project-description #:project-metadata
                              #:project-metadata-list #:project-name
                              #:query-string #:resource-not-found-exception
                              #:resource-type #:retry-after-seconds
                              #:s3bucket-name #:s3key-prefix #:s3location
                              #:s3object-key #:s3object-version
                              #:service-quota-exceeded-exception #:start-model
                              #:start-model-packaging-job #:stop-model #:stream
                              #:tag #:tag-arn #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:target-device #:target-platform
                              #:target-platform-accelerator
                              #:target-platform-arch #:target-platform-os
                              #:throttling-exception #:untag-resource
                              #:update-dataset-entries #:validation-exception
                              #:lookoutvision-error))
(common-lisp:in-package #:pira/lookoutvision)

(common-lisp:define-condition lookoutvision-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service lookout-vision-service :shape-name
                                   "LookoutVisionService" :version "2020-11-20"
                                   :title "Amazon Lookout for Vision"
                                   :operations
                                   '(create-dataset create-model create-project
                                     delete-dataset delete-model delete-project
                                     describe-dataset describe-model
                                     describe-model-packaging-job
                                     describe-project detect-anomalies
                                     list-dataset-entries
                                     list-model-packaging-jobs list-models
                                     list-projects list-tags-for-resource
                                     start-model start-model-packaging-job
                                     stop-model tag-resource untag-resource
                                     update-dataset-entries)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "LookoutVision")
                                      ("arnNamespace" . "lookoutvision")
                                      ("cloudFormationName" . "LookoutVision")
                                      ("cloudTrailEventSource"
                                       . "lookoutvision.amazonaws.com")
                                      ("endpointPrefix" . "lookoutvision"))
                                     ("aws.auth#sigv4"
                                      ("name" . "lookoutvision"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class lookoutvision-error))

(smithy/sdk/shapes:define-structure anomaly common-lisp:nil
                                    ((name :target-type anomaly-name
                                      :member-name "Name")
                                     (pixel-anomaly :target-type pixel-anomaly
                                      :member-name "PixelAnomaly"))
                                    (:shape-name "Anomaly"))

(smithy/sdk/shapes:define-type anomaly-class-filter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list anomaly-list :member anomaly)

(smithy/sdk/shapes:define-type anomaly-mask smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type anomaly-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type color smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compiler-options smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class lookoutvision-error))

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType")
                                 (dataset-source :target-type dataset-source
                                  :member-name "DatasetSource")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-metadata :target-type
                                   dataset-metadata :member-name
                                   "DatasetMetadata"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-model-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (description :target-type
                                  model-description-message :member-name
                                  "Description")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (output-config :target-type output-config
                                  :required common-lisp:t :member-name
                                  "OutputConfig")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateModelRequest"))

(smithy/sdk/shapes:define-output create-model-response common-lisp:nil
                                 ((model-metadata :target-type model-metadata
                                   :member-name "ModelMetadata"))
                                 (:shape-name "CreateModelResponse"))

(smithy/sdk/shapes:define-input create-project-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-output create-project-response common-lisp:nil
                                 ((project-metadata :target-type
                                   project-metadata :member-name
                                   "ProjectMetadata"))
                                 (:shape-name "CreateProjectResponse"))

(smithy/sdk/shapes:define-type dataset-changes smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure dataset-description common-lisp:nil
                                    ((project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (dataset-type :target-type dataset-type
                                      :member-name "DatasetType")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (last-updated-timestamp :target-type
                                      date-time :member-name
                                      "LastUpdatedTimestamp")
                                     (status :target-type dataset-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      dataset-status-message :member-name
                                      "StatusMessage")
                                     (image-stats :target-type
                                      dataset-image-stats :member-name
                                      "ImageStats"))
                                    (:shape-name "DatasetDescription"))

(smithy/sdk/shapes:define-type dataset-entry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dataset-entry-list :member dataset-entry)

(smithy/sdk/shapes:define-structure dataset-ground-truth-manifest
                                    common-lisp:nil
                                    ((s3object :target-type input-s3object
                                      :member-name "S3Object"))
                                    (:shape-name "DatasetGroundTruthManifest"))

(smithy/sdk/shapes:define-structure dataset-image-stats common-lisp:nil
                                    ((total :target-type integer :member-name
                                      "Total")
                                     (labeled :target-type integer :member-name
                                      "Labeled")
                                     (normal :target-type integer :member-name
                                      "Normal")
                                     (anomaly :target-type integer :member-name
                                      "Anomaly"))
                                    (:shape-name "DatasetImageStats"))

(smithy/sdk/shapes:define-structure dataset-metadata common-lisp:nil
                                    ((dataset-type :target-type dataset-type
                                      :member-name "DatasetType")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (status :target-type dataset-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      dataset-status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "DatasetMetadata"))

(smithy/sdk/shapes:define-list dataset-metadata-list :member dataset-metadata)

(smithy/sdk/shapes:define-structure dataset-source common-lisp:nil
                                    ((ground-truth-manifest :target-type
                                      dataset-ground-truth-manifest
                                      :member-name "GroundTruthManifest"))
                                    (:shape-name "DatasetSource"))

(smithy/sdk/shapes:define-enum dataset-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed-rollback-in-progress "UPDATE_FAILED_ROLLBACK_IN_PROGRESS")
  (:update-failed-rollback-complete "UPDATE_FAILED_ROLLBACK_COMPLETE")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type dataset-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataset-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-output delete-dataset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDatasetResponse"))

(smithy/sdk/shapes:define-input delete-model-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (model-version :target-type
                                  model-version-no-latest :required
                                  common-lisp:t :member-name "ModelVersion"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "DeleteModelRequest"))

(smithy/sdk/shapes:define-output delete-model-response common-lisp:nil
                                 ((model-arn :target-type model-arn
                                   :member-name "ModelArn"))
                                 (:shape-name "DeleteModelResponse"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-output delete-project-response common-lisp:nil
                                 ((project-arn :target-type project-arn
                                   :member-name "ProjectArn"))
                                 (:shape-name "DeleteProjectResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType" :http-label common-lisp:t))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset-description :target-type
                                   dataset-description :member-name
                                   "DatasetDescription"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-model-packaging-job-request
                                common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (job-name :target-type
                                  model-packaging-job-name :required
                                  common-lisp:t :member-name "JobName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeModelPackagingJobRequest"))

(smithy/sdk/shapes:define-output describe-model-packaging-job-response
                                 common-lisp:nil
                                 ((model-packaging-description :target-type
                                   model-packaging-description :member-name
                                   "ModelPackagingDescription"))
                                 (:shape-name
                                  "DescribeModelPackagingJobResponse"))

(smithy/sdk/shapes:define-input describe-model-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion" :http-label common-lisp:t))
                                (:shape-name "DescribeModelRequest"))

(smithy/sdk/shapes:define-output describe-model-response common-lisp:nil
                                 ((model-description :target-type
                                   model-description :member-name
                                   "ModelDescription"))
                                 (:shape-name "DescribeModelResponse"))

(smithy/sdk/shapes:define-input describe-project-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t))
                                (:shape-name "DescribeProjectRequest"))

(smithy/sdk/shapes:define-output describe-project-response common-lisp:nil
                                 ((project-description :target-type
                                   project-description :member-name
                                   "ProjectDescription"))
                                 (:shape-name "DescribeProjectResponse"))

(smithy/sdk/shapes:define-input detect-anomalies-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion" :http-label common-lisp:t)
                                 (body :target-type stream :required
                                  common-lisp:t :member-name "Body"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type content-type
                                  :required common-lisp:t :member-name
                                  "ContentType" :http-header "Content-Type"))
                                (:shape-name "DetectAnomaliesRequest"))

(smithy/sdk/shapes:define-output detect-anomalies-response common-lisp:nil
                                 ((detect-anomaly-result :target-type
                                   detect-anomaly-result :member-name
                                   "DetectAnomalyResult"))
                                 (:shape-name "DetectAnomaliesResponse"))

(smithy/sdk/shapes:define-structure detect-anomaly-result common-lisp:nil
                                    ((source :target-type image-source
                                      :member-name "Source")
                                     (is-anomalous :target-type boolean
                                      :member-name "IsAnomalous")
                                     (confidence :target-type float
                                      :member-name "Confidence")
                                     (anomalies :target-type anomaly-list
                                      :member-name "Anomalies")
                                     (anomaly-mask :target-type anomaly-mask
                                      :member-name "AnomalyMask"))
                                    (:shape-name "DetectAnomalyResult"))

(smithy/sdk/shapes:define-type exception-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure greengrass-configuration common-lisp:nil
                                    ((compiler-options :target-type
                                      compiler-options :member-name
                                      "CompilerOptions")
                                     (target-device :target-type target-device
                                      :member-name "TargetDevice")
                                     (target-platform :target-type
                                      target-platform :member-name
                                      "TargetPlatform")
                                     (s3output-location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "S3OutputLocation")
                                     (component-name :target-type
                                      component-name :required common-lisp:t
                                      :member-name "ComponentName")
                                     (component-version :target-type
                                      component-version :member-name
                                      "ComponentVersion")
                                     (component-description :target-type
                                      component-description :member-name
                                      "ComponentDescription")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "GreengrassConfiguration"))

(smithy/sdk/shapes:define-structure greengrass-output-details common-lisp:nil
                                    ((component-version-arn :target-type
                                      component-version-arn :member-name
                                      "ComponentVersionArn")
                                     (component-name :target-type
                                      component-name :member-name
                                      "ComponentName")
                                     (component-version :target-type
                                      component-version :member-name
                                      "ComponentVersion"))
                                    (:shape-name "GreengrassOutputDetails"))

(smithy/sdk/shapes:define-structure image-source common-lisp:nil
                                    ((type :target-type image-source-type
                                      :member-name "Type"))
                                    (:shape-name "ImageSource"))

(smithy/sdk/shapes:define-type image-source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inference-units smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure input-s3object common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "Bucket")
                                     (key :target-type s3object-key :required
                                      common-lisp:t :member-name "Key")
                                     (version-id :target-type s3object-version
                                      :member-name "VersionId"))
                                    (:shape-name "InputS3Object"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class lookoutvision-error))

(smithy/sdk/shapes:define-type is-labeled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-dataset-entries-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType" :http-label common-lisp:t)
                                 (labeled :target-type is-labeled :member-name
                                  "Labeled" :http-query "labeled")
                                 (anomaly-class :target-type
                                  anomaly-class-filter :member-name
                                  "AnomalyClass" :http-query "anomalyClass")
                                 (before-creation-date :target-type date-time
                                  :member-name "BeforeCreationDate" :http-query
                                  "createdBefore")
                                 (after-creation-date :target-type date-time
                                  :member-name "AfterCreationDate" :http-query
                                  "createdAfter")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (source-ref-contains :target-type query-string
                                  :member-name "SourceRefContains" :http-query
                                  "sourceRefContains"))
                                (:shape-name "ListDatasetEntriesRequest"))

(smithy/sdk/shapes:define-output list-dataset-entries-response common-lisp:nil
                                 ((dataset-entries :target-type
                                   dataset-entry-list :member-name
                                   "DatasetEntries")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDatasetEntriesResponse"))

(smithy/sdk/shapes:define-input list-model-packaging-jobs-request
                                common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListModelPackagingJobsRequest"))

(smithy/sdk/shapes:define-output list-model-packaging-jobs-response
                                 common-lisp:nil
                                 ((model-packaging-jobs :target-type
                                   model-packaging-jobs-list :member-name
                                   "ModelPackagingJobs")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListModelPackagingJobsResponse"))

(smithy/sdk/shapes:define-input list-models-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListModelsRequest"))

(smithy/sdk/shapes:define-output list-models-response common-lisp:nil
                                 ((models :target-type model-metadata-list
                                   :member-name "Models")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListModelsResponse"))

(smithy/sdk/shapes:define-input list-projects-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectsRequest"))

(smithy/sdk/shapes:define-output list-projects-response common-lisp:nil
                                 ((projects :target-type project-metadata-list
                                   :member-name "Projects")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProjectsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-description common-lisp:nil
                                    ((model-version :target-type model-version
                                      :member-name "ModelVersion")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (description :target-type
                                      model-description-message :member-name
                                      "Description")
                                     (status :target-type model-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      model-status-message :member-name
                                      "StatusMessage")
                                     (performance :target-type
                                      model-performance :member-name
                                      "Performance")
                                     (output-config :target-type output-config
                                      :member-name "OutputConfig")
                                     (evaluation-manifest :target-type
                                      output-s3object :member-name
                                      "EvaluationManifest")
                                     (evaluation-result :target-type
                                      output-s3object :member-name
                                      "EvaluationResult")
                                     (evaluation-end-timestamp :target-type
                                      date-time :member-name
                                      "EvaluationEndTimestamp")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (min-inference-units :target-type
                                      inference-units :member-name
                                      "MinInferenceUnits")
                                     (max-inference-units :target-type
                                      inference-units :member-name
                                      "MaxInferenceUnits"))
                                    (:shape-name "ModelDescription"))

(smithy/sdk/shapes:define-type model-description-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-hosting-status
    common-lisp:nil
  (:starting-hosting "STARTING_HOSTING")
  (:hosted "HOSTED")
  (:hosting-failed "HOSTING_FAILED")
  (:stopping-hosting "STOPPING_HOSTING")
  (:system-updating "SYSTEM_UPDATING"))

(smithy/sdk/shapes:define-structure model-metadata common-lisp:nil
                                    ((creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (model-version :target-type model-version
                                      :member-name "ModelVersion")
                                     (model-arn :target-type model-arn
                                      :member-name "ModelArn")
                                     (description :target-type
                                      model-description-message :member-name
                                      "Description")
                                     (status :target-type model-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      model-status-message :member-name
                                      "StatusMessage")
                                     (performance :target-type
                                      model-performance :member-name
                                      "Performance"))
                                    (:shape-name "ModelMetadata"))

(smithy/sdk/shapes:define-list model-metadata-list :member model-metadata)

(smithy/sdk/shapes:define-structure model-packaging-configuration
                                    common-lisp:nil
                                    ((greengrass :target-type
                                      greengrass-configuration :required
                                      common-lisp:t :member-name "Greengrass"))
                                    (:shape-name "ModelPackagingConfiguration"))

(smithy/sdk/shapes:define-structure model-packaging-description common-lisp:nil
                                    ((job-name :target-type
                                      model-packaging-job-name :member-name
                                      "JobName")
                                     (project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (model-version :target-type model-version
                                      :member-name "ModelVersion")
                                     (model-packaging-configuration
                                      :target-type
                                      model-packaging-configuration
                                      :member-name
                                      "ModelPackagingConfiguration")
                                     (model-packaging-job-description
                                      :target-type
                                      model-packaging-job-description
                                      :member-name
                                      "ModelPackagingJobDescription")
                                     (model-packaging-method :target-type
                                      model-packaging-method :member-name
                                      "ModelPackagingMethod")
                                     (model-packaging-output-details
                                      :target-type
                                      model-packaging-output-details
                                      :member-name
                                      "ModelPackagingOutputDetails")
                                     (status :target-type
                                      model-packaging-job-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      model-packaging-status-message
                                      :member-name "StatusMessage")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (last-updated-timestamp :target-type
                                      date-time :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "ModelPackagingDescription"))

(smithy/sdk/shapes:define-type model-packaging-job-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-packaging-job-metadata
                                    common-lisp:nil
                                    ((job-name :target-type
                                      model-packaging-job-name :member-name
                                      "JobName")
                                     (project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (model-version :target-type model-version
                                      :member-name "ModelVersion")
                                     (model-packaging-job-description
                                      :target-type
                                      model-packaging-job-description
                                      :member-name
                                      "ModelPackagingJobDescription")
                                     (model-packaging-method :target-type
                                      model-packaging-method :member-name
                                      "ModelPackagingMethod")
                                     (status :target-type
                                      model-packaging-job-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      model-packaging-status-message
                                      :member-name "StatusMessage")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (last-updated-timestamp :target-type
                                      date-time :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "ModelPackagingJobMetadata"))

(smithy/sdk/shapes:define-type model-packaging-job-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum model-packaging-job-status
    common-lisp:nil
  (:created "CREATED")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list model-packaging-jobs-list :member
                               model-packaging-job-metadata)

(smithy/sdk/shapes:define-type model-packaging-method
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-packaging-output-details
                                    common-lisp:nil
                                    ((greengrass :target-type
                                      greengrass-output-details :member-name
                                      "Greengrass"))
                                    (:shape-name "ModelPackagingOutputDetails"))

(smithy/sdk/shapes:define-type model-packaging-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure model-performance common-lisp:nil
                                    ((f1score :target-type float :member-name
                                      "F1Score")
                                     (recall :target-type float :member-name
                                      "Recall")
                                     (precision :target-type float :member-name
                                      "Precision"))
                                    (:shape-name "ModelPerformance"))

(smithy/sdk/shapes:define-enum model-status
    common-lisp:nil
  (:training "TRAINING")
  (:trained "TRAINED")
  (:training-failed "TRAINING_FAILED")
  (:starting-hosting "STARTING_HOSTING")
  (:hosted "HOSTED")
  (:hosting-failed "HOSTING_FAILED")
  (:stopping-hosting "STOPPING_HOSTING")
  (:system-updating "SYSTEM_UPDATING")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type model-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type model-version-no-latest
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure output-config common-lisp:nil
                                    ((s3location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "S3Location"))
                                    (:shape-name "OutputConfig"))

(smithy/sdk/shapes:define-structure output-s3object common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "Bucket")
                                     (key :target-type s3object-key :required
                                      common-lisp:t :member-name "Key"))
                                    (:shape-name "OutputS3Object"))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pixel-anomaly common-lisp:nil
                                    ((total-percentage-area :target-type float
                                      :member-name "TotalPercentageArea")
                                     (color :target-type color :member-name
                                      "Color"))
                                    (:shape-name "PixelAnomaly"))

(smithy/sdk/shapes:define-type project-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-description common-lisp:nil
                                    ((project-arn :target-type project-arn
                                      :member-name "ProjectArn")
                                     (project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (datasets :target-type
                                      dataset-metadata-list :member-name
                                      "Datasets"))
                                    (:shape-name "ProjectDescription"))

(smithy/sdk/shapes:define-structure project-metadata common-lisp:nil
                                    ((project-arn :target-type project-arn
                                      :member-name "ProjectArn")
                                     (project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp"))
                                    (:shape-name "ProjectMetadata"))

(smithy/sdk/shapes:define-list project-metadata-list :member project-metadata)

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class lookoutvision-error))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:project "PROJECT")
  (:dataset "DATASET")
  (:model "MODEL")
  (:trial "TRIAL")
  (:model-package-job "MODEL_PACKAGE_JOB"))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "Bucket")
                                     (prefix :target-type s3key-prefix
                                      :member-name "Prefix"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type exception-string
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (quota-code :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "QuotaCode")
                                 (service-code :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class lookoutvision-error))

(smithy/sdk/shapes:define-input start-model-packaging-job-request
                                common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion")
                                 (job-name :target-type
                                  model-packaging-job-name :member-name
                                  "JobName")
                                 (configuration :target-type
                                  model-packaging-configuration :required
                                  common-lisp:t :member-name "Configuration")
                                 (description :target-type
                                  model-packaging-job-description :member-name
                                  "Description")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "StartModelPackagingJobRequest"))

(smithy/sdk/shapes:define-output start-model-packaging-job-response
                                 common-lisp:nil
                                 ((job-name :target-type
                                   model-packaging-job-name :member-name
                                   "JobName"))
                                 (:shape-name "StartModelPackagingJobResponse"))

(smithy/sdk/shapes:define-input start-model-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion" :http-label common-lisp:t)
                                 (min-inference-units :target-type
                                  inference-units :required common-lisp:t
                                  :member-name "MinInferenceUnits")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (max-inference-units :target-type
                                  inference-units :member-name
                                  "MaxInferenceUnits"))
                                (:shape-name "StartModelRequest"))

(smithy/sdk/shapes:define-output start-model-response common-lisp:nil
                                 ((status :target-type model-hosting-status
                                   :member-name "Status"))
                                 (:shape-name "StartModelResponse"))

(smithy/sdk/shapes:define-input stop-model-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (model-version :target-type model-version
                                  :required common-lisp:t :member-name
                                  "ModelVersion" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "StopModelRequest"))

(smithy/sdk/shapes:define-output stop-model-response common-lisp:nil
                                 ((status :target-type model-hosting-status
                                   :member-name "Status"))
                                 (:shape-name "StopModelResponse"))

(smithy/sdk/shapes:define-type stream smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-device
    common-lisp:nil
  (:jetson-xavier "jetson_xavier"))

(smithy/sdk/shapes:define-structure target-platform common-lisp:nil
                                    ((os :target-type target-platform-os
                                      :required common-lisp:t :member-name
                                      "Os")
                                     (arch :target-type target-platform-arch
                                      :required common-lisp:t :member-name
                                      "Arch")
                                     (accelerator :target-type
                                      target-platform-accelerator :member-name
                                      "Accelerator"))
                                    (:shape-name "TargetPlatform"))

(smithy/sdk/shapes:define-enum target-platform-accelerator
    common-lisp:nil
  (:nvidia "NVIDIA"))

(smithy/sdk/shapes:define-enum target-platform-arch
    common-lisp:nil
  (:arm64 "ARM64")
  (:x86-64 "X86_64"))

(smithy/sdk/shapes:define-enum target-platform-os
    common-lisp:nil
  (:linux "LINUX"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (quota-code :target-type exception-string
                                  :member-name "QuotaCode")
                                 (service-code :target-type exception-string
                                  :member-name "ServiceCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class lookoutvision-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-dataset-entries-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName" :http-label common-lisp:t)
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType" :http-label common-lisp:t)
                                 (changes :target-type dataset-changes
                                  :required common-lisp:t :member-name
                                  "Changes")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name "UpdateDatasetEntriesRequest"))

(smithy/sdk/shapes:define-output update-dataset-entries-response
                                 common-lisp:nil
                                 ((status :target-type dataset-status
                                   :member-name "Status"))
                                 (:shape-name "UpdateDatasetEntriesResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class lookoutvision-error))

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects/{ProjectName}/datasets"
                                       :code 202)

(smithy/sdk/operation:define-operation create-model :shape-name "CreateModel"
                                       :input create-model-request :output
                                       create-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects/{ProjectName}/models"
                                       :code 202)

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects" :code 200)

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       delete-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-model :shape-name "DeleteModel"
                                       :input delete-model-request :output
                                       delete-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2020-11-20/projects/{ProjectName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-model :shape-name
                                       "DescribeModel" :input
                                       describe-model-request :output
                                       describe-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-model-packaging-job :shape-name
                                       "DescribeModelPackagingJob" :input
                                       describe-model-packaging-job-request
                                       :output
                                       describe-model-packaging-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}/modelpackagingjobs/{JobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-project :shape-name
                                       "DescribeProject" :input
                                       describe-project-request :output
                                       describe-project-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}"
                                       :code 200)

(smithy/sdk/operation:define-operation detect-anomalies :shape-name
                                       "DetectAnomalies" :input
                                       detect-anomalies-request :output
                                       detect-anomalies-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/detect"
                                       :code 200)

(smithy/sdk/operation:define-operation list-dataset-entries :shape-name
                                       "ListDatasetEntries" :input
                                       list-dataset-entries-request :output
                                       list-dataset-entries-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-model-packaging-jobs :shape-name
                                       "ListModelPackagingJobs" :input
                                       list-model-packaging-jobs-request
                                       :output
                                       list-model-packaging-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}/modelpackagingjobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-models :shape-name "ListModels"
                                       :input list-models-request :output
                                       list-models-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects/{ProjectName}/models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-request :output
                                       list-projects-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/projects" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2020-11-20/tags/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation start-model :shape-name "StartModel"
                                       :input start-model-request :output
                                       start-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/start"
                                       :code 202)

(smithy/sdk/operation:define-operation start-model-packaging-job :shape-name
                                       "StartModelPackagingJob" :input
                                       start-model-packaging-job-request
                                       :output
                                       start-model-packaging-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects/{ProjectName}/modelpackagingjobs"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-model :shape-name "StopModel"
                                       :input stop-model-request :output
                                       stop-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/stop"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2020-11-20/tags/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2020-11-20/tags/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation update-dataset-entries :shape-name
                                       "UpdateDatasetEntries" :input
                                       update-dataset-entries-request :output
                                       update-dataset-entries-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries"
                                       :code 202)
