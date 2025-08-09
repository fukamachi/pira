(uiop/package:define-package #:pira/cleanroomsml (:use)
                             (:export #:awsstark-control-service #:account-id
                              #:account-id-list #:algorithm-image
                              #:analysis-template-arn #:audience-destination
                              #:audience-export-job #:audience-export-job-arn
                              #:audience-export-job-list
                              #:audience-export-job-status
                              #:audience-export-job-summary
                              #:audience-generation-job
                              #:audience-generation-job-arn
                              #:audience-generation-job-data-source
                              #:audience-generation-job-list
                              #:audience-generation-job-status
                              #:audience-generation-job-summary
                              #:audience-model #:audience-model-arn
                              #:audience-model-list #:audience-model-status
                              #:audience-model-summary
                              #:audience-quality-metrics #:audience-size
                              #:audience-size-bins #:audience-size-config
                              #:audience-size-type #:audience-size-value
                              #:cancel-trained-model
                              #:cancel-trained-model-inference-job
                              #:collaboration-configured-model-algorithm-association-list
                              #:collaboration-configured-model-algorithm-association-summary
                              #:collaboration-mlinput-channel-summary
                              #:collaboration-mlinput-channels-list
                              #:collaboration-trained-model-export-job-list
                              #:collaboration-trained-model-export-job-summary
                              #:collaboration-trained-model-inference-job-list
                              #:collaboration-trained-model-inference-job-summary
                              #:collaboration-trained-model-list
                              #:collaboration-trained-model-summary
                              #:column-name #:column-schema #:column-type
                              #:column-type-list #:compute-configuration
                              #:configured-audience-model
                              #:configured-audience-model-arn
                              #:configured-audience-model-list
                              #:configured-audience-model-output-config
                              #:configured-audience-model-policy
                              #:configured-audience-model-status
                              #:configured-audience-model-summary
                              #:configured-model-algorithm
                              #:configured-model-algorithm-arn
                              #:configured-model-algorithm-association
                              #:configured-model-algorithm-association-arn
                              #:configured-model-algorithm-association-arn-list
                              #:configured-model-algorithm-association-list
                              #:configured-model-algorithm-association-summary
                              #:configured-model-algorithm-list
                              #:configured-model-algorithm-summary
                              #:container-argument #:container-arguments
                              #:container-config #:container-entrypoint
                              #:container-entrypoint-string
                              #:create-audience-model
                              #:create-configured-audience-model
                              #:create-configured-model-algorithm
                              #:create-configured-model-algorithm-association
                              #:create-mlinput-channel #:create-trained-model
                              #:create-training-dataset #:data-source #:dataset
                              #:dataset-input-config #:dataset-list
                              #:dataset-schema-list #:dataset-type
                              #:delete-audience-generation-job
                              #:delete-audience-model
                              #:delete-configured-audience-model
                              #:delete-configured-audience-model-policy
                              #:delete-configured-model-algorithm
                              #:delete-configured-model-algorithm-association
                              #:delete-mlconfiguration
                              #:delete-mlinput-channel-data
                              #:delete-trained-model-output
                              #:delete-training-dataset #:destination
                              #:environment #:get-audience-generation-job
                              #:get-audience-model
                              #:get-collaboration-configured-model-algorithm-association
                              #:get-collaboration-mlinput-channel
                              #:get-collaboration-trained-model
                              #:get-configured-audience-model
                              #:get-configured-audience-model-policy
                              #:get-configured-model-algorithm
                              #:get-configured-model-algorithm-association
                              #:get-mlconfiguration #:get-mlinput-channel
                              #:get-trained-model
                              #:get-trained-model-inference-job
                              #:get-training-dataset #:glue-data-source
                              #:glue-database-name #:glue-table-name #:hash
                              #:hyper-parameters #:iam-role-arn
                              #:incremental-training-data-channel
                              #:incremental-training-data-channel-output
                              #:incremental-training-data-channels
                              #:incremental-training-data-channels-output
                              #:inference-container-config
                              #:inference-container-execution-parameters
                              #:inference-environment-map
                              #:inference-instance-type
                              #:inference-output-configuration
                              #:inference-receiver-member
                              #:inference-receiver-members
                              #:inference-resource-config #:input-channel
                              #:input-channel-data-source #:instance-type
                              #:kms-key-arn #:list-audience-export-jobs
                              #:list-audience-generation-jobs
                              #:list-audience-models
                              #:list-collaboration-configured-model-algorithm-associations
                              #:list-collaboration-mlinput-channels
                              #:list-collaboration-trained-model-export-jobs
                              #:list-collaboration-trained-model-inference-jobs
                              #:list-collaboration-trained-models
                              #:list-configured-audience-models
                              #:list-configured-model-algorithm-associations
                              #:list-configured-model-algorithms
                              #:list-mlinput-channels #:list-tags-for-resource
                              #:list-trained-model-inference-jobs
                              #:list-trained-model-versions
                              #:list-trained-models #:list-training-datasets
                              #:logs-configuration-policy
                              #:logs-configuration-policy-list #:logs-status
                              #:mlconfiguration #:mlinput-channel
                              #:mlinput-channel-arn #:mlinput-channel-status
                              #:mlinput-channel-summary #:mlinput-channels-list
                              #:mloutput-configuration #:max-results
                              #:metric-definition #:metric-definition-list
                              #:metric-name #:metric-regex
                              #:metrics-configuration-policy #:metrics-list
                              #:metrics-status #:min-matching-seed-size
                              #:model-inference-data-source
                              #:model-training-data-channel
                              #:model-training-data-channel-name
                              #:model-training-data-channels #:name-string
                              #:next-token #:noise-level-type #:parameter-key
                              #:parameter-map #:parameter-value
                              #:policy-existence-condition
                              #:privacy-configuration
                              #:privacy-configuration-policies
                              #:protected-query-input-parameters
                              #:protected-query-sqlparameters
                              #:put-configured-audience-model-policy
                              #:put-mlconfiguration #:relevance-metric
                              #:relevance-metrics #:resource-config
                              #:resource-description #:resource-policy
                              #:result-format #:s3config-map
                              #:s3data-distribution-type #:s3path
                              #:shared-audience-metrics
                              #:start-audience-export-job
                              #:start-audience-generation-job
                              #:start-trained-model-export-job
                              #:start-trained-model-inference-job
                              #:status-details #:stopping-condition #:tag-key
                              #:tag-keys #:tag-map #:tag-on-create-policy
                              #:tag-resource #:tag-value #:taggable-arn
                              #:trained-model #:trained-model-arn
                              #:trained-model-artifact-max-size
                              #:trained-model-artifact-max-size-unit-type
                              #:trained-model-artifact-max-size-value
                              #:trained-model-export-file-type
                              #:trained-model-export-file-type-list
                              #:trained-model-export-job
                              #:trained-model-export-job-arn
                              #:trained-model-export-job-status
                              #:trained-model-export-output-configuration
                              #:trained-model-export-receiver-member
                              #:trained-model-export-receiver-members
                              #:trained-model-exports-configuration-policy
                              #:trained-model-exports-max-size
                              #:trained-model-exports-max-size-unit-type
                              #:trained-model-exports-max-size-value
                              #:trained-model-inference-job
                              #:trained-model-inference-job-arn
                              #:trained-model-inference-job-list
                              #:trained-model-inference-job-status
                              #:trained-model-inference-job-summary
                              #:trained-model-inference-jobs-configuration-policy
                              #:trained-model-inference-max-output-size
                              #:trained-model-inference-max-output-size-unit-type
                              #:trained-model-inference-max-output-size-value
                              #:trained-model-list #:trained-model-status
                              #:trained-model-summary
                              #:trained-models-configuration-policy
                              #:training-dataset #:training-dataset-arn
                              #:training-dataset-list #:training-dataset-status
                              #:training-dataset-summary #:training-input-mode
                              #:uuid #:untag-resource
                              #:update-configured-audience-model
                              #:worker-compute-configuration
                              #:worker-compute-type))
(common-lisp:in-package #:pira/cleanroomsml)

(smithy/sdk/service:define-service awsstark-control-service :shape-name
                                   "AWSStarkControlService" :version
                                   "2023-09-06" :title "AWS Clean Rooms ML"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CleanRoomsML")
                                      ("arnNamespace" . "cleanrooms-ml")
                                      ("cloudTrailEventSource"
                                       . "cleanrooms-ml.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cleanrooms-ml"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type algorithm-image smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type analysis-template-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audience-destination common-lisp:nil
                                    ((s3destination :target-type s3config-map
                                      :required common-lisp:t :member-name
                                      "s3Destination"))
                                    (:shape-name "AudienceDestination"))

common-lisp:nil

(smithy/sdk/shapes:define-type audience-export-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list audience-export-job-list :member
                               audience-export-job-summary)

(smithy/sdk/shapes:define-enum audience-export-job-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure audience-export-job-summary common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (audience-generation-job-arn :target-type
                                      audience-generation-job-arn :required
                                      common-lisp:t :member-name
                                      "audienceGenerationJobArn")
                                     (audience-size :target-type audience-size
                                      :required common-lisp:t :member-name
                                      "audienceSize")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (status :target-type
                                      audience-export-job-status :required
                                      common-lisp:t :member-name "status")
                                     (status-details :target-type
                                      status-details :member-name
                                      "statusDetails")
                                     (output-location :target-type s3path
                                      :member-name "outputLocation"))
                                    (:shape-name "AudienceExportJobSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type audience-generation-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audience-generation-job-data-source
                                    common-lisp:nil
                                    ((data-source :target-type s3config-map
                                      :member-name "dataSource")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (sql-parameters :target-type
                                      protected-query-sqlparameters
                                      :member-name "sqlParameters")
                                     (sql-compute-configuration :target-type
                                      compute-configuration :member-name
                                      "sqlComputeConfiguration"))
                                    (:shape-name
                                     "AudienceGenerationJobDataSource"))

(smithy/sdk/shapes:define-list audience-generation-job-list :member
                               audience-generation-job-summary)

(smithy/sdk/shapes:define-enum audience-generation-job-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:delete-pending "DELETE_PENDING")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure audience-generation-job-summary
                                    common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (audience-generation-job-arn :target-type
                                      audience-generation-job-arn :required
                                      common-lisp:t :member-name
                                      "audienceGenerationJobArn")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (status :target-type
                                      audience-generation-job-status :required
                                      common-lisp:t :member-name "status")
                                     (configured-audience-model-arn
                                      :target-type
                                      configured-audience-model-arn :required
                                      common-lisp:t :member-name
                                      "configuredAudienceModelArn")
                                     (collaboration-id :target-type uuid
                                      :member-name "collaborationId")
                                     (started-by :target-type account-id
                                      :member-name "startedBy"))
                                    (:shape-name
                                     "AudienceGenerationJobSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type audience-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list audience-model-list :member
                               audience-model-summary)

(smithy/sdk/shapes:define-enum audience-model-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:delete-pending "DELETE_PENDING")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure audience-model-summary common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (audience-model-arn :target-type
                                      audience-model-arn :required
                                      common-lisp:t :member-name
                                      "audienceModelArn")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (training-dataset-arn :target-type
                                      training-dataset-arn :required
                                      common-lisp:t :member-name
                                      "trainingDatasetArn")
                                     (status :target-type audience-model-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name "AudienceModelSummary"))

(smithy/sdk/shapes:define-structure audience-quality-metrics common-lisp:nil
                                    ((relevance-metrics :target-type
                                      relevance-metrics :required common-lisp:t
                                      :member-name "relevanceMetrics")
                                     (recall-metric :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "recallMetric"))
                                    (:shape-name "AudienceQualityMetrics"))

(smithy/sdk/shapes:define-structure audience-size common-lisp:nil
                                    ((type :target-type audience-size-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (value :target-type audience-size-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "AudienceSize"))

(smithy/sdk/shapes:define-list audience-size-bins :member audience-size-value)

(smithy/sdk/shapes:define-structure audience-size-config common-lisp:nil
                                    ((audience-size-type :target-type
                                      audience-size-type :required
                                      common-lisp:t :member-name
                                      "audienceSizeType")
                                     (audience-size-bins :target-type
                                      audience-size-bins :required
                                      common-lisp:t :member-name
                                      "audienceSizeBins"))
                                    (:shape-name "AudienceSizeConfig"))

(smithy/sdk/shapes:define-enum audience-size-type
    common-lisp:nil
  (:absolute "ABSOLUTE")
  (:percentage "PERCENTAGE"))

(smithy/sdk/shapes:define-type audience-size-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input cancel-trained-model-inference-job-request
                                common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (trained-model-inference-job-arn :target-type
                                  trained-model-inference-job-arn :required
                                  common-lisp:t :member-name
                                  "trainedModelInferenceJobArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "CancelTrainedModelInferenceJobRequest"))

(smithy/sdk/shapes:define-input cancel-trained-model-request common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn" :http-label
                                  common-lisp:t)
                                 (version-identifier :target-type uuid
                                  :member-name "versionIdentifier" :http-query
                                  "versionIdentifier"))
                                (:shape-name "CancelTrainedModelRequest"))

(smithy/sdk/shapes:define-list
 collaboration-configured-model-algorithm-association-list :member
 collaboration-configured-model-algorithm-association-summary)

(smithy/sdk/shapes:define-structure
 collaboration-configured-model-algorithm-association-summary common-lisp:nil
 ((create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime" :timestamp-format "date-time")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime" :timestamp-format "date-time")
  (configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (description :target-type resource-description :member-name "description")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier")
  (configured-model-algorithm-arn :target-type configured-model-algorithm-arn
   :required common-lisp:t :member-name "configuredModelAlgorithmArn")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId"))
 (:shape-name "CollaborationConfiguredModelAlgorithmAssociationSummary"))

(smithy/sdk/shapes:define-structure collaboration-mlinput-channel-summary
                                    common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (membership-identifier :target-type uuid
                                      :required common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (collaboration-identifier :target-type
                                      uuid :required common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (configured-model-algorithm-associations
                                      :target-type
                                      configured-model-algorithm-association-arn-list
                                      :required common-lisp:t :member-name
                                      "configuredModelAlgorithmAssociations")
                                     (ml-input-channel-arn :target-type
                                      mlinput-channel-arn :required
                                      common-lisp:t :member-name
                                      "mlInputChannelArn")
                                     (status :target-type
                                      mlinput-channel-status :required
                                      common-lisp:t :member-name "status")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name
                                     "CollaborationMLInputChannelSummary"))

(smithy/sdk/shapes:define-list collaboration-mlinput-channels-list :member
                               collaboration-mlinput-channel-summary)

(smithy/sdk/shapes:define-list collaboration-trained-model-export-job-list
                               :member
                               collaboration-trained-model-export-job-summary)

(smithy/sdk/shapes:define-structure
 collaboration-trained-model-export-job-summary common-lisp:nil
 ((create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime" :timestamp-format "date-time")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime" :timestamp-format "date-time")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (output-configuration :target-type trained-model-export-output-configuration
   :required common-lisp:t :member-name "outputConfiguration")
  (status :target-type trained-model-export-job-status :required common-lisp:t
   :member-name "status")
  (status-details :target-type status-details :member-name "statusDetails")
  (description :target-type resource-description :member-name "description")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId")
  (trained-model-arn :target-type trained-model-arn :required common-lisp:t
   :member-name "trainedModelArn")
  (trained-model-version-identifier :target-type uuid :member-name
   "trainedModelVersionIdentifier")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier"))
 (:shape-name "CollaborationTrainedModelExportJobSummary"))

(smithy/sdk/shapes:define-list collaboration-trained-model-inference-job-list
                               :member
                               collaboration-trained-model-inference-job-summary)

(smithy/sdk/shapes:define-structure
 collaboration-trained-model-inference-job-summary common-lisp:nil
 ((trained-model-inference-job-arn :target-type trained-model-inference-job-arn
   :required common-lisp:t :member-name "trainedModelInferenceJobArn")
  (configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :member-name
   "configuredModelAlgorithmAssociationArn")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier")
  (trained-model-arn :target-type trained-model-arn :required common-lisp:t
   :member-name "trainedModelArn")
  (trained-model-version-identifier :target-type uuid :member-name
   "trainedModelVersionIdentifier")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier")
  (status :target-type trained-model-inference-job-status :required
   common-lisp:t :member-name "status")
  (output-configuration :target-type inference-output-configuration :required
   common-lisp:t :member-name "outputConfiguration")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (description :target-type resource-description :member-name "description")
  (metrics-status :target-type metrics-status :member-name "metricsStatus")
  (metrics-status-details :target-type smithy/sdk/smithy-types:string
   :member-name "metricsStatusDetails")
  (logs-status :target-type logs-status :member-name "logsStatus")
  (logs-status-details :target-type smithy/sdk/smithy-types:string :member-name
   "logsStatusDetails")
  (create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime" :timestamp-format "date-time")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime" :timestamp-format "date-time")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId"))
 (:shape-name "CollaborationTrainedModelInferenceJobSummary"))

(smithy/sdk/shapes:define-list collaboration-trained-model-list :member
                               collaboration-trained-model-summary)

(smithy/sdk/shapes:define-structure collaboration-trained-model-summary
                                    common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (trained-model-arn :target-type
                                      trained-model-arn :required common-lisp:t
                                      :member-name "trainedModelArn")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (version-identifier :target-type uuid
                                      :member-name "versionIdentifier")
                                     (incremental-training-data-channels
                                      :target-type
                                      incremental-training-data-channels-output
                                      :member-name
                                      "incrementalTrainingDataChannels")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (membership-identifier :target-type uuid
                                      :required common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (collaboration-identifier :target-type
                                      uuid :required common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (status :target-type trained-model-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (configured-model-algorithm-association-arn
                                      :target-type
                                      configured-model-algorithm-association-arn
                                      :required common-lisp:t :member-name
                                      "configuredModelAlgorithmAssociationArn")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId"))
                                    (:shape-name
                                     "CollaborationTrainedModelSummary"))

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure column-schema common-lisp:nil
                                    ((column-name :target-type column-name
                                      :required common-lisp:t :member-name
                                      "columnName")
                                     (column-types :target-type
                                      column-type-list :required common-lisp:t
                                      :member-name "columnTypes"))
                                    (:shape-name "ColumnSchema"))

(smithy/sdk/shapes:define-enum column-type
    common-lisp:nil
  (:user-id "USER_ID")
  (:item-id "ITEM_ID")
  (:timestamp "TIMESTAMP")
  (:categorical-feature "CATEGORICAL_FEATURE")
  (:numerical-feature "NUMERICAL_FEATURE"))

(smithy/sdk/shapes:define-list column-type-list :member column-type)

(smithy/sdk/shapes:define-union compute-configuration common-lisp:nil
                                ((worker :target-type
                                  worker-compute-configuration :member-name
                                  "worker"))
                                (:shape-name "ComputeConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-type configured-audience-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configured-audience-model-list :member
                               configured-audience-model-summary)

(smithy/sdk/shapes:define-structure configured-audience-model-output-config
                                    common-lisp:nil
                                    ((destination :target-type
                                      audience-destination :required
                                      common-lisp:t :member-name "destination")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn"))
                                    (:shape-name
                                     "ConfiguredAudienceModelOutputConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-enum configured-audience-model-status
    common-lisp:nil
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure configured-audience-model-summary
                                    common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (audience-model-arn :target-type
                                      audience-model-arn :required
                                      common-lisp:t :member-name
                                      "audienceModelArn")
                                     (output-config :target-type
                                      configured-audience-model-output-config
                                      :required common-lisp:t :member-name
                                      "outputConfig")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (configured-audience-model-arn
                                      :target-type
                                      configured-audience-model-arn :required
                                      common-lisp:t :member-name
                                      "configuredAudienceModelArn")
                                     (status :target-type
                                      configured-audience-model-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name
                                     "ConfiguredAudienceModelSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type configured-model-algorithm-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type configured-model-algorithm-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configured-model-algorithm-association-arn-list
                               :member
                               configured-model-algorithm-association-arn)

(smithy/sdk/shapes:define-list configured-model-algorithm-association-list
                               :member
                               configured-model-algorithm-association-summary)

(smithy/sdk/shapes:define-structure
 configured-model-algorithm-association-summary common-lisp:nil
 ((create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime" :timestamp-format "date-time")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime" :timestamp-format "date-time")
  (configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn")
  (configured-model-algorithm-arn :target-type configured-model-algorithm-arn
   :required common-lisp:t :member-name "configuredModelAlgorithmArn")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (description :target-type resource-description :member-name "description")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier"))
 (:shape-name "ConfiguredModelAlgorithmAssociationSummary"))

(smithy/sdk/shapes:define-list configured-model-algorithm-list :member
                               configured-model-algorithm-summary)

(smithy/sdk/shapes:define-structure configured-model-algorithm-summary
                                    common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (configured-model-algorithm-arn
                                      :target-type
                                      configured-model-algorithm-arn :required
                                      common-lisp:t :member-name
                                      "configuredModelAlgorithmArn")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name
                                     "ConfiguredModelAlgorithmSummary"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type container-argument
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list container-arguments :member container-argument)

(smithy/sdk/shapes:define-structure container-config common-lisp:nil
                                    ((image-uri :target-type algorithm-image
                                      :required common-lisp:t :member-name
                                      "imageUri")
                                     (entrypoint :target-type
                                      container-entrypoint :member-name
                                      "entrypoint")
                                     (arguments :target-type
                                      container-arguments :member-name
                                      "arguments")
                                     (metric-definitions :target-type
                                      metric-definition-list :member-name
                                      "metricDefinitions"))
                                    (:shape-name "ContainerConfig"))

(smithy/sdk/shapes:define-list container-entrypoint :member
                               container-entrypoint-string)

(smithy/sdk/shapes:define-type container-entrypoint-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-audience-model-request common-lisp:nil
                                ((training-data-start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "trainingDataStartTime"
                                  :timestamp-format "date-time")
                                 (training-data-end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "trainingDataEndTime"
                                  :timestamp-format "date-time")
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (training-dataset-arn :target-type
                                  training-dataset-arn :required common-lisp:t
                                  :member-name "trainingDatasetArn")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (description :target-type resource-description
                                  :member-name "description"))
                                (:shape-name "CreateAudienceModelRequest"))

(smithy/sdk/shapes:define-output create-audience-model-response common-lisp:nil
                                 ((audience-model-arn :target-type
                                   audience-model-arn :required common-lisp:t
                                   :member-name "audienceModelArn"))
                                 (:shape-name "CreateAudienceModelResponse"))

(smithy/sdk/shapes:define-input create-configured-audience-model-request
                                common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (audience-model-arn :target-type
                                  audience-model-arn :required common-lisp:t
                                  :member-name "audienceModelArn")
                                 (output-config :target-type
                                  configured-audience-model-output-config
                                  :required common-lisp:t :member-name
                                  "outputConfig")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (shared-audience-metrics :target-type
                                  metrics-list :required common-lisp:t
                                  :member-name "sharedAudienceMetrics")
                                 (min-matching-seed-size :target-type
                                  min-matching-seed-size :member-name
                                  "minMatchingSeedSize")
                                 (audience-size-config :target-type
                                  audience-size-config :member-name
                                  "audienceSizeConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (child-resource-tag-on-create-policy
                                  :target-type tag-on-create-policy
                                  :member-name
                                  "childResourceTagOnCreatePolicy"))
                                (:shape-name
                                 "CreateConfiguredAudienceModelRequest"))

(smithy/sdk/shapes:define-output create-configured-audience-model-response
                                 common-lisp:nil
                                 ((configured-audience-model-arn :target-type
                                   configured-audience-model-arn :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelArn"))
                                 (:shape-name
                                  "CreateConfiguredAudienceModelResponse"))

(smithy/sdk/shapes:define-input
 create-configured-model-algorithm-association-request common-lisp:nil
 ((membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier" :http-label common-lisp:t)
  (configured-model-algorithm-arn :target-type configured-model-algorithm-arn
   :required common-lisp:t :member-name "configuredModelAlgorithmArn")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (description :target-type resource-description :member-name "description")
  (privacy-configuration :target-type privacy-configuration :member-name
   "privacyConfiguration")
  (tags :target-type tag-map :member-name "tags"))
 (:shape-name "CreateConfiguredModelAlgorithmAssociationRequest"))

(smithy/sdk/shapes:define-output
 create-configured-model-algorithm-association-response common-lisp:nil
 ((configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn"))
 (:shape-name "CreateConfiguredModelAlgorithmAssociationResponse"))

(smithy/sdk/shapes:define-input create-configured-model-algorithm-request
                                common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (training-container-config :target-type
                                  container-config :member-name
                                  "trainingContainerConfig")
                                 (inference-container-config :target-type
                                  inference-container-config :member-name
                                  "inferenceContainerConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn"))
                                (:shape-name
                                 "CreateConfiguredModelAlgorithmRequest"))

(smithy/sdk/shapes:define-output create-configured-model-algorithm-response
                                 common-lisp:nil
                                 ((configured-model-algorithm-arn :target-type
                                   configured-model-algorithm-arn :required
                                   common-lisp:t :member-name
                                   "configuredModelAlgorithmArn"))
                                 (:shape-name
                                  "CreateConfiguredModelAlgorithmResponse"))

(smithy/sdk/shapes:define-input create-mlinput-channel-request common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (configured-model-algorithm-associations
                                  :target-type
                                  configured-model-algorithm-association-arn-list
                                  :required common-lisp:t :member-name
                                  "configuredModelAlgorithmAssociations")
                                 (input-channel :target-type input-channel
                                  :required common-lisp:t :member-name
                                  "inputChannel")
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (retention-in-days :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "retentionInDays")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateMLInputChannelRequest"))

(smithy/sdk/shapes:define-output create-mlinput-channel-response
                                 common-lisp:nil
                                 ((ml-input-channel-arn :target-type
                                   mlinput-channel-arn :required common-lisp:t
                                   :member-name "mlInputChannelArn"))
                                 (:shape-name "CreateMLInputChannelResponse"))

(smithy/sdk/shapes:define-input create-trained-model-request common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (configured-model-algorithm-association-arn
                                  :target-type
                                  configured-model-algorithm-association-arn
                                  :required common-lisp:t :member-name
                                  "configuredModelAlgorithmAssociationArn")
                                 (hyperparameters :target-type hyper-parameters
                                  :member-name "hyperparameters")
                                 (environment :target-type environment
                                  :member-name "environment")
                                 (resource-config :target-type resource-config
                                  :required common-lisp:t :member-name
                                  "resourceConfig")
                                 (stopping-condition :target-type
                                  stopping-condition :member-name
                                  "stoppingCondition")
                                 (incremental-training-data-channels
                                  :target-type
                                  incremental-training-data-channels
                                  :member-name
                                  "incrementalTrainingDataChannels")
                                 (data-channels :target-type
                                  model-training-data-channels :required
                                  common-lisp:t :member-name "dataChannels")
                                 (training-input-mode :target-type
                                  training-input-mode :member-name
                                  "trainingInputMode")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateTrainedModelRequest"))

(smithy/sdk/shapes:define-output create-trained-model-response common-lisp:nil
                                 ((trained-model-arn :target-type
                                   trained-model-arn :required common-lisp:t
                                   :member-name "trainedModelArn")
                                  (version-identifier :target-type uuid
                                   :member-name "versionIdentifier"))
                                 (:shape-name "CreateTrainedModelResponse"))

(smithy/sdk/shapes:define-input create-training-dataset-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (training-data :target-type dataset-list
                                  :required common-lisp:t :member-name
                                  "trainingData")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (description :target-type resource-description
                                  :member-name "description"))
                                (:shape-name "CreateTrainingDatasetRequest"))

(smithy/sdk/shapes:define-output create-training-dataset-response
                                 common-lisp:nil
                                 ((training-dataset-arn :target-type
                                   training-dataset-arn :required common-lisp:t
                                   :member-name "trainingDatasetArn"))
                                 (:shape-name "CreateTrainingDatasetResponse"))

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((glue-data-source :target-type
                                      glue-data-source :required common-lisp:t
                                      :member-name "glueDataSource"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-structure dataset common-lisp:nil
                                    ((type :target-type dataset-type :required
                                      common-lisp:t :member-name "type")
                                     (input-config :target-type
                                      dataset-input-config :required
                                      common-lisp:t :member-name
                                      "inputConfig"))
                                    (:shape-name "Dataset"))

(smithy/sdk/shapes:define-structure dataset-input-config common-lisp:nil
                                    ((schema :target-type dataset-schema-list
                                      :required common-lisp:t :member-name
                                      "schema")
                                     (data-source :target-type data-source
                                      :required common-lisp:t :member-name
                                      "dataSource"))
                                    (:shape-name "DatasetInputConfig"))

(smithy/sdk/shapes:define-list dataset-list :member dataset)

(smithy/sdk/shapes:define-list dataset-schema-list :member column-schema)

(smithy/sdk/shapes:define-enum dataset-type
    common-lisp:nil
  (:interactions "INTERACTIONS"))

(smithy/sdk/shapes:define-input delete-audience-generation-job-request
                                common-lisp:nil
                                ((audience-generation-job-arn :target-type
                                  audience-generation-job-arn :required
                                  common-lisp:t :member-name
                                  "audienceGenerationJobArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteAudienceGenerationJobRequest"))

(smithy/sdk/shapes:define-input delete-audience-model-request common-lisp:nil
                                ((audience-model-arn :target-type
                                  audience-model-arn :required common-lisp:t
                                  :member-name "audienceModelArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAudienceModelRequest"))

(smithy/sdk/shapes:define-input delete-configured-audience-model-policy-request
                                common-lisp:nil
                                ((configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteConfiguredAudienceModelPolicyRequest"))

(smithy/sdk/shapes:define-input delete-configured-audience-model-request
                                common-lisp:nil
                                ((configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteConfiguredAudienceModelRequest"))

(smithy/sdk/shapes:define-input
 delete-configured-model-algorithm-association-request common-lisp:nil
 ((configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn" :http-label
   common-lisp:t)
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier" :http-label common-lisp:t))
 (:shape-name "DeleteConfiguredModelAlgorithmAssociationRequest"))

(smithy/sdk/shapes:define-input delete-configured-model-algorithm-request
                                common-lisp:nil
                                ((configured-model-algorithm-arn :target-type
                                  configured-model-algorithm-arn :required
                                  common-lisp:t :member-name
                                  "configuredModelAlgorithmArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteConfiguredModelAlgorithmRequest"))

(smithy/sdk/shapes:define-input delete-mlconfiguration-request common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMLConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-mlinput-channel-data-request
                                common-lisp:nil
                                ((ml-input-channel-arn :target-type
                                  mlinput-channel-arn :required common-lisp:t
                                  :member-name "mlInputChannelArn" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMLInputChannelDataRequest"))

(smithy/sdk/shapes:define-input delete-trained-model-output-request
                                common-lisp:nil
                                ((trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (version-identifier :target-type uuid
                                  :member-name "versionIdentifier" :http-query
                                  "versionIdentifier"))
                                (:shape-name "DeleteTrainedModelOutputRequest"))

(smithy/sdk/shapes:define-input delete-training-dataset-request common-lisp:nil
                                ((training-dataset-arn :target-type
                                  training-dataset-arn :required common-lisp:t
                                  :member-name "trainingDatasetArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTrainingDatasetRequest"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((s3destination :target-type s3config-map
                                      :required common-lisp:t :member-name
                                      "s3Destination"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-map environment :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-audience-generation-job-request
                                common-lisp:nil
                                ((audience-generation-job-arn :target-type
                                  audience-generation-job-arn :required
                                  common-lisp:t :member-name
                                  "audienceGenerationJobArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAudienceGenerationJobRequest"))

(smithy/sdk/shapes:define-output get-audience-generation-job-response
                                 common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (audience-generation-job-arn :target-type
                                   audience-generation-job-arn :required
                                   common-lisp:t :member-name
                                   "audienceGenerationJobArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (status :target-type
                                   audience-generation-job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (configured-audience-model-arn :target-type
                                   configured-audience-model-arn :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelArn")
                                  (seed-audience :target-type
                                   audience-generation-job-data-source
                                   :member-name "seedAudience")
                                  (include-seed-in-output :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "includeSeedInOutput")
                                  (collaboration-id :target-type uuid
                                   :member-name "collaborationId")
                                  (metrics :target-type
                                   audience-quality-metrics :member-name
                                   "metrics")
                                  (started-by :target-type account-id
                                   :member-name "startedBy")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (protected-query-identifier :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "protectedQueryIdentifier"))
                                 (:shape-name
                                  "GetAudienceGenerationJobResponse"))

(smithy/sdk/shapes:define-input get-audience-model-request common-lisp:nil
                                ((audience-model-arn :target-type
                                  audience-model-arn :required common-lisp:t
                                  :member-name "audienceModelArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAudienceModelRequest"))

(smithy/sdk/shapes:define-output get-audience-model-response common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (training-data-start-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "trainingDataStartTime"
                                   :timestamp-format "date-time")
                                  (training-data-end-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "trainingDataEndTime"
                                   :timestamp-format "date-time")
                                  (audience-model-arn :target-type
                                   audience-model-arn :required common-lisp:t
                                   :member-name "audienceModelArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (training-dataset-arn :target-type
                                   training-dataset-arn :required common-lisp:t
                                   :member-name "trainingDatasetArn")
                                  (status :target-type audience-model-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (description :target-type
                                   resource-description :member-name
                                   "description"))
                                 (:shape-name "GetAudienceModelResponse"))

(smithy/sdk/shapes:define-input
 get-collaboration-configured-model-algorithm-association-request
 common-lisp:nil
 ((configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn" :http-label
   common-lisp:t)
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier" :http-label common-lisp:t))
 (:shape-name "GetCollaborationConfiguredModelAlgorithmAssociationRequest"))

(smithy/sdk/shapes:define-output
 get-collaboration-configured-model-algorithm-association-response
 common-lisp:nil
 ((create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime" :timestamp-format "date-time")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime" :timestamp-format "date-time")
  (configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier")
  (configured-model-algorithm-arn :target-type configured-model-algorithm-arn
   :required common-lisp:t :member-name "configuredModelAlgorithmArn")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (description :target-type resource-description :member-name "description")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId")
  (privacy-configuration :target-type privacy-configuration :member-name
   "privacyConfiguration"))
 (:shape-name "GetCollaborationConfiguredModelAlgorithmAssociationResponse"))

(smithy/sdk/shapes:define-input get-collaboration-mlinput-channel-request
                                common-lisp:nil
                                ((ml-input-channel-arn :target-type
                                  mlinput-channel-arn :required common-lisp:t
                                  :member-name "mlInputChannelArn" :http-label
                                  common-lisp:t)
                                 (collaboration-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetCollaborationMLInputChannelRequest"))

(smithy/sdk/shapes:define-output get-collaboration-mlinput-channel-response
                                 common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (creator-account-id :target-type account-id
                                   :required common-lisp:t :member-name
                                   "creatorAccountId")
                                  (membership-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "membershipIdentifier")
                                  (collaboration-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "collaborationIdentifier")
                                  (ml-input-channel-arn :target-type
                                   mlinput-channel-arn :required common-lisp:t
                                   :member-name "mlInputChannelArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (configured-model-algorithm-associations
                                   :target-type
                                   configured-model-algorithm-association-arn-list
                                   :required common-lisp:t :member-name
                                   "configuredModelAlgorithmAssociations")
                                  (status :target-type mlinput-channel-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (retention-in-days :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name
                                   "retentionInDays")
                                  (number-of-records :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "numberOfRecords")
                                  (description :target-type
                                   resource-description :member-name
                                   "description"))
                                 (:shape-name
                                  "GetCollaborationMLInputChannelResponse"))

(smithy/sdk/shapes:define-input get-collaboration-trained-model-request
                                common-lisp:nil
                                ((trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn" :http-label
                                  common-lisp:t)
                                 (collaboration-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t)
                                 (version-identifier :target-type uuid
                                  :member-name "versionIdentifier" :http-query
                                  "versionIdentifier"))
                                (:shape-name
                                 "GetCollaborationTrainedModelRequest"))

(smithy/sdk/shapes:define-output get-collaboration-trained-model-response
                                 common-lisp:nil
                                 ((membership-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "membershipIdentifier")
                                  (collaboration-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "collaborationIdentifier")
                                  (trained-model-arn :target-type
                                   trained-model-arn :required common-lisp:t
                                   :member-name "trainedModelArn")
                                  (version-identifier :target-type uuid
                                   :member-name "versionIdentifier")
                                  (incremental-training-data-channels
                                   :target-type
                                   incremental-training-data-channels-output
                                   :member-name
                                   "incrementalTrainingDataChannels")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (status :target-type trained-model-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (configured-model-algorithm-association-arn
                                   :target-type
                                   configured-model-algorithm-association-arn
                                   :required common-lisp:t :member-name
                                   "configuredModelAlgorithmAssociationArn")
                                  (resource-config :target-type resource-config
                                   :member-name "resourceConfig")
                                  (training-input-mode :target-type
                                   training-input-mode :member-name
                                   "trainingInputMode")
                                  (stopping-condition :target-type
                                   stopping-condition :member-name
                                   "stoppingCondition")
                                  (metrics-status :target-type metrics-status
                                   :member-name "metricsStatus")
                                  (metrics-status-details :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "metricsStatusDetails")
                                  (logs-status :target-type logs-status
                                   :member-name "logsStatus")
                                  (logs-status-details :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "logsStatusDetails")
                                  (training-container-image-digest :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "trainingContainerImageDigest")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (creator-account-id :target-type account-id
                                   :required common-lisp:t :member-name
                                   "creatorAccountId"))
                                 (:shape-name
                                  "GetCollaborationTrainedModelResponse"))

(smithy/sdk/shapes:define-input get-configured-audience-model-policy-request
                                common-lisp:nil
                                ((configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetConfiguredAudienceModelPolicyRequest"))

(smithy/sdk/shapes:define-output get-configured-audience-model-policy-response
                                 common-lisp:nil
                                 ((configured-audience-model-arn :target-type
                                   configured-audience-model-arn :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelArn")
                                  (configured-audience-model-policy
                                   :target-type resource-policy :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelPolicy")
                                  (policy-hash :target-type hash :required
                                   common-lisp:t :member-name "policyHash"))
                                 (:shape-name
                                  "GetConfiguredAudienceModelPolicyResponse"))

(smithy/sdk/shapes:define-input get-configured-audience-model-request
                                common-lisp:nil
                                ((configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetConfiguredAudienceModelRequest"))

(smithy/sdk/shapes:define-output get-configured-audience-model-response
                                 common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (configured-audience-model-arn :target-type
                                   configured-audience-model-arn :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (audience-model-arn :target-type
                                   audience-model-arn :required common-lisp:t
                                   :member-name "audienceModelArn")
                                  (output-config :target-type
                                   configured-audience-model-output-config
                                   :required common-lisp:t :member-name
                                   "outputConfig")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (status :target-type
                                   configured-audience-model-status :required
                                   common-lisp:t :member-name "status")
                                  (shared-audience-metrics :target-type
                                   metrics-list :required common-lisp:t
                                   :member-name "sharedAudienceMetrics")
                                  (min-matching-seed-size :target-type
                                   min-matching-seed-size :member-name
                                   "minMatchingSeedSize")
                                  (audience-size-config :target-type
                                   audience-size-config :member-name
                                   "audienceSizeConfig")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (child-resource-tag-on-create-policy
                                   :target-type tag-on-create-policy
                                   :member-name
                                   "childResourceTagOnCreatePolicy"))
                                 (:shape-name
                                  "GetConfiguredAudienceModelResponse"))

(smithy/sdk/shapes:define-input
 get-configured-model-algorithm-association-request common-lisp:nil
 ((configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn" :http-label
   common-lisp:t)
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier" :http-label common-lisp:t))
 (:shape-name "GetConfiguredModelAlgorithmAssociationRequest"))

(smithy/sdk/shapes:define-output
 get-configured-model-algorithm-association-response common-lisp:nil
 ((create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime" :timestamp-format "date-time")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime" :timestamp-format "date-time")
  (configured-model-algorithm-association-arn :target-type
   configured-model-algorithm-association-arn :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociationArn")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier")
  (configured-model-algorithm-arn :target-type configured-model-algorithm-arn
   :required common-lisp:t :member-name "configuredModelAlgorithmArn")
  (name :target-type name-string :required common-lisp:t :member-name "name")
  (privacy-configuration :target-type privacy-configuration :member-name
   "privacyConfiguration")
  (description :target-type resource-description :member-name "description")
  (tags :target-type tag-map :member-name "tags"))
 (:shape-name "GetConfiguredModelAlgorithmAssociationResponse"))

(smithy/sdk/shapes:define-input get-configured-model-algorithm-request
                                common-lisp:nil
                                ((configured-model-algorithm-arn :target-type
                                  configured-model-algorithm-arn :required
                                  common-lisp:t :member-name
                                  "configuredModelAlgorithmArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetConfiguredModelAlgorithmRequest"))

(smithy/sdk/shapes:define-output get-configured-model-algorithm-response
                                 common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (configured-model-algorithm-arn :target-type
                                   configured-model-algorithm-arn :required
                                   common-lisp:t :member-name
                                   "configuredModelAlgorithmArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (training-container-config :target-type
                                   container-config :member-name
                                   "trainingContainerConfig")
                                  (inference-container-config :target-type
                                   inference-container-config :member-name
                                   "inferenceContainerConfig")
                                  (role-arn :target-type iam-role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn"))
                                 (:shape-name
                                  "GetConfiguredModelAlgorithmResponse"))

(smithy/sdk/shapes:define-input get-mlconfiguration-request common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMLConfigurationRequest"))

(smithy/sdk/shapes:define-output get-mlconfiguration-response common-lisp:nil
                                 ((membership-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "membershipIdentifier")
                                  (default-output-location :target-type
                                   mloutput-configuration :required
                                   common-lisp:t :member-name
                                   "defaultOutputLocation")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name "GetMLConfigurationResponse"))

(smithy/sdk/shapes:define-input get-mlinput-channel-request common-lisp:nil
                                ((ml-input-channel-arn :target-type
                                  mlinput-channel-arn :required common-lisp:t
                                  :member-name "mlInputChannelArn" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMLInputChannelRequest"))

(smithy/sdk/shapes:define-output get-mlinput-channel-response common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (membership-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "membershipIdentifier")
                                  (collaboration-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "collaborationIdentifier")
                                  (input-channel :target-type input-channel
                                   :required common-lisp:t :member-name
                                   "inputChannel")
                                  (protected-query-identifier :target-type uuid
                                   :member-name "protectedQueryIdentifier")
                                  (ml-input-channel-arn :target-type
                                   mlinput-channel-arn :required common-lisp:t
                                   :member-name "mlInputChannelArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (configured-model-algorithm-associations
                                   :target-type
                                   configured-model-algorithm-association-arn-list
                                   :required common-lisp:t :member-name
                                   "configuredModelAlgorithmAssociations")
                                  (status :target-type mlinput-channel-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (retention-in-days :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name
                                   "retentionInDays")
                                  (number-of-records :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "numberOfRecords")
                                  (number-of-files :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "numberOfFiles")
                                  (size-in-gb :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "sizeInGb")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetMLInputChannelResponse"))

(smithy/sdk/shapes:define-input get-trained-model-inference-job-request
                                common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (trained-model-inference-job-arn :target-type
                                  trained-model-inference-job-arn :required
                                  common-lisp:t :member-name
                                  "trainedModelInferenceJobArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetTrainedModelInferenceJobRequest"))

(smithy/sdk/shapes:define-output get-trained-model-inference-job-response
                                 common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (trained-model-inference-job-arn :target-type
                                   trained-model-inference-job-arn :required
                                   common-lisp:t :member-name
                                   "trainedModelInferenceJobArn")
                                  (configured-model-algorithm-association-arn
                                   :target-type
                                   configured-model-algorithm-association-arn
                                   :member-name
                                   "configuredModelAlgorithmAssociationArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type
                                   trained-model-inference-job-status :required
                                   common-lisp:t :member-name "status")
                                  (trained-model-arn :target-type
                                   trained-model-arn :required common-lisp:t
                                   :member-name "trainedModelArn")
                                  (trained-model-version-identifier
                                   :target-type uuid :member-name
                                   "trainedModelVersionIdentifier")
                                  (resource-config :target-type
                                   inference-resource-config :required
                                   common-lisp:t :member-name "resourceConfig")
                                  (output-configuration :target-type
                                   inference-output-configuration :required
                                   common-lisp:t :member-name
                                   "outputConfiguration")
                                  (membership-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "membershipIdentifier")
                                  (data-source :target-type
                                   model-inference-data-source :required
                                   common-lisp:t :member-name "dataSource")
                                  (container-execution-parameters :target-type
                                   inference-container-execution-parameters
                                   :member-name "containerExecutionParameters")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (inference-container-image-digest
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "inferenceContainerImageDigest")
                                  (environment :target-type
                                   inference-environment-map :member-name
                                   "environment")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (metrics-status :target-type metrics-status
                                   :member-name "metricsStatus")
                                  (metrics-status-details :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "metricsStatusDetails")
                                  (logs-status :target-type logs-status
                                   :member-name "logsStatus")
                                  (logs-status-details :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "logsStatusDetails")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "GetTrainedModelInferenceJobResponse"))

(smithy/sdk/shapes:define-input get-trained-model-request common-lisp:nil
                                ((trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (version-identifier :target-type uuid
                                  :member-name "versionIdentifier" :http-query
                                  "versionIdentifier"))
                                (:shape-name "GetTrainedModelRequest"))

(smithy/sdk/shapes:define-output get-trained-model-response common-lisp:nil
                                 ((membership-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "membershipIdentifier")
                                  (collaboration-identifier :target-type uuid
                                   :required common-lisp:t :member-name
                                   "collaborationIdentifier")
                                  (trained-model-arn :target-type
                                   trained-model-arn :required common-lisp:t
                                   :member-name "trainedModelArn")
                                  (version-identifier :target-type uuid
                                   :member-name "versionIdentifier")
                                  (incremental-training-data-channels
                                   :target-type
                                   incremental-training-data-channels-output
                                   :member-name
                                   "incrementalTrainingDataChannels")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (status :target-type trained-model-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-details :target-type status-details
                                   :member-name "statusDetails")
                                  (configured-model-algorithm-association-arn
                                   :target-type
                                   configured-model-algorithm-association-arn
                                   :required common-lisp:t :member-name
                                   "configuredModelAlgorithmAssociationArn")
                                  (resource-config :target-type resource-config
                                   :member-name "resourceConfig")
                                  (training-input-mode :target-type
                                   training-input-mode :member-name
                                   "trainingInputMode")
                                  (stopping-condition :target-type
                                   stopping-condition :member-name
                                   "stoppingCondition")
                                  (metrics-status :target-type metrics-status
                                   :member-name "metricsStatus")
                                  (metrics-status-details :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "metricsStatusDetails")
                                  (logs-status :target-type logs-status
                                   :member-name "logsStatus")
                                  (logs-status-details :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "logsStatusDetails")
                                  (training-container-image-digest :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "trainingContainerImageDigest")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (hyperparameters :target-type
                                   hyper-parameters :member-name
                                   "hyperparameters")
                                  (environment :target-type environment
                                   :member-name "environment")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (data-channels :target-type
                                   model-training-data-channels :required
                                   common-lisp:t :member-name "dataChannels"))
                                 (:shape-name "GetTrainedModelResponse"))

(smithy/sdk/shapes:define-input get-training-dataset-request common-lisp:nil
                                ((training-dataset-arn :target-type
                                  training-dataset-arn :required common-lisp:t
                                  :member-name "trainingDatasetArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTrainingDatasetRequest"))

(smithy/sdk/shapes:define-output get-training-dataset-response common-lisp:nil
                                 ((create-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (training-dataset-arn :target-type
                                   training-dataset-arn :required common-lisp:t
                                   :member-name "trainingDatasetArn")
                                  (name :target-type name-string :required
                                   common-lisp:t :member-name "name")
                                  (training-data :target-type dataset-list
                                   :required common-lisp:t :member-name
                                   "trainingData")
                                  (status :target-type training-dataset-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (role-arn :target-type iam-role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (description :target-type
                                   resource-description :member-name
                                   "description"))
                                 (:shape-name "GetTrainingDatasetResponse"))

(smithy/sdk/shapes:define-structure glue-data-source common-lisp:nil
                                    ((table-name :target-type glue-table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (database-name :target-type
                                      glue-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (catalog-id :target-type account-id
                                      :member-name "catalogId"))
                                    (:shape-name "GlueDataSource"))

(smithy/sdk/shapes:define-type glue-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glue-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map hyper-parameters :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure incremental-training-data-channel
                                    common-lisp:nil
                                    ((trained-model-arn :target-type
                                      trained-model-arn :required common-lisp:t
                                      :member-name "trainedModelArn")
                                     (version-identifier :target-type uuid
                                      :member-name "versionIdentifier")
                                     (channel-name :target-type
                                      model-training-data-channel-name
                                      :required common-lisp:t :member-name
                                      "channelName"))
                                    (:shape-name
                                     "IncrementalTrainingDataChannel"))

(smithy/sdk/shapes:define-structure incremental-training-data-channel-output
                                    common-lisp:nil
                                    ((channel-name :target-type
                                      model-training-data-channel-name
                                      :required common-lisp:t :member-name
                                      "channelName")
                                     (version-identifier :target-type uuid
                                      :member-name "versionIdentifier")
                                     (model-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "modelName"))
                                    (:shape-name
                                     "IncrementalTrainingDataChannelOutput"))

(smithy/sdk/shapes:define-list incremental-training-data-channels :member
                               incremental-training-data-channel)

(smithy/sdk/shapes:define-list incremental-training-data-channels-output
                               :member incremental-training-data-channel-output)

(smithy/sdk/shapes:define-structure inference-container-config common-lisp:nil
                                    ((image-uri :target-type algorithm-image
                                      :required common-lisp:t :member-name
                                      "imageUri"))
                                    (:shape-name "InferenceContainerConfig"))

(smithy/sdk/shapes:define-structure inference-container-execution-parameters
                                    common-lisp:nil
                                    ((max-payload-in-mb :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxPayloadInMB"))
                                    (:shape-name
                                     "InferenceContainerExecutionParameters"))

(smithy/sdk/shapes:define-map inference-environment-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum inference-instance-type
    common-lisp:nil
  (:ml-r7i-48xlarge "ml.r7i.48xlarge")
  (:ml-r6i-16xlarge "ml.r6i.16xlarge")
  (:ml-m6i-xlarge "ml.m6i.xlarge")
  (:ml-m5-4xlarge "ml.m5.4xlarge")
  (:ml-p2-xlarge "ml.p2.xlarge")
  (:ml-m4-16xlarge "ml.m4.16xlarge")
  (:ml-r7i-16xlarge "ml.r7i.16xlarge")
  (:ml-m7i-xlarge "ml.m7i.xlarge")
  (:ml-m6i-12xlarge "ml.m6i.12xlarge")
  (:ml-r7i-8xlarge "ml.r7i.8xlarge")
  (:ml-r7i-large "ml.r7i.large")
  (:ml-m7i-12xlarge "ml.m7i.12xlarge")
  (:ml-m6i-24xlarge "ml.m6i.24xlarge")
  (:ml-m7i-24xlarge "ml.m7i.24xlarge")
  (:ml-r6i-8xlarge "ml.r6i.8xlarge")
  (:ml-r6i-large "ml.r6i.large")
  (:ml-g5-2xlarge "ml.g5.2xlarge")
  (:ml-m5-large "ml.m5.large")
  (:ml-p3-16xlarge "ml.p3.16xlarge")
  (:ml-m7i-48xlarge "ml.m7i.48xlarge")
  (:ml-m6i-16xlarge "ml.m6i.16xlarge")
  (:ml-p2-16xlarge "ml.p2.16xlarge")
  (:ml-g5-4xlarge "ml.g5.4xlarge")
  (:ml-m7i-16xlarge "ml.m7i.16xlarge")
  (:ml-c4-2xlarge "ml.c4.2xlarge")
  (:ml-c5-2xlarge "ml.c5.2xlarge")
  (:ml-c6i-32xlarge "ml.c6i.32xlarge")
  (:ml-c4-4xlarge "ml.c4.4xlarge")
  (:ml-g5-8xlarge "ml.g5.8xlarge")
  (:ml-c6i-xlarge "ml.c6i.xlarge")
  (:ml-c5-4xlarge "ml.c5.4xlarge")
  (:ml-g4dn-xlarge "ml.g4dn.xlarge")
  (:ml-c7i-xlarge "ml.c7i.xlarge")
  (:ml-c6i-12xlarge "ml.c6i.12xlarge")
  (:ml-g4dn-12xlarge "ml.g4dn.12xlarge")
  (:ml-c7i-12xlarge "ml.c7i.12xlarge")
  (:ml-c6i-24xlarge "ml.c6i.24xlarge")
  (:ml-g4dn-2xlarge "ml.g4dn.2xlarge")
  (:ml-c7i-24xlarge "ml.c7i.24xlarge")
  (:ml-c7i-2xlarge "ml.c7i.2xlarge")
  (:ml-c4-8xlarge "ml.c4.8xlarge")
  (:ml-c6i-2xlarge "ml.c6i.2xlarge")
  (:ml-g4dn-4xlarge "ml.g4dn.4xlarge")
  (:ml-c7i-48xlarge "ml.c7i.48xlarge")
  (:ml-c7i-4xlarge "ml.c7i.4xlarge")
  (:ml-c6i-16xlarge "ml.c6i.16xlarge")
  (:ml-c5-9xlarge "ml.c5.9xlarge")
  (:ml-g4dn-16xlarge "ml.g4dn.16xlarge")
  (:ml-c7i-16xlarge "ml.c7i.16xlarge")
  (:ml-c6i-4xlarge "ml.c6i.4xlarge")
  (:ml-c5-xlarge "ml.c5.xlarge")
  (:ml-c4-xlarge "ml.c4.xlarge")
  (:ml-g4dn-8xlarge "ml.g4dn.8xlarge")
  (:ml-c7i-8xlarge "ml.c7i.8xlarge")
  (:ml-c7i-large "ml.c7i.large")
  (:ml-g5-xlarge "ml.g5.xlarge")
  (:ml-c6i-8xlarge "ml.c6i.8xlarge")
  (:ml-c6i-large "ml.c6i.large")
  (:ml-g5-12xlarge "ml.g5.12xlarge")
  (:ml-g5-24xlarge "ml.g5.24xlarge")
  (:ml-m7i-2xlarge "ml.m7i.2xlarge")
  (:ml-c5-18xlarge "ml.c5.18xlarge")
  (:ml-g5-48xlarge "ml.g5.48xlarge")
  (:ml-m6i-2xlarge "ml.m6i.2xlarge")
  (:ml-g5-16xlarge "ml.g5.16xlarge")
  (:ml-m7i-4xlarge "ml.m7i.4xlarge")
  (:ml-p3-2xlarge "ml.p3.2xlarge")
  (:ml-r6i-32xlarge "ml.r6i.32xlarge")
  (:ml-m6i-4xlarge "ml.m6i.4xlarge")
  (:ml-m5-xlarge "ml.m5.xlarge")
  (:ml-m4-10xlarge "ml.m4.10xlarge")
  (:ml-r6i-xlarge "ml.r6i.xlarge")
  (:ml-m5-12xlarge "ml.m5.12xlarge")
  (:ml-m4-xlarge "ml.m4.xlarge")
  (:ml-r7i-2xlarge "ml.r7i.2xlarge")
  (:ml-r7i-xlarge "ml.r7i.xlarge")
  (:ml-r6i-12xlarge "ml.r6i.12xlarge")
  (:ml-m5-24xlarge "ml.m5.24xlarge")
  (:ml-r7i-12xlarge "ml.r7i.12xlarge")
  (:ml-m7i-8xlarge "ml.m7i.8xlarge")
  (:ml-m7i-large "ml.m7i.large")
  (:ml-r6i-24xlarge "ml.r6i.24xlarge")
  (:ml-r6i-2xlarge "ml.r6i.2xlarge")
  (:ml-m4-2xlarge "ml.m4.2xlarge")
  (:ml-r7i-24xlarge "ml.r7i.24xlarge")
  (:ml-r7i-4xlarge "ml.r7i.4xlarge")
  (:ml-m6i-8xlarge "ml.m6i.8xlarge")
  (:ml-m6i-large "ml.m6i.large")
  (:ml-m5-2xlarge "ml.m5.2xlarge")
  (:ml-p2-8xlarge "ml.p2.8xlarge")
  (:ml-r6i-4xlarge "ml.r6i.4xlarge")
  (:ml-m6i-32xlarge "ml.m6i.32xlarge")
  (:ml-p3-8xlarge "ml.p3.8xlarge")
  (:ml-m4-4xlarge "ml.m4.4xlarge"))

(smithy/sdk/shapes:define-structure inference-output-configuration
                                    common-lisp:nil
                                    ((accept :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accept")
                                     (members :target-type
                                      inference-receiver-members :required
                                      common-lisp:t :member-name "members"))
                                    (:shape-name
                                     "InferenceOutputConfiguration"))

(smithy/sdk/shapes:define-structure inference-receiver-member common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "InferenceReceiverMember"))

(smithy/sdk/shapes:define-list inference-receiver-members :member
                               inference-receiver-member)

(smithy/sdk/shapes:define-structure inference-resource-config common-lisp:nil
                                    ((instance-type :target-type
                                      inference-instance-type :required
                                      common-lisp:t :member-name
                                      "instanceType")
                                     (instance-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "instanceCount"))
                                    (:shape-name "InferenceResourceConfig"))

(smithy/sdk/shapes:define-structure input-channel common-lisp:nil
                                    ((data-source :target-type
                                      input-channel-data-source :required
                                      common-lisp:t :member-name "dataSource")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn"))
                                    (:shape-name "InputChannel"))

(smithy/sdk/shapes:define-union input-channel-data-source common-lisp:nil
                                ((protected-query-input-parameters :target-type
                                  protected-query-input-parameters :member-name
                                  "protectedQueryInputParameters"))
                                (:shape-name "InputChannelDataSource"))

(smithy/sdk/shapes:define-enum instance-type
    common-lisp:nil
  (:ml-m4-xlarge "ml.m4.xlarge")
  (:ml-m4-2xlarge "ml.m4.2xlarge")
  (:ml-m4-4xlarge "ml.m4.4xlarge")
  (:ml-m4-10xlarge "ml.m4.10xlarge")
  (:ml-m4-16xlarge "ml.m4.16xlarge")
  (:ml-g4dn-xlarge "ml.g4dn.xlarge")
  (:ml-g4dn-2xlarge "ml.g4dn.2xlarge")
  (:ml-g4dn-4xlarge "ml.g4dn.4xlarge")
  (:ml-g4dn-8xlarge "ml.g4dn.8xlarge")
  (:ml-g4dn-12xlarge "ml.g4dn.12xlarge")
  (:ml-g4dn-16xlarge "ml.g4dn.16xlarge")
  (:ml-m5-large "ml.m5.large")
  (:ml-m5-xlarge "ml.m5.xlarge")
  (:ml-m5-2xlarge "ml.m5.2xlarge")
  (:ml-m5-4xlarge "ml.m5.4xlarge")
  (:ml-m5-12xlarge "ml.m5.12xlarge")
  (:ml-m5-24xlarge "ml.m5.24xlarge")
  (:ml-c4-xlarge "ml.c4.xlarge")
  (:ml-c4-2xlarge "ml.c4.2xlarge")
  (:ml-c4-4xlarge "ml.c4.4xlarge")
  (:ml-c4-8xlarge "ml.c4.8xlarge")
  (:ml-p2-xlarge "ml.p2.xlarge")
  (:ml-p2-8xlarge "ml.p2.8xlarge")
  (:ml-p2-16xlarge "ml.p2.16xlarge")
  (:ml-p3-2xlarge "ml.p3.2xlarge")
  (:ml-p3-8xlarge "ml.p3.8xlarge")
  (:ml-p3-16xlarge "ml.p3.16xlarge")
  (:ml-p3dn-24xlarge "ml.p3dn.24xlarge")
  (:ml-p4d-24xlarge "ml.p4d.24xlarge")
  (:ml-p4de-24xlarge "ml.p4de.24xlarge")
  (:ml-p5-48xlarge "ml.p5.48xlarge")
  (:ml-c5-xlarge "ml.c5.xlarge")
  (:ml-c5-2xlarge "ml.c5.2xlarge")
  (:ml-c5-4xlarge "ml.c5.4xlarge")
  (:ml-c5-9xlarge "ml.c5.9xlarge")
  (:ml-c5-18xlarge "ml.c5.18xlarge")
  (:ml-c5n-xlarge "ml.c5n.xlarge")
  (:ml-c5n-2xlarge "ml.c5n.2xlarge")
  (:ml-c5n-4xlarge "ml.c5n.4xlarge")
  (:ml-c5n-9xlarge "ml.c5n.9xlarge")
  (:ml-c5n-18xlarge "ml.c5n.18xlarge")
  (:ml-g5-xlarge "ml.g5.xlarge")
  (:ml-g5-2xlarge "ml.g5.2xlarge")
  (:ml-g5-4xlarge "ml.g5.4xlarge")
  (:ml-g5-8xlarge "ml.g5.8xlarge")
  (:ml-g5-16xlarge "ml.g5.16xlarge")
  (:ml-g5-12xlarge "ml.g5.12xlarge")
  (:ml-g5-24xlarge "ml.g5.24xlarge")
  (:ml-g5-48xlarge "ml.g5.48xlarge")
  (:ml-trn1-2xlarge "ml.trn1.2xlarge")
  (:ml-trn1-32xlarge "ml.trn1.32xlarge")
  (:ml-trn1n-32xlarge "ml.trn1n.32xlarge")
  (:ml-m6i-large "ml.m6i.large")
  (:ml-m6i-xlarge "ml.m6i.xlarge")
  (:ml-m6i-2xlarge "ml.m6i.2xlarge")
  (:ml-m6i-4xlarge "ml.m6i.4xlarge")
  (:ml-m6i-8xlarge "ml.m6i.8xlarge")
  (:ml-m6i-12xlarge "ml.m6i.12xlarge")
  (:ml-m6i-16xlarge "ml.m6i.16xlarge")
  (:ml-m6i-24xlarge "ml.m6i.24xlarge")
  (:ml-m6i-32xlarge "ml.m6i.32xlarge")
  (:ml-c6i-xlarge "ml.c6i.xlarge")
  (:ml-c6i-2xlarge "ml.c6i.2xlarge")
  (:ml-c6i-8xlarge "ml.c6i.8xlarge")
  (:ml-c6i-4xlarge "ml.c6i.4xlarge")
  (:ml-c6i-12xlarge "ml.c6i.12xlarge")
  (:ml-c6i-16xlarge "ml.c6i.16xlarge")
  (:ml-c6i-24xlarge "ml.c6i.24xlarge")
  (:ml-c6i-32xlarge "ml.c6i.32xlarge")
  (:ml-r5d-large "ml.r5d.large")
  (:ml-r5d-xlarge "ml.r5d.xlarge")
  (:ml-r5d-2xlarge "ml.r5d.2xlarge")
  (:ml-r5d-4xlarge "ml.r5d.4xlarge")
  (:ml-r5d-8xlarge "ml.r5d.8xlarge")
  (:ml-r5d-12xlarge "ml.r5d.12xlarge")
  (:ml-r5d-16xlarge "ml.r5d.16xlarge")
  (:ml-r5d-24xlarge "ml.r5d.24xlarge")
  (:ml-t3-medium "ml.t3.medium")
  (:ml-t3-large "ml.t3.large")
  (:ml-t3-xlarge "ml.t3.xlarge")
  (:ml-t3-2xlarge "ml.t3.2xlarge")
  (:ml-r5-large "ml.r5.large")
  (:ml-r5-xlarge "ml.r5.xlarge")
  (:ml-r5-2xlarge "ml.r5.2xlarge")
  (:ml-r5-4xlarge "ml.r5.4xlarge")
  (:ml-r5-8xlarge "ml.r5.8xlarge")
  (:ml-r5-12xlarge "ml.r5.12xlarge")
  (:ml-r5-16xlarge "ml.r5.16xlarge")
  (:ml-r5-24xlarge "ml.r5.24xlarge"))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-audience-export-jobs-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (audience-generation-job-arn :target-type
                                  audience-generation-job-arn :member-name
                                  "audienceGenerationJobArn" :http-query
                                  "audienceGenerationJobArn"))
                                (:shape-name "ListAudienceExportJobsRequest"))

(smithy/sdk/shapes:define-output list-audience-export-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (audience-export-jobs :target-type
                                   audience-export-job-list :required
                                   common-lisp:t :member-name
                                   "audienceExportJobs"))
                                 (:shape-name "ListAudienceExportJobsResponse"))

(smithy/sdk/shapes:define-input list-audience-generation-jobs-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (configured-audience-model-arn :target-type
                                  configured-audience-model-arn :member-name
                                  "configuredAudienceModelArn" :http-query
                                  "configuredAudienceModelArn")
                                 (collaboration-id :target-type uuid
                                  :member-name "collaborationId" :http-query
                                  "collaborationId"))
                                (:shape-name
                                 "ListAudienceGenerationJobsRequest"))

(smithy/sdk/shapes:define-output list-audience-generation-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (audience-generation-jobs :target-type
                                   audience-generation-job-list :required
                                   common-lisp:t :member-name
                                   "audienceGenerationJobs"))
                                 (:shape-name
                                  "ListAudienceGenerationJobsResponse"))

(smithy/sdk/shapes:define-input list-audience-models-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAudienceModelsRequest"))

(smithy/sdk/shapes:define-output list-audience-models-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (audience-models :target-type
                                   audience-model-list :required common-lisp:t
                                   :member-name "audienceModels"))
                                 (:shape-name "ListAudienceModelsResponse"))

(smithy/sdk/shapes:define-input
 list-collaboration-configured-model-algorithm-associations-request
 common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier" :http-label common-lisp:t))
 (:shape-name "ListCollaborationConfiguredModelAlgorithmAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-collaboration-configured-model-algorithm-associations-response
 common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (collaboration-configured-model-algorithm-associations :target-type
   collaboration-configured-model-algorithm-association-list :required
   common-lisp:t :member-name
   "collaborationConfiguredModelAlgorithmAssociations"))
 (:shape-name "ListCollaborationConfiguredModelAlgorithmAssociationsResponse"))

(smithy/sdk/shapes:define-input list-collaboration-mlinput-channels-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (collaboration-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListCollaborationMLInputChannelsRequest"))

(smithy/sdk/shapes:define-output list-collaboration-mlinput-channels-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (collaboration-mlinput-channels-list
                                   :target-type
                                   collaboration-mlinput-channels-list
                                   :required common-lisp:t :member-name
                                   "collaborationMLInputChannelsList"))
                                 (:shape-name
                                  "ListCollaborationMLInputChannelsResponse"))

(smithy/sdk/shapes:define-input
 list-collaboration-trained-model-export-jobs-request common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier" :http-label common-lisp:t)
  (trained-model-arn :target-type trained-model-arn :required common-lisp:t
   :member-name "trainedModelArn" :http-label common-lisp:t)
  (trained-model-version-identifier :target-type uuid :member-name
   "trainedModelVersionIdentifier" :http-query
   "trainedModelVersionIdentifier"))
 (:shape-name "ListCollaborationTrainedModelExportJobsRequest"))

(smithy/sdk/shapes:define-output
 list-collaboration-trained-model-export-jobs-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (collaboration-trained-model-export-jobs :target-type
   collaboration-trained-model-export-job-list :required common-lisp:t
   :member-name "collaborationTrainedModelExportJobs"))
 (:shape-name "ListCollaborationTrainedModelExportJobsResponse"))

(smithy/sdk/shapes:define-input
 list-collaboration-trained-model-inference-jobs-request common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (collaboration-identifier :target-type uuid :required common-lisp:t
   :member-name "collaborationIdentifier" :http-label common-lisp:t)
  (trained-model-arn :target-type trained-model-arn :member-name
   "trainedModelArn" :http-query "trainedModelArn")
  (trained-model-version-identifier :target-type uuid :member-name
   "trainedModelVersionIdentifier" :http-query
   "trainedModelVersionIdentifier"))
 (:shape-name "ListCollaborationTrainedModelInferenceJobsRequest"))

(smithy/sdk/shapes:define-output
 list-collaboration-trained-model-inference-jobs-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (collaboration-trained-model-inference-jobs :target-type
   collaboration-trained-model-inference-job-list :required common-lisp:t
   :member-name "collaborationTrainedModelInferenceJobs"))
 (:shape-name "ListCollaborationTrainedModelInferenceJobsResponse"))

(smithy/sdk/shapes:define-input list-collaboration-trained-models-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (collaboration-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListCollaborationTrainedModelsRequest"))

(smithy/sdk/shapes:define-output list-collaboration-trained-models-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (collaboration-trained-models :target-type
                                   collaboration-trained-model-list :required
                                   common-lisp:t :member-name
                                   "collaborationTrainedModels"))
                                 (:shape-name
                                  "ListCollaborationTrainedModelsResponse"))

(smithy/sdk/shapes:define-input list-configured-audience-models-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListConfiguredAudienceModelsRequest"))

(smithy/sdk/shapes:define-output list-configured-audience-models-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (configured-audience-models :target-type
                                   configured-audience-model-list :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModels"))
                                 (:shape-name
                                  "ListConfiguredAudienceModelsResponse"))

(smithy/sdk/shapes:define-input
 list-configured-model-algorithm-associations-request common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (membership-identifier :target-type uuid :required common-lisp:t :member-name
   "membershipIdentifier" :http-label common-lisp:t))
 (:shape-name "ListConfiguredModelAlgorithmAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-configured-model-algorithm-associations-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (configured-model-algorithm-associations :target-type
   configured-model-algorithm-association-list :required common-lisp:t
   :member-name "configuredModelAlgorithmAssociations"))
 (:shape-name "ListConfiguredModelAlgorithmAssociationsResponse"))

(smithy/sdk/shapes:define-input list-configured-model-algorithms-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListConfiguredModelAlgorithmsRequest"))

(smithy/sdk/shapes:define-output list-configured-model-algorithms-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (configured-model-algorithms :target-type
                                   configured-model-algorithm-list :required
                                   common-lisp:t :member-name
                                   "configuredModelAlgorithms"))
                                 (:shape-name
                                  "ListConfiguredModelAlgorithmsResponse"))

(smithy/sdk/shapes:define-input list-mlinput-channels-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "ListMLInputChannelsRequest"))

(smithy/sdk/shapes:define-output list-mlinput-channels-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (ml-input-channels-list :target-type
                                   mlinput-channels-list :required
                                   common-lisp:t :member-name
                                   "mlInputChannelsList"))
                                 (:shape-name "ListMLInputChannelsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type taggable-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-trained-model-inference-jobs-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (trained-model-arn :target-type
                                  trained-model-arn :member-name
                                  "trainedModelArn" :http-query
                                  "trainedModelArn")
                                 (trained-model-version-identifier :target-type
                                  uuid :member-name
                                  "trainedModelVersionIdentifier" :http-query
                                  "trainedModelVersionIdentifier"))
                                (:shape-name
                                 "ListTrainedModelInferenceJobsRequest"))

(smithy/sdk/shapes:define-output list-trained-model-inference-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (trained-model-inference-jobs :target-type
                                   trained-model-inference-job-list :required
                                   common-lisp:t :member-name
                                   "trainedModelInferenceJobs"))
                                 (:shape-name
                                  "ListTrainedModelInferenceJobsResponse"))

(smithy/sdk/shapes:define-input list-trained-model-versions-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn" :http-label
                                  common-lisp:t)
                                 (status :target-type trained-model-status
                                  :member-name "status" :http-query "status"))
                                (:shape-name "ListTrainedModelVersionsRequest"))

(smithy/sdk/shapes:define-output list-trained-model-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (trained-models :target-type
                                   trained-model-list :required common-lisp:t
                                   :member-name "trainedModels"))
                                 (:shape-name
                                  "ListTrainedModelVersionsResponse"))

(smithy/sdk/shapes:define-input list-trained-models-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTrainedModelsRequest"))

(smithy/sdk/shapes:define-output list-trained-models-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (trained-models :target-type
                                   trained-model-list :required common-lisp:t
                                   :member-name "trainedModels"))
                                 (:shape-name "ListTrainedModelsResponse"))

(smithy/sdk/shapes:define-input list-training-datasets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTrainingDatasetsRequest"))

(smithy/sdk/shapes:define-output list-training-datasets-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (training-datasets :target-type
                                   training-dataset-list :required
                                   common-lisp:t :member-name
                                   "trainingDatasets"))
                                 (:shape-name "ListTrainingDatasetsResponse"))

(smithy/sdk/shapes:define-structure logs-configuration-policy common-lisp:nil
                                    ((allowed-account-ids :target-type
                                      account-id-list :required common-lisp:t
                                      :member-name "allowedAccountIds")
                                     (filter-pattern :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "filterPattern"))
                                    (:shape-name "LogsConfigurationPolicy"))

(smithy/sdk/shapes:define-list logs-configuration-policy-list :member
                               logs-configuration-policy)

(smithy/sdk/shapes:define-enum logs-status
    common-lisp:nil
  (:publish-succeeded "PUBLISH_SUCCEEDED")
  (:publish-failed "PUBLISH_FAILED"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type mlinput-channel-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mlinput-channel-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:delete-pending "DELETE_PENDING")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure mlinput-channel-summary common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (membership-identifier :target-type uuid
                                      :required common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (collaboration-identifier :target-type
                                      uuid :required common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (configured-model-algorithm-associations
                                      :target-type
                                      configured-model-algorithm-association-arn-list
                                      :required common-lisp:t :member-name
                                      "configuredModelAlgorithmAssociations")
                                     (protected-query-identifier :target-type
                                      uuid :member-name
                                      "protectedQueryIdentifier")
                                     (ml-input-channel-arn :target-type
                                      mlinput-channel-arn :required
                                      common-lisp:t :member-name
                                      "mlInputChannelArn")
                                     (status :target-type
                                      mlinput-channel-status :required
                                      common-lisp:t :member-name "status")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name "MLInputChannelSummary"))

(smithy/sdk/shapes:define-list mlinput-channels-list :member
                               mlinput-channel-summary)

(smithy/sdk/shapes:define-structure mloutput-configuration common-lisp:nil
                                    ((destination :target-type destination
                                      :member-name "destination")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn"))
                                    (:shape-name "MLOutputConfiguration"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-definition common-lisp:nil
                                    ((name :target-type metric-name :required
                                      common-lisp:t :member-name "name")
                                     (regex :target-type metric-regex :required
                                      common-lisp:t :member-name "regex"))
                                    (:shape-name "MetricDefinition"))

(smithy/sdk/shapes:define-list metric-definition-list :member metric-definition)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metrics-configuration-policy
                                    common-lisp:nil
                                    ((noise-level :target-type noise-level-type
                                      :required common-lisp:t :member-name
                                      "noiseLevel"))
                                    (:shape-name "MetricsConfigurationPolicy"))

(smithy/sdk/shapes:define-list metrics-list :member shared-audience-metrics)

(smithy/sdk/shapes:define-enum metrics-status
    common-lisp:nil
  (:publish-succeeded "PUBLISH_SUCCEEDED")
  (:publish-failed "PUBLISH_FAILED"))

(smithy/sdk/shapes:define-type min-matching-seed-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure model-inference-data-source common-lisp:nil
                                    ((ml-input-channel-arn :target-type
                                      mlinput-channel-arn :required
                                      common-lisp:t :member-name
                                      "mlInputChannelArn"))
                                    (:shape-name "ModelInferenceDataSource"))

(smithy/sdk/shapes:define-structure model-training-data-channel common-lisp:nil
                                    ((ml-input-channel-arn :target-type
                                      mlinput-channel-arn :required
                                      common-lisp:t :member-name
                                      "mlInputChannelArn")
                                     (channel-name :target-type
                                      model-training-data-channel-name
                                      :required common-lisp:t :member-name
                                      "channelName")
                                     (s3data-distribution-type :target-type
                                      s3data-distribution-type :member-name
                                      "s3DataDistributionType"))
                                    (:shape-name "ModelTrainingDataChannel"))

(smithy/sdk/shapes:define-type model-training-data-channel-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list model-training-data-channels :member
                               model-training-data-channel)

(smithy/sdk/shapes:define-type name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum noise-level-type
    common-lisp:nil
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW")
  (:none "NONE"))

(smithy/sdk/shapes:define-type parameter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map parameter-map :key parameter-key :value
                              parameter-value)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum policy-existence-condition
    common-lisp:nil
  (:policy-must-exist "POLICY_MUST_EXIST")
  (:policy-must-not-exist "POLICY_MUST_NOT_EXIST"))

(smithy/sdk/shapes:define-structure privacy-configuration common-lisp:nil
                                    ((policies :target-type
                                      privacy-configuration-policies :required
                                      common-lisp:t :member-name "policies"))
                                    (:shape-name "PrivacyConfiguration"))

(smithy/sdk/shapes:define-structure privacy-configuration-policies
                                    common-lisp:nil
                                    ((trained-models :target-type
                                      trained-models-configuration-policy
                                      :member-name "trainedModels")
                                     (trained-model-exports :target-type
                                      trained-model-exports-configuration-policy
                                      :member-name "trainedModelExports")
                                     (trained-model-inference-jobs :target-type
                                      trained-model-inference-jobs-configuration-policy
                                      :member-name
                                      "trainedModelInferenceJobs"))
                                    (:shape-name
                                     "PrivacyConfigurationPolicies"))

(smithy/sdk/shapes:define-structure protected-query-input-parameters
                                    common-lisp:nil
                                    ((sql-parameters :target-type
                                      protected-query-sqlparameters :required
                                      common-lisp:t :member-name
                                      "sqlParameters")
                                     (compute-configuration :target-type
                                      compute-configuration :member-name
                                      "computeConfiguration")
                                     (result-format :target-type result-format
                                      :member-name "resultFormat"))
                                    (:shape-name
                                     "ProtectedQueryInputParameters"))

(smithy/sdk/shapes:define-structure protected-query-sqlparameters
                                    common-lisp:nil
                                    ((query-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "queryString")
                                     (analysis-template-arn :target-type
                                      analysis-template-arn :member-name
                                      "analysisTemplateArn")
                                     (parameters :target-type parameter-map
                                      :member-name "parameters"))
                                    (:shape-name "ProtectedQuerySQLParameters"))

(smithy/sdk/shapes:define-input put-configured-audience-model-policy-request
                                common-lisp:nil
                                ((configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn" :http-label
                                  common-lisp:t)
                                 (configured-audience-model-policy :target-type
                                  resource-policy :required common-lisp:t
                                  :member-name "configuredAudienceModelPolicy")
                                 (previous-policy-hash :target-type hash
                                  :member-name "previousPolicyHash")
                                 (policy-existence-condition :target-type
                                  policy-existence-condition :member-name
                                  "policyExistenceCondition"))
                                (:shape-name
                                 "PutConfiguredAudienceModelPolicyRequest"))

(smithy/sdk/shapes:define-output put-configured-audience-model-policy-response
                                 common-lisp:nil
                                 ((configured-audience-model-policy
                                   :target-type resource-policy :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelPolicy")
                                  (policy-hash :target-type hash :required
                                   common-lisp:t :member-name "policyHash"))
                                 (:shape-name
                                  "PutConfiguredAudienceModelPolicyResponse"))

(smithy/sdk/shapes:define-input put-mlconfiguration-request common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (default-output-location :target-type
                                  mloutput-configuration :required
                                  common-lisp:t :member-name
                                  "defaultOutputLocation"))
                                (:shape-name "PutMLConfigurationRequest"))

(smithy/sdk/shapes:define-structure relevance-metric common-lisp:nil
                                    ((audience-size :target-type audience-size
                                      :required common-lisp:t :member-name
                                      "audienceSize")
                                     (score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "score"))
                                    (:shape-name "RelevanceMetric"))

(smithy/sdk/shapes:define-list relevance-metrics :member relevance-metric)

(smithy/sdk/shapes:define-structure resource-config common-lisp:nil
                                    ((instance-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "instanceCount")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (volume-size-in-gb :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "volumeSizeInGB"))
                                    (:shape-name "ResourceConfig"))

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum result-format
    common-lisp:nil
  (:csv "CSV")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-structure s3config-map common-lisp:nil
                                    ((s3uri :target-type s3path :required
                                      common-lisp:t :member-name "s3Uri"))
                                    (:shape-name "S3ConfigMap"))

(smithy/sdk/shapes:define-enum s3data-distribution-type
    common-lisp:nil
  (:fully-replicated "FullyReplicated")
  (:sharded-by-s3-key "ShardedByS3Key"))

(smithy/sdk/shapes:define-type s3path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (quota-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaName")
                                 (quota-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "quotaValue"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum shared-audience-metrics
    common-lisp:nil
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-input start-audience-export-job-request
                                common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (audience-generation-job-arn :target-type
                                  audience-generation-job-arn :required
                                  common-lisp:t :member-name
                                  "audienceGenerationJobArn")
                                 (audience-size :target-type audience-size
                                  :required common-lisp:t :member-name
                                  "audienceSize")
                                 (description :target-type resource-description
                                  :member-name "description"))
                                (:shape-name "StartAudienceExportJobRequest"))

(smithy/sdk/shapes:define-input start-audience-generation-job-request
                                common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn")
                                 (seed-audience :target-type
                                  audience-generation-job-data-source :required
                                  common-lisp:t :member-name "seedAudience")
                                 (include-seed-in-output :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeSeedInOutput")
                                 (collaboration-id :target-type uuid
                                  :member-name "collaborationId")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "StartAudienceGenerationJobRequest"))

(smithy/sdk/shapes:define-output start-audience-generation-job-response
                                 common-lisp:nil
                                 ((audience-generation-job-arn :target-type
                                   audience-generation-job-arn :required
                                   common-lisp:t :member-name
                                   "audienceGenerationJobArn"))
                                 (:shape-name
                                  "StartAudienceGenerationJobResponse"))

(smithy/sdk/shapes:define-input start-trained-model-export-job-request
                                common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn" :http-label
                                  common-lisp:t)
                                 (trained-model-version-identifier :target-type
                                  uuid :member-name
                                  "trainedModelVersionIdentifier")
                                 (membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (output-configuration :target-type
                                  trained-model-export-output-configuration
                                  :required common-lisp:t :member-name
                                  "outputConfiguration")
                                 (description :target-type resource-description
                                  :member-name "description"))
                                (:shape-name
                                 "StartTrainedModelExportJobRequest"))

(smithy/sdk/shapes:define-input start-trained-model-inference-job-request
                                common-lisp:nil
                                ((membership-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "membershipIdentifier" :http-label
                                  common-lisp:t)
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "name")
                                 (trained-model-arn :target-type
                                  trained-model-arn :required common-lisp:t
                                  :member-name "trainedModelArn")
                                 (trained-model-version-identifier :target-type
                                  uuid :member-name
                                  "trainedModelVersionIdentifier")
                                 (configured-model-algorithm-association-arn
                                  :target-type
                                  configured-model-algorithm-association-arn
                                  :member-name
                                  "configuredModelAlgorithmAssociationArn")
                                 (resource-config :target-type
                                  inference-resource-config :required
                                  common-lisp:t :member-name "resourceConfig")
                                 (output-configuration :target-type
                                  inference-output-configuration :required
                                  common-lisp:t :member-name
                                  "outputConfiguration")
                                 (data-source :target-type
                                  model-inference-data-source :required
                                  common-lisp:t :member-name "dataSource")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (container-execution-parameters :target-type
                                  inference-container-execution-parameters
                                  :member-name "containerExecutionParameters")
                                 (environment :target-type
                                  inference-environment-map :member-name
                                  "environment")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "StartTrainedModelInferenceJobRequest"))

(smithy/sdk/shapes:define-output start-trained-model-inference-job-response
                                 common-lisp:nil
                                 ((trained-model-inference-job-arn :target-type
                                   trained-model-inference-job-arn :required
                                   common-lisp:t :member-name
                                   "trainedModelInferenceJobArn"))
                                 (:shape-name
                                  "StartTrainedModelInferenceJobResponse"))

(smithy/sdk/shapes:define-structure status-details common-lisp:nil
                                    ((status-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusCode")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "StatusDetails"))

(smithy/sdk/shapes:define-structure stopping-condition common-lisp:nil
                                    ((max-runtime-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxRuntimeInSeconds"))
                                    (:shape-name "StoppingCondition"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-enum tag-on-create-policy
    common-lisp:nil
  (:from-parent-resource "FROM_PARENT_RESOURCE")
  (:none "NONE"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type taggable-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

common-lisp:nil

(smithy/sdk/shapes:define-type trained-model-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trained-model-artifact-max-size
                                    common-lisp:nil
                                    ((unit :target-type
                                      trained-model-artifact-max-size-unit-type
                                      :required common-lisp:t :member-name
                                      "unit")
                                     (value :target-type
                                      trained-model-artifact-max-size-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "TrainedModelArtifactMaxSize"))

(smithy/sdk/shapes:define-enum trained-model-artifact-max-size-unit-type
    common-lisp:nil
  (:gb "GB"))

(smithy/sdk/shapes:define-type trained-model-artifact-max-size-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum trained-model-export-file-type
    common-lisp:nil
  (:model "MODEL")
  (:output "OUTPUT"))

(smithy/sdk/shapes:define-list trained-model-export-file-type-list :member
                               trained-model-export-file-type)

common-lisp:nil

(smithy/sdk/shapes:define-type trained-model-export-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trained-model-export-job-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure trained-model-export-output-configuration
                                    common-lisp:nil
                                    ((members :target-type
                                      trained-model-export-receiver-members
                                      :required common-lisp:t :member-name
                                      "members"))
                                    (:shape-name
                                     "TrainedModelExportOutputConfiguration"))

(smithy/sdk/shapes:define-structure trained-model-export-receiver-member
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name
                                     "TrainedModelExportReceiverMember"))

(smithy/sdk/shapes:define-list trained-model-export-receiver-members :member
                               trained-model-export-receiver-member)

(smithy/sdk/shapes:define-structure trained-model-exports-configuration-policy
                                    common-lisp:nil
                                    ((max-size :target-type
                                      trained-model-exports-max-size :required
                                      common-lisp:t :member-name "maxSize")
                                     (files-to-export :target-type
                                      trained-model-export-file-type-list
                                      :required common-lisp:t :member-name
                                      "filesToExport"))
                                    (:shape-name
                                     "TrainedModelExportsConfigurationPolicy"))

(smithy/sdk/shapes:define-structure trained-model-exports-max-size
                                    common-lisp:nil
                                    ((unit :target-type
                                      trained-model-exports-max-size-unit-type
                                      :required common-lisp:t :member-name
                                      "unit")
                                     (value :target-type
                                      trained-model-exports-max-size-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "TrainedModelExportsMaxSize"))

(smithy/sdk/shapes:define-enum trained-model-exports-max-size-unit-type
    common-lisp:nil
  (:gb "GB"))

(smithy/sdk/shapes:define-type trained-model-exports-max-size-value
                               smithy/sdk/smithy-types:double)

common-lisp:nil

(smithy/sdk/shapes:define-type trained-model-inference-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trained-model-inference-job-list :member
                               trained-model-inference-job-summary)

(smithy/sdk/shapes:define-enum trained-model-inference-job-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:cancel-pending "CANCEL_PENDING")
  (:cancel-in-progress "CANCEL_IN_PROGRESS")
  (:cancel-failed "CANCEL_FAILED")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure trained-model-inference-job-summary
                                    common-lisp:nil
                                    ((trained-model-inference-job-arn
                                      :target-type
                                      trained-model-inference-job-arn :required
                                      common-lisp:t :member-name
                                      "trainedModelInferenceJobArn")
                                     (configured-model-algorithm-association-arn
                                      :target-type
                                      configured-model-algorithm-association-arn
                                      :member-name
                                      "configuredModelAlgorithmAssociationArn")
                                     (membership-identifier :target-type uuid
                                      :required common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (trained-model-arn :target-type
                                      trained-model-arn :required common-lisp:t
                                      :member-name "trainedModelArn")
                                     (trained-model-version-identifier
                                      :target-type uuid :member-name
                                      "trainedModelVersionIdentifier")
                                     (collaboration-identifier :target-type
                                      uuid :required common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (status :target-type
                                      trained-model-inference-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (output-configuration :target-type
                                      inference-output-configuration :required
                                      common-lisp:t :member-name
                                      "outputConfiguration")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (metrics-status :target-type
                                      metrics-status :member-name
                                      "metricsStatus")
                                     (metrics-status-details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "metricsStatusDetails")
                                     (logs-status :target-type logs-status
                                      :member-name "logsStatus")
                                     (logs-status-details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "logsStatusDetails")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "TrainedModelInferenceJobSummary"))

(smithy/sdk/shapes:define-structure
 trained-model-inference-jobs-configuration-policy common-lisp:nil
 ((container-logs :target-type logs-configuration-policy-list :member-name
   "containerLogs")
  (max-output-size :target-type trained-model-inference-max-output-size
   :member-name "maxOutputSize"))
 (:shape-name "TrainedModelInferenceJobsConfigurationPolicy"))

(smithy/sdk/shapes:define-structure trained-model-inference-max-output-size
                                    common-lisp:nil
                                    ((unit :target-type
                                      trained-model-inference-max-output-size-unit-type
                                      :required common-lisp:t :member-name
                                      "unit")
                                     (value :target-type
                                      trained-model-inference-max-output-size-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name
                                     "TrainedModelInferenceMaxOutputSize"))

(smithy/sdk/shapes:define-enum trained-model-inference-max-output-size-unit-type
    common-lisp:nil
  (:gb "GB"))

(smithy/sdk/shapes:define-type trained-model-inference-max-output-size-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list trained-model-list :member trained-model-summary)

(smithy/sdk/shapes:define-enum trained-model-status
    common-lisp:nil
  (:create-pending "CREATE_PENDING")
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:delete-pending "DELETE_PENDING")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-failed "DELETE_FAILED")
  (:inactive "INACTIVE")
  (:cancel-pending "CANCEL_PENDING")
  (:cancel-in-progress "CANCEL_IN_PROGRESS")
  (:cancel-failed "CANCEL_FAILED"))

(smithy/sdk/shapes:define-structure trained-model-summary common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (trained-model-arn :target-type
                                      trained-model-arn :required common-lisp:t
                                      :member-name "trainedModelArn")
                                     (version-identifier :target-type uuid
                                      :member-name "versionIdentifier")
                                     (incremental-training-data-channels
                                      :target-type
                                      incremental-training-data-channels-output
                                      :member-name
                                      "incrementalTrainingDataChannels")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (membership-identifier :target-type uuid
                                      :required common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (collaboration-identifier :target-type
                                      uuid :required common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (status :target-type trained-model-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (configured-model-algorithm-association-arn
                                      :target-type
                                      configured-model-algorithm-association-arn
                                      :required common-lisp:t :member-name
                                      "configuredModelAlgorithmAssociationArn"))
                                    (:shape-name "TrainedModelSummary"))

(smithy/sdk/shapes:define-structure trained-models-configuration-policy
                                    common-lisp:nil
                                    ((container-logs :target-type
                                      logs-configuration-policy-list
                                      :member-name "containerLogs")
                                     (container-metrics :target-type
                                      metrics-configuration-policy :member-name
                                      "containerMetrics")
                                     (max-artifact-size :target-type
                                      trained-model-artifact-max-size
                                      :member-name "maxArtifactSize"))
                                    (:shape-name
                                     "TrainedModelsConfigurationPolicy"))

common-lisp:nil

(smithy/sdk/shapes:define-type training-dataset-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list training-dataset-list :member
                               training-dataset-summary)

(smithy/sdk/shapes:define-enum training-dataset-status
    common-lisp:nil
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure training-dataset-summary common-lisp:nil
                                    ((create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time")
                                     (training-dataset-arn :target-type
                                      training-dataset-arn :required
                                      common-lisp:t :member-name
                                      "trainingDatasetArn")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type
                                      training-dataset-status :required
                                      common-lisp:t :member-name "status")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name "TrainingDatasetSummary"))

(smithy/sdk/shapes:define-enum training-input-mode
    common-lisp:nil
  (:file "File")
  (:fast-file "FastFile")
  (:pipe "Pipe"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type taggable-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-configured-audience-model-request
                                common-lisp:nil
                                ((configured-audience-model-arn :target-type
                                  configured-audience-model-arn :required
                                  common-lisp:t :member-name
                                  "configuredAudienceModelArn" :http-label
                                  common-lisp:t)
                                 (output-config :target-type
                                  configured-audience-model-output-config
                                  :member-name "outputConfig")
                                 (audience-model-arn :target-type
                                  audience-model-arn :member-name
                                  "audienceModelArn")
                                 (shared-audience-metrics :target-type
                                  metrics-list :member-name
                                  "sharedAudienceMetrics")
                                 (min-matching-seed-size :target-type
                                  min-matching-seed-size :member-name
                                  "minMatchingSeedSize")
                                 (audience-size-config :target-type
                                  audience-size-config :member-name
                                  "audienceSizeConfig")
                                 (description :target-type resource-description
                                  :member-name "description"))
                                (:shape-name
                                 "UpdateConfiguredAudienceModelRequest"))

(smithy/sdk/shapes:define-output update-configured-audience-model-response
                                 common-lisp:nil
                                 ((configured-audience-model-arn :target-type
                                   configured-audience-model-arn :required
                                   common-lisp:t :member-name
                                   "configuredAudienceModelArn"))
                                 (:shape-name
                                  "UpdateConfiguredAudienceModelResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure worker-compute-configuration
                                    common-lisp:nil
                                    ((type :target-type worker-compute-type
                                      :member-name "type")
                                     (number :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "number"))
                                    (:shape-name "WorkerComputeConfiguration"))

(smithy/sdk/shapes:define-enum worker-compute-type
    common-lisp:nil
  (:cr1x "CR.1X")
  (:cr4x "CR.4X"))

(smithy/sdk/operation:define-operation cancel-trained-model :shape-name
                                       "CancelTrainedModel" :input
                                       cancel-trained-model-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-trained-model-inference-job
                                       :shape-name
                                       "CancelTrainedModelInferenceJob" :input
                                       cancel-trained-model-inference-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-audience-model :shape-name
                                       "CreateAudienceModel" :input
                                       create-audience-model-request :output
                                       create-audience-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/audience-model"
                                       :code 200)

(smithy/sdk/operation:define-operation create-configured-audience-model
                                       :shape-name
                                       "CreateConfiguredAudienceModel" :input
                                       create-configured-audience-model-request
                                       :output
                                       create-configured-audience-model-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/configured-audience-model" :code 200)

(smithy/sdk/operation:define-operation create-configured-model-algorithm
                                       :shape-name
                                       "CreateConfiguredModelAlgorithm" :input
                                       create-configured-model-algorithm-request
                                       :output
                                       create-configured-model-algorithm-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/configured-model-algorithms" :code 200)

(smithy/sdk/operation:define-operation
 create-configured-model-algorithm-association :shape-name
 "CreateConfiguredModelAlgorithmAssociation" :input
 create-configured-model-algorithm-association-request :output
 create-configured-model-algorithm-association-response :errors
 (access-denied-exception conflict-exception resource-not-found-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/memberships/{membershipIdentifier}/configured-model-algorithm-associations"
 :code 200)

(smithy/sdk/operation:define-operation create-mlinput-channel :shape-name
                                       "CreateMLInputChannel" :input
                                       create-mlinput-channel-request :output
                                       create-mlinput-channel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/ml-input-channels"
                                       :code 200)

(smithy/sdk/operation:define-operation create-trained-model :shape-name
                                       "CreateTrainedModel" :input
                                       create-trained-model-request :output
                                       create-trained-model-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/trained-models"
                                       :code 200)

(smithy/sdk/operation:define-operation create-training-dataset :shape-name
                                       "CreateTrainingDataset" :input
                                       create-training-dataset-request :output
                                       create-training-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        validation-exception)
                                       :method "POST" :uri "/training-dataset"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-audience-generation-job
                                       :shape-name
                                       "DeleteAudienceGenerationJob" :input
                                       delete-audience-generation-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/audience-generation-job/{audienceGenerationJobArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-audience-model :shape-name
                                       "DeleteAudienceModel" :input
                                       delete-audience-model-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/audience-model/{audienceModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-configured-audience-model
                                       :shape-name
                                       "DeleteConfiguredAudienceModel" :input
                                       delete-configured-audience-model-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configured-audience-model/{configuredAudienceModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-configured-audience-model-policy
                                       :shape-name
                                       "DeleteConfiguredAudienceModelPolicy"
                                       :input
                                       delete-configured-audience-model-policy-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configured-audience-model/{configuredAudienceModelArn}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-configured-model-algorithm
                                       :shape-name
                                       "DeleteConfiguredModelAlgorithm" :input
                                       delete-configured-model-algorithm-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configured-model-algorithms/{configuredModelAlgorithmArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-configured-model-algorithm-association :shape-name
 "DeleteConfiguredModelAlgorithmAssociation" :input
 delete-configured-model-algorithm-association-request :output common-lisp:null
 :errors
 (access-denied-exception conflict-exception resource-not-found-exception
  throttling-exception validation-exception)
 :method "DELETE" :uri
 "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"
 :code 200)

(smithy/sdk/operation:define-operation delete-mlconfiguration :shape-name
                                       "DeleteMLConfiguration" :input
                                       delete-mlconfiguration-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/ml-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-mlinput-channel-data :shape-name
                                       "DeleteMLInputChannelData" :input
                                       delete-mlinput-channel-data-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-trained-model-output :shape-name
                                       "DeleteTrainedModelOutput" :input
                                       delete-trained-model-output-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-training-dataset :shape-name
                                       "DeleteTrainingDataset" :input
                                       delete-training-dataset-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/training-dataset/{trainingDatasetArn}")

(smithy/sdk/operation:define-operation get-audience-generation-job :shape-name
                                       "GetAudienceGenerationJob" :input
                                       get-audience-generation-job-request
                                       :output
                                       get-audience-generation-job-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/audience-generation-job/{audienceGenerationJobArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-audience-model :shape-name
                                       "GetAudienceModel" :input
                                       get-audience-model-request :output
                                       get-audience-model-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/audience-model/{audienceModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-collaboration-configured-model-algorithm-association :shape-name
 "GetCollaborationConfiguredModelAlgorithmAssociation" :input
 get-collaboration-configured-model-algorithm-association-request :output
 get-collaboration-configured-model-algorithm-association-response :errors
 (access-denied-exception resource-not-found-exception throttling-exception
  validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"
 :code 200)

(smithy/sdk/operation:define-operation get-collaboration-mlinput-channel
                                       :shape-name
                                       "GetCollaborationMLInputChannel" :input
                                       get-collaboration-mlinput-channel-request
                                       :output
                                       get-collaboration-mlinput-channel-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/ml-input-channels/{mlInputChannelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-collaboration-trained-model
                                       :shape-name
                                       "GetCollaborationTrainedModel" :input
                                       get-collaboration-trained-model-request
                                       :output
                                       get-collaboration-trained-model-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configured-audience-model
                                       :shape-name "GetConfiguredAudienceModel"
                                       :input
                                       get-configured-audience-model-request
                                       :output
                                       get-configured-audience-model-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configured-audience-model/{configuredAudienceModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configured-audience-model-policy
                                       :shape-name
                                       "GetConfiguredAudienceModelPolicy"
                                       :input
                                       get-configured-audience-model-policy-request
                                       :output
                                       get-configured-audience-model-policy-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configured-audience-model/{configuredAudienceModelArn}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configured-model-algorithm
                                       :shape-name
                                       "GetConfiguredModelAlgorithm" :input
                                       get-configured-model-algorithm-request
                                       :output
                                       get-configured-model-algorithm-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configured-model-algorithms/{configuredModelAlgorithmArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-configured-model-algorithm-association :shape-name
 "GetConfiguredModelAlgorithmAssociation" :input
 get-configured-model-algorithm-association-request :output
 get-configured-model-algorithm-association-response :errors
 (access-denied-exception resource-not-found-exception throttling-exception
  validation-exception)
 :method "GET" :uri
 "/memberships/{membershipIdentifier}/configured-model-algorithm-associations/{configuredModelAlgorithmAssociationArn}"
 :code 200)

(smithy/sdk/operation:define-operation get-mlconfiguration :shape-name
                                       "GetMLConfiguration" :input
                                       get-mlconfiguration-request :output
                                       get-mlconfiguration-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/ml-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-mlinput-channel :shape-name
                                       "GetMLInputChannel" :input
                                       get-mlinput-channel-request :output
                                       get-mlinput-channel-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/ml-input-channels/{mlInputChannelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-trained-model :shape-name
                                       "GetTrainedModel" :input
                                       get-trained-model-request :output
                                       get-trained-model-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-trained-model-inference-job
                                       :shape-name
                                       "GetTrainedModelInferenceJob" :input
                                       get-trained-model-inference-job-request
                                       :output
                                       get-trained-model-inference-job-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-training-dataset :shape-name
                                       "GetTrainingDataset" :input
                                       get-training-dataset-request :output
                                       get-training-dataset-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/training-dataset/{trainingDatasetArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-audience-export-jobs :shape-name
                                       "ListAudienceExportJobs" :input
                                       list-audience-export-jobs-request
                                       :output
                                       list-audience-export-jobs-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/audience-export-job" :code 200)

(smithy/sdk/operation:define-operation list-audience-generation-jobs
                                       :shape-name "ListAudienceGenerationJobs"
                                       :input
                                       list-audience-generation-jobs-request
                                       :output
                                       list-audience-generation-jobs-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/audience-generation-job" :code 200)

(smithy/sdk/operation:define-operation list-audience-models :shape-name
                                       "ListAudienceModels" :input
                                       list-audience-models-request :output
                                       list-audience-models-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/audience-model"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-collaboration-configured-model-algorithm-associations :shape-name
 "ListCollaborationConfiguredModelAlgorithmAssociations" :input
 list-collaboration-configured-model-algorithm-associations-request :output
 list-collaboration-configured-model-algorithm-associations-response :errors
 (access-denied-exception throttling-exception validation-exception) :method
 "GET" :uri
 "/collaborations/{collaborationIdentifier}/configured-model-algorithm-associations"
 :code 200)

(smithy/sdk/operation:define-operation list-collaboration-mlinput-channels
                                       :shape-name
                                       "ListCollaborationMLInputChannels"
                                       :input
                                       list-collaboration-mlinput-channels-request
                                       :output
                                       list-collaboration-mlinput-channels-response
                                       :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/ml-input-channels"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-collaboration-trained-model-export-jobs :shape-name
 "ListCollaborationTrainedModelExportJobs" :input
 list-collaboration-trained-model-export-jobs-request :output
 list-collaboration-trained-model-export-jobs-response :errors
 (access-denied-exception throttling-exception validation-exception) :method
 "GET" :uri
 "/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}/export-jobs"
 :code 200)

(smithy/sdk/operation:define-operation
 list-collaboration-trained-model-inference-jobs :shape-name
 "ListCollaborationTrainedModelInferenceJobs" :input
 list-collaboration-trained-model-inference-jobs-request :output
 list-collaboration-trained-model-inference-jobs-response :errors
 (access-denied-exception throttling-exception validation-exception) :method
 "GET" :uri
 "/collaborations/{collaborationIdentifier}/trained-model-inference-jobs" :code
 200)

(smithy/sdk/operation:define-operation list-collaboration-trained-models
                                       :shape-name
                                       "ListCollaborationTrainedModels" :input
                                       list-collaboration-trained-models-request
                                       :output
                                       list-collaboration-trained-models-response
                                       :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/trained-models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configured-audience-models
                                       :shape-name
                                       "ListConfiguredAudienceModels" :input
                                       list-configured-audience-models-request
                                       :output
                                       list-configured-audience-models-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configured-audience-model" :code 200)

(smithy/sdk/operation:define-operation
 list-configured-model-algorithm-associations :shape-name
 "ListConfiguredModelAlgorithmAssociations" :input
 list-configured-model-algorithm-associations-request :output
 list-configured-model-algorithm-associations-response :errors
 (access-denied-exception throttling-exception validation-exception) :method
 "GET" :uri
 "/memberships/{membershipIdentifier}/configured-model-algorithm-associations"
 :code 200)

(smithy/sdk/operation:define-operation list-configured-model-algorithms
                                       :shape-name
                                       "ListConfiguredModelAlgorithms" :input
                                       list-configured-model-algorithms-request
                                       :output
                                       list-configured-model-algorithms-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configured-model-algorithms" :code 200)

(smithy/sdk/operation:define-operation list-mlinput-channels :shape-name
                                       "ListMLInputChannels" :input
                                       list-mlinput-channels-request :output
                                       list-mlinput-channels-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/ml-input-channels"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-trained-model-inference-jobs
                                       :shape-name
                                       "ListTrainedModelInferenceJobs" :input
                                       list-trained-model-inference-jobs-request
                                       :output
                                       list-trained-model-inference-jobs-response
                                       :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/trained-model-inference-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-trained-model-versions :shape-name
                                       "ListTrainedModelVersions" :input
                                       list-trained-model-versions-request
                                       :output
                                       list-trained-model-versions-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-trained-models :shape-name
                                       "ListTrainedModels" :input
                                       list-trained-models-request :output
                                       list-trained-models-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/trained-models"
                                       :code 200)

(smithy/sdk/operation:define-operation list-training-datasets :shape-name
                                       "ListTrainingDatasets" :input
                                       list-training-datasets-request :output
                                       list-training-datasets-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/training-dataset"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configured-audience-model-policy
                                       :shape-name
                                       "PutConfiguredAudienceModelPolicy"
                                       :input
                                       put-configured-audience-model-policy-request
                                       :output
                                       put-configured-audience-model-policy-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/configured-audience-model/{configuredAudienceModelArn}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-mlconfiguration :shape-name
                                       "PutMLConfiguration" :input
                                       put-mlconfiguration-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/memberships/{membershipIdentifier}/ml-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation start-audience-export-job :shape-name
                                       "StartAudienceExportJob" :input
                                       start-audience-export-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/audience-export-job" :code 200)

(smithy/sdk/operation:define-operation start-audience-generation-job
                                       :shape-name "StartAudienceGenerationJob"
                                       :input
                                       start-audience-generation-job-request
                                       :output
                                       start-audience-generation-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/audience-generation-job" :code 200)

(smithy/sdk/operation:define-operation start-trained-model-export-job
                                       :shape-name "StartTrainedModelExportJob"
                                       :input
                                       start-trained-model-export-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}/export-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation start-trained-model-inference-job
                                       :shape-name
                                       "StartTrainedModelInferenceJob" :input
                                       start-trained-model-inference-job-request
                                       :output
                                       start-trained-model-inference-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/trained-model-inference-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-configured-audience-model
                                       :shape-name
                                       "UpdateConfiguredAudienceModel" :input
                                       update-configured-audience-model-request
                                       :output
                                       update-configured-audience-model-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/configured-audience-model/{configuredAudienceModelArn}"
                                       :code 200)
