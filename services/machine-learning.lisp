(uiop/package:define-package #:pira/machine-learning (:use)
                             (:export #:add-tags #:algorithm
                              #:amazon-ml-20141212 #:aws-user-arn
                              #:batch-prediction
                              #:batch-prediction-filter-variable
                              #:batch-predictions #:comparator-value
                              #:compute-statistics #:create-batch-prediction
                              #:create-data-source-from-rds
                              #:create-data-source-from-redshift
                              #:create-data-source-from-s3 #:create-evaluation
                              #:create-mlmodel #:create-realtime-endpoint
                              #:data-rearrangement #:data-schema #:data-source
                              #:data-source-filter-variable #:data-sources
                              #:delete-batch-prediction #:delete-data-source
                              #:delete-evaluation #:delete-mlmodel
                              #:delete-realtime-endpoint #:delete-tags
                              #:describe-batch-predictions
                              #:describe-data-sources #:describe-evaluations
                              #:describe-mlmodels #:describe-tags
                              #:details-attributes #:details-map
                              #:details-value #:edppipeline-id
                              #:edpresource-role #:edpsecurity-group-id
                              #:edpsecurity-group-ids #:edpservice-role
                              #:edpsubnet-id #:entity-id #:entity-name
                              #:entity-status #:epoch-time #:error-code
                              #:error-message #:evaluation
                              #:evaluation-filter-variable #:evaluations
                              #:get-batch-prediction #:get-data-source
                              #:get-evaluation #:get-mlmodel
                              #:idempotent-parameter-mismatch-exception
                              #:integer-type #:internal-server-exception
                              #:invalid-input-exception #:invalid-tag-exception
                              #:label #:limit-exceeded-exception #:long-type
                              #:mlmodel #:mlmodel-filter-variable
                              #:mlmodel-name #:mlmodel-type #:mlmodels
                              #:message #:page-limit #:performance-metrics
                              #:performance-metrics-properties
                              #:performance-metrics-property-key
                              #:performance-metrics-property-value #:predict
                              #:prediction #:predictor-not-mounted-exception
                              #:presigned-s3url #:rdsdata-spec #:rdsdatabase
                              #:rdsdatabase-credentials #:rdsdatabase-name
                              #:rdsdatabase-password #:rdsdatabase-username
                              #:rdsinstance-identifier #:rdsmetadata
                              #:rdsselect-sql-query #:realtime-endpoint-info
                              #:realtime-endpoint-status #:recipe #:record
                              #:redshift-cluster-identifier
                              #:redshift-data-spec #:redshift-database
                              #:redshift-database-credentials
                              #:redshift-database-name
                              #:redshift-database-password
                              #:redshift-database-username #:redshift-metadata
                              #:redshift-select-sql-query
                              #:resource-not-found-exception #:role-arn
                              #:s3data-spec #:s3url #:score-threshold
                              #:score-value #:score-value-per-label-map
                              #:sort-order #:string-type #:tag #:tag-key
                              #:tag-key-list #:tag-limit-exceeded-exception
                              #:tag-list #:tag-value #:taggable-resource-type
                              #:training-parameters #:update-batch-prediction
                              #:update-data-source #:update-evaluation
                              #:update-mlmodel #:variable-name #:variable-value
                              #:verbose #:vip-url #:float-label
                              #:machine-learning-error))
(common-lisp:in-package #:pira/machine-learning)

(common-lisp:define-condition machine-learning-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-ml-20141212 :shape-name
                                   "AmazonML_20141212" :version "2014-12-12"
                                   :title "Amazon Machine Learning" :operations
                                   '(add-tags create-batch-prediction
                                     create-data-source-from-rds
                                     create-data-source-from-redshift
                                     create-data-source-from-s3
                                     create-evaluation create-mlmodel
                                     create-realtime-endpoint
                                     delete-batch-prediction delete-data-source
                                     delete-evaluation delete-mlmodel
                                     delete-realtime-endpoint delete-tags
                                     describe-batch-predictions
                                     describe-data-sources describe-evaluations
                                     describe-mlmodels describe-tags
                                     get-batch-prediction get-data-source
                                     get-evaluation get-mlmodel predict
                                     update-batch-prediction update-data-source
                                     update-evaluation update-mlmodel)
                                   :xml-namespace
                                   '(:uri
                                     "http://machinelearning.amazonaws.com/doc/2014-12-12/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Machine Learning")
                                      ("arnNamespace" . "machinelearning")
                                      ("cloudFormationName"
                                       . "MachineLearning")
                                      ("cloudTrailEventSource"
                                       . "machinelearning.amazonaws.com")
                                      ("docId" . "machinelearning-2014-12-12")
                                      ("endpointPrefix" . "machinelearning"))
                                     ("aws.auth#sigv4"
                                      ("name" . "machinelearning"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input add-tags-input common-lisp:nil
                                ((tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags")
                                 (resource-id :target-type entity-id :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  taggable-resource-type :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "AddTagsInput"))

(smithy/sdk/shapes:define-output add-tags-output common-lisp:nil
                                 ((resource-id :target-type entity-id
                                   :member-name "ResourceId")
                                  (resource-type :target-type
                                   taggable-resource-type :member-name
                                   "ResourceType"))
                                 (:shape-name "AddTagsOutput"))

(smithy/sdk/shapes:define-enum algorithm
    common-lisp:nil
  (:sgd "sgd"))

(smithy/sdk/shapes:define-type aws-user-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-prediction common-lisp:nil
                                    ((batch-prediction-id :target-type
                                      entity-id :member-name
                                      "BatchPredictionId")
                                     (mlmodel-id :target-type entity-id
                                      :member-name "MLModelId")
                                     (batch-prediction-data-source-id
                                      :target-type entity-id :member-name
                                      "BatchPredictionDataSourceId")
                                     (input-data-location-s3 :target-type s3url
                                      :member-name "InputDataLocationS3")
                                     (created-by-iam-user :target-type
                                      aws-user-arn :member-name
                                      "CreatedByIamUser")
                                     (created-at :target-type epoch-time
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type epoch-time
                                      :member-name "LastUpdatedAt")
                                     (name :target-type entity-name
                                      :member-name "Name")
                                     (status :target-type entity-status
                                      :member-name "Status")
                                     (output-uri :target-type s3url
                                      :member-name "OutputUri")
                                     (message :target-type message :member-name
                                      "Message")
                                     (compute-time :target-type long-type
                                      :member-name "ComputeTime")
                                     (finished-at :target-type epoch-time
                                      :member-name "FinishedAt")
                                     (started-at :target-type epoch-time
                                      :member-name "StartedAt")
                                     (total-record-count :target-type long-type
                                      :member-name "TotalRecordCount")
                                     (invalid-record-count :target-type
                                      long-type :member-name
                                      "InvalidRecordCount"))
                                    (:shape-name "BatchPrediction"))

(smithy/sdk/shapes:define-enum batch-prediction-filter-variable
    common-lisp:nil
  (:created-at "CreatedAt")
  (:last-updated-at "LastUpdatedAt")
  (:status "Status")
  (:name "Name")
  (:iam-user "IAMUser")
  (:ml-model-id "MLModelId")
  (:datasource-id "DataSourceId")
  (:data-uri "DataURI"))

(smithy/sdk/shapes:define-list batch-predictions :member batch-prediction)

(smithy/sdk/shapes:define-type comparator-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compute-statistics
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-batch-prediction-input common-lisp:nil
                                ((batch-prediction-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "BatchPredictionId")
                                 (batch-prediction-name :target-type
                                  entity-name :member-name
                                  "BatchPredictionName")
                                 (mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (batch-prediction-data-source-id :target-type
                                  entity-id :required common-lisp:t
                                  :member-name "BatchPredictionDataSourceId")
                                 (output-uri :target-type s3url :required
                                  common-lisp:t :member-name "OutputUri"))
                                (:shape-name "CreateBatchPredictionInput"))

(smithy/sdk/shapes:define-output create-batch-prediction-output common-lisp:nil
                                 ((batch-prediction-id :target-type entity-id
                                   :member-name "BatchPredictionId"))
                                 (:shape-name "CreateBatchPredictionOutput"))

(smithy/sdk/shapes:define-input create-data-source-from-rdsinput
                                common-lisp:nil
                                ((data-source-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "DataSourceId")
                                 (data-source-name :target-type entity-name
                                  :member-name "DataSourceName")
                                 (rdsdata :target-type rdsdata-spec :required
                                  common-lisp:t :member-name "RDSData")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleARN")
                                 (compute-statistics :target-type
                                  compute-statistics :member-name
                                  "ComputeStatistics"))
                                (:shape-name "CreateDataSourceFromRDSInput"))

(smithy/sdk/shapes:define-output create-data-source-from-rdsoutput
                                 common-lisp:nil
                                 ((data-source-id :target-type entity-id
                                   :member-name "DataSourceId"))
                                 (:shape-name "CreateDataSourceFromRDSOutput"))

(smithy/sdk/shapes:define-input create-data-source-from-redshift-input
                                common-lisp:nil
                                ((data-source-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "DataSourceId")
                                 (data-source-name :target-type entity-name
                                  :member-name "DataSourceName")
                                 (data-spec :target-type redshift-data-spec
                                  :required common-lisp:t :member-name
                                  "DataSpec")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleARN")
                                 (compute-statistics :target-type
                                  compute-statistics :member-name
                                  "ComputeStatistics"))
                                (:shape-name
                                 "CreateDataSourceFromRedshiftInput"))

(smithy/sdk/shapes:define-output create-data-source-from-redshift-output
                                 common-lisp:nil
                                 ((data-source-id :target-type entity-id
                                   :member-name "DataSourceId"))
                                 (:shape-name
                                  "CreateDataSourceFromRedshiftOutput"))

(smithy/sdk/shapes:define-input create-data-source-from-s3input common-lisp:nil
                                ((data-source-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "DataSourceId")
                                 (data-source-name :target-type entity-name
                                  :member-name "DataSourceName")
                                 (data-spec :target-type s3data-spec :required
                                  common-lisp:t :member-name "DataSpec")
                                 (compute-statistics :target-type
                                  compute-statistics :member-name
                                  "ComputeStatistics"))
                                (:shape-name "CreateDataSourceFromS3Input"))

(smithy/sdk/shapes:define-output create-data-source-from-s3output
                                 common-lisp:nil
                                 ((data-source-id :target-type entity-id
                                   :member-name "DataSourceId"))
                                 (:shape-name "CreateDataSourceFromS3Output"))

(smithy/sdk/shapes:define-input create-evaluation-input common-lisp:nil
                                ((evaluation-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "EvaluationId")
                                 (evaluation-name :target-type entity-name
                                  :member-name "EvaluationName")
                                 (mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (evaluation-data-source-id :target-type
                                  entity-id :required common-lisp:t
                                  :member-name "EvaluationDataSourceId"))
                                (:shape-name "CreateEvaluationInput"))

(smithy/sdk/shapes:define-output create-evaluation-output common-lisp:nil
                                 ((evaluation-id :target-type entity-id
                                   :member-name "EvaluationId"))
                                 (:shape-name "CreateEvaluationOutput"))

(smithy/sdk/shapes:define-input create-mlmodel-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (mlmodel-name :target-type entity-name
                                  :member-name "MLModelName")
                                 (mlmodel-type :target-type mlmodel-type
                                  :required common-lisp:t :member-name
                                  "MLModelType")
                                 (parameters :target-type training-parameters
                                  :member-name "Parameters")
                                 (training-data-source-id :target-type
                                  entity-id :required common-lisp:t
                                  :member-name "TrainingDataSourceId")
                                 (recipe :target-type recipe :member-name
                                  "Recipe")
                                 (recipe-uri :target-type s3url :member-name
                                  "RecipeUri"))
                                (:shape-name "CreateMLModelInput"))

(smithy/sdk/shapes:define-output create-mlmodel-output common-lisp:nil
                                 ((mlmodel-id :target-type entity-id
                                   :member-name "MLModelId"))
                                 (:shape-name "CreateMLModelOutput"))

(smithy/sdk/shapes:define-input create-realtime-endpoint-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId"))
                                (:shape-name "CreateRealtimeEndpointInput"))

(smithy/sdk/shapes:define-output create-realtime-endpoint-output
                                 common-lisp:nil
                                 ((mlmodel-id :target-type entity-id
                                   :member-name "MLModelId")
                                  (realtime-endpoint-info :target-type
                                   realtime-endpoint-info :member-name
                                   "RealtimeEndpointInfo"))
                                 (:shape-name "CreateRealtimeEndpointOutput"))

(smithy/sdk/shapes:define-type data-rearrangement
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((data-source-id :target-type entity-id
                                      :member-name "DataSourceId")
                                     (data-location-s3 :target-type s3url
                                      :member-name "DataLocationS3")
                                     (data-rearrangement :target-type
                                      data-rearrangement :member-name
                                      "DataRearrangement")
                                     (created-by-iam-user :target-type
                                      aws-user-arn :member-name
                                      "CreatedByIamUser")
                                     (created-at :target-type epoch-time
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type epoch-time
                                      :member-name "LastUpdatedAt")
                                     (data-size-in-bytes :target-type long-type
                                      :member-name "DataSizeInBytes")
                                     (number-of-files :target-type long-type
                                      :member-name "NumberOfFiles")
                                     (name :target-type entity-name
                                      :member-name "Name")
                                     (status :target-type entity-status
                                      :member-name "Status")
                                     (message :target-type message :member-name
                                      "Message")
                                     (redshift-metadata :target-type
                                      redshift-metadata :member-name
                                      "RedshiftMetadata")
                                     (rdsmetadata :target-type rdsmetadata
                                      :member-name "RDSMetadata")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (compute-statistics :target-type
                                      compute-statistics :member-name
                                      "ComputeStatistics")
                                     (compute-time :target-type long-type
                                      :member-name "ComputeTime")
                                     (finished-at :target-type epoch-time
                                      :member-name "FinishedAt")
                                     (started-at :target-type epoch-time
                                      :member-name "StartedAt"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-enum data-source-filter-variable
    common-lisp:nil
  (:created-at "CreatedAt")
  (:last-updated-at "LastUpdatedAt")
  (:status "Status")
  (:name "Name")
  (:data-uri "DataLocationS3")
  (:iam-user "IAMUser"))

(smithy/sdk/shapes:define-list data-sources :member data-source)

(smithy/sdk/shapes:define-input delete-batch-prediction-input common-lisp:nil
                                ((batch-prediction-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "BatchPredictionId"))
                                (:shape-name "DeleteBatchPredictionInput"))

(smithy/sdk/shapes:define-output delete-batch-prediction-output common-lisp:nil
                                 ((batch-prediction-id :target-type entity-id
                                   :member-name "BatchPredictionId"))
                                 (:shape-name "DeleteBatchPredictionOutput"))

(smithy/sdk/shapes:define-input delete-data-source-input common-lisp:nil
                                ((data-source-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "DataSourceId"))
                                (:shape-name "DeleteDataSourceInput"))

(smithy/sdk/shapes:define-output delete-data-source-output common-lisp:nil
                                 ((data-source-id :target-type entity-id
                                   :member-name "DataSourceId"))
                                 (:shape-name "DeleteDataSourceOutput"))

(smithy/sdk/shapes:define-input delete-evaluation-input common-lisp:nil
                                ((evaluation-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "EvaluationId"))
                                (:shape-name "DeleteEvaluationInput"))

(smithy/sdk/shapes:define-output delete-evaluation-output common-lisp:nil
                                 ((evaluation-id :target-type entity-id
                                   :member-name "EvaluationId"))
                                 (:shape-name "DeleteEvaluationOutput"))

(smithy/sdk/shapes:define-input delete-mlmodel-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId"))
                                (:shape-name "DeleteMLModelInput"))

(smithy/sdk/shapes:define-output delete-mlmodel-output common-lisp:nil
                                 ((mlmodel-id :target-type entity-id
                                   :member-name "MLModelId"))
                                 (:shape-name "DeleteMLModelOutput"))

(smithy/sdk/shapes:define-input delete-realtime-endpoint-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId"))
                                (:shape-name "DeleteRealtimeEndpointInput"))

(smithy/sdk/shapes:define-output delete-realtime-endpoint-output
                                 common-lisp:nil
                                 ((mlmodel-id :target-type entity-id
                                   :member-name "MLModelId")
                                  (realtime-endpoint-info :target-type
                                   realtime-endpoint-info :member-name
                                   "RealtimeEndpointInfo"))
                                 (:shape-name "DeleteRealtimeEndpointOutput"))

(smithy/sdk/shapes:define-input delete-tags-input common-lisp:nil
                                ((tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys")
                                 (resource-id :target-type entity-id :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  taggable-resource-type :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "DeleteTagsInput"))

(smithy/sdk/shapes:define-output delete-tags-output common-lisp:nil
                                 ((resource-id :target-type entity-id
                                   :member-name "ResourceId")
                                  (resource-type :target-type
                                   taggable-resource-type :member-name
                                   "ResourceType"))
                                 (:shape-name "DeleteTagsOutput"))

(smithy/sdk/shapes:define-input describe-batch-predictions-input
                                common-lisp:nil
                                ((filter-variable :target-type
                                  batch-prediction-filter-variable :member-name
                                  "FilterVariable")
                                 (eq :target-type comparator-value :member-name
                                  "EQ")
                                 (gt :target-type comparator-value :member-name
                                  "GT")
                                 (lt :target-type comparator-value :member-name
                                  "LT")
                                 (ge :target-type comparator-value :member-name
                                  "GE")
                                 (le :target-type comparator-value :member-name
                                  "LE")
                                 (ne :target-type comparator-value :member-name
                                  "NE")
                                 (prefix :target-type comparator-value
                                  :member-name "Prefix")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (next-token :target-type string-type
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeBatchPredictionsInput"))

(smithy/sdk/shapes:define-output describe-batch-predictions-output
                                 common-lisp:nil
                                 ((results :target-type batch-predictions
                                   :member-name "Results")
                                  (next-token :target-type string-type
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeBatchPredictionsOutput"))

(smithy/sdk/shapes:define-input describe-data-sources-input common-lisp:nil
                                ((filter-variable :target-type
                                  data-source-filter-variable :member-name
                                  "FilterVariable")
                                 (eq :target-type comparator-value :member-name
                                  "EQ")
                                 (gt :target-type comparator-value :member-name
                                  "GT")
                                 (lt :target-type comparator-value :member-name
                                  "LT")
                                 (ge :target-type comparator-value :member-name
                                  "GE")
                                 (le :target-type comparator-value :member-name
                                  "LE")
                                 (ne :target-type comparator-value :member-name
                                  "NE")
                                 (prefix :target-type comparator-value
                                  :member-name "Prefix")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (next-token :target-type string-type
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeDataSourcesInput"))

(smithy/sdk/shapes:define-output describe-data-sources-output common-lisp:nil
                                 ((results :target-type data-sources
                                   :member-name "Results")
                                  (next-token :target-type string-type
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeDataSourcesOutput"))

(smithy/sdk/shapes:define-input describe-evaluations-input common-lisp:nil
                                ((filter-variable :target-type
                                  evaluation-filter-variable :member-name
                                  "FilterVariable")
                                 (eq :target-type comparator-value :member-name
                                  "EQ")
                                 (gt :target-type comparator-value :member-name
                                  "GT")
                                 (lt :target-type comparator-value :member-name
                                  "LT")
                                 (ge :target-type comparator-value :member-name
                                  "GE")
                                 (le :target-type comparator-value :member-name
                                  "LE")
                                 (ne :target-type comparator-value :member-name
                                  "NE")
                                 (prefix :target-type comparator-value
                                  :member-name "Prefix")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (next-token :target-type string-type
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeEvaluationsInput"))

(smithy/sdk/shapes:define-output describe-evaluations-output common-lisp:nil
                                 ((results :target-type evaluations
                                   :member-name "Results")
                                  (next-token :target-type string-type
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeEvaluationsOutput"))

(smithy/sdk/shapes:define-input describe-mlmodels-input common-lisp:nil
                                ((filter-variable :target-type
                                  mlmodel-filter-variable :member-name
                                  "FilterVariable")
                                 (eq :target-type comparator-value :member-name
                                  "EQ")
                                 (gt :target-type comparator-value :member-name
                                  "GT")
                                 (lt :target-type comparator-value :member-name
                                  "LT")
                                 (ge :target-type comparator-value :member-name
                                  "GE")
                                 (le :target-type comparator-value :member-name
                                  "LE")
                                 (ne :target-type comparator-value :member-name
                                  "NE")
                                 (prefix :target-type comparator-value
                                  :member-name "Prefix")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (next-token :target-type string-type
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeMLModelsInput"))

(smithy/sdk/shapes:define-output describe-mlmodels-output common-lisp:nil
                                 ((results :target-type mlmodels :member-name
                                   "Results")
                                  (next-token :target-type string-type
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeMLModelsOutput"))

(smithy/sdk/shapes:define-input describe-tags-input common-lisp:nil
                                ((resource-id :target-type entity-id :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  taggable-resource-type :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "DescribeTagsInput"))

(smithy/sdk/shapes:define-output describe-tags-output common-lisp:nil
                                 ((resource-id :target-type entity-id
                                   :member-name "ResourceId")
                                  (resource-type :target-type
                                   taggable-resource-type :member-name
                                   "ResourceType")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "DescribeTagsOutput"))

(smithy/sdk/shapes:define-enum details-attributes
    common-lisp:nil
  (:predictive-model-type "PredictiveModelType")
  (:algorithm "Algorithm"))

(smithy/sdk/shapes:define-map details-map :key details-attributes :value
                              details-value)

(smithy/sdk/shapes:define-type details-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type edppipeline-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type edpresource-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type edpsecurity-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list edpsecurity-group-ids :member
                               edpsecurity-group-id)

(smithy/sdk/shapes:define-type edpservice-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type edpsubnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum entity-status
    common-lisp:nil
  (:pending "PENDING")
  (:inprogress "INPROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type epoch-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation common-lisp:nil
                                    ((evaluation-id :target-type entity-id
                                      :member-name "EvaluationId")
                                     (mlmodel-id :target-type entity-id
                                      :member-name "MLModelId")
                                     (evaluation-data-source-id :target-type
                                      entity-id :member-name
                                      "EvaluationDataSourceId")
                                     (input-data-location-s3 :target-type s3url
                                      :member-name "InputDataLocationS3")
                                     (created-by-iam-user :target-type
                                      aws-user-arn :member-name
                                      "CreatedByIamUser")
                                     (created-at :target-type epoch-time
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type epoch-time
                                      :member-name "LastUpdatedAt")
                                     (name :target-type entity-name
                                      :member-name "Name")
                                     (status :target-type entity-status
                                      :member-name "Status")
                                     (performance-metrics :target-type
                                      performance-metrics :member-name
                                      "PerformanceMetrics")
                                     (message :target-type message :member-name
                                      "Message")
                                     (compute-time :target-type long-type
                                      :member-name "ComputeTime")
                                     (finished-at :target-type epoch-time
                                      :member-name "FinishedAt")
                                     (started-at :target-type epoch-time
                                      :member-name "StartedAt"))
                                    (:shape-name "Evaluation"))

(smithy/sdk/shapes:define-enum evaluation-filter-variable
    common-lisp:nil
  (:created-at "CreatedAt")
  (:last-updated-at "LastUpdatedAt")
  (:status "Status")
  (:name "Name")
  (:iam-user "IAMUser")
  (:ml-model-id "MLModelId")
  (:datasource-id "DataSourceId")
  (:data-uri "DataURI"))

(smithy/sdk/shapes:define-list evaluations :member evaluation)

(smithy/sdk/shapes:define-input get-batch-prediction-input common-lisp:nil
                                ((batch-prediction-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "BatchPredictionId"))
                                (:shape-name "GetBatchPredictionInput"))

(smithy/sdk/shapes:define-output get-batch-prediction-output common-lisp:nil
                                 ((batch-prediction-id :target-type entity-id
                                   :member-name "BatchPredictionId")
                                  (mlmodel-id :target-type entity-id
                                   :member-name "MLModelId")
                                  (batch-prediction-data-source-id :target-type
                                   entity-id :member-name
                                   "BatchPredictionDataSourceId")
                                  (input-data-location-s3 :target-type s3url
                                   :member-name "InputDataLocationS3")
                                  (created-by-iam-user :target-type
                                   aws-user-arn :member-name
                                   "CreatedByIamUser")
                                  (created-at :target-type epoch-time
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type epoch-time
                                   :member-name "LastUpdatedAt")
                                  (name :target-type entity-name :member-name
                                   "Name")
                                  (status :target-type entity-status
                                   :member-name "Status")
                                  (output-uri :target-type s3url :member-name
                                   "OutputUri")
                                  (log-uri :target-type presigned-s3url
                                   :member-name "LogUri")
                                  (message :target-type message :member-name
                                   "Message")
                                  (compute-time :target-type long-type
                                   :member-name "ComputeTime")
                                  (finished-at :target-type epoch-time
                                   :member-name "FinishedAt")
                                  (started-at :target-type epoch-time
                                   :member-name "StartedAt")
                                  (total-record-count :target-type long-type
                                   :member-name "TotalRecordCount")
                                  (invalid-record-count :target-type long-type
                                   :member-name "InvalidRecordCount"))
                                 (:shape-name "GetBatchPredictionOutput"))

(smithy/sdk/shapes:define-input get-data-source-input common-lisp:nil
                                ((data-source-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "DataSourceId")
                                 (verbose :target-type verbose :member-name
                                  "Verbose"))
                                (:shape-name "GetDataSourceInput"))

(smithy/sdk/shapes:define-output get-data-source-output common-lisp:nil
                                 ((data-source-id :target-type entity-id
                                   :member-name "DataSourceId")
                                  (data-location-s3 :target-type s3url
                                   :member-name "DataLocationS3")
                                  (data-rearrangement :target-type
                                   data-rearrangement :member-name
                                   "DataRearrangement")
                                  (created-by-iam-user :target-type
                                   aws-user-arn :member-name
                                   "CreatedByIamUser")
                                  (created-at :target-type epoch-time
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type epoch-time
                                   :member-name "LastUpdatedAt")
                                  (data-size-in-bytes :target-type long-type
                                   :member-name "DataSizeInBytes")
                                  (number-of-files :target-type long-type
                                   :member-name "NumberOfFiles")
                                  (name :target-type entity-name :member-name
                                   "Name")
                                  (status :target-type entity-status
                                   :member-name "Status")
                                  (log-uri :target-type presigned-s3url
                                   :member-name "LogUri")
                                  (message :target-type message :member-name
                                   "Message")
                                  (redshift-metadata :target-type
                                   redshift-metadata :member-name
                                   "RedshiftMetadata")
                                  (rdsmetadata :target-type rdsmetadata
                                   :member-name "RDSMetadata")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleARN")
                                  (compute-statistics :target-type
                                   compute-statistics :member-name
                                   "ComputeStatistics")
                                  (compute-time :target-type long-type
                                   :member-name "ComputeTime")
                                  (finished-at :target-type epoch-time
                                   :member-name "FinishedAt")
                                  (started-at :target-type epoch-time
                                   :member-name "StartedAt")
                                  (data-source-schema :target-type data-schema
                                   :member-name "DataSourceSchema"))
                                 (:shape-name "GetDataSourceOutput"))

(smithy/sdk/shapes:define-input get-evaluation-input common-lisp:nil
                                ((evaluation-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "EvaluationId"))
                                (:shape-name "GetEvaluationInput"))

(smithy/sdk/shapes:define-output get-evaluation-output common-lisp:nil
                                 ((evaluation-id :target-type entity-id
                                   :member-name "EvaluationId")
                                  (mlmodel-id :target-type entity-id
                                   :member-name "MLModelId")
                                  (evaluation-data-source-id :target-type
                                   entity-id :member-name
                                   "EvaluationDataSourceId")
                                  (input-data-location-s3 :target-type s3url
                                   :member-name "InputDataLocationS3")
                                  (created-by-iam-user :target-type
                                   aws-user-arn :member-name
                                   "CreatedByIamUser")
                                  (created-at :target-type epoch-time
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type epoch-time
                                   :member-name "LastUpdatedAt")
                                  (name :target-type entity-name :member-name
                                   "Name")
                                  (status :target-type entity-status
                                   :member-name "Status")
                                  (performance-metrics :target-type
                                   performance-metrics :member-name
                                   "PerformanceMetrics")
                                  (log-uri :target-type presigned-s3url
                                   :member-name "LogUri")
                                  (message :target-type message :member-name
                                   "Message")
                                  (compute-time :target-type long-type
                                   :member-name "ComputeTime")
                                  (finished-at :target-type epoch-time
                                   :member-name "FinishedAt")
                                  (started-at :target-type epoch-time
                                   :member-name "StartedAt"))
                                 (:shape-name "GetEvaluationOutput"))

(smithy/sdk/shapes:define-input get-mlmodel-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (verbose :target-type verbose :member-name
                                  "Verbose"))
                                (:shape-name "GetMLModelInput"))

(smithy/sdk/shapes:define-output get-mlmodel-output common-lisp:nil
                                 ((mlmodel-id :target-type entity-id
                                   :member-name "MLModelId")
                                  (training-data-source-id :target-type
                                   entity-id :member-name
                                   "TrainingDataSourceId")
                                  (created-by-iam-user :target-type
                                   aws-user-arn :member-name
                                   "CreatedByIamUser")
                                  (created-at :target-type epoch-time
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type epoch-time
                                   :member-name "LastUpdatedAt")
                                  (name :target-type mlmodel-name :member-name
                                   "Name")
                                  (status :target-type entity-status
                                   :member-name "Status")
                                  (size-in-bytes :target-type long-type
                                   :member-name "SizeInBytes")
                                  (endpoint-info :target-type
                                   realtime-endpoint-info :member-name
                                   "EndpointInfo")
                                  (training-parameters :target-type
                                   training-parameters :member-name
                                   "TrainingParameters")
                                  (input-data-location-s3 :target-type s3url
                                   :member-name "InputDataLocationS3")
                                  (mlmodel-type :target-type mlmodel-type
                                   :member-name "MLModelType")
                                  (score-threshold :target-type score-threshold
                                   :member-name "ScoreThreshold")
                                  (score-threshold-last-updated-at :target-type
                                   epoch-time :member-name
                                   "ScoreThresholdLastUpdatedAt")
                                  (log-uri :target-type presigned-s3url
                                   :member-name "LogUri")
                                  (message :target-type message :member-name
                                   "Message")
                                  (compute-time :target-type long-type
                                   :member-name "ComputeTime")
                                  (finished-at :target-type epoch-time
                                   :member-name "FinishedAt")
                                  (started-at :target-type epoch-time
                                   :member-name "StartedAt")
                                  (recipe :target-type recipe :member-name
                                   "Recipe")
                                  (schema :target-type data-schema :member-name
                                   "Schema"))
                                 (:shape-name "GetMLModelOutput"))

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-type integer-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-error invalid-tag-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTagException")
                                (:error-code 400)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-type label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "LimitExceededException")
                                (:error-code 417)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-type long-type smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure mlmodel common-lisp:nil
                                    ((mlmodel-id :target-type entity-id
                                      :member-name "MLModelId")
                                     (training-data-source-id :target-type
                                      entity-id :member-name
                                      "TrainingDataSourceId")
                                     (created-by-iam-user :target-type
                                      aws-user-arn :member-name
                                      "CreatedByIamUser")
                                     (created-at :target-type epoch-time
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type epoch-time
                                      :member-name "LastUpdatedAt")
                                     (name :target-type mlmodel-name
                                      :member-name "Name")
                                     (status :target-type entity-status
                                      :member-name "Status")
                                     (size-in-bytes :target-type long-type
                                      :member-name "SizeInBytes")
                                     (endpoint-info :target-type
                                      realtime-endpoint-info :member-name
                                      "EndpointInfo")
                                     (training-parameters :target-type
                                      training-parameters :member-name
                                      "TrainingParameters")
                                     (input-data-location-s3 :target-type s3url
                                      :member-name "InputDataLocationS3")
                                     (algorithm :target-type algorithm
                                      :member-name "Algorithm")
                                     (mlmodel-type :target-type mlmodel-type
                                      :member-name "MLModelType")
                                     (score-threshold :target-type
                                      score-threshold :member-name
                                      "ScoreThreshold")
                                     (score-threshold-last-updated-at
                                      :target-type epoch-time :member-name
                                      "ScoreThresholdLastUpdatedAt")
                                     (message :target-type message :member-name
                                      "Message")
                                     (compute-time :target-type long-type
                                      :member-name "ComputeTime")
                                     (finished-at :target-type epoch-time
                                      :member-name "FinishedAt")
                                     (started-at :target-type epoch-time
                                      :member-name "StartedAt"))
                                    (:shape-name "MLModel"))

(smithy/sdk/shapes:define-enum mlmodel-filter-variable
    common-lisp:nil
  (:created-at "CreatedAt")
  (:last-updated-at "LastUpdatedAt")
  (:status "Status")
  (:name "Name")
  (:iam-user "IAMUser")
  (:training-datasource-id "TrainingDataSourceId")
  (:real-time-endpoint-status "RealtimeEndpointStatus")
  (:ml-model-type "MLModelType")
  (:algorithm "Algorithm")
  (:training-data-uri "TrainingDataURI"))

(smithy/sdk/shapes:define-type mlmodel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mlmodel-type
    common-lisp:nil
  (:regression "REGRESSION")
  (:binary "BINARY")
  (:multiclass "MULTICLASS"))

(smithy/sdk/shapes:define-list mlmodels :member mlmodel)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure performance-metrics common-lisp:nil
                                    ((properties :target-type
                                      performance-metrics-properties
                                      :member-name "Properties"))
                                    (:shape-name "PerformanceMetrics"))

(smithy/sdk/shapes:define-map performance-metrics-properties :key
                              performance-metrics-property-key :value
                              performance-metrics-property-value)

(smithy/sdk/shapes:define-type performance-metrics-property-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type performance-metrics-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input predict-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (record :target-type record :required
                                  common-lisp:t :member-name "Record")
                                 (predict-endpoint :target-type vip-url
                                  :required common-lisp:t :member-name
                                  "PredictEndpoint"))
                                (:shape-name "PredictInput"))

(smithy/sdk/shapes:define-output predict-output common-lisp:nil
                                 ((prediction :target-type prediction
                                   :member-name "Prediction"))
                                 (:shape-name "PredictOutput"))

(smithy/sdk/shapes:define-structure prediction common-lisp:nil
                                    ((predicted-label :target-type label
                                      :member-name "predictedLabel")
                                     (predicted-value :target-type float-label
                                      :member-name "predictedValue")
                                     (predicted-scores :target-type
                                      score-value-per-label-map :member-name
                                      "predictedScores")
                                     (details :target-type details-map
                                      :member-name "details"))
                                    (:shape-name "Prediction"))

(smithy/sdk/shapes:define-error predictor-not-mounted-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PredictorNotMountedException")
                                (:error-code 400)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-type presigned-s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rdsdata-spec common-lisp:nil
                                    ((database-information :target-type
                                      rdsdatabase :required common-lisp:t
                                      :member-name "DatabaseInformation")
                                     (select-sql-query :target-type
                                      rdsselect-sql-query :required
                                      common-lisp:t :member-name
                                      "SelectSqlQuery")
                                     (database-credentials :target-type
                                      rdsdatabase-credentials :required
                                      common-lisp:t :member-name
                                      "DatabaseCredentials")
                                     (s3staging-location :target-type s3url
                                      :required common-lisp:t :member-name
                                      "S3StagingLocation")
                                     (data-rearrangement :target-type
                                      data-rearrangement :member-name
                                      "DataRearrangement")
                                     (data-schema :target-type data-schema
                                      :member-name "DataSchema")
                                     (data-schema-uri :target-type s3url
                                      :member-name "DataSchemaUri")
                                     (resource-role :target-type
                                      edpresource-role :required common-lisp:t
                                      :member-name "ResourceRole")
                                     (service-role :target-type edpservice-role
                                      :required common-lisp:t :member-name
                                      "ServiceRole")
                                     (subnet-id :target-type edpsubnet-id
                                      :required common-lisp:t :member-name
                                      "SubnetId")
                                     (security-group-ids :target-type
                                      edpsecurity-group-ids :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "RDSDataSpec"))

(smithy/sdk/shapes:define-structure rdsdatabase common-lisp:nil
                                    ((instance-identifier :target-type
                                      rdsinstance-identifier :required
                                      common-lisp:t :member-name
                                      "InstanceIdentifier")
                                     (database-name :target-type
                                      rdsdatabase-name :required common-lisp:t
                                      :member-name "DatabaseName"))
                                    (:shape-name "RDSDatabase"))

(smithy/sdk/shapes:define-structure rdsdatabase-credentials common-lisp:nil
                                    ((username :target-type
                                      rdsdatabase-username :required
                                      common-lisp:t :member-name "Username")
                                     (password :target-type
                                      rdsdatabase-password :required
                                      common-lisp:t :member-name "Password"))
                                    (:shape-name "RDSDatabaseCredentials"))

(smithy/sdk/shapes:define-type rdsdatabase-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rdsdatabase-password
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rdsdatabase-username
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rdsinstance-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rdsmetadata common-lisp:nil
                                    ((database :target-type rdsdatabase
                                      :member-name "Database")
                                     (database-user-name :target-type
                                      rdsdatabase-username :member-name
                                      "DatabaseUserName")
                                     (select-sql-query :target-type
                                      rdsselect-sql-query :member-name
                                      "SelectSqlQuery")
                                     (resource-role :target-type
                                      edpresource-role :member-name
                                      "ResourceRole")
                                     (service-role :target-type edpservice-role
                                      :member-name "ServiceRole")
                                     (data-pipeline-id :target-type
                                      edppipeline-id :member-name
                                      "DataPipelineId"))
                                    (:shape-name "RDSMetadata"))

(smithy/sdk/shapes:define-type rdsselect-sql-query
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure realtime-endpoint-info common-lisp:nil
                                    ((peak-requests-per-second :target-type
                                      integer-type :member-name
                                      "PeakRequestsPerSecond")
                                     (created-at :target-type epoch-time
                                      :member-name "CreatedAt")
                                     (endpoint-url :target-type vip-url
                                      :member-name "EndpointUrl")
                                     (endpoint-status :target-type
                                      realtime-endpoint-status :member-name
                                      "EndpointStatus"))
                                    (:shape-name "RealtimeEndpointInfo"))

(smithy/sdk/shapes:define-enum realtime-endpoint-status
    common-lisp:nil
  (:none "NONE")
  (:ready "READY")
  (:updating "UPDATING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type recipe smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map record :key variable-name :value variable-value)

(smithy/sdk/shapes:define-type redshift-cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-data-spec common-lisp:nil
                                    ((database-information :target-type
                                      redshift-database :required common-lisp:t
                                      :member-name "DatabaseInformation")
                                     (select-sql-query :target-type
                                      redshift-select-sql-query :required
                                      common-lisp:t :member-name
                                      "SelectSqlQuery")
                                     (database-credentials :target-type
                                      redshift-database-credentials :required
                                      common-lisp:t :member-name
                                      "DatabaseCredentials")
                                     (s3staging-location :target-type s3url
                                      :required common-lisp:t :member-name
                                      "S3StagingLocation")
                                     (data-rearrangement :target-type
                                      data-rearrangement :member-name
                                      "DataRearrangement")
                                     (data-schema :target-type data-schema
                                      :member-name "DataSchema")
                                     (data-schema-uri :target-type s3url
                                      :member-name "DataSchemaUri"))
                                    (:shape-name "RedshiftDataSpec"))

(smithy/sdk/shapes:define-structure redshift-database common-lisp:nil
                                    ((database-name :target-type
                                      redshift-database-name :required
                                      common-lisp:t :member-name
                                      "DatabaseName")
                                     (cluster-identifier :target-type
                                      redshift-cluster-identifier :required
                                      common-lisp:t :member-name
                                      "ClusterIdentifier"))
                                    (:shape-name "RedshiftDatabase"))

(smithy/sdk/shapes:define-structure redshift-database-credentials
                                    common-lisp:nil
                                    ((username :target-type
                                      redshift-database-username :required
                                      common-lisp:t :member-name "Username")
                                     (password :target-type
                                      redshift-database-password :required
                                      common-lisp:t :member-name "Password"))
                                    (:shape-name "RedshiftDatabaseCredentials"))

(smithy/sdk/shapes:define-type redshift-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redshift-database-password
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redshift-database-username
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-metadata common-lisp:nil
                                    ((redshift-database :target-type
                                      redshift-database :member-name
                                      "RedshiftDatabase")
                                     (database-user-name :target-type
                                      redshift-database-username :member-name
                                      "DatabaseUserName")
                                     (select-sql-query :target-type
                                      redshift-select-sql-query :member-name
                                      "SelectSqlQuery"))
                                    (:shape-name "RedshiftMetadata"))

(smithy/sdk/shapes:define-type redshift-select-sql-query
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3data-spec common-lisp:nil
                                    ((data-location-s3 :target-type s3url
                                      :required common-lisp:t :member-name
                                      "DataLocationS3")
                                     (data-rearrangement :target-type
                                      data-rearrangement :member-name
                                      "DataRearrangement")
                                     (data-schema :target-type data-schema
                                      :member-name "DataSchema")
                                     (data-schema-location-s3 :target-type
                                      s3url :member-name
                                      "DataSchemaLocationS3"))
                                    (:shape-name "S3DataSpec"))

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type score-threshold smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type score-value smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-map score-value-per-label-map :key label :value
                              score-value)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:asc "asc")
  (:dsc "dsc"))

(smithy/sdk/shapes:define-type string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-error tag-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TagLimitExceededException")
                                (:error-code 400)
                                (:base-class machine-learning-error))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum taggable-resource-type
    common-lisp:nil
  (:batch-prediction "BatchPrediction")
  (:datasource "DataSource")
  (:evaluation "Evaluation")
  (:ml-model "MLModel"))

(smithy/sdk/shapes:define-map training-parameters :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-input update-batch-prediction-input common-lisp:nil
                                ((batch-prediction-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "BatchPredictionId")
                                 (batch-prediction-name :target-type
                                  entity-name :required common-lisp:t
                                  :member-name "BatchPredictionName"))
                                (:shape-name "UpdateBatchPredictionInput"))

(smithy/sdk/shapes:define-output update-batch-prediction-output common-lisp:nil
                                 ((batch-prediction-id :target-type entity-id
                                   :member-name "BatchPredictionId"))
                                 (:shape-name "UpdateBatchPredictionOutput"))

(smithy/sdk/shapes:define-input update-data-source-input common-lisp:nil
                                ((data-source-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "DataSourceId")
                                 (data-source-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "DataSourceName"))
                                (:shape-name "UpdateDataSourceInput"))

(smithy/sdk/shapes:define-output update-data-source-output common-lisp:nil
                                 ((data-source-id :target-type entity-id
                                   :member-name "DataSourceId"))
                                 (:shape-name "UpdateDataSourceOutput"))

(smithy/sdk/shapes:define-input update-evaluation-input common-lisp:nil
                                ((evaluation-id :target-type entity-id
                                  :required common-lisp:t :member-name
                                  "EvaluationId")
                                 (evaluation-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "EvaluationName"))
                                (:shape-name "UpdateEvaluationInput"))

(smithy/sdk/shapes:define-output update-evaluation-output common-lisp:nil
                                 ((evaluation-id :target-type entity-id
                                   :member-name "EvaluationId"))
                                 (:shape-name "UpdateEvaluationOutput"))

(smithy/sdk/shapes:define-input update-mlmodel-input common-lisp:nil
                                ((mlmodel-id :target-type entity-id :required
                                  common-lisp:t :member-name "MLModelId")
                                 (mlmodel-name :target-type entity-name
                                  :member-name "MLModelName")
                                 (score-threshold :target-type score-threshold
                                  :member-name "ScoreThreshold"))
                                (:shape-name "UpdateMLModelInput"))

(smithy/sdk/shapes:define-output update-mlmodel-output common-lisp:nil
                                 ((mlmodel-id :target-type entity-id
                                   :member-name "MLModelId"))
                                 (:shape-name "UpdateMLModelOutput"))

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verbose smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type vip-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float-label smithy/sdk/smithy-types:float)

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-input :output add-tags-output
                                       :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        invalid-tag-exception
                                        resource-not-found-exception
                                        tag-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-batch-prediction :shape-name
                                       "CreateBatchPrediction" :input
                                       create-batch-prediction-input :output
                                       create-batch-prediction-output :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation create-data-source-from-rds :shape-name
                                       "CreateDataSourceFromRDS" :input
                                       create-data-source-from-rdsinput :output
                                       create-data-source-from-rdsoutput
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation create-data-source-from-redshift
                                       :shape-name
                                       "CreateDataSourceFromRedshift" :input
                                       create-data-source-from-redshift-input
                                       :output
                                       create-data-source-from-redshift-output
                                       :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation create-data-source-from-s3 :shape-name
                                       "CreateDataSourceFromS3" :input
                                       create-data-source-from-s3input :output
                                       create-data-source-from-s3output :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation create-evaluation :shape-name
                                       "CreateEvaluation" :input
                                       create-evaluation-input :output
                                       create-evaluation-output :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation create-mlmodel :shape-name
                                       "CreateMLModel" :input
                                       create-mlmodel-input :output
                                       create-mlmodel-output :errors
                                       (idempotent-parameter-mismatch-exception
                                        internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation create-realtime-endpoint :shape-name
                                       "CreateRealtimeEndpoint" :input
                                       create-realtime-endpoint-input :output
                                       create-realtime-endpoint-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-batch-prediction :shape-name
                                       "DeleteBatchPrediction" :input
                                       delete-batch-prediction-input :output
                                       delete-batch-prediction-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-data-source :shape-name
                                       "DeleteDataSource" :input
                                       delete-data-source-input :output
                                       delete-data-source-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-evaluation :shape-name
                                       "DeleteEvaluation" :input
                                       delete-evaluation-input :output
                                       delete-evaluation-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-mlmodel :shape-name
                                       "DeleteMLModel" :input
                                       delete-mlmodel-input :output
                                       delete-mlmodel-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-realtime-endpoint :shape-name
                                       "DeleteRealtimeEndpoint" :input
                                       delete-realtime-endpoint-input :output
                                       delete-realtime-endpoint-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-input :output
                                       delete-tags-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        invalid-tag-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-batch-predictions :shape-name
                                       "DescribeBatchPredictions" :input
                                       describe-batch-predictions-input :output
                                       describe-batch-predictions-output
                                       :errors
                                       (internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-data-sources :shape-name
                                       "DescribeDataSources" :input
                                       describe-data-sources-input :output
                                       describe-data-sources-output :errors
                                       (internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-evaluations :shape-name
                                       "DescribeEvaluations" :input
                                       describe-evaluations-input :output
                                       describe-evaluations-output :errors
                                       (internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-mlmodels :shape-name
                                       "DescribeMLModels" :input
                                       describe-mlmodels-input :output
                                       describe-mlmodels-output :errors
                                       (internal-server-exception
                                        invalid-input-exception))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-input :output
                                       describe-tags-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-batch-prediction :shape-name
                                       "GetBatchPrediction" :input
                                       get-batch-prediction-input :output
                                       get-batch-prediction-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-data-source :shape-name
                                       "GetDataSource" :input
                                       get-data-source-input :output
                                       get-data-source-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-evaluation :shape-name
                                       "GetEvaluation" :input
                                       get-evaluation-input :output
                                       get-evaluation-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-mlmodel :shape-name "GetMLModel"
                                       :input get-mlmodel-input :output
                                       get-mlmodel-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation predict :shape-name "Predict" :input
                                       predict-input :output predict-output
                                       :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        predictor-not-mounted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-batch-prediction :shape-name
                                       "UpdateBatchPrediction" :input
                                       update-batch-prediction-input :output
                                       update-batch-prediction-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-data-source :shape-name
                                       "UpdateDataSource" :input
                                       update-data-source-input :output
                                       update-data-source-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-evaluation :shape-name
                                       "UpdateEvaluation" :input
                                       update-evaluation-input :output
                                       update-evaluation-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-mlmodel :shape-name
                                       "UpdateMLModel" :input
                                       update-mlmodel-input :output
                                       update-mlmodel-output :errors
                                       (internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception))
