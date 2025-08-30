(uiop/package:define-package #:pira/codeguru-reviewer (:use)
                             (:export #:awsguru-frontend-service
                              #:access-denied-exception #:analysis-type
                              #:analysis-types #:arn #:associate-repository
                              #:association-arn #:association-id
                              #:branch-diff-source-code-type #:branch-name
                              #:build-artifacts-object-key
                              #:client-request-token #:code-artifacts
                              #:code-commit-repository #:code-review
                              #:code-review-name #:code-review-summaries
                              #:code-review-summary #:code-review-type
                              #:commit-diff-source-code-type #:commit-id
                              #:config-file-state #:conflict-exception
                              #:connection-arn #:create-code-review
                              #:describe-code-review
                              #:describe-recommendation-feedback
                              #:describe-repository-association
                              #:disassociate-repository #:encryption-option
                              #:error-message #:event-info #:event-name
                              #:event-state #:file-path #:findings-count
                              #:internal-server-exception #:job-state
                              #:job-states #:kmskey-details #:kmskey-id
                              #:line-number #:lines-of-code-count
                              #:list-code-reviews
                              #:list-code-reviews-max-results
                              #:list-recommendation-feedback
                              #:list-recommendations
                              #:list-recommendations-max-results
                              #:list-repository-associations
                              #:list-tags-for-resource #:long-description
                              #:max-results #:metrics #:metrics-summary #:name
                              #:names #:next-token #:not-found-exception
                              #:owner #:owners #:provider-type #:provider-types
                              #:pull-request-id #:put-recommendation-feedback
                              #:reaction #:reactions #:recommendation-category
                              #:recommendation-feedback
                              #:recommendation-feedback-summaries
                              #:recommendation-feedback-summary
                              #:recommendation-id #:recommendation-ids
                              #:recommendation-summaries
                              #:recommendation-summary #:repository
                              #:repository-analysis #:repository-association
                              #:repository-association-state
                              #:repository-association-states
                              #:repository-association-summaries
                              #:repository-association-summary
                              #:repository-head-source-code-type
                              #:repository-names #:request-id
                              #:request-metadata #:requester
                              #:resource-not-found-exception #:rule-id
                              #:rule-metadata #:rule-name #:rule-tag
                              #:rule-tags #:s3bucket-name #:s3bucket-repository
                              #:s3repository #:s3repository-details #:severity
                              #:short-description
                              #:source-code-artifacts-object-key
                              #:source-code-type #:state-reason #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:text
                              #:third-party-source-repository
                              #:throttling-exception #:time-stamp #:type
                              #:untag-resource #:user-id #:user-ids
                              #:validation-exception #:vendor-name
                              #:codeguru-reviewer-error))
(common-lisp:in-package #:pira/codeguru-reviewer)

(common-lisp:define-condition codeguru-reviewer-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsguru-frontend-service :shape-name
                                   "AWSGuruFrontendService" :version
                                   "2019-09-19" :title
                                   "Amazon CodeGuru Reviewer" :operations
                                   '(associate-repository create-code-review
                                     describe-code-review
                                     describe-recommendation-feedback
                                     describe-repository-association
                                     disassociate-repository list-code-reviews
                                     list-recommendation-feedback
                                     list-recommendations
                                     list-repository-associations
                                     list-tags-for-resource
                                     put-recommendation-feedback tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeGuru Reviewer")
                                      ("arnNamespace" . "codeguru-reviewer")
                                      ("cloudFormationName"
                                       . "CodeGuruReviewer")
                                      ("cloudTrailEventSource"
                                       . "codeguru-reviewer.amazonaws.com")
                                      ("endpointPrefix" . "codeguru-reviewer"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codeguru-reviewer"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-enum analysis-type
    common-lisp:nil
  (:security "Security")
  (:code-quality "CodeQuality"))

(smithy/sdk/shapes:define-list analysis-types :member analysis-type)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-repository-request common-lisp:nil
                                ((repository :target-type repository :required
                                  common-lisp:t :member-name "Repository")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (kmskey-details :target-type kmskey-details
                                  :member-name "KMSKeyDetails"))
                                (:shape-name "AssociateRepositoryRequest"))

(smithy/sdk/shapes:define-output associate-repository-response common-lisp:nil
                                 ((repository-association :target-type
                                   repository-association :member-name
                                   "RepositoryAssociation")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "AssociateRepositoryResponse"))

(smithy/sdk/shapes:define-type association-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type association-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure branch-diff-source-code-type
                                    common-lisp:nil
                                    ((source-branch-name :target-type
                                      branch-name :required common-lisp:t
                                      :member-name "SourceBranchName")
                                     (destination-branch-name :target-type
                                      branch-name :required common-lisp:t
                                      :member-name "DestinationBranchName"))
                                    (:shape-name "BranchDiffSourceCodeType"))

(smithy/sdk/shapes:define-type branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type build-artifacts-object-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-artifacts common-lisp:nil
                                    ((source-code-artifacts-object-key
                                      :target-type
                                      source-code-artifacts-object-key
                                      :required common-lisp:t :member-name
                                      "SourceCodeArtifactsObjectKey")
                                     (build-artifacts-object-key :target-type
                                      build-artifacts-object-key :member-name
                                      "BuildArtifactsObjectKey"))
                                    (:shape-name "CodeArtifacts"))

(smithy/sdk/shapes:define-structure code-commit-repository common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "CodeCommitRepository"))

(smithy/sdk/shapes:define-structure code-review common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (code-review-arn :target-type arn
                                      :member-name "CodeReviewArn")
                                     (repository-name :target-type name
                                      :member-name "RepositoryName")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (state :target-type job-state :member-name
                                      "State")
                                     (state-reason :target-type state-reason
                                      :member-name "StateReason")
                                     (created-time-stamp :target-type
                                      time-stamp :member-name
                                      "CreatedTimeStamp")
                                     (last-updated-time-stamp :target-type
                                      time-stamp :member-name
                                      "LastUpdatedTimeStamp")
                                     (type :target-type type :member-name
                                      "Type")
                                     (pull-request-id :target-type
                                      pull-request-id :member-name
                                      "PullRequestId")
                                     (source-code-type :target-type
                                      source-code-type :member-name
                                      "SourceCodeType")
                                     (association-arn :target-type
                                      association-arn :member-name
                                      "AssociationArn")
                                     (metrics :target-type metrics :member-name
                                      "Metrics")
                                     (analysis-types :target-type
                                      analysis-types :member-name
                                      "AnalysisTypes")
                                     (config-file-state :target-type
                                      config-file-state :member-name
                                      "ConfigFileState"))
                                    (:shape-name "CodeReview"))

(smithy/sdk/shapes:define-type code-review-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list code-review-summaries :member
                               code-review-summary)

(smithy/sdk/shapes:define-structure code-review-summary common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (code-review-arn :target-type arn
                                      :member-name "CodeReviewArn")
                                     (repository-name :target-type name
                                      :member-name "RepositoryName")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (state :target-type job-state :member-name
                                      "State")
                                     (created-time-stamp :target-type
                                      time-stamp :member-name
                                      "CreatedTimeStamp")
                                     (last-updated-time-stamp :target-type
                                      time-stamp :member-name
                                      "LastUpdatedTimeStamp")
                                     (type :target-type type :member-name
                                      "Type")
                                     (pull-request-id :target-type
                                      pull-request-id :member-name
                                      "PullRequestId")
                                     (metrics-summary :target-type
                                      metrics-summary :member-name
                                      "MetricsSummary")
                                     (source-code-type :target-type
                                      source-code-type :member-name
                                      "SourceCodeType"))
                                    (:shape-name "CodeReviewSummary"))

(smithy/sdk/shapes:define-structure code-review-type common-lisp:nil
                                    ((repository-analysis :target-type
                                      repository-analysis :required
                                      common-lisp:t :member-name
                                      "RepositoryAnalysis")
                                     (analysis-types :target-type
                                      analysis-types :member-name
                                      "AnalysisTypes"))
                                    (:shape-name "CodeReviewType"))

(smithy/sdk/shapes:define-structure commit-diff-source-code-type
                                    common-lisp:nil
                                    ((source-commit :target-type commit-id
                                      :member-name "SourceCommit")
                                     (destination-commit :target-type commit-id
                                      :member-name "DestinationCommit")
                                     (merge-base-commit :target-type commit-id
                                      :member-name "MergeBaseCommit"))
                                    (:shape-name "CommitDiffSourceCodeType"))

(smithy/sdk/shapes:define-type commit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum config-file-state
    common-lisp:nil
  (:present "Present")
  (:absent "Absent")
  (:present-with-errors "PresentWithErrors"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-code-review-request common-lisp:nil
                                ((name :target-type code-review-name :required
                                  common-lisp:t :member-name "Name")
                                 (repository-association-arn :target-type
                                  association-arn :required common-lisp:t
                                  :member-name "RepositoryAssociationArn")
                                 (type :target-type code-review-type :required
                                  common-lisp:t :member-name "Type")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateCodeReviewRequest"))

(smithy/sdk/shapes:define-output create-code-review-response common-lisp:nil
                                 ((code-review :target-type code-review
                                   :member-name "CodeReview"))
                                 (:shape-name "CreateCodeReviewResponse"))

(smithy/sdk/shapes:define-input describe-code-review-request common-lisp:nil
                                ((code-review-arn :target-type arn :required
                                  common-lisp:t :member-name "CodeReviewArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeCodeReviewRequest"))

(smithy/sdk/shapes:define-output describe-code-review-response common-lisp:nil
                                 ((code-review :target-type code-review
                                   :member-name "CodeReview"))
                                 (:shape-name "DescribeCodeReviewResponse"))

(smithy/sdk/shapes:define-input describe-recommendation-feedback-request
                                common-lisp:nil
                                ((code-review-arn :target-type arn :required
                                  common-lisp:t :member-name "CodeReviewArn"
                                  :http-label common-lisp:t)
                                 (recommendation-id :target-type
                                  recommendation-id :required common-lisp:t
                                  :member-name "RecommendationId" :http-query
                                  "RecommendationId")
                                 (user-id :target-type user-id :member-name
                                  "UserId" :http-query "UserId"))
                                (:shape-name
                                 "DescribeRecommendationFeedbackRequest"))

(smithy/sdk/shapes:define-output describe-recommendation-feedback-response
                                 common-lisp:nil
                                 ((recommendation-feedback :target-type
                                   recommendation-feedback :member-name
                                   "RecommendationFeedback"))
                                 (:shape-name
                                  "DescribeRecommendationFeedbackResponse"))

(smithy/sdk/shapes:define-input describe-repository-association-request
                                common-lisp:nil
                                ((association-arn :target-type association-arn
                                  :required common-lisp:t :member-name
                                  "AssociationArn" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeRepositoryAssociationRequest"))

(smithy/sdk/shapes:define-output describe-repository-association-response
                                 common-lisp:nil
                                 ((repository-association :target-type
                                   repository-association :member-name
                                   "RepositoryAssociation")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name
                                  "DescribeRepositoryAssociationResponse"))

(smithy/sdk/shapes:define-input disassociate-repository-request common-lisp:nil
                                ((association-arn :target-type association-arn
                                  :required common-lisp:t :member-name
                                  "AssociationArn" :http-label common-lisp:t))
                                (:shape-name "DisassociateRepositoryRequest"))

(smithy/sdk/shapes:define-output disassociate-repository-response
                                 common-lisp:nil
                                 ((repository-association :target-type
                                   repository-association :member-name
                                   "RepositoryAssociation")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "DisassociateRepositoryResponse"))

(smithy/sdk/shapes:define-enum encryption-option
    common-lisp:nil
  (:ao-cmk "AWS_OWNED_CMK")
  (:cm-cmk "CUSTOMER_MANAGED_CMK"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-info common-lisp:nil
                                    ((name :target-type event-name :member-name
                                      "Name")
                                     (state :target-type event-state
                                      :member-name "State"))
                                    (:shape-name "EventInfo"))

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type findings-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-enum job-state
    common-lisp:nil
  (:completed "Completed")
  (:pending "Pending")
  (:failed "Failed")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-list job-states :member job-state)

(smithy/sdk/shapes:define-structure kmskey-details common-lisp:nil
                                    ((kmskey-id :target-type kmskey-id
                                      :member-name "KMSKeyId")
                                     (encryption-option :target-type
                                      encryption-option :member-name
                                      "EncryptionOption"))
                                    (:shape-name "KMSKeyDetails"))

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type line-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type lines-of-code-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type list-code-reviews-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-code-reviews-request common-lisp:nil
                                ((provider-types :target-type provider-types
                                  :member-name "ProviderTypes" :http-query
                                  "ProviderTypes")
                                 (states :target-type job-states :member-name
                                  "States" :http-query "States")
                                 (repository-names :target-type
                                  repository-names :member-name
                                  "RepositoryNames" :http-query
                                  "RepositoryNames")
                                 (type :target-type type :required
                                  common-lisp:t :member-name "Type" :http-query
                                  "Type")
                                 (max-results :target-type
                                  list-code-reviews-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListCodeReviewsRequest"))

(smithy/sdk/shapes:define-output list-code-reviews-response common-lisp:nil
                                 ((code-review-summaries :target-type
                                   code-review-summaries :member-name
                                   "CodeReviewSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCodeReviewsResponse"))

(smithy/sdk/shapes:define-input list-recommendation-feedback-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (code-review-arn :target-type arn :required
                                  common-lisp:t :member-name "CodeReviewArn"
                                  :http-label common-lisp:t)
                                 (user-ids :target-type user-ids :member-name
                                  "UserIds" :http-query "UserIds")
                                 (recommendation-ids :target-type
                                  recommendation-ids :member-name
                                  "RecommendationIds" :http-query
                                  "RecommendationIds"))
                                (:shape-name
                                 "ListRecommendationFeedbackRequest"))

(smithy/sdk/shapes:define-output list-recommendation-feedback-response
                                 common-lisp:nil
                                 ((recommendation-feedback-summaries
                                   :target-type
                                   recommendation-feedback-summaries
                                   :member-name
                                   "RecommendationFeedbackSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListRecommendationFeedbackResponse"))

(smithy/sdk/shapes:define-type list-recommendations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-recommendations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-recommendations-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (code-review-arn :target-type arn :required
                                  common-lisp:t :member-name "CodeReviewArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-recommendations-response common-lisp:nil
                                 ((recommendation-summaries :target-type
                                   recommendation-summaries :member-name
                                   "RecommendationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRecommendationsResponse"))

(smithy/sdk/shapes:define-input list-repository-associations-request
                                common-lisp:nil
                                ((provider-types :target-type provider-types
                                  :member-name "ProviderTypes" :http-query
                                  "ProviderType")
                                 (states :target-type
                                  repository-association-states :member-name
                                  "States" :http-query "State")
                                 (names :target-type names :member-name "Names"
                                  :http-query "Name")
                                 (owners :target-type owners :member-name
                                  "Owners" :http-query "Owner")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name
                                 "ListRepositoryAssociationsRequest"))

(smithy/sdk/shapes:define-output list-repository-associations-response
                                 common-lisp:nil
                                 ((repository-association-summaries
                                   :target-type
                                   repository-association-summaries
                                   :member-name
                                   "RepositoryAssociationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListRepositoryAssociationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type association-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metrics common-lisp:nil
                                    ((metered-lines-of-code-count :target-type
                                      lines-of-code-count :member-name
                                      "MeteredLinesOfCodeCount")
                                     (suppressed-lines-of-code-count
                                      :target-type lines-of-code-count
                                      :member-name
                                      "SuppressedLinesOfCodeCount")
                                     (findings-count :target-type
                                      findings-count :member-name
                                      "FindingsCount"))
                                    (:shape-name "Metrics"))

(smithy/sdk/shapes:define-structure metrics-summary common-lisp:nil
                                    ((metered-lines-of-code-count :target-type
                                      lines-of-code-count :member-name
                                      "MeteredLinesOfCodeCount")
                                     (suppressed-lines-of-code-count
                                      :target-type lines-of-code-count
                                      :member-name
                                      "SuppressedLinesOfCodeCount")
                                     (findings-count :target-type
                                      findings-count :member-name
                                      "FindingsCount"))
                                    (:shape-name "MetricsSummary"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list names :member name)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list owners :member owner)

(smithy/sdk/shapes:define-enum provider-type
    common-lisp:nil
  (:code-commit "CodeCommit")
  (:git-hub "GitHub")
  (:bitbucket "Bitbucket")
  (:git-hub-enterprise-server "GitHubEnterpriseServer")
  (:s3-bucket "S3Bucket"))

(smithy/sdk/shapes:define-list provider-types :member provider-type)

(smithy/sdk/shapes:define-type pull-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-recommendation-feedback-request
                                common-lisp:nil
                                ((code-review-arn :target-type arn :required
                                  common-lisp:t :member-name "CodeReviewArn")
                                 (recommendation-id :target-type
                                  recommendation-id :required common-lisp:t
                                  :member-name "RecommendationId")
                                 (reactions :target-type reactions :required
                                  common-lisp:t :member-name "Reactions"))
                                (:shape-name
                                 "PutRecommendationFeedbackRequest"))

(smithy/sdk/shapes:define-output put-recommendation-feedback-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutRecommendationFeedbackResponse"))

(smithy/sdk/shapes:define-enum reaction
    common-lisp:nil
  (:thumbs-up "ThumbsUp")
  (:thumbs-down "ThumbsDown"))

(smithy/sdk/shapes:define-list reactions :member reaction)

(smithy/sdk/shapes:define-enum recommendation-category
    common-lisp:nil
  (:aws-best-practices "AWSBestPractices")
  (:aws-cloudformation-issues "AWSCloudFormationIssues")
  (:duplicate-code "DuplicateCode")
  (:code-maintenance-issues "CodeMaintenanceIssues")
  (:concurrency-issues "ConcurrencyIssues")
  (:input-validations "InputValidations")
  (:python-best-practices "PythonBestPractices")
  (:java-best-practices "JavaBestPractices")
  (:resource-leaks "ResourceLeaks")
  (:security-issues "SecurityIssues")
  (:code-inconsistencies "CodeInconsistencies"))

(smithy/sdk/shapes:define-structure recommendation-feedback common-lisp:nil
                                    ((code-review-arn :target-type arn
                                      :member-name "CodeReviewArn")
                                     (recommendation-id :target-type
                                      recommendation-id :member-name
                                      "RecommendationId")
                                     (reactions :target-type reactions
                                      :member-name "Reactions")
                                     (user-id :target-type user-id :member-name
                                      "UserId")
                                     (created-time-stamp :target-type
                                      time-stamp :member-name
                                      "CreatedTimeStamp")
                                     (last-updated-time-stamp :target-type
                                      time-stamp :member-name
                                      "LastUpdatedTimeStamp"))
                                    (:shape-name "RecommendationFeedback"))

(smithy/sdk/shapes:define-list recommendation-feedback-summaries :member
                               recommendation-feedback-summary)

(smithy/sdk/shapes:define-structure recommendation-feedback-summary
                                    common-lisp:nil
                                    ((recommendation-id :target-type
                                      recommendation-id :member-name
                                      "RecommendationId")
                                     (reactions :target-type reactions
                                      :member-name "Reactions")
                                     (user-id :target-type user-id :member-name
                                      "UserId"))
                                    (:shape-name
                                     "RecommendationFeedbackSummary"))

(smithy/sdk/shapes:define-type recommendation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-ids :member recommendation-id)

(smithy/sdk/shapes:define-list recommendation-summaries :member
                               recommendation-summary)

(smithy/sdk/shapes:define-structure recommendation-summary common-lisp:nil
                                    ((file-path :target-type file-path
                                      :member-name "FilePath")
                                     (recommendation-id :target-type
                                      recommendation-id :member-name
                                      "RecommendationId")
                                     (start-line :target-type line-number
                                      :member-name "StartLine")
                                     (end-line :target-type line-number
                                      :member-name "EndLine")
                                     (description :target-type text
                                      :member-name "Description")
                                     (recommendation-category :target-type
                                      recommendation-category :member-name
                                      "RecommendationCategory")
                                     (rule-metadata :target-type rule-metadata
                                      :member-name "RuleMetadata")
                                     (severity :target-type severity
                                      :member-name "Severity"))
                                    (:shape-name "RecommendationSummary"))

(smithy/sdk/shapes:define-structure repository common-lisp:nil
                                    ((code-commit :target-type
                                      code-commit-repository :member-name
                                      "CodeCommit")
                                     (bitbucket :target-type
                                      third-party-source-repository
                                      :member-name "Bitbucket")
                                     (git-hub-enterprise-server :target-type
                                      third-party-source-repository
                                      :member-name "GitHubEnterpriseServer")
                                     (s3bucket :target-type s3repository
                                      :member-name "S3Bucket"))
                                    (:shape-name "Repository"))

(smithy/sdk/shapes:define-structure repository-analysis common-lisp:nil
                                    ((repository-head :target-type
                                      repository-head-source-code-type
                                      :member-name "RepositoryHead")
                                     (source-code-type :target-type
                                      source-code-type :member-name
                                      "SourceCodeType"))
                                    (:shape-name "RepositoryAnalysis"))

(smithy/sdk/shapes:define-structure repository-association common-lisp:nil
                                    ((association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (association-arn :target-type arn
                                      :member-name "AssociationArn")
                                     (connection-arn :target-type
                                      connection-arn :member-name
                                      "ConnectionArn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (state :target-type
                                      repository-association-state :member-name
                                      "State")
                                     (state-reason :target-type state-reason
                                      :member-name "StateReason")
                                     (last-updated-time-stamp :target-type
                                      time-stamp :member-name
                                      "LastUpdatedTimeStamp")
                                     (created-time-stamp :target-type
                                      time-stamp :member-name
                                      "CreatedTimeStamp")
                                     (kmskey-details :target-type
                                      kmskey-details :member-name
                                      "KMSKeyDetails")
                                     (s3repository-details :target-type
                                      s3repository-details :member-name
                                      "S3RepositoryDetails"))
                                    (:shape-name "RepositoryAssociation"))

(smithy/sdk/shapes:define-enum repository-association-state
    common-lisp:nil
  (:associated "Associated")
  (:associating "Associating")
  (:failed "Failed")
  (:disassociating "Disassociating")
  (:disassociated "Disassociated"))

(smithy/sdk/shapes:define-list repository-association-states :member
                               repository-association-state)

(smithy/sdk/shapes:define-list repository-association-summaries :member
                               repository-association-summary)

(smithy/sdk/shapes:define-structure repository-association-summary
                                    common-lisp:nil
                                    ((association-arn :target-type arn
                                      :member-name "AssociationArn")
                                     (connection-arn :target-type
                                      connection-arn :member-name
                                      "ConnectionArn")
                                     (last-updated-time-stamp :target-type
                                      time-stamp :member-name
                                      "LastUpdatedTimeStamp")
                                     (association-id :target-type
                                      association-id :member-name
                                      "AssociationId")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (state :target-type
                                      repository-association-state :member-name
                                      "State"))
                                    (:shape-name
                                     "RepositoryAssociationSummary"))

(smithy/sdk/shapes:define-structure repository-head-source-code-type
                                    common-lisp:nil
                                    ((branch-name :target-type branch-name
                                      :required common-lisp:t :member-name
                                      "BranchName"))
                                    (:shape-name
                                     "RepositoryHeadSourceCodeType"))

(smithy/sdk/shapes:define-list repository-names :member name)

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure request-metadata common-lisp:nil
                                    ((request-id :target-type request-id
                                      :member-name "RequestId")
                                     (requester :target-type requester
                                      :member-name "Requester")
                                     (event-info :target-type event-info
                                      :member-name "EventInfo")
                                     (vendor-name :target-type vendor-name
                                      :member-name "VendorName"))
                                    (:shape-name "RequestMetadata"))

(smithy/sdk/shapes:define-type requester smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-type rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-metadata common-lisp:nil
                                    ((rule-id :target-type rule-id :member-name
                                      "RuleId")
                                     (rule-name :target-type rule-name
                                      :member-name "RuleName")
                                     (short-description :target-type
                                      short-description :member-name
                                      "ShortDescription")
                                     (long-description :target-type
                                      long-description :member-name
                                      "LongDescription")
                                     (rule-tags :target-type rule-tags
                                      :member-name "RuleTags"))
                                    (:shape-name "RuleMetadata"))

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rule-tags :member rule-tag)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-repository common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (details :target-type s3repository-details
                                      :member-name "Details"))
                                    (:shape-name "S3BucketRepository"))

(smithy/sdk/shapes:define-structure s3repository common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName"))
                                    (:shape-name "S3Repository"))

(smithy/sdk/shapes:define-structure s3repository-details common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "BucketName")
                                     (code-artifacts :target-type
                                      code-artifacts :member-name
                                      "CodeArtifacts"))
                                    (:shape-name "S3RepositoryDetails"))

(smithy/sdk/shapes:define-enum severity
    common-lisp:nil
  (:info "Info")
  (:low "Low")
  (:medium "Medium")
  (:high "High")
  (:critical "Critical"))

(smithy/sdk/shapes:define-type short-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-code-artifacts-object-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-code-type common-lisp:nil
                                    ((commit-diff :target-type
                                      commit-diff-source-code-type :member-name
                                      "CommitDiff")
                                     (repository-head :target-type
                                      repository-head-source-code-type
                                      :member-name "RepositoryHead")
                                     (branch-diff :target-type
                                      branch-diff-source-code-type :member-name
                                      "BranchDiff")
                                     (s3bucket-repository :target-type
                                      s3bucket-repository :member-name
                                      "S3BucketRepository")
                                     (request-metadata :target-type
                                      request-metadata :member-name
                                      "RequestMetadata"))
                                    (:shape-name "SourceCodeType"))

(smithy/sdk/shapes:define-type state-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type association-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure third-party-source-repository
                                    common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (connection-arn :target-type
                                      connection-arn :required common-lisp:t
                                      :member-name "ConnectionArn")
                                     (owner :target-type owner :required
                                      common-lisp:t :member-name "Owner"))
                                    (:shape-name "ThirdPartySourceRepository"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:pull-request "PullRequest")
  (:repository-analysis "RepositoryAnalysis"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type association-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-ids :member user-id)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class codeguru-reviewer-error))

(smithy/sdk/shapes:define-enum vendor-name
    common-lisp:nil
  (:github "GitHub")
  (:gitlab "GitLab")
  (:native-s3 "NativeS3"))

(smithy/sdk/operation:define-operation associate-repository :shape-name
                                       "AssociateRepository" :input
                                       associate-repository-request :output
                                       associate-repository-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/associations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-code-review :shape-name
                                       "CreateCodeReview" :input
                                       create-code-review-request :output
                                       create-code-review-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/codereviews" :code
                                       200)

(smithy/sdk/operation:define-operation describe-code-review :shape-name
                                       "DescribeCodeReview" :input
                                       describe-code-review-request :output
                                       describe-code-review-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/codereviews/{CodeReviewArn}" :code 200)

(smithy/sdk/operation:define-operation describe-recommendation-feedback
                                       :shape-name
                                       "DescribeRecommendationFeedback" :input
                                       describe-recommendation-feedback-request
                                       :output
                                       describe-recommendation-feedback-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/feedback/{CodeReviewArn}" :code 200)

(smithy/sdk/operation:define-operation describe-repository-association
                                       :shape-name
                                       "DescribeRepositoryAssociation" :input
                                       describe-repository-association-request
                                       :output
                                       describe-repository-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/associations/{AssociationArn}" :code
                                       200)

(smithy/sdk/operation:define-operation disassociate-repository :shape-name
                                       "DisassociateRepository" :input
                                       disassociate-repository-request :output
                                       disassociate-repository-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/associations/{AssociationArn}" :code
                                       200)

(smithy/sdk/operation:define-operation list-code-reviews :shape-name
                                       "ListCodeReviews" :input
                                       list-code-reviews-request :output
                                       list-code-reviews-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/codereviews" :code
                                       200)

(smithy/sdk/operation:define-operation list-recommendation-feedback :shape-name
                                       "ListRecommendationFeedback" :input
                                       list-recommendation-feedback-request
                                       :output
                                       list-recommendation-feedback-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/feedback/{CodeReviewArn}/RecommendationFeedback"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recommendations :shape-name
                                       "ListRecommendations" :input
                                       list-recommendations-request :output
                                       list-recommendations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/codereviews/{CodeReviewArn}/Recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-repository-associations :shape-name
                                       "ListRepositoryAssociations" :input
                                       list-repository-associations-request
                                       :output
                                       list-repository-associations-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/associations" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-recommendation-feedback :shape-name
                                       "PutRecommendationFeedback" :input
                                       put-recommendation-feedback-request
                                       :output
                                       put-recommendation-feedback-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/feedback" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)
