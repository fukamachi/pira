(uiop/package:define-package #:pira/trustedadvisor (:use)
                             (:export #:account-id #:account-recommendation-arn
                              #:account-recommendation-identifier
                              #:account-recommendation-lifecycle-summary
                              #:account-recommendation-lifecycle-summary-list
                              #:batch-update-recommendation-resource-exclusion
                              #:check-arn #:check-identifier #:check-summary
                              #:check-summary-list #:exclusion-status
                              #:get-organization-recommendation
                              #:get-recommendation #:list-checks
                              #:list-organization-recommendation-accounts
                              #:list-organization-recommendation-resources
                              #:list-organization-recommendations
                              #:list-recommendation-resources
                              #:list-recommendations
                              #:organization-recommendation
                              #:organization-recommendation-arn
                              #:organization-recommendation-identifier
                              #:organization-recommendation-resource-summary
                              #:organization-recommendation-resource-summary-list
                              #:organization-recommendation-summary
                              #:organization-recommendation-summary-list
                              #:recommendation #:recommendation-aws-service
                              #:recommendation-aws-service-list
                              #:recommendation-cost-optimizing-aggregates
                              #:recommendation-language
                              #:recommendation-lifecycle-stage
                              #:recommendation-pillar
                              #:recommendation-pillar-list
                              #:recommendation-pillar-specific-aggregates
                              #:recommendation-region-code
                              #:recommendation-resource-arn
                              #:recommendation-resource-exclusion
                              #:recommendation-resource-exclusion-list
                              #:recommendation-resource-summary
                              #:recommendation-resource-summary-list
                              #:recommendation-resources-aggregates
                              #:recommendation-source #:recommendation-status
                              #:recommendation-summary
                              #:recommendation-summary-list
                              #:recommendation-type
                              #:recommendation-update-reason #:resource-status
                              #:string-map #:trusted-advisor
                              #:update-organization-recommendation-lifecycle
                              #:update-recommendation-lifecycle
                              #:update-recommendation-lifecycle-stage
                              #:update-recommendation-lifecycle-stage-reason-code
                              #:update-recommendation-resource-exclusion-error
                              #:update-recommendation-resource-exclusion-error-list))
(common-lisp:in-package #:pira/trustedadvisor)

(smithy/sdk/service:define-service trusted-advisor :shape-name "TrustedAdvisor"
                                   :version "2022-09-15" :title
                                   "TrustedAdvisor Public API" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "TrustedAdvisor")
                                      ("arnNamespace" . "trustedadvisor")
                                      ("cloudTrailEventSource"
                                       . "trustedadvisor.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "trustedadvisor"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-recommendation-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-recommendation-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-recommendation-lifecycle-summary
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (account-recommendation-arn :target-type
                                      account-recommendation-arn :member-name
                                      "accountRecommendationArn")
                                     (lifecycle-stage :target-type
                                      recommendation-lifecycle-stage
                                      :member-name "lifecycleStage")
                                     (updated-on-behalf-of :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedOnBehalfOf")
                                     (updated-on-behalf-of-job-title
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedOnBehalfOfJobTitle")
                                     (update-reason :target-type
                                      recommendation-update-reason :member-name
                                      "updateReason")
                                     (update-reason-code :target-type
                                      update-recommendation-lifecycle-stage-reason-code
                                      :member-name "updateReasonCode")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name
                                     "AccountRecommendationLifecycleSummary"))

(smithy/sdk/shapes:define-list account-recommendation-lifecycle-summary-list
                               :member account-recommendation-lifecycle-summary)

(smithy/sdk/shapes:define-input
 batch-update-recommendation-resource-exclusion-request common-lisp:nil
 ((recommendation-resource-exclusions :target-type
   recommendation-resource-exclusion-list :required common-lisp:t :member-name
   "recommendationResourceExclusions"))
 (:shape-name "BatchUpdateRecommendationResourceExclusionRequest"))

(smithy/sdk/shapes:define-output
 batch-update-recommendation-resource-exclusion-response common-lisp:nil
 ((batch-update-recommendation-resource-exclusion-errors :target-type
   update-recommendation-resource-exclusion-error-list :required common-lisp:t
   :member-name "batchUpdateRecommendationResourceExclusionErrors"))
 (:shape-name "BatchUpdateRecommendationResourceExclusionResponse"))

(smithy/sdk/shapes:define-type check-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type check-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure check-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type check-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "description")
                                     (pillars :target-type
                                      recommendation-pillar-list :required
                                      common-lisp:t :member-name "pillars")
                                     (aws-services :target-type
                                      recommendation-aws-service-list :required
                                      common-lisp:t :member-name "awsServices")
                                     (source :target-type recommendation-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (metadata :target-type string-map
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name "CheckSummary"))

(smithy/sdk/shapes:define-list check-summary-list :member check-summary)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum exclusion-status
    common-lisp:nil
  (:excluded "excluded")
  (:included "included"))

(smithy/sdk/shapes:define-input get-organization-recommendation-request
                                common-lisp:nil
                                ((organization-recommendation-identifier
                                  :target-type
                                  organization-recommendation-identifier
                                  :required common-lisp:t :member-name
                                  "organizationRecommendationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetOrganizationRecommendationRequest"))

(smithy/sdk/shapes:define-output get-organization-recommendation-response
                                 common-lisp:nil
                                 ((organization-recommendation :target-type
                                   organization-recommendation :member-name
                                   "organizationRecommendation"))
                                 (:shape-name
                                  "GetOrganizationRecommendationResponse"))

(smithy/sdk/shapes:define-input get-recommendation-request common-lisp:nil
                                ((recommendation-identifier :target-type
                                  account-recommendation-identifier :required
                                  common-lisp:t :member-name
                                  "recommendationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRecommendationRequest"))

(smithy/sdk/shapes:define-output get-recommendation-response common-lisp:nil
                                 ((recommendation :target-type recommendation
                                   :member-name "recommendation"))
                                 (:shape-name "GetRecommendationResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-checks-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (pillar :target-type recommendation-pillar
                                  :member-name "pillar" :http-query "pillar")
                                 (aws-service :target-type
                                  recommendation-aws-service :member-name
                                  "awsService" :http-query "awsService")
                                 (source :target-type recommendation-source
                                  :member-name "source" :http-query "source")
                                 (language :target-type recommendation-language
                                  :member-name "language" :http-query
                                  "language"))
                                (:shape-name "ListChecksRequest"))

(smithy/sdk/shapes:define-output list-checks-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (check-summaries :target-type
                                   check-summary-list :required common-lisp:t
                                   :member-name "checkSummaries"))
                                 (:shape-name "ListChecksResponse"))

(smithy/sdk/shapes:define-input
 list-organization-recommendation-accounts-request common-lisp:nil
 ((next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken" :http-query "nextToken")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults")
  (organization-recommendation-identifier :target-type
   organization-recommendation-identifier :required common-lisp:t :member-name
   "organizationRecommendationIdentifier" :http-label common-lisp:t)
  (affected-account-id :target-type account-id :member-name "affectedAccountId"
   :http-query "affectedAccountId"))
 (:shape-name "ListOrganizationRecommendationAccountsRequest"))

(smithy/sdk/shapes:define-output
 list-organization-recommendation-accounts-response common-lisp:nil
 ((next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken")
  (account-recommendation-lifecycle-summaries :target-type
   account-recommendation-lifecycle-summary-list :required common-lisp:t
   :member-name "accountRecommendationLifecycleSummaries"))
 (:shape-name "ListOrganizationRecommendationAccountsResponse"))

(smithy/sdk/shapes:define-input
 list-organization-recommendation-resources-request common-lisp:nil
 ((next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken" :http-query "nextToken")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults")
  (status :target-type resource-status :member-name "status" :http-query
   "status")
  (exclusion-status :target-type exclusion-status :member-name
   "exclusionStatus" :http-query "exclusionStatus")
  (region-code :target-type smithy/sdk/smithy-types:string :member-name
   "regionCode" :http-query "regionCode")
  (organization-recommendation-identifier :target-type
   organization-recommendation-identifier :required common-lisp:t :member-name
   "organizationRecommendationIdentifier" :http-label common-lisp:t)
  (affected-account-id :target-type account-id :member-name "affectedAccountId"
   :http-query "affectedAccountId"))
 (:shape-name "ListOrganizationRecommendationResourcesRequest"))

(smithy/sdk/shapes:define-output
 list-organization-recommendation-resources-response common-lisp:nil
 ((next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken")
  (organization-recommendation-resource-summaries :target-type
   organization-recommendation-resource-summary-list :required common-lisp:t
   :member-name "organizationRecommendationResourceSummaries"))
 (:shape-name "ListOrganizationRecommendationResourcesResponse"))

(smithy/sdk/shapes:define-input list-organization-recommendations-request
                                common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (type :target-type recommendation-type
                                  :member-name "type" :http-query "type")
                                 (status :target-type recommendation-status
                                  :member-name "status" :http-query "status")
                                 (pillar :target-type recommendation-pillar
                                  :member-name "pillar" :http-query "pillar")
                                 (aws-service :target-type
                                  recommendation-aws-service :member-name
                                  "awsService" :http-query "awsService")
                                 (source :target-type recommendation-source
                                  :member-name "source" :http-query "source")
                                 (check-identifier :target-type
                                  check-identifier :member-name
                                  "checkIdentifier" :http-query
                                  "checkIdentifier")
                                 (after-last-updated-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "afterLastUpdatedAt" :http-query
                                  "afterLastUpdatedAt")
                                 (before-last-updated-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "beforeLastUpdatedAt"
                                  :http-query "beforeLastUpdatedAt"))
                                (:shape-name
                                 "ListOrganizationRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-organization-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (organization-recommendation-summaries
                                   :target-type
                                   organization-recommendation-summary-list
                                   :required common-lisp:t :member-name
                                   "organizationRecommendationSummaries"))
                                 (:shape-name
                                  "ListOrganizationRecommendationsResponse"))

(smithy/sdk/shapes:define-input list-recommendation-resources-request
                                common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (status :target-type resource-status
                                  :member-name "status" :http-query "status")
                                 (exclusion-status :target-type
                                  exclusion-status :member-name
                                  "exclusionStatus" :http-query
                                  "exclusionStatus")
                                 (region-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "regionCode" :http-query "regionCode")
                                 (recommendation-identifier :target-type
                                  account-recommendation-identifier :required
                                  common-lisp:t :member-name
                                  "recommendationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListRecommendationResourcesRequest"))

(smithy/sdk/shapes:define-output list-recommendation-resources-response
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (recommendation-resource-summaries
                                   :target-type
                                   recommendation-resource-summary-list
                                   :required common-lisp:t :member-name
                                   "recommendationResourceSummaries"))
                                 (:shape-name
                                  "ListRecommendationResourcesResponse"))

(smithy/sdk/shapes:define-input list-recommendations-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (type :target-type recommendation-type
                                  :member-name "type" :http-query "type")
                                 (status :target-type recommendation-status
                                  :member-name "status" :http-query "status")
                                 (pillar :target-type recommendation-pillar
                                  :member-name "pillar" :http-query "pillar")
                                 (aws-service :target-type
                                  recommendation-aws-service :member-name
                                  "awsService" :http-query "awsService")
                                 (source :target-type recommendation-source
                                  :member-name "source" :http-query "source")
                                 (check-identifier :target-type
                                  check-identifier :member-name
                                  "checkIdentifier" :http-query
                                  "checkIdentifier")
                                 (after-last-updated-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "afterLastUpdatedAt" :http-query
                                  "afterLastUpdatedAt")
                                 (before-last-updated-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "beforeLastUpdatedAt"
                                  :http-query "beforeLastUpdatedAt"))
                                (:shape-name "ListRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-recommendations-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (recommendation-summaries :target-type
                                   recommendation-summary-list :required
                                   common-lisp:t :member-name
                                   "recommendationSummaries"))
                                 (:shape-name "ListRecommendationsResponse"))

(smithy/sdk/shapes:define-structure organization-recommendation common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type recommendation-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (check-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkArn")
                                     (status :target-type recommendation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (lifecycle-stage :target-type
                                      recommendation-lifecycle-stage
                                      :member-name "lifecycleStage")
                                     (pillars :target-type
                                      recommendation-pillar-list :required
                                      common-lisp:t :member-name "pillars")
                                     (source :target-type recommendation-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (aws-services :target-type
                                      recommendation-aws-service-list
                                      :member-name "awsServices")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (resources-aggregates :target-type
                                      recommendation-resources-aggregates
                                      :required common-lisp:t :member-name
                                      "resourcesAggregates")
                                     (pillar-specific-aggregates :target-type
                                      recommendation-pillar-specific-aggregates
                                      :member-name "pillarSpecificAggregates")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (arn :target-type
                                      organization-recommendation-arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "description")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "createdBy")
                                     (updated-on-behalf-of :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedOnBehalfOf")
                                     (updated-on-behalf-of-job-title
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedOnBehalfOfJobTitle")
                                     (update-reason :target-type
                                      recommendation-update-reason :member-name
                                      "updateReason")
                                     (update-reason-code :target-type
                                      update-recommendation-lifecycle-stage-reason-code
                                      :member-name "updateReasonCode")
                                     (resolved-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "resolvedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "OrganizationRecommendation"))

(smithy/sdk/shapes:define-type organization-recommendation-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-recommendation-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 organization-recommendation-resource-summary common-lisp:nil
 ((id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "id")
  (arn :target-type recommendation-resource-arn :required common-lisp:t
   :member-name "arn")
  (aws-resource-id :target-type smithy/sdk/smithy-types:string :required
   common-lisp:t :member-name "awsResourceId")
  (region-code :target-type recommendation-region-code :required common-lisp:t
   :member-name "regionCode")
  (status :target-type resource-status :required common-lisp:t :member-name
   "status")
  (metadata :target-type string-map :required common-lisp:t :member-name
   "metadata")
  (last-updated-at :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "lastUpdatedAt" :timestamp-format "date-time")
  (exclusion-status :target-type exclusion-status :member-name
   "exclusionStatus")
  (account-id :target-type account-id :member-name "accountId")
  (recommendation-arn :target-type organization-recommendation-arn :required
   common-lisp:t :member-name "recommendationArn"))
 (:shape-name "OrganizationRecommendationResourceSummary"))

(smithy/sdk/shapes:define-list
 organization-recommendation-resource-summary-list :member
 organization-recommendation-resource-summary)

(smithy/sdk/shapes:define-structure organization-recommendation-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type recommendation-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (check-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkArn")
                                     (status :target-type recommendation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (lifecycle-stage :target-type
                                      recommendation-lifecycle-stage
                                      :member-name "lifecycleStage")
                                     (pillars :target-type
                                      recommendation-pillar-list :required
                                      common-lisp:t :member-name "pillars")
                                     (source :target-type recommendation-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (aws-services :target-type
                                      recommendation-aws-service-list
                                      :member-name "awsServices")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (resources-aggregates :target-type
                                      recommendation-resources-aggregates
                                      :required common-lisp:t :member-name
                                      "resourcesAggregates")
                                     (pillar-specific-aggregates :target-type
                                      recommendation-pillar-specific-aggregates
                                      :member-name "pillarSpecificAggregates")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (arn :target-type
                                      organization-recommendation-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "OrganizationRecommendationSummary"))

(smithy/sdk/shapes:define-list organization-recommendation-summary-list :member
                               organization-recommendation-summary)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type recommendation-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (check-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkArn")
                                     (status :target-type recommendation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (lifecycle-stage :target-type
                                      recommendation-lifecycle-stage
                                      :member-name "lifecycleStage")
                                     (pillars :target-type
                                      recommendation-pillar-list :required
                                      common-lisp:t :member-name "pillars")
                                     (source :target-type recommendation-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (aws-services :target-type
                                      recommendation-aws-service-list
                                      :member-name "awsServices")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (resources-aggregates :target-type
                                      recommendation-resources-aggregates
                                      :required common-lisp:t :member-name
                                      "resourcesAggregates")
                                     (pillar-specific-aggregates :target-type
                                      recommendation-pillar-specific-aggregates
                                      :member-name "pillarSpecificAggregates")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (arn :target-type
                                      account-recommendation-arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "description")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "createdBy")
                                     (updated-on-behalf-of :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedOnBehalfOf")
                                     (updated-on-behalf-of-job-title
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedOnBehalfOfJobTitle")
                                     (update-reason :target-type
                                      recommendation-update-reason :member-name
                                      "updateReason")
                                     (update-reason-code :target-type
                                      update-recommendation-lifecycle-stage-reason-code
                                      :member-name "updateReasonCode")
                                     (resolved-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "resolvedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-type recommendation-aws-service
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recommendation-aws-service-list :member
                               recommendation-aws-service)

(smithy/sdk/shapes:define-structure recommendation-cost-optimizing-aggregates
                                    common-lisp:nil
                                    ((estimated-monthly-savings :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "estimatedMonthlySavings")
                                     (estimated-percent-monthly-savings
                                      :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "estimatedPercentMonthlySavings"))
                                    (:shape-name
                                     "RecommendationCostOptimizingAggregates"))

(smithy/sdk/shapes:define-enum recommendation-language
    common-lisp:nil
  (:english "en")
  (:japanese "ja")
  (:chinese "zh")
  (:french "fr")
  (:german "de")
  (:korean "ko")
  (:traditional-chinese "zh_TW")
  (:italian "it")
  (:spanish "es")
  (:brazilian-portuguese "pt_BR")
  (:bahasa-indonesia "id"))

(smithy/sdk/shapes:define-enum recommendation-lifecycle-stage
    common-lisp:nil
  (:in-progress "in_progress")
  (:pending-response "pending_response")
  (:dismissed "dismissed")
  (:resolved "resolved"))

(smithy/sdk/shapes:define-enum recommendation-pillar
    common-lisp:nil
  (:cost-optimizing "cost_optimizing")
  (:performance "performance")
  (:security "security")
  (:service-limits "service_limits")
  (:fault-tolerance "fault_tolerance")
  (:operational-excellence "operational_excellence"))

(smithy/sdk/shapes:define-list recommendation-pillar-list :member
                               recommendation-pillar)

(smithy/sdk/shapes:define-structure recommendation-pillar-specific-aggregates
                                    common-lisp:nil
                                    ((cost-optimizing :target-type
                                      recommendation-cost-optimizing-aggregates
                                      :member-name "costOptimizing"))
                                    (:shape-name
                                     "RecommendationPillarSpecificAggregates"))

(smithy/sdk/shapes:define-type recommendation-region-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation-resource-exclusion
                                    common-lisp:nil
                                    ((arn :target-type
                                      recommendation-resource-arn :required
                                      common-lisp:t :member-name "arn")
                                     (is-excluded :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isExcluded"))
                                    (:shape-name
                                     "RecommendationResourceExclusion"))

(smithy/sdk/shapes:define-list recommendation-resource-exclusion-list :member
                               recommendation-resource-exclusion)

(smithy/sdk/shapes:define-structure recommendation-resource-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      recommendation-resource-arn :required
                                      common-lisp:t :member-name "arn")
                                     (aws-resource-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "awsResourceId")
                                     (region-code :target-type
                                      recommendation-region-code :required
                                      common-lisp:t :member-name "regionCode")
                                     (status :target-type resource-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (metadata :target-type string-map
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt" :timestamp-format
                                      "date-time")
                                     (exclusion-status :target-type
                                      exclusion-status :member-name
                                      "exclusionStatus")
                                     (recommendation-arn :target-type
                                      account-recommendation-arn :required
                                      common-lisp:t :member-name
                                      "recommendationArn"))
                                    (:shape-name
                                     "RecommendationResourceSummary"))

(smithy/sdk/shapes:define-list recommendation-resource-summary-list :member
                               recommendation-resource-summary)

(smithy/sdk/shapes:define-structure recommendation-resources-aggregates
                                    common-lisp:nil
                                    ((ok-count :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "okCount")
                                     (warning-count :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "warningCount")
                                     (error-count :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "errorCount"))
                                    (:shape-name
                                     "RecommendationResourcesAggregates"))

(smithy/sdk/shapes:define-enum recommendation-source
    common-lisp:nil
  (:aws-config "aws_config")
  (:compute-optimizer "compute_optimizer")
  (:cost-explorer "cost_explorer")
  (:lse "lse")
  (:manual "manual")
  (:pse "pse")
  (:rds "rds")
  (:resilience "resilience")
  (:resilience-hub "resilience_hub")
  (:security-hub "security_hub")
  (:stir "stir")
  (:ta-check "ta_check")
  (:well-architected "well_architected"))

(smithy/sdk/shapes:define-enum recommendation-status
    common-lisp:nil
  (:ok "ok")
  (:warning "warning")
  (:error "error"))

(smithy/sdk/shapes:define-structure recommendation-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type recommendation-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (check-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkArn")
                                     (status :target-type recommendation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (lifecycle-stage :target-type
                                      recommendation-lifecycle-stage
                                      :member-name "lifecycleStage")
                                     (pillars :target-type
                                      recommendation-pillar-list :required
                                      common-lisp:t :member-name "pillars")
                                     (source :target-type recommendation-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (aws-services :target-type
                                      recommendation-aws-service-list
                                      :member-name "awsServices")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (resources-aggregates :target-type
                                      recommendation-resources-aggregates
                                      :required common-lisp:t :member-name
                                      "resourcesAggregates")
                                     (pillar-specific-aggregates :target-type
                                      recommendation-pillar-specific-aggregates
                                      :member-name "pillarSpecificAggregates")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (arn :target-type
                                      account-recommendation-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "RecommendationSummary"))

(smithy/sdk/shapes:define-list recommendation-summary-list :member
                               recommendation-summary)

(smithy/sdk/shapes:define-enum recommendation-type
    common-lisp:nil
  (:standard "standard")
  (:priority "priority"))

(smithy/sdk/shapes:define-type recommendation-update-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-status
    common-lisp:nil
  (:ok "ok")
  (:warning "warning")
  (:error "error"))

(smithy/sdk/shapes:define-map string-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input
 update-organization-recommendation-lifecycle-request common-lisp:nil
 ((lifecycle-stage :target-type update-recommendation-lifecycle-stage :required
   common-lisp:t :member-name "lifecycleStage")
  (update-reason :target-type recommendation-update-reason :member-name
   "updateReason")
  (update-reason-code :target-type
   update-recommendation-lifecycle-stage-reason-code :member-name
   "updateReasonCode")
  (organization-recommendation-identifier :target-type
   organization-recommendation-identifier :required common-lisp:t :member-name
   "organizationRecommendationIdentifier" :http-label common-lisp:t))
 (:shape-name "UpdateOrganizationRecommendationLifecycleRequest"))

(smithy/sdk/shapes:define-input update-recommendation-lifecycle-request
                                common-lisp:nil
                                ((lifecycle-stage :target-type
                                  update-recommendation-lifecycle-stage
                                  :required common-lisp:t :member-name
                                  "lifecycleStage")
                                 (update-reason :target-type
                                  recommendation-update-reason :member-name
                                  "updateReason")
                                 (update-reason-code :target-type
                                  update-recommendation-lifecycle-stage-reason-code
                                  :member-name "updateReasonCode")
                                 (recommendation-identifier :target-type
                                  account-recommendation-identifier :required
                                  common-lisp:t :member-name
                                  "recommendationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "UpdateRecommendationLifecycleRequest"))

(smithy/sdk/shapes:define-enum update-recommendation-lifecycle-stage
    common-lisp:nil
  (:pending-response "pending_response")
  (:in-progress "in_progress")
  (:dismissed "dismissed")
  (:resolved "resolved"))

(smithy/sdk/shapes:define-enum update-recommendation-lifecycle-stage-reason-code
    common-lisp:nil
  (:non-critical-account "non_critical_account")
  (:temporary-account "temporary_account")
  (:valid-business-case "valid_business_case")
  (:other-methods-available "other_methods_available")
  (:low-priority "low_priority")
  (:not-applicable "not_applicable")
  (:other "other"))

(smithy/sdk/shapes:define-structure
 update-recommendation-resource-exclusion-error common-lisp:nil
 ((arn :target-type recommendation-resource-arn :member-name "arn")
  (error-code :target-type smithy/sdk/smithy-types:string :member-name
   "errorCode")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage"))
 (:shape-name "UpdateRecommendationResourceExclusionError"))

(smithy/sdk/shapes:define-list
 update-recommendation-resource-exclusion-error-list :member
 update-recommendation-resource-exclusion-error)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation
 batch-update-recommendation-resource-exclusion :shape-name
 "BatchUpdateRecommendationResourceExclusion" :input
 batch-update-recommendation-resource-exclusion-request :output
 batch-update-recommendation-resource-exclusion-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  throttling-exception validation-exception)
 :method "PUT" :uri "/v1/batch-update-recommendation-resource-exclusion" :code
 200)

(smithy/sdk/operation:define-operation get-organization-recommendation
                                       :shape-name
                                       "GetOrganizationRecommendation" :input
                                       get-organization-recommendation-request
                                       :output
                                       get-organization-recommendation-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/organization-recommendations/{organizationRecommendationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-recommendation :shape-name
                                       "GetRecommendation" :input
                                       get-recommendation-request :output
                                       get-recommendation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/recommendations/{recommendationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-checks :shape-name "ListChecks"
                                       :input list-checks-request :output
                                       list-checks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/checks" :code
                                       200)

(smithy/sdk/operation:define-operation
 list-organization-recommendation-accounts :shape-name
 "ListOrganizationRecommendationAccounts" :input
 list-organization-recommendation-accounts-request :output
 list-organization-recommendation-accounts-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/v1/organization-recommendations/{organizationRecommendationIdentifier}/accounts"
 :code 200)

(smithy/sdk/operation:define-operation
 list-organization-recommendation-resources :shape-name
 "ListOrganizationRecommendationResources" :input
 list-organization-recommendation-resources-request :output
 list-organization-recommendation-resources-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/v1/organization-recommendations/{organizationRecommendationIdentifier}/resources"
 :code 200)

(smithy/sdk/operation:define-operation list-organization-recommendations
                                       :shape-name
                                       "ListOrganizationRecommendations" :input
                                       list-organization-recommendations-request
                                       :output
                                       list-organization-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/organization-recommendations" :code
                                       200)

(smithy/sdk/operation:define-operation list-recommendation-resources
                                       :shape-name
                                       "ListRecommendationResources" :input
                                       list-recommendation-resources-request
                                       :output
                                       list-recommendation-resources-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/recommendations/{recommendationIdentifier}/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recommendations :shape-name
                                       "ListRecommendations" :input
                                       list-recommendations-request :output
                                       list-recommendations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-organization-recommendation-lifecycle :shape-name
 "UpdateOrganizationRecommendationLifecycle" :input
 update-organization-recommendation-lifecycle-request :output common-lisp:null
 :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri
 "/v1/organization-recommendations/{organizationRecommendationIdentifier}/lifecycle"
 :code 200)

(smithy/sdk/operation:define-operation update-recommendation-lifecycle
                                       :shape-name
                                       "UpdateRecommendationLifecycle" :input
                                       update-recommendation-lifecycle-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v1/recommendations/{recommendationIdentifier}/lifecycle"
                                       :code 200)
