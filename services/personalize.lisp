(uiop/package:define-package #:pira/personalize (:use)
                             (:export #:account-id #:algorithm
                              #:algorithm-image #:amazon-personalize #:arn
                              #:arn-list #:auto-mlconfig #:auto-mlresult
                              #:auto-training-config #:avro-schema
                              #:batch-inference-job
                              #:batch-inference-job-config
                              #:batch-inference-job-input
                              #:batch-inference-job-mode
                              #:batch-inference-job-output
                              #:batch-inference-job-summary
                              #:batch-inference-jobs #:batch-segment-job
                              #:batch-segment-job-input
                              #:batch-segment-job-output
                              #:batch-segment-job-summary #:batch-segment-jobs
                              #:boolean #:campaign #:campaign-config
                              #:campaign-summary #:campaign-update-summary
                              #:campaigns #:categorical-hyper-parameter-range
                              #:categorical-hyper-parameter-ranges
                              #:categorical-value #:categorical-values
                              #:column-name #:column-names-list
                              #:continuous-hyper-parameter-range
                              #:continuous-hyper-parameter-ranges
                              #:continuous-max-value #:continuous-min-value
                              #:create-batch-inference-job
                              #:create-batch-segment-job #:create-campaign
                              #:create-data-deletion-job #:create-dataset
                              #:create-dataset-export-job
                              #:create-dataset-group
                              #:create-dataset-import-job
                              #:create-event-tracker #:create-filter
                              #:create-metric-attribution #:create-recommender
                              #:create-schema #:create-solution
                              #:create-solution-version #:data-deletion-job
                              #:data-deletion-job-summary #:data-deletion-jobs
                              #:data-source #:dataset #:dataset-export-job
                              #:dataset-export-job-output
                              #:dataset-export-job-summary
                              #:dataset-export-jobs #:dataset-group
                              #:dataset-group-summary #:dataset-groups
                              #:dataset-import-job #:dataset-import-job-summary
                              #:dataset-import-jobs #:dataset-schema
                              #:dataset-schema-summary #:dataset-summary
                              #:dataset-type #:dataset-update-summary
                              #:datasets #:date
                              #:default-categorical-hyper-parameter-range
                              #:default-categorical-hyper-parameter-ranges
                              #:default-continuous-hyper-parameter-range
                              #:default-continuous-hyper-parameter-ranges
                              #:default-hyper-parameter-ranges
                              #:default-integer-hyper-parameter-range
                              #:default-integer-hyper-parameter-ranges
                              #:delete-campaign #:delete-dataset
                              #:delete-dataset-group #:delete-event-tracker
                              #:delete-filter #:delete-metric-attribution
                              #:delete-recommender #:delete-schema
                              #:delete-solution #:describe-algorithm
                              #:describe-batch-inference-job
                              #:describe-batch-segment-job #:describe-campaign
                              #:describe-data-deletion-job #:describe-dataset
                              #:describe-dataset-export-job
                              #:describe-dataset-group
                              #:describe-dataset-import-job
                              #:describe-event-tracker
                              #:describe-feature-transformation
                              #:describe-filter #:describe-metric-attribution
                              #:describe-recipe #:describe-recommender
                              #:describe-schema #:describe-solution
                              #:describe-solution-version #:description
                              #:docker-uri #:domain #:error-message
                              #:event-parameters #:event-parameters-list
                              #:event-tracker #:event-tracker-summary
                              #:event-trackers #:event-type
                              #:event-type-threshold-value #:event-type-weight
                              #:event-value-threshold #:events-config
                              #:excluded-dataset-columns #:failure-reason
                              #:feature-transformation
                              #:feature-transformation-parameters
                              #:featurization-parameters
                              #:fields-for-theme-generation #:filter
                              #:filter-expression #:filter-summary #:filters
                              #:get-solution-metrics #:hpoconfig #:hpoobjective
                              #:hpoobjective-type #:hporesource
                              #:hporesource-config #:hyper-parameter-ranges
                              #:hyper-parameters #:import-mode #:ingestion-mode
                              #:integer #:integer-hyper-parameter-range
                              #:integer-hyper-parameter-ranges
                              #:integer-max-value #:integer-min-value
                              #:invalid-input-exception
                              #:invalid-next-token-exception #:item-attribute
                              #:kms-key-arn #:limit-exceeded-exception
                              #:list-batch-inference-jobs
                              #:list-batch-segment-jobs #:list-campaigns
                              #:list-data-deletion-jobs
                              #:list-dataset-export-jobs #:list-dataset-groups
                              #:list-dataset-import-jobs #:list-datasets
                              #:list-event-trackers #:list-filters
                              #:list-metric-attribution-metrics
                              #:list-metric-attributions #:list-recipes
                              #:list-recommenders #:list-schemas
                              #:list-solution-versions #:list-solutions
                              #:list-tags-for-resource #:max-results
                              #:metric-attribute #:metric-attributes
                              #:metric-attributes-names-list
                              #:metric-attribution #:metric-attribution-output
                              #:metric-attribution-summary
                              #:metric-attributions #:metric-expression
                              #:metric-name #:metric-regex #:metric-value
                              #:metrics #:name #:next-token #:num-batch-results
                              #:objective-sensitivity #:optimization-objective
                              #:parameter-name #:parameter-value
                              #:perform-auto-ml #:perform-auto-training
                              #:perform-hpo #:recipe #:recipe-provider
                              #:recipe-summary #:recipe-type #:recipes
                              #:recommender #:recommender-config
                              #:recommender-summary
                              #:recommender-update-summary #:recommenders
                              #:resource-already-exists-exception
                              #:resource-config #:resource-in-use-exception
                              #:resource-not-found-exception #:role-arn
                              #:s3data-config #:s3location
                              #:scheduling-expression #:schemas #:solution
                              #:solution-config #:solution-summary
                              #:solution-update-config
                              #:solution-update-summary #:solution-version
                              #:solution-version-summary #:solution-versions
                              #:solutions #:start-recommender #:status
                              #:stop-recommender
                              #:stop-solution-version-creation #:tag #:tag-key
                              #:tag-keys #:tag-resource #:tag-value #:tags
                              #:theme-generation-config
                              #:too-many-tag-keys-exception
                              #:too-many-tags-exception #:tracking-id
                              #:training-data-config #:training-hours
                              #:training-input-mode #:training-mode
                              #:training-type #:transactions-per-second
                              #:tunable #:tuned-hpoparams #:untag-resource
                              #:update-campaign #:update-dataset
                              #:update-metric-attribution #:update-recommender
                              #:update-solution #:personalize-error))
(common-lisp:in-package #:pira/personalize)

(common-lisp:define-condition personalize-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-personalize :shape-name
                                   "AmazonPersonalize" :version "2018-05-22"
                                   :title "Amazon Personalize" :operations
                                   '(create-batch-inference-job
                                     create-batch-segment-job create-campaign
                                     create-data-deletion-job create-dataset
                                     create-dataset-export-job
                                     create-dataset-group
                                     create-dataset-import-job
                                     create-event-tracker create-filter
                                     create-metric-attribution
                                     create-recommender create-schema
                                     create-solution create-solution-version
                                     delete-campaign delete-dataset
                                     delete-dataset-group delete-event-tracker
                                     delete-filter delete-metric-attribution
                                     delete-recommender delete-schema
                                     delete-solution describe-algorithm
                                     describe-batch-inference-job
                                     describe-batch-segment-job
                                     describe-campaign
                                     describe-data-deletion-job
                                     describe-dataset
                                     describe-dataset-export-job
                                     describe-dataset-group
                                     describe-dataset-import-job
                                     describe-event-tracker
                                     describe-feature-transformation
                                     describe-filter
                                     describe-metric-attribution
                                     describe-recipe describe-recommender
                                     describe-schema describe-solution
                                     describe-solution-version
                                     get-solution-metrics
                                     list-batch-inference-jobs
                                     list-batch-segment-jobs list-campaigns
                                     list-data-deletion-jobs
                                     list-dataset-export-jobs
                                     list-dataset-groups
                                     list-dataset-import-jobs list-datasets
                                     list-event-trackers list-filters
                                     list-metric-attribution-metrics
                                     list-metric-attributions list-recipes
                                     list-recommenders list-schemas
                                     list-solutions list-solution-versions
                                     list-tags-for-resource start-recommender
                                     stop-recommender
                                     stop-solution-version-creation
                                     tag-resource untag-resource
                                     update-campaign update-dataset
                                     update-metric-attribution
                                     update-recommender update-solution)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Personalize")
                                      ("arnNamespace" . "personalize")
                                      ("cloudFormationName" . "Personalize")
                                      ("cloudTrailEventSource"
                                       . "personalize.amazonaws.com")
                                      ("endpointPrefix" . "personalize"))
                                     ("aws.auth#sigv4"
                                      ("name" . "personalize"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure algorithm common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (algorithm-arn :target-type arn
                                      :member-name "algorithmArn")
                                     (algorithm-image :target-type
                                      algorithm-image :member-name
                                      "algorithmImage")
                                     (default-hyper-parameters :target-type
                                      hyper-parameters :member-name
                                      "defaultHyperParameters")
                                     (default-hyper-parameter-ranges
                                      :target-type
                                      default-hyper-parameter-ranges
                                      :member-name
                                      "defaultHyperParameterRanges")
                                     (default-resource-config :target-type
                                      resource-config :member-name
                                      "defaultResourceConfig")
                                     (training-input-mode :target-type
                                      training-input-mode :member-name
                                      "trainingInputMode")
                                     (role-arn :target-type arn :member-name
                                      "roleArn")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "Algorithm"))

(smithy/sdk/shapes:define-structure algorithm-image common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (docker-uri :target-type docker-uri
                                      :required common-lisp:t :member-name
                                      "dockerURI"))
                                    (:shape-name "AlgorithmImage"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-structure auto-mlconfig common-lisp:nil
                                    ((metric-name :target-type metric-name
                                      :member-name "metricName")
                                     (recipe-list :target-type arn-list
                                      :member-name "recipeList"))
                                    (:shape-name "AutoMLConfig"))

(smithy/sdk/shapes:define-structure auto-mlresult common-lisp:nil
                                    ((best-recipe-arn :target-type arn
                                      :member-name "bestRecipeArn"))
                                    (:shape-name "AutoMLResult"))

(smithy/sdk/shapes:define-structure auto-training-config common-lisp:nil
                                    ((scheduling-expression :target-type
                                      scheduling-expression :member-name
                                      "schedulingExpression"))
                                    (:shape-name "AutoTrainingConfig"))

(smithy/sdk/shapes:define-type avro-schema smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-inference-job common-lisp:nil
                                    ((job-name :target-type name :member-name
                                      "jobName")
                                     (batch-inference-job-arn :target-type arn
                                      :member-name "batchInferenceJobArn")
                                     (filter-arn :target-type arn :member-name
                                      "filterArn")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (num-results :target-type
                                      num-batch-results :member-name
                                      "numResults")
                                     (job-input :target-type
                                      batch-inference-job-input :member-name
                                      "jobInput")
                                     (job-output :target-type
                                      batch-inference-job-output :member-name
                                      "jobOutput")
                                     (batch-inference-job-config :target-type
                                      batch-inference-job-config :member-name
                                      "batchInferenceJobConfig")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (batch-inference-job-mode :target-type
                                      batch-inference-job-mode :member-name
                                      "batchInferenceJobMode")
                                     (theme-generation-config :target-type
                                      theme-generation-config :member-name
                                      "themeGenerationConfig")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "BatchInferenceJob"))

(smithy/sdk/shapes:define-structure batch-inference-job-config common-lisp:nil
                                    ((item-exploration-config :target-type
                                      hyper-parameters :member-name
                                      "itemExplorationConfig"))
                                    (:shape-name "BatchInferenceJobConfig"))

(smithy/sdk/shapes:define-structure batch-inference-job-input common-lisp:nil
                                    ((s3data-source :target-type s3data-config
                                      :required common-lisp:t :member-name
                                      "s3DataSource"))
                                    (:shape-name "BatchInferenceJobInput"))

(smithy/sdk/shapes:define-enum batch-inference-job-mode
    common-lisp:nil
  (:batch-inference "BATCH_INFERENCE")
  (:theme-generation "THEME_GENERATION"))

(smithy/sdk/shapes:define-structure batch-inference-job-output common-lisp:nil
                                    ((s3data-destination :target-type
                                      s3data-config :required common-lisp:t
                                      :member-name "s3DataDestination"))
                                    (:shape-name "BatchInferenceJobOutput"))

(smithy/sdk/shapes:define-structure batch-inference-job-summary common-lisp:nil
                                    ((batch-inference-job-arn :target-type arn
                                      :member-name "batchInferenceJobArn")
                                     (job-name :target-type name :member-name
                                      "jobName")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (batch-inference-job-mode :target-type
                                      batch-inference-job-mode :member-name
                                      "batchInferenceJobMode"))
                                    (:shape-name "BatchInferenceJobSummary"))

(smithy/sdk/shapes:define-list batch-inference-jobs :member
                               batch-inference-job-summary)

(smithy/sdk/shapes:define-structure batch-segment-job common-lisp:nil
                                    ((job-name :target-type name :member-name
                                      "jobName")
                                     (batch-segment-job-arn :target-type arn
                                      :member-name "batchSegmentJobArn")
                                     (filter-arn :target-type arn :member-name
                                      "filterArn")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (num-results :target-type
                                      num-batch-results :member-name
                                      "numResults")
                                     (job-input :target-type
                                      batch-segment-job-input :member-name
                                      "jobInput")
                                     (job-output :target-type
                                      batch-segment-job-output :member-name
                                      "jobOutput")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "BatchSegmentJob"))

(smithy/sdk/shapes:define-structure batch-segment-job-input common-lisp:nil
                                    ((s3data-source :target-type s3data-config
                                      :required common-lisp:t :member-name
                                      "s3DataSource"))
                                    (:shape-name "BatchSegmentJobInput"))

(smithy/sdk/shapes:define-structure batch-segment-job-output common-lisp:nil
                                    ((s3data-destination :target-type
                                      s3data-config :required common-lisp:t
                                      :member-name "s3DataDestination"))
                                    (:shape-name "BatchSegmentJobOutput"))

(smithy/sdk/shapes:define-structure batch-segment-job-summary common-lisp:nil
                                    ((batch-segment-job-arn :target-type arn
                                      :member-name "batchSegmentJobArn")
                                     (job-name :target-type name :member-name
                                      "jobName")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn"))
                                    (:shape-name "BatchSegmentJobSummary"))

(smithy/sdk/shapes:define-list batch-segment-jobs :member
                               batch-segment-job-summary)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure campaign common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (campaign-arn :target-type arn
                                      :member-name "campaignArn")
                                     (solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (min-provisioned-tps :target-type
                                      transactions-per-second :member-name
                                      "minProvisionedTPS")
                                     (campaign-config :target-type
                                      campaign-config :member-name
                                      "campaignConfig")
                                     (status :target-type status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (latest-campaign-update :target-type
                                      campaign-update-summary :member-name
                                      "latestCampaignUpdate"))
                                    (:shape-name "Campaign"))

(smithy/sdk/shapes:define-structure campaign-config common-lisp:nil
                                    ((item-exploration-config :target-type
                                      hyper-parameters :member-name
                                      "itemExplorationConfig")
                                     (enable-metadata-with-recommendations
                                      :target-type boolean :member-name
                                      "enableMetadataWithRecommendations")
                                     (sync-with-latest-solution-version
                                      :target-type boolean :member-name
                                      "syncWithLatestSolutionVersion"))
                                    (:shape-name "CampaignConfig"))

(smithy/sdk/shapes:define-structure campaign-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (campaign-arn :target-type arn
                                      :member-name "campaignArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "CampaignSummary"))

(smithy/sdk/shapes:define-structure campaign-update-summary common-lisp:nil
                                    ((solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (min-provisioned-tps :target-type
                                      transactions-per-second :member-name
                                      "minProvisionedTPS")
                                     (campaign-config :target-type
                                      campaign-config :member-name
                                      "campaignConfig")
                                     (status :target-type status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "CampaignUpdateSummary"))

(smithy/sdk/shapes:define-list campaigns :member campaign-summary)

(smithy/sdk/shapes:define-structure categorical-hyper-parameter-range
                                    common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (values :target-type categorical-values
                                      :member-name "values"))
                                    (:shape-name
                                     "CategoricalHyperParameterRange"))

(smithy/sdk/shapes:define-list categorical-hyper-parameter-ranges :member
                               categorical-hyper-parameter-range)

(smithy/sdk/shapes:define-type categorical-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list categorical-values :member categorical-value)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list column-names-list :member column-name)

(smithy/sdk/shapes:define-structure continuous-hyper-parameter-range
                                    common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (min-value :target-type
                                      continuous-min-value :member-name
                                      "minValue")
                                     (max-value :target-type
                                      continuous-max-value :member-name
                                      "maxValue"))
                                    (:shape-name
                                     "ContinuousHyperParameterRange"))

(smithy/sdk/shapes:define-list continuous-hyper-parameter-ranges :member
                               continuous-hyper-parameter-range)

(smithy/sdk/shapes:define-type continuous-max-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type continuous-min-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input create-batch-inference-job-request
                                common-lisp:nil
                                ((job-name :target-type name :required
                                  common-lisp:t :member-name "jobName")
                                 (solution-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "solutionVersionArn")
                                 (filter-arn :target-type arn :member-name
                                  "filterArn")
                                 (num-results :target-type num-batch-results
                                  :member-name "numResults")
                                 (job-input :target-type
                                  batch-inference-job-input :required
                                  common-lisp:t :member-name "jobInput")
                                 (job-output :target-type
                                  batch-inference-job-output :required
                                  common-lisp:t :member-name "jobOutput")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (batch-inference-job-config :target-type
                                  batch-inference-job-config :member-name
                                  "batchInferenceJobConfig")
                                 (tags :target-type tags :member-name "tags")
                                 (batch-inference-job-mode :target-type
                                  batch-inference-job-mode :member-name
                                  "batchInferenceJobMode")
                                 (theme-generation-config :target-type
                                  theme-generation-config :member-name
                                  "themeGenerationConfig"))
                                (:shape-name "CreateBatchInferenceJobRequest"))

(smithy/sdk/shapes:define-output create-batch-inference-job-response
                                 common-lisp:nil
                                 ((batch-inference-job-arn :target-type arn
                                   :member-name "batchInferenceJobArn"))
                                 (:shape-name
                                  "CreateBatchInferenceJobResponse"))

(smithy/sdk/shapes:define-input create-batch-segment-job-request
                                common-lisp:nil
                                ((job-name :target-type name :required
                                  common-lisp:t :member-name "jobName")
                                 (solution-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "solutionVersionArn")
                                 (filter-arn :target-type arn :member-name
                                  "filterArn")
                                 (num-results :target-type num-batch-results
                                  :member-name "numResults")
                                 (job-input :target-type
                                  batch-segment-job-input :required
                                  common-lisp:t :member-name "jobInput")
                                 (job-output :target-type
                                  batch-segment-job-output :required
                                  common-lisp:t :member-name "jobOutput")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateBatchSegmentJobRequest"))

(smithy/sdk/shapes:define-output create-batch-segment-job-response
                                 common-lisp:nil
                                 ((batch-segment-job-arn :target-type arn
                                   :member-name "batchSegmentJobArn"))
                                 (:shape-name "CreateBatchSegmentJobResponse"))

(smithy/sdk/shapes:define-input create-campaign-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (solution-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "solutionVersionArn")
                                 (min-provisioned-tps :target-type
                                  transactions-per-second :member-name
                                  "minProvisionedTPS")
                                 (campaign-config :target-type campaign-config
                                  :member-name "campaignConfig")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateCampaignRequest"))

(smithy/sdk/shapes:define-output create-campaign-response common-lisp:nil
                                 ((campaign-arn :target-type arn :member-name
                                   "campaignArn"))
                                 (:shape-name "CreateCampaignResponse"))

(smithy/sdk/shapes:define-input create-data-deletion-job-request
                                common-lisp:nil
                                ((job-name :target-type name :required
                                  common-lisp:t :member-name "jobName")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (data-source :target-type data-source
                                  :required common-lisp:t :member-name
                                  "dataSource")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDataDeletionJobRequest"))

(smithy/sdk/shapes:define-output create-data-deletion-job-response
                                 common-lisp:nil
                                 ((data-deletion-job-arn :target-type arn
                                   :member-name "dataDeletionJobArn"))
                                 (:shape-name "CreateDataDeletionJobResponse"))

(smithy/sdk/shapes:define-input create-dataset-export-job-request
                                common-lisp:nil
                                ((job-name :target-type name :required
                                  common-lisp:t :member-name "jobName")
                                 (dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn")
                                 (ingestion-mode :target-type ingestion-mode
                                  :member-name "ingestionMode")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (job-output :target-type
                                  dataset-export-job-output :required
                                  common-lisp:t :member-name "jobOutput")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDatasetExportJobRequest"))

(smithy/sdk/shapes:define-output create-dataset-export-job-response
                                 common-lisp:nil
                                 ((dataset-export-job-arn :target-type arn
                                   :member-name "datasetExportJobArn"))
                                 (:shape-name "CreateDatasetExportJobResponse"))

(smithy/sdk/shapes:define-input create-dataset-group-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (domain :target-type domain :member-name
                                  "domain")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDatasetGroupRequest"))

(smithy/sdk/shapes:define-output create-dataset-group-response common-lisp:nil
                                 ((dataset-group-arn :target-type arn
                                   :member-name "datasetGroupArn")
                                  (domain :target-type domain :member-name
                                   "domain"))
                                 (:shape-name "CreateDatasetGroupResponse"))

(smithy/sdk/shapes:define-input create-dataset-import-job-request
                                common-lisp:nil
                                ((job-name :target-type name :required
                                  common-lisp:t :member-name "jobName")
                                 (dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn")
                                 (data-source :target-type data-source
                                  :required common-lisp:t :member-name
                                  "dataSource")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tags :member-name "tags")
                                 (import-mode :target-type import-mode
                                  :member-name "importMode")
                                 (publish-attribution-metrics-to-s3
                                  :target-type boolean :member-name
                                  "publishAttributionMetricsToS3"))
                                (:shape-name "CreateDatasetImportJobRequest"))

(smithy/sdk/shapes:define-output create-dataset-import-job-response
                                 common-lisp:nil
                                 ((dataset-import-job-arn :target-type arn
                                   :member-name "datasetImportJobArn"))
                                 (:shape-name "CreateDatasetImportJobResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (schema-arn :target-type arn :required
                                  common-lisp:t :member-name "schemaArn")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "datasetType")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-arn :target-type arn :member-name
                                   "datasetArn"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-event-tracker-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateEventTrackerRequest"))

(smithy/sdk/shapes:define-output create-event-tracker-response common-lisp:nil
                                 ((event-tracker-arn :target-type arn
                                   :member-name "eventTrackerArn")
                                  (tracking-id :target-type tracking-id
                                   :member-name "trackingId"))
                                 (:shape-name "CreateEventTrackerResponse"))

(smithy/sdk/shapes:define-input create-filter-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (filter-expression :target-type
                                  filter-expression :required common-lisp:t
                                  :member-name "filterExpression")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateFilterRequest"))

(smithy/sdk/shapes:define-output create-filter-response common-lisp:nil
                                 ((filter-arn :target-type arn :member-name
                                   "filterArn"))
                                 (:shape-name "CreateFilterResponse"))

(smithy/sdk/shapes:define-input create-metric-attribution-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (metrics :target-type metric-attributes
                                  :required common-lisp:t :member-name
                                  "metrics")
                                 (metrics-output-config :target-type
                                  metric-attribution-output :required
                                  common-lisp:t :member-name
                                  "metricsOutputConfig"))
                                (:shape-name "CreateMetricAttributionRequest"))

(smithy/sdk/shapes:define-output create-metric-attribution-response
                                 common-lisp:nil
                                 ((metric-attribution-arn :target-type arn
                                   :member-name "metricAttributionArn"))
                                 (:shape-name
                                  "CreateMetricAttributionResponse"))

(smithy/sdk/shapes:define-input create-recommender-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (recipe-arn :target-type arn :required
                                  common-lisp:t :member-name "recipeArn")
                                 (recommender-config :target-type
                                  recommender-config :member-name
                                  "recommenderConfig")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateRecommenderRequest"))

(smithy/sdk/shapes:define-output create-recommender-response common-lisp:nil
                                 ((recommender-arn :target-type arn
                                   :member-name "recommenderArn"))
                                 (:shape-name "CreateRecommenderResponse"))

(smithy/sdk/shapes:define-input create-schema-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (schema :target-type avro-schema :required
                                  common-lisp:t :member-name "schema")
                                 (domain :target-type domain :member-name
                                  "domain"))
                                (:shape-name "CreateSchemaRequest"))

(smithy/sdk/shapes:define-output create-schema-response common-lisp:nil
                                 ((schema-arn :target-type arn :member-name
                                   "schemaArn"))
                                 (:shape-name "CreateSchemaResponse"))

(smithy/sdk/shapes:define-input create-solution-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (perform-hpo :target-type boolean :member-name
                                  "performHPO")
                                 (perform-auto-ml :target-type perform-auto-ml
                                  :member-name "performAutoML")
                                 (perform-auto-training :target-type
                                  perform-auto-training :member-name
                                  "performAutoTraining")
                                 (recipe-arn :target-type arn :member-name
                                  "recipeArn")
                                 (dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetGroupArn")
                                 (event-type :target-type event-type
                                  :member-name "eventType")
                                 (solution-config :target-type solution-config
                                  :member-name "solutionConfig")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateSolutionRequest"))

(smithy/sdk/shapes:define-output create-solution-response common-lisp:nil
                                 ((solution-arn :target-type arn :member-name
                                   "solutionArn"))
                                 (:shape-name "CreateSolutionResponse"))

(smithy/sdk/shapes:define-input create-solution-version-request common-lisp:nil
                                ((name :target-type name :member-name "name")
                                 (solution-arn :target-type arn :required
                                  common-lisp:t :member-name "solutionArn")
                                 (training-mode :target-type training-mode
                                  :member-name "trainingMode")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateSolutionVersionRequest"))

(smithy/sdk/shapes:define-output create-solution-version-response
                                 common-lisp:nil
                                 ((solution-version-arn :target-type arn
                                   :member-name "solutionVersionArn"))
                                 (:shape-name "CreateSolutionVersionResponse"))

(smithy/sdk/shapes:define-structure data-deletion-job common-lisp:nil
                                    ((job-name :target-type name :member-name
                                      "jobName")
                                     (data-deletion-job-arn :target-type arn
                                      :member-name "dataDeletionJobArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (data-source :target-type data-source
                                      :member-name "dataSource")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (num-deleted :target-type integer
                                      :member-name "numDeleted")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "DataDeletionJob"))

(smithy/sdk/shapes:define-structure data-deletion-job-summary common-lisp:nil
                                    ((data-deletion-job-arn :target-type arn
                                      :member-name "dataDeletionJobArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (job-name :target-type name :member-name
                                      "jobName")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "DataDeletionJobSummary"))

(smithy/sdk/shapes:define-list data-deletion-jobs :member
                               data-deletion-job-summary)

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((data-location :target-type s3location
                                      :member-name "dataLocation"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-structure dataset common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (dataset-arn :target-type arn :member-name
                                      "datasetArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (dataset-type :target-type dataset-type
                                      :member-name "datasetType")
                                     (schema-arn :target-type arn :member-name
                                      "schemaArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (latest-dataset-update :target-type
                                      dataset-update-summary :member-name
                                      "latestDatasetUpdate")
                                     (tracking-id :target-type tracking-id
                                      :member-name "trackingId"))
                                    (:shape-name "Dataset"))

(smithy/sdk/shapes:define-structure dataset-export-job common-lisp:nil
                                    ((job-name :target-type name :member-name
                                      "jobName")
                                     (dataset-export-job-arn :target-type arn
                                      :member-name "datasetExportJobArn")
                                     (dataset-arn :target-type arn :member-name
                                      "datasetArn")
                                     (ingestion-mode :target-type
                                      ingestion-mode :member-name
                                      "ingestionMode")
                                     (role-arn :target-type arn :member-name
                                      "roleArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (job-output :target-type
                                      dataset-export-job-output :member-name
                                      "jobOutput")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "DatasetExportJob"))

(smithy/sdk/shapes:define-structure dataset-export-job-output common-lisp:nil
                                    ((s3data-destination :target-type
                                      s3data-config :required common-lisp:t
                                      :member-name "s3DataDestination"))
                                    (:shape-name "DatasetExportJobOutput"))

(smithy/sdk/shapes:define-structure dataset-export-job-summary common-lisp:nil
                                    ((dataset-export-job-arn :target-type arn
                                      :member-name "datasetExportJobArn")
                                     (job-name :target-type name :member-name
                                      "jobName")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "DatasetExportJobSummary"))

(smithy/sdk/shapes:define-list dataset-export-jobs :member
                               dataset-export-job-summary)

(smithy/sdk/shapes:define-structure dataset-group common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (domain :target-type domain :member-name
                                      "domain"))
                                    (:shape-name "DatasetGroup"))

(smithy/sdk/shapes:define-structure dataset-group-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (domain :target-type domain :member-name
                                      "domain"))
                                    (:shape-name "DatasetGroupSummary"))

(smithy/sdk/shapes:define-list dataset-groups :member dataset-group-summary)

(smithy/sdk/shapes:define-structure dataset-import-job common-lisp:nil
                                    ((job-name :target-type name :member-name
                                      "jobName")
                                     (dataset-import-job-arn :target-type arn
                                      :member-name "datasetImportJobArn")
                                     (dataset-arn :target-type arn :member-name
                                      "datasetArn")
                                     (data-source :target-type data-source
                                      :member-name "dataSource")
                                     (role-arn :target-type arn :member-name
                                      "roleArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (import-mode :target-type import-mode
                                      :member-name "importMode")
                                     (publish-attribution-metrics-to-s3
                                      :target-type boolean :member-name
                                      "publishAttributionMetricsToS3"))
                                    (:shape-name "DatasetImportJob"))

(smithy/sdk/shapes:define-structure dataset-import-job-summary common-lisp:nil
                                    ((dataset-import-job-arn :target-type arn
                                      :member-name "datasetImportJobArn")
                                     (job-name :target-type name :member-name
                                      "jobName")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (import-mode :target-type import-mode
                                      :member-name "importMode"))
                                    (:shape-name "DatasetImportJobSummary"))

(smithy/sdk/shapes:define-list dataset-import-jobs :member
                               dataset-import-job-summary)

(smithy/sdk/shapes:define-structure dataset-schema common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (schema-arn :target-type arn :member-name
                                      "schemaArn")
                                     (schema :target-type avro-schema
                                      :member-name "schema")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (domain :target-type domain :member-name
                                      "domain"))
                                    (:shape-name "DatasetSchema"))

(smithy/sdk/shapes:define-structure dataset-schema-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (schema-arn :target-type arn :member-name
                                      "schemaArn")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (domain :target-type domain :member-name
                                      "domain"))
                                    (:shape-name "DatasetSchemaSummary"))

(smithy/sdk/shapes:define-structure dataset-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (dataset-arn :target-type arn :member-name
                                      "datasetArn")
                                     (dataset-type :target-type dataset-type
                                      :member-name "datasetType")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "DatasetSummary"))

(smithy/sdk/shapes:define-type dataset-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-update-summary common-lisp:nil
                                    ((schema-arn :target-type arn :member-name
                                      "schemaArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "DatasetUpdateSummary"))

(smithy/sdk/shapes:define-list datasets :member dataset-summary)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure default-categorical-hyper-parameter-range
                                    common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (values :target-type categorical-values
                                      :member-name "values")
                                     (is-tunable :target-type tunable
                                      :member-name "isTunable"))
                                    (:shape-name
                                     "DefaultCategoricalHyperParameterRange"))

(smithy/sdk/shapes:define-list default-categorical-hyper-parameter-ranges
                               :member
                               default-categorical-hyper-parameter-range)

(smithy/sdk/shapes:define-structure default-continuous-hyper-parameter-range
                                    common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (min-value :target-type
                                      continuous-min-value :member-name
                                      "minValue")
                                     (max-value :target-type
                                      continuous-max-value :member-name
                                      "maxValue")
                                     (is-tunable :target-type tunable
                                      :member-name "isTunable"))
                                    (:shape-name
                                     "DefaultContinuousHyperParameterRange"))

(smithy/sdk/shapes:define-list default-continuous-hyper-parameter-ranges
                               :member default-continuous-hyper-parameter-range)

(smithy/sdk/shapes:define-structure default-hyper-parameter-ranges
                                    common-lisp:nil
                                    ((integer-hyper-parameter-ranges
                                      :target-type
                                      default-integer-hyper-parameter-ranges
                                      :member-name
                                      "integerHyperParameterRanges")
                                     (continuous-hyper-parameter-ranges
                                      :target-type
                                      default-continuous-hyper-parameter-ranges
                                      :member-name
                                      "continuousHyperParameterRanges")
                                     (categorical-hyper-parameter-ranges
                                      :target-type
                                      default-categorical-hyper-parameter-ranges
                                      :member-name
                                      "categoricalHyperParameterRanges"))
                                    (:shape-name "DefaultHyperParameterRanges"))

(smithy/sdk/shapes:define-structure default-integer-hyper-parameter-range
                                    common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (min-value :target-type integer-min-value
                                      :member-name "minValue")
                                     (max-value :target-type integer-max-value
                                      :member-name "maxValue")
                                     (is-tunable :target-type tunable
                                      :member-name "isTunable"))
                                    (:shape-name
                                     "DefaultIntegerHyperParameterRange"))

(smithy/sdk/shapes:define-list default-integer-hyper-parameter-ranges :member
                               default-integer-hyper-parameter-range)

(smithy/sdk/shapes:define-input delete-campaign-request common-lisp:nil
                                ((campaign-arn :target-type arn :required
                                  common-lisp:t :member-name "campaignArn"))
                                (:shape-name "DeleteCampaignRequest"))

(smithy/sdk/shapes:define-input delete-dataset-group-request common-lisp:nil
                                ((dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "datasetGroupArn"))
                                (:shape-name "DeleteDatasetGroupRequest"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn"))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-input delete-event-tracker-request common-lisp:nil
                                ((event-tracker-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "eventTrackerArn"))
                                (:shape-name "DeleteEventTrackerRequest"))

(smithy/sdk/shapes:define-input delete-filter-request common-lisp:nil
                                ((filter-arn :target-type arn :required
                                  common-lisp:t :member-name "filterArn"))
                                (:shape-name "DeleteFilterRequest"))

(smithy/sdk/shapes:define-input delete-metric-attribution-request
                                common-lisp:nil
                                ((metric-attribution-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "metricAttributionArn"))
                                (:shape-name "DeleteMetricAttributionRequest"))

(smithy/sdk/shapes:define-input delete-recommender-request common-lisp:nil
                                ((recommender-arn :target-type arn :required
                                  common-lisp:t :member-name "recommenderArn"))
                                (:shape-name "DeleteRecommenderRequest"))

(smithy/sdk/shapes:define-input delete-schema-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "schemaArn"))
                                (:shape-name "DeleteSchemaRequest"))

(smithy/sdk/shapes:define-input delete-solution-request common-lisp:nil
                                ((solution-arn :target-type arn :required
                                  common-lisp:t :member-name "solutionArn"))
                                (:shape-name "DeleteSolutionRequest"))

(smithy/sdk/shapes:define-input describe-algorithm-request common-lisp:nil
                                ((algorithm-arn :target-type arn :required
                                  common-lisp:t :member-name "algorithmArn"))
                                (:shape-name "DescribeAlgorithmRequest"))

(smithy/sdk/shapes:define-output describe-algorithm-response common-lisp:nil
                                 ((algorithm :target-type algorithm
                                   :member-name "algorithm"))
                                 (:shape-name "DescribeAlgorithmResponse"))

(smithy/sdk/shapes:define-input describe-batch-inference-job-request
                                common-lisp:nil
                                ((batch-inference-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "batchInferenceJobArn"))
                                (:shape-name
                                 "DescribeBatchInferenceJobRequest"))

(smithy/sdk/shapes:define-output describe-batch-inference-job-response
                                 common-lisp:nil
                                 ((batch-inference-job :target-type
                                   batch-inference-job :member-name
                                   "batchInferenceJob"))
                                 (:shape-name
                                  "DescribeBatchInferenceJobResponse"))

(smithy/sdk/shapes:define-input describe-batch-segment-job-request
                                common-lisp:nil
                                ((batch-segment-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "batchSegmentJobArn"))
                                (:shape-name "DescribeBatchSegmentJobRequest"))

(smithy/sdk/shapes:define-output describe-batch-segment-job-response
                                 common-lisp:nil
                                 ((batch-segment-job :target-type
                                   batch-segment-job :member-name
                                   "batchSegmentJob"))
                                 (:shape-name
                                  "DescribeBatchSegmentJobResponse"))

(smithy/sdk/shapes:define-input describe-campaign-request common-lisp:nil
                                ((campaign-arn :target-type arn :required
                                  common-lisp:t :member-name "campaignArn"))
                                (:shape-name "DescribeCampaignRequest"))

(smithy/sdk/shapes:define-output describe-campaign-response common-lisp:nil
                                 ((campaign :target-type campaign :member-name
                                   "campaign"))
                                 (:shape-name "DescribeCampaignResponse"))

(smithy/sdk/shapes:define-input describe-data-deletion-job-request
                                common-lisp:nil
                                ((data-deletion-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "dataDeletionJobArn"))
                                (:shape-name "DescribeDataDeletionJobRequest"))

(smithy/sdk/shapes:define-output describe-data-deletion-job-response
                                 common-lisp:nil
                                 ((data-deletion-job :target-type
                                   data-deletion-job :member-name
                                   "dataDeletionJob"))
                                 (:shape-name
                                  "DescribeDataDeletionJobResponse"))

(smithy/sdk/shapes:define-input describe-dataset-export-job-request
                                common-lisp:nil
                                ((dataset-export-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "datasetExportJobArn"))
                                (:shape-name "DescribeDatasetExportJobRequest"))

(smithy/sdk/shapes:define-output describe-dataset-export-job-response
                                 common-lisp:nil
                                 ((dataset-export-job :target-type
                                   dataset-export-job :member-name
                                   "datasetExportJob"))
                                 (:shape-name
                                  "DescribeDatasetExportJobResponse"))

(smithy/sdk/shapes:define-input describe-dataset-group-request common-lisp:nil
                                ((dataset-group-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "datasetGroupArn"))
                                (:shape-name "DescribeDatasetGroupRequest"))

(smithy/sdk/shapes:define-output describe-dataset-group-response
                                 common-lisp:nil
                                 ((dataset-group :target-type dataset-group
                                   :member-name "datasetGroup"))
                                 (:shape-name "DescribeDatasetGroupResponse"))

(smithy/sdk/shapes:define-input describe-dataset-import-job-request
                                common-lisp:nil
                                ((dataset-import-job-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "datasetImportJobArn"))
                                (:shape-name "DescribeDatasetImportJobRequest"))

(smithy/sdk/shapes:define-output describe-dataset-import-job-response
                                 common-lisp:nil
                                 ((dataset-import-job :target-type
                                   dataset-import-job :member-name
                                   "datasetImportJob"))
                                 (:shape-name
                                  "DescribeDatasetImportJobResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn"))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset :target-type dataset :member-name
                                   "dataset"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-event-tracker-request common-lisp:nil
                                ((event-tracker-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "eventTrackerArn"))
                                (:shape-name "DescribeEventTrackerRequest"))

(smithy/sdk/shapes:define-output describe-event-tracker-response
                                 common-lisp:nil
                                 ((event-tracker :target-type event-tracker
                                   :member-name "eventTracker"))
                                 (:shape-name "DescribeEventTrackerResponse"))

(smithy/sdk/shapes:define-input describe-feature-transformation-request
                                common-lisp:nil
                                ((feature-transformation-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "featureTransformationArn"))
                                (:shape-name
                                 "DescribeFeatureTransformationRequest"))

(smithy/sdk/shapes:define-output describe-feature-transformation-response
                                 common-lisp:nil
                                 ((feature-transformation :target-type
                                   feature-transformation :member-name
                                   "featureTransformation"))
                                 (:shape-name
                                  "DescribeFeatureTransformationResponse"))

(smithy/sdk/shapes:define-input describe-filter-request common-lisp:nil
                                ((filter-arn :target-type arn :required
                                  common-lisp:t :member-name "filterArn"))
                                (:shape-name "DescribeFilterRequest"))

(smithy/sdk/shapes:define-output describe-filter-response common-lisp:nil
                                 ((filter :target-type filter :member-name
                                   "filter"))
                                 (:shape-name "DescribeFilterResponse"))

(smithy/sdk/shapes:define-input describe-metric-attribution-request
                                common-lisp:nil
                                ((metric-attribution-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "metricAttributionArn"))
                                (:shape-name
                                 "DescribeMetricAttributionRequest"))

(smithy/sdk/shapes:define-output describe-metric-attribution-response
                                 common-lisp:nil
                                 ((metric-attribution :target-type
                                   metric-attribution :member-name
                                   "metricAttribution"))
                                 (:shape-name
                                  "DescribeMetricAttributionResponse"))

(smithy/sdk/shapes:define-input describe-recipe-request common-lisp:nil
                                ((recipe-arn :target-type arn :required
                                  common-lisp:t :member-name "recipeArn"))
                                (:shape-name "DescribeRecipeRequest"))

(smithy/sdk/shapes:define-output describe-recipe-response common-lisp:nil
                                 ((recipe :target-type recipe :member-name
                                   "recipe"))
                                 (:shape-name "DescribeRecipeResponse"))

(smithy/sdk/shapes:define-input describe-recommender-request common-lisp:nil
                                ((recommender-arn :target-type arn :required
                                  common-lisp:t :member-name "recommenderArn"))
                                (:shape-name "DescribeRecommenderRequest"))

(smithy/sdk/shapes:define-output describe-recommender-response common-lisp:nil
                                 ((recommender :target-type recommender
                                   :member-name "recommender"))
                                 (:shape-name "DescribeRecommenderResponse"))

(smithy/sdk/shapes:define-input describe-schema-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "schemaArn"))
                                (:shape-name "DescribeSchemaRequest"))

(smithy/sdk/shapes:define-output describe-schema-response common-lisp:nil
                                 ((schema :target-type dataset-schema
                                   :member-name "schema"))
                                 (:shape-name "DescribeSchemaResponse"))

(smithy/sdk/shapes:define-input describe-solution-request common-lisp:nil
                                ((solution-arn :target-type arn :required
                                  common-lisp:t :member-name "solutionArn"))
                                (:shape-name "DescribeSolutionRequest"))

(smithy/sdk/shapes:define-output describe-solution-response common-lisp:nil
                                 ((solution :target-type solution :member-name
                                   "solution"))
                                 (:shape-name "DescribeSolutionResponse"))

(smithy/sdk/shapes:define-input describe-solution-version-request
                                common-lisp:nil
                                ((solution-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "solutionVersionArn"))
                                (:shape-name "DescribeSolutionVersionRequest"))

(smithy/sdk/shapes:define-output describe-solution-version-response
                                 common-lisp:nil
                                 ((solution-version :target-type
                                   solution-version :member-name
                                   "solutionVersion"))
                                 (:shape-name
                                  "DescribeSolutionVersionResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type docker-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain
    common-lisp:nil
  (:ecommerce "ECOMMERCE")
  (:video-on-demand "VIDEO_ON_DEMAND"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-parameters common-lisp:nil
                                    ((event-type :target-type event-type
                                      :member-name "eventType")
                                     (event-value-threshold :target-type
                                      event-type-threshold-value :member-name
                                      "eventValueThreshold")
                                     (weight :target-type event-type-weight
                                      :member-name "weight"))
                                    (:shape-name "EventParameters"))

(smithy/sdk/shapes:define-list event-parameters-list :member event-parameters)

(smithy/sdk/shapes:define-structure event-tracker common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (event-tracker-arn :target-type arn
                                      :member-name "eventTrackerArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (tracking-id :target-type tracking-id
                                      :member-name "trackingId")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "EventTracker"))

(smithy/sdk/shapes:define-structure event-tracker-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (event-tracker-arn :target-type arn
                                      :member-name "eventTrackerArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "EventTrackerSummary"))

(smithy/sdk/shapes:define-list event-trackers :member event-tracker-summary)

(smithy/sdk/shapes:define-type event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-type-threshold-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type event-type-weight smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type event-value-threshold
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure events-config common-lisp:nil
                                    ((event-parameters-list :target-type
                                      event-parameters-list :member-name
                                      "eventParametersList"))
                                    (:shape-name "EventsConfig"))

(smithy/sdk/shapes:define-map excluded-dataset-columns :key dataset-type :value
                              column-names-list)

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure feature-transformation common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (feature-transformation-arn :target-type
                                      arn :member-name
                                      "featureTransformationArn")
                                     (default-parameters :target-type
                                      featurization-parameters :member-name
                                      "defaultParameters")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "FeatureTransformation"))

(smithy/sdk/shapes:define-map feature-transformation-parameters :key
                              parameter-name :value parameter-value)

(smithy/sdk/shapes:define-map featurization-parameters :key parameter-name
                              :value parameter-value)

(smithy/sdk/shapes:define-structure fields-for-theme-generation common-lisp:nil
                                    ((item-name :target-type column-name
                                      :required common-lisp:t :member-name
                                      "itemName"))
                                    (:shape-name "FieldsForThemeGeneration"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (filter-arn :target-type arn :member-name
                                      "filterArn")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (filter-expression :target-type
                                      filter-expression :member-name
                                      "filterExpression")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-type filter-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (filter-arn :target-type arn :member-name
                                      "filterArn")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "FilterSummary"))

(smithy/sdk/shapes:define-list filters :member filter-summary)

(smithy/sdk/shapes:define-input get-solution-metrics-request common-lisp:nil
                                ((solution-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "solutionVersionArn"))
                                (:shape-name "GetSolutionMetricsRequest"))

(smithy/sdk/shapes:define-output get-solution-metrics-response common-lisp:nil
                                 ((solution-version-arn :target-type arn
                                   :member-name "solutionVersionArn")
                                  (metrics :target-type metrics :member-name
                                   "metrics"))
                                 (:shape-name "GetSolutionMetricsResponse"))

(smithy/sdk/shapes:define-structure hpoconfig common-lisp:nil
                                    ((hpo-objective :target-type hpoobjective
                                      :member-name "hpoObjective")
                                     (hpo-resource-config :target-type
                                      hporesource-config :member-name
                                      "hpoResourceConfig")
                                     (algorithm-hyper-parameter-ranges
                                      :target-type hyper-parameter-ranges
                                      :member-name
                                      "algorithmHyperParameterRanges"))
                                    (:shape-name "HPOConfig"))

(smithy/sdk/shapes:define-structure hpoobjective common-lisp:nil
                                    ((type :target-type hpoobjective-type
                                      :member-name "type")
                                     (metric-name :target-type metric-name
                                      :member-name "metricName")
                                     (metric-regex :target-type metric-regex
                                      :member-name "metricRegex"))
                                    (:shape-name "HPOObjective"))

(smithy/sdk/shapes:define-type hpoobjective-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hporesource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure hporesource-config common-lisp:nil
                                    ((max-number-of-training-jobs :target-type
                                      hporesource :member-name
                                      "maxNumberOfTrainingJobs")
                                     (max-parallel-training-jobs :target-type
                                      hporesource :member-name
                                      "maxParallelTrainingJobs"))
                                    (:shape-name "HPOResourceConfig"))

(smithy/sdk/shapes:define-structure hyper-parameter-ranges common-lisp:nil
                                    ((integer-hyper-parameter-ranges
                                      :target-type
                                      integer-hyper-parameter-ranges
                                      :member-name
                                      "integerHyperParameterRanges")
                                     (continuous-hyper-parameter-ranges
                                      :target-type
                                      continuous-hyper-parameter-ranges
                                      :member-name
                                      "continuousHyperParameterRanges")
                                     (categorical-hyper-parameter-ranges
                                      :target-type
                                      categorical-hyper-parameter-ranges
                                      :member-name
                                      "categoricalHyperParameterRanges"))
                                    (:shape-name "HyperParameterRanges"))

(smithy/sdk/shapes:define-map hyper-parameters :key parameter-name :value
                              parameter-value)

(smithy/sdk/shapes:define-enum import-mode
    common-lisp:nil
  (:full "FULL")
  (:incremental "INCREMENTAL"))

(smithy/sdk/shapes:define-enum ingestion-mode
    common-lisp:nil
  (:bulk "BULK")
  (:put "PUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure integer-hyper-parameter-range
                                    common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (min-value :target-type integer-min-value
                                      :member-name "minValue")
                                     (max-value :target-type integer-max-value
                                      :member-name "maxValue"))
                                    (:shape-name "IntegerHyperParameterRange"))

(smithy/sdk/shapes:define-list integer-hyper-parameter-ranges :member
                               integer-hyper-parameter-range)

(smithy/sdk/shapes:define-type integer-max-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-type item-attribute smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-input list-batch-inference-jobs-request
                                common-lisp:nil
                                ((solution-version-arn :target-type arn
                                  :member-name "solutionVersionArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListBatchInferenceJobsRequest"))

(smithy/sdk/shapes:define-output list-batch-inference-jobs-response
                                 common-lisp:nil
                                 ((batch-inference-jobs :target-type
                                   batch-inference-jobs :member-name
                                   "batchInferenceJobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBatchInferenceJobsResponse"))

(smithy/sdk/shapes:define-input list-batch-segment-jobs-request common-lisp:nil
                                ((solution-version-arn :target-type arn
                                  :member-name "solutionVersionArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListBatchSegmentJobsRequest"))

(smithy/sdk/shapes:define-output list-batch-segment-jobs-response
                                 common-lisp:nil
                                 ((batch-segment-jobs :target-type
                                   batch-segment-jobs :member-name
                                   "batchSegmentJobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBatchSegmentJobsResponse"))

(smithy/sdk/shapes:define-input list-campaigns-request common-lisp:nil
                                ((solution-arn :target-type arn :member-name
                                  "solutionArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListCampaignsRequest"))

(smithy/sdk/shapes:define-output list-campaigns-response common-lisp:nil
                                 ((campaigns :target-type campaigns
                                   :member-name "campaigns")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCampaignsResponse"))

(smithy/sdk/shapes:define-input list-data-deletion-jobs-request common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDataDeletionJobsRequest"))

(smithy/sdk/shapes:define-output list-data-deletion-jobs-response
                                 common-lisp:nil
                                 ((data-deletion-jobs :target-type
                                   data-deletion-jobs :member-name
                                   "dataDeletionJobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataDeletionJobsResponse"))

(smithy/sdk/shapes:define-input list-dataset-export-jobs-request
                                common-lisp:nil
                                ((dataset-arn :target-type arn :member-name
                                  "datasetArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDatasetExportJobsRequest"))

(smithy/sdk/shapes:define-output list-dataset-export-jobs-response
                                 common-lisp:nil
                                 ((dataset-export-jobs :target-type
                                   dataset-export-jobs :member-name
                                   "datasetExportJobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetExportJobsResponse"))

(smithy/sdk/shapes:define-input list-dataset-groups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDatasetGroupsRequest"))

(smithy/sdk/shapes:define-output list-dataset-groups-response common-lisp:nil
                                 ((dataset-groups :target-type dataset-groups
                                   :member-name "datasetGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetGroupsResponse"))

(smithy/sdk/shapes:define-input list-dataset-import-jobs-request
                                common-lisp:nil
                                ((dataset-arn :target-type arn :member-name
                                  "datasetArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDatasetImportJobsRequest"))

(smithy/sdk/shapes:define-output list-dataset-import-jobs-response
                                 common-lisp:nil
                                 ((dataset-import-jobs :target-type
                                   dataset-import-jobs :member-name
                                   "datasetImportJobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetImportJobsResponse"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((datasets :target-type datasets :member-name
                                   "datasets")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-event-trackers-request common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListEventTrackersRequest"))

(smithy/sdk/shapes:define-output list-event-trackers-response common-lisp:nil
                                 ((event-trackers :target-type event-trackers
                                   :member-name "eventTrackers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEventTrackersResponse"))

(smithy/sdk/shapes:define-input list-filters-request common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListFiltersRequest"))

(smithy/sdk/shapes:define-output list-filters-response common-lisp:nil
                                 ((filters :target-type filters :member-name
                                   "Filters")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFiltersResponse"))

(smithy/sdk/shapes:define-input list-metric-attribution-metrics-request
                                common-lisp:nil
                                ((metric-attribution-arn :target-type arn
                                  :member-name "metricAttributionArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListMetricAttributionMetricsRequest"))

(smithy/sdk/shapes:define-output list-metric-attribution-metrics-response
                                 common-lisp:nil
                                 ((metrics :target-type metric-attributes
                                   :member-name "metrics")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListMetricAttributionMetricsResponse"))

(smithy/sdk/shapes:define-input list-metric-attributions-request
                                common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListMetricAttributionsRequest"))

(smithy/sdk/shapes:define-output list-metric-attributions-response
                                 common-lisp:nil
                                 ((metric-attributions :target-type
                                   metric-attributions :member-name
                                   "metricAttributions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMetricAttributionsResponse"))

(smithy/sdk/shapes:define-input list-recipes-request common-lisp:nil
                                ((recipe-provider :target-type recipe-provider
                                  :member-name "recipeProvider")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (domain :target-type domain :member-name
                                  "domain"))
                                (:shape-name "ListRecipesRequest"))

(smithy/sdk/shapes:define-output list-recipes-response common-lisp:nil
                                 ((recipes :target-type recipes :member-name
                                   "recipes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRecipesResponse"))

(smithy/sdk/shapes:define-input list-recommenders-request common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListRecommendersRequest"))

(smithy/sdk/shapes:define-output list-recommenders-response common-lisp:nil
                                 ((recommenders :target-type recommenders
                                   :member-name "recommenders")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRecommendersResponse"))

(smithy/sdk/shapes:define-input list-schemas-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListSchemasRequest"))

(smithy/sdk/shapes:define-output list-schemas-response common-lisp:nil
                                 ((schemas :target-type schemas :member-name
                                   "schemas")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSchemasResponse"))

(smithy/sdk/shapes:define-input list-solution-versions-request common-lisp:nil
                                ((solution-arn :target-type arn :member-name
                                  "solutionArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListSolutionVersionsRequest"))

(smithy/sdk/shapes:define-output list-solution-versions-response
                                 common-lisp:nil
                                 ((solution-versions :target-type
                                   solution-versions :member-name
                                   "solutionVersions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSolutionVersionsResponse"))

(smithy/sdk/shapes:define-input list-solutions-request common-lisp:nil
                                ((dataset-group-arn :target-type arn
                                  :member-name "datasetGroupArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListSolutionsRequest"))

(smithy/sdk/shapes:define-output list-solutions-response common-lisp:nil
                                 ((solutions :target-type solutions
                                   :member-name "solutions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSolutionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-attribute common-lisp:nil
                                    ((event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "eventType")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "metricName")
                                     (expression :target-type metric-expression
                                      :required common-lisp:t :member-name
                                      "expression"))
                                    (:shape-name "MetricAttribute"))

(smithy/sdk/shapes:define-list metric-attributes :member metric-attribute)

(smithy/sdk/shapes:define-list metric-attributes-names-list :member metric-name)

(smithy/sdk/shapes:define-structure metric-attribution common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (metric-attribution-arn :target-type arn
                                      :member-name "metricAttributionArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (metrics-output-config :target-type
                                      metric-attribution-output :member-name
                                      "metricsOutputConfig")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "MetricAttribution"))

(smithy/sdk/shapes:define-structure metric-attribution-output common-lisp:nil
                                    ((s3data-destination :target-type
                                      s3data-config :member-name
                                      "s3DataDestination")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "MetricAttributionOutput"))

(smithy/sdk/shapes:define-structure metric-attribution-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (metric-attribution-arn :target-type arn
                                      :member-name "metricAttributionArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "MetricAttributionSummary"))

(smithy/sdk/shapes:define-list metric-attributions :member
                               metric-attribution-summary)

(smithy/sdk/shapes:define-type metric-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-map metrics :key metric-name :value metric-value)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type num-batch-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum objective-sensitivity
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:off "OFF"))

(smithy/sdk/shapes:define-structure optimization-objective common-lisp:nil
                                    ((item-attribute :target-type
                                      item-attribute :member-name
                                      "itemAttribute")
                                     (objective-sensitivity :target-type
                                      objective-sensitivity :member-name
                                      "objectiveSensitivity"))
                                    (:shape-name "OptimizationObjective"))

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type perform-auto-ml smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type perform-auto-training
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type perform-hpo smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure recipe common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn")
                                     (algorithm-arn :target-type arn
                                      :member-name "algorithmArn")
                                     (feature-transformation-arn :target-type
                                      arn :member-name
                                      "featureTransformationArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (recipe-type :target-type recipe-type
                                      :member-name "recipeType")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "Recipe"))

(smithy/sdk/shapes:define-enum recipe-provider
    common-lisp:nil
  (:service "SERVICE"))

(smithy/sdk/shapes:define-structure recipe-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (domain :target-type domain :member-name
                                      "domain"))
                                    (:shape-name "RecipeSummary"))

(smithy/sdk/shapes:define-type recipe-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recipes :member recipe-summary)

(smithy/sdk/shapes:define-structure recommender common-lisp:nil
                                    ((recommender-arn :target-type arn
                                      :member-name "recommenderArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (name :target-type name :member-name
                                      "name")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn")
                                     (recommender-config :target-type
                                      recommender-config :member-name
                                      "recommenderConfig")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (status :target-type status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (latest-recommender-update :target-type
                                      recommender-update-summary :member-name
                                      "latestRecommenderUpdate")
                                     (model-metrics :target-type metrics
                                      :member-name "modelMetrics"))
                                    (:shape-name "Recommender"))

(smithy/sdk/shapes:define-structure recommender-config common-lisp:nil
                                    ((item-exploration-config :target-type
                                      hyper-parameters :member-name
                                      "itemExplorationConfig")
                                     (min-recommendation-requests-per-second
                                      :target-type transactions-per-second
                                      :member-name
                                      "minRecommendationRequestsPerSecond")
                                     (training-data-config :target-type
                                      training-data-config :member-name
                                      "trainingDataConfig")
                                     (enable-metadata-with-recommendations
                                      :target-type boolean :member-name
                                      "enableMetadataWithRecommendations"))
                                    (:shape-name "RecommenderConfig"))

(smithy/sdk/shapes:define-structure recommender-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (recommender-arn :target-type arn
                                      :member-name "recommenderArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn")
                                     (recommender-config :target-type
                                      recommender-config :member-name
                                      "recommenderConfig")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime"))
                                    (:shape-name "RecommenderSummary"))

(smithy/sdk/shapes:define-structure recommender-update-summary common-lisp:nil
                                    ((recommender-config :target-type
                                      recommender-config :member-name
                                      "recommenderConfig")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (status :target-type status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "RecommenderUpdateSummary"))

(smithy/sdk/shapes:define-list recommenders :member recommender-summary)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 403)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-map resource-config :key parameter-name :value
                              parameter-value)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3data-config common-lisp:nil
                                    ((path :target-type s3location :required
                                      common-lisp:t :member-name "path")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "S3DataConfig"))

(smithy/sdk/shapes:define-type s3location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scheduling-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list schemas :member dataset-schema-summary)

(smithy/sdk/shapes:define-structure solution common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (solution-arn :target-type arn
                                      :member-name "solutionArn")
                                     (perform-hpo :target-type perform-hpo
                                      :member-name "performHPO")
                                     (perform-auto-ml :target-type
                                      perform-auto-ml :member-name
                                      "performAutoML")
                                     (perform-auto-training :target-type
                                      perform-auto-training :member-name
                                      "performAutoTraining")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (event-type :target-type event-type
                                      :member-name "eventType")
                                     (solution-config :target-type
                                      solution-config :member-name
                                      "solutionConfig")
                                     (auto-mlresult :target-type auto-mlresult
                                      :member-name "autoMLResult")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (latest-solution-version :target-type
                                      solution-version-summary :member-name
                                      "latestSolutionVersion")
                                     (latest-solution-update :target-type
                                      solution-update-summary :member-name
                                      "latestSolutionUpdate"))
                                    (:shape-name "Solution"))

(smithy/sdk/shapes:define-structure solution-config common-lisp:nil
                                    ((event-value-threshold :target-type
                                      event-value-threshold :member-name
                                      "eventValueThreshold")
                                     (hpo-config :target-type hpoconfig
                                      :member-name "hpoConfig")
                                     (algorithm-hyper-parameters :target-type
                                      hyper-parameters :member-name
                                      "algorithmHyperParameters")
                                     (feature-transformation-parameters
                                      :target-type
                                      feature-transformation-parameters
                                      :member-name
                                      "featureTransformationParameters")
                                     (auto-mlconfig :target-type auto-mlconfig
                                      :member-name "autoMLConfig")
                                     (events-config :target-type events-config
                                      :member-name "eventsConfig")
                                     (optimization-objective :target-type
                                      optimization-objective :member-name
                                      "optimizationObjective")
                                     (training-data-config :target-type
                                      training-data-config :member-name
                                      "trainingDataConfig")
                                     (auto-training-config :target-type
                                      auto-training-config :member-name
                                      "autoTrainingConfig"))
                                    (:shape-name "SolutionConfig"))

(smithy/sdk/shapes:define-structure solution-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (solution-arn :target-type arn
                                      :member-name "solutionArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn"))
                                    (:shape-name "SolutionSummary"))

(smithy/sdk/shapes:define-structure solution-update-config common-lisp:nil
                                    ((auto-training-config :target-type
                                      auto-training-config :member-name
                                      "autoTrainingConfig")
                                     (events-config :target-type events-config
                                      :member-name "eventsConfig"))
                                    (:shape-name "SolutionUpdateConfig"))

(smithy/sdk/shapes:define-structure solution-update-summary common-lisp:nil
                                    ((solution-update-config :target-type
                                      solution-update-config :member-name
                                      "solutionUpdateConfig")
                                     (status :target-type status :member-name
                                      "status")
                                     (perform-auto-training :target-type
                                      perform-auto-training :member-name
                                      "performAutoTraining")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "SolutionUpdateSummary"))

(smithy/sdk/shapes:define-structure solution-version common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (solution-arn :target-type arn
                                      :member-name "solutionArn")
                                     (perform-hpo :target-type perform-hpo
                                      :member-name "performHPO")
                                     (perform-auto-ml :target-type
                                      perform-auto-ml :member-name
                                      "performAutoML")
                                     (recipe-arn :target-type arn :member-name
                                      "recipeArn")
                                     (event-type :target-type event-type
                                      :member-name "eventType")
                                     (dataset-group-arn :target-type arn
                                      :member-name "datasetGroupArn")
                                     (solution-config :target-type
                                      solution-config :member-name
                                      "solutionConfig")
                                     (training-hours :target-type
                                      training-hours :member-name
                                      "trainingHours")
                                     (training-mode :target-type training-mode
                                      :member-name "trainingMode")
                                     (tuned-hpoparams :target-type
                                      tuned-hpoparams :member-name
                                      "tunedHPOParams")
                                     (status :target-type status :member-name
                                      "status")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (training-type :target-type training-type
                                      :member-name "trainingType"))
                                    (:shape-name "SolutionVersion"))

(smithy/sdk/shapes:define-structure solution-version-summary common-lisp:nil
                                    ((solution-version-arn :target-type arn
                                      :member-name "solutionVersionArn")
                                     (status :target-type status :member-name
                                      "status")
                                     (training-mode :target-type training-mode
                                      :member-name "trainingMode")
                                     (training-type :target-type training-type
                                      :member-name "trainingType")
                                     (creation-date-time :target-type date
                                      :member-name "creationDateTime")
                                     (last-updated-date-time :target-type date
                                      :member-name "lastUpdatedDateTime")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "SolutionVersionSummary"))

(smithy/sdk/shapes:define-list solution-versions :member
                               solution-version-summary)

(smithy/sdk/shapes:define-list solutions :member solution-summary)

(smithy/sdk/shapes:define-input start-recommender-request common-lisp:nil
                                ((recommender-arn :target-type arn :required
                                  common-lisp:t :member-name "recommenderArn"))
                                (:shape-name "StartRecommenderRequest"))

(smithy/sdk/shapes:define-output start-recommender-response common-lisp:nil
                                 ((recommender-arn :target-type arn
                                   :member-name "recommenderArn"))
                                 (:shape-name "StartRecommenderResponse"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-recommender-request common-lisp:nil
                                ((recommender-arn :target-type arn :required
                                  common-lisp:t :member-name "recommenderArn"))
                                (:shape-name "StopRecommenderRequest"))

(smithy/sdk/shapes:define-output stop-recommender-response common-lisp:nil
                                 ((recommender-arn :target-type arn
                                   :member-name "recommenderArn"))
                                 (:shape-name "StopRecommenderResponse"))

(smithy/sdk/shapes:define-input stop-solution-version-creation-request
                                common-lisp:nil
                                ((solution-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "solutionVersionArn"))
                                (:shape-name
                                 "StopSolutionVersionCreationRequest"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((tag-key :target-type tag-key :required
                                      common-lisp:t :member-name "tagKey")
                                     (tag-value :target-type tag-value
                                      :required common-lisp:t :member-name
                                      "tagValue"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure theme-generation-config common-lisp:nil
                                    ((fields-for-theme-generation :target-type
                                      fields-for-theme-generation :required
                                      common-lisp:t :member-name
                                      "fieldsForThemeGeneration"))
                                    (:shape-name "ThemeGenerationConfig"))

(smithy/sdk/shapes:define-error too-many-tag-keys-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagKeysException")
                                (:error-code 400)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class personalize-error))

(smithy/sdk/shapes:define-type tracking-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure training-data-config common-lisp:nil
                                    ((excluded-dataset-columns :target-type
                                      excluded-dataset-columns :member-name
                                      "excludedDatasetColumns"))
                                    (:shape-name "TrainingDataConfig"))

(smithy/sdk/shapes:define-type training-hours smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type training-input-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum training-mode
    common-lisp:nil
  (:full "FULL")
  (:update "UPDATE")
  (:autotrain "AUTOTRAIN"))

(smithy/sdk/shapes:define-enum training-type
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-type transactions-per-second
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type tunable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure tuned-hpoparams common-lisp:nil
                                    ((algorithm-hyper-parameters :target-type
                                      hyper-parameters :member-name
                                      "algorithmHyperParameters"))
                                    (:shape-name "TunedHPOParams"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-campaign-request common-lisp:nil
                                ((campaign-arn :target-type arn :required
                                  common-lisp:t :member-name "campaignArn")
                                 (solution-version-arn :target-type arn
                                  :member-name "solutionVersionArn")
                                 (min-provisioned-tps :target-type
                                  transactions-per-second :member-name
                                  "minProvisionedTPS")
                                 (campaign-config :target-type campaign-config
                                  :member-name "campaignConfig"))
                                (:shape-name "UpdateCampaignRequest"))

(smithy/sdk/shapes:define-output update-campaign-response common-lisp:nil
                                 ((campaign-arn :target-type arn :member-name
                                   "campaignArn"))
                                 (:shape-name "UpdateCampaignResponse"))

(smithy/sdk/shapes:define-input update-dataset-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn")
                                 (schema-arn :target-type arn :required
                                  common-lisp:t :member-name "schemaArn"))
                                (:shape-name "UpdateDatasetRequest"))

(smithy/sdk/shapes:define-output update-dataset-response common-lisp:nil
                                 ((dataset-arn :target-type arn :member-name
                                   "datasetArn"))
                                 (:shape-name "UpdateDatasetResponse"))

(smithy/sdk/shapes:define-input update-metric-attribution-request
                                common-lisp:nil
                                ((add-metrics :target-type metric-attributes
                                  :member-name "addMetrics")
                                 (remove-metrics :target-type
                                  metric-attributes-names-list :member-name
                                  "removeMetrics")
                                 (metrics-output-config :target-type
                                  metric-attribution-output :member-name
                                  "metricsOutputConfig")
                                 (metric-attribution-arn :target-type arn
                                  :member-name "metricAttributionArn"))
                                (:shape-name "UpdateMetricAttributionRequest"))

(smithy/sdk/shapes:define-output update-metric-attribution-response
                                 common-lisp:nil
                                 ((metric-attribution-arn :target-type arn
                                   :member-name "metricAttributionArn"))
                                 (:shape-name
                                  "UpdateMetricAttributionResponse"))

(smithy/sdk/shapes:define-input update-recommender-request common-lisp:nil
                                ((recommender-arn :target-type arn :required
                                  common-lisp:t :member-name "recommenderArn")
                                 (recommender-config :target-type
                                  recommender-config :required common-lisp:t
                                  :member-name "recommenderConfig"))
                                (:shape-name "UpdateRecommenderRequest"))

(smithy/sdk/shapes:define-output update-recommender-response common-lisp:nil
                                 ((recommender-arn :target-type arn
                                   :member-name "recommenderArn"))
                                 (:shape-name "UpdateRecommenderResponse"))

(smithy/sdk/shapes:define-input update-solution-request common-lisp:nil
                                ((solution-arn :target-type arn :required
                                  common-lisp:t :member-name "solutionArn")
                                 (perform-auto-training :target-type
                                  perform-auto-training :member-name
                                  "performAutoTraining")
                                 (solution-update-config :target-type
                                  solution-update-config :member-name
                                  "solutionUpdateConfig"))
                                (:shape-name "UpdateSolutionRequest"))

(smithy/sdk/shapes:define-output update-solution-response common-lisp:nil
                                 ((solution-arn :target-type arn :member-name
                                   "solutionArn"))
                                 (:shape-name "UpdateSolutionResponse"))

(smithy/sdk/operation:define-operation create-batch-inference-job :shape-name
                                       "CreateBatchInferenceJob" :input
                                       create-batch-inference-job-request
                                       :output
                                       create-batch-inference-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-batch-segment-job :shape-name
                                       "CreateBatchSegmentJob" :input
                                       create-batch-segment-job-request :output
                                       create-batch-segment-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-campaign :shape-name
                                       "CreateCampaign" :input
                                       create-campaign-request :output
                                       create-campaign-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-data-deletion-job :shape-name
                                       "CreateDataDeletionJob" :input
                                       create-data-deletion-job-request :output
                                       create-data-deletion-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-dataset-export-job :shape-name
                                       "CreateDatasetExportJob" :input
                                       create-dataset-export-job-request
                                       :output
                                       create-dataset-export-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-dataset-group :shape-name
                                       "CreateDatasetGroup" :input
                                       create-dataset-group-request :output
                                       create-dataset-group-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-dataset-import-job :shape-name
                                       "CreateDatasetImportJob" :input
                                       create-dataset-import-job-request
                                       :output
                                       create-dataset-import-job-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-event-tracker :shape-name
                                       "CreateEventTracker" :input
                                       create-event-tracker-request :output
                                       create-event-tracker-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-filter :shape-name "CreateFilter"
                                       :input create-filter-request :output
                                       create-filter-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-metric-attribution :shape-name
                                       "CreateMetricAttribution" :input
                                       create-metric-attribution-request
                                       :output
                                       create-metric-attribution-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-recommender :shape-name
                                       "CreateRecommender" :input
                                       create-recommender-request :output
                                       create-recommender-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-schema :shape-name "CreateSchema"
                                       :input create-schema-request :output
                                       create-schema-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-solution :shape-name
                                       "CreateSolution" :input
                                       create-solution-request :output
                                       create-solution-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-solution-version :shape-name
                                       "CreateSolutionVersion" :input
                                       create-solution-version-request :output
                                       create-solution-version-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation delete-campaign :shape-name
                                       "DeleteCampaign" :input
                                       delete-campaign-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-dataset-group :shape-name
                                       "DeleteDatasetGroup" :input
                                       delete-dataset-group-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-event-tracker :shape-name
                                       "DeleteEventTracker" :input
                                       delete-event-tracker-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-filter :shape-name "DeleteFilter"
                                       :input delete-filter-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-metric-attribution :shape-name
                                       "DeleteMetricAttribution" :input
                                       delete-metric-attribution-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-recommender :shape-name
                                       "DeleteRecommender" :input
                                       delete-recommender-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-schema :shape-name "DeleteSchema"
                                       :input delete-schema-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-solution :shape-name
                                       "DeleteSolution" :input
                                       delete-solution-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-algorithm :shape-name
                                       "DescribeAlgorithm" :input
                                       describe-algorithm-request :output
                                       describe-algorithm-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-batch-inference-job :shape-name
                                       "DescribeBatchInferenceJob" :input
                                       describe-batch-inference-job-request
                                       :output
                                       describe-batch-inference-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-batch-segment-job :shape-name
                                       "DescribeBatchSegmentJob" :input
                                       describe-batch-segment-job-request
                                       :output
                                       describe-batch-segment-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-campaign :shape-name
                                       "DescribeCampaign" :input
                                       describe-campaign-request :output
                                       describe-campaign-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-data-deletion-job :shape-name
                                       "DescribeDataDeletionJob" :input
                                       describe-data-deletion-job-request
                                       :output
                                       describe-data-deletion-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset-export-job :shape-name
                                       "DescribeDatasetExportJob" :input
                                       describe-dataset-export-job-request
                                       :output
                                       describe-dataset-export-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset-group :shape-name
                                       "DescribeDatasetGroup" :input
                                       describe-dataset-group-request :output
                                       describe-dataset-group-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-dataset-import-job :shape-name
                                       "DescribeDatasetImportJob" :input
                                       describe-dataset-import-job-request
                                       :output
                                       describe-dataset-import-job-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-event-tracker :shape-name
                                       "DescribeEventTracker" :input
                                       describe-event-tracker-request :output
                                       describe-event-tracker-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-feature-transformation
                                       :shape-name
                                       "DescribeFeatureTransformation" :input
                                       describe-feature-transformation-request
                                       :output
                                       describe-feature-transformation-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-filter :shape-name
                                       "DescribeFilter" :input
                                       describe-filter-request :output
                                       describe-filter-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-metric-attribution :shape-name
                                       "DescribeMetricAttribution" :input
                                       describe-metric-attribution-request
                                       :output
                                       describe-metric-attribution-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-recipe :shape-name
                                       "DescribeRecipe" :input
                                       describe-recipe-request :output
                                       describe-recipe-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-recommender :shape-name
                                       "DescribeRecommender" :input
                                       describe-recommender-request :output
                                       describe-recommender-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-schema :shape-name
                                       "DescribeSchema" :input
                                       describe-schema-request :output
                                       describe-schema-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-solution :shape-name
                                       "DescribeSolution" :input
                                       describe-solution-request :output
                                       describe-solution-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-solution-version :shape-name
                                       "DescribeSolutionVersion" :input
                                       describe-solution-version-request
                                       :output
                                       describe-solution-version-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-solution-metrics :shape-name
                                       "GetSolutionMetrics" :input
                                       get-solution-metrics-request :output
                                       get-solution-metrics-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-batch-inference-jobs :shape-name
                                       "ListBatchInferenceJobs" :input
                                       list-batch-inference-jobs-request
                                       :output
                                       list-batch-inference-jobs-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-batch-segment-jobs :shape-name
                                       "ListBatchSegmentJobs" :input
                                       list-batch-segment-jobs-request :output
                                       list-batch-segment-jobs-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-campaigns :shape-name
                                       "ListCampaigns" :input
                                       list-campaigns-request :output
                                       list-campaigns-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-data-deletion-jobs :shape-name
                                       "ListDataDeletionJobs" :input
                                       list-data-deletion-jobs-request :output
                                       list-data-deletion-jobs-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-dataset-export-jobs :shape-name
                                       "ListDatasetExportJobs" :input
                                       list-dataset-export-jobs-request :output
                                       list-dataset-export-jobs-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-dataset-groups :shape-name
                                       "ListDatasetGroups" :input
                                       list-dataset-groups-request :output
                                       list-dataset-groups-response :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-dataset-import-jobs :shape-name
                                       "ListDatasetImportJobs" :input
                                       list-dataset-import-jobs-request :output
                                       list-dataset-import-jobs-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-event-trackers :shape-name
                                       "ListEventTrackers" :input
                                       list-event-trackers-request :output
                                       list-event-trackers-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-filters :shape-name "ListFilters"
                                       :input list-filters-request :output
                                       list-filters-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-metric-attribution-metrics
                                       :shape-name
                                       "ListMetricAttributionMetrics" :input
                                       list-metric-attribution-metrics-request
                                       :output
                                       list-metric-attribution-metrics-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-metric-attributions :shape-name
                                       "ListMetricAttributions" :input
                                       list-metric-attributions-request :output
                                       list-metric-attributions-response
                                       :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-recipes :shape-name "ListRecipes"
                                       :input list-recipes-request :output
                                       list-recipes-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-recommenders :shape-name
                                       "ListRecommenders" :input
                                       list-recommenders-request :output
                                       list-recommenders-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-schemas :shape-name "ListSchemas"
                                       :input list-schemas-request :output
                                       list-schemas-response :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-solution-versions :shape-name
                                       "ListSolutionVersions" :input
                                       list-solution-versions-request :output
                                       list-solution-versions-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-solutions :shape-name
                                       "ListSolutions" :input
                                       list-solutions-request :output
                                       list-solutions-response :errors
                                       (invalid-input-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-recommender :shape-name
                                       "StartRecommender" :input
                                       start-recommender-request :output
                                       start-recommender-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-recommender :shape-name
                                       "StopRecommender" :input
                                       stop-recommender-request :output
                                       stop-recommender-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-solution-version-creation
                                       :shape-name
                                       "StopSolutionVersionCreation" :input
                                       stop-solution-version-creation-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tag-keys-exception))

(smithy/sdk/operation:define-operation update-campaign :shape-name
                                       "UpdateCampaign" :input
                                       update-campaign-request :output
                                       update-campaign-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-dataset :shape-name
                                       "UpdateDataset" :input
                                       update-dataset-request :output
                                       update-dataset-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-metric-attribution :shape-name
                                       "UpdateMetricAttribution" :input
                                       update-metric-attribution-request
                                       :output
                                       update-metric-attribution-response
                                       :errors
                                       (invalid-input-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-recommender :shape-name
                                       "UpdateRecommender" :input
                                       update-recommender-request :output
                                       update-recommender-response :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-solution :shape-name
                                       "UpdateSolution" :input
                                       update-solution-request :output
                                       update-solution-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))
