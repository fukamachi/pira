(uiop/package:define-package #:pira/wellarchitected (:use)
                             (:export #:account-jira-configuration-input
                              #:account-jira-configuration-output
                              #:account-jira-issue-management-status
                              #:account-summary #:additional-resource-type
                              #:additional-resources
                              #:additional-resources-list #:answer
                              #:answer-reason #:answer-summaries
                              #:answer-summary #:application-arn
                              #:associate-lenses #:associate-profiles
                              #:aws-account-id #:aws-region #:base64string
                              #:best-practice #:best-practices
                              #:check-description #:check-detail
                              #:check-details #:check-failure-reason #:check-id
                              #:check-name #:check-provider #:check-status
                              #:check-status-count #:check-summaries
                              #:check-summary #:choice #:choice-answer
                              #:choice-answer-summaries #:choice-answer-summary
                              #:choice-answers #:choice-content
                              #:choice-content-display-text
                              #:choice-content-url #:choice-description
                              #:choice-id #:choice-improvement-plan
                              #:choice-improvement-plans #:choice-notes
                              #:choice-reason #:choice-status #:choice-title
                              #:choice-update #:choice-updates #:choices
                              #:client-request-token
                              #:consolidated-report-metric
                              #:consolidated-report-metrics #:count
                              #:create-lens-share #:create-lens-version
                              #:create-milestone #:create-profile
                              #:create-profile-share #:create-review-template
                              #:create-template-share #:create-workload
                              #:create-workload-share #:definition-type
                              #:delete-lens #:delete-lens-share
                              #:delete-profile #:delete-profile-share
                              #:delete-review-template #:delete-template-share
                              #:delete-workload #:delete-workload-share
                              #:difference-status #:disassociate-lenses
                              #:disassociate-profiles
                              #:discovery-integration-status #:display-text
                              #:exception-message #:exception-resource-id
                              #:exception-resource-type #:export-lens
                              #:flagged-resources #:get-answer
                              #:get-consolidated-report
                              #:get-consolidated-report-max-results
                              #:get-global-settings #:get-lens
                              #:get-lens-review #:get-lens-review-report
                              #:get-lens-version-difference #:get-milestone
                              #:get-profile #:get-profile-template
                              #:get-review-template
                              #:get-review-template-answer
                              #:get-review-template-lens-review #:get-workload
                              #:helpful-resource-url #:import-lens
                              #:import-lens-status #:improvement-plan-url
                              #:improvement-summaries #:improvement-summary
                              #:include-shared-resources #:integrating-service
                              #:integration-status #:integration-status-input
                              #:is-applicable #:is-major-version
                              #:is-review-owner-update-acknowledged
                              #:issue-management-type #:jira-configuration
                              #:jira-issue-url #:jira-project-key
                              #:jira-selected-question-configuration #:lens
                              #:lens-alias #:lens-aliases #:lens-arn
                              #:lens-description #:lens-json #:lens-metric
                              #:lens-metrics #:lens-name #:lens-name-prefix
                              #:lens-owner #:lens-review #:lens-review-report
                              #:lens-review-summaries #:lens-review-summary
                              #:lens-share-summaries #:lens-share-summary
                              #:lens-status #:lens-status-type #:lens-summaries
                              #:lens-summary #:lens-type #:lens-upgrade-summary
                              #:lens-version #:lenses-applied-count
                              #:list-answers #:list-answers-max-results
                              #:list-check-details #:list-check-summaries
                              #:list-lens-review-improvements
                              #:list-lens-review-improvements-max-results
                              #:list-lens-reviews #:list-lens-shares
                              #:list-lenses #:list-milestones
                              #:list-notifications
                              #:list-notifications-max-results
                              #:list-profile-notifications
                              #:list-profile-shares
                              #:list-profile-shares-max-results #:list-profiles
                              #:list-review-template-answers
                              #:list-review-template-answers-max-results
                              #:list-review-templates #:list-share-invitations
                              #:list-share-invitations-max-results
                              #:list-tags-for-resource #:list-template-shares
                              #:list-template-shares-max-results
                              #:list-workload-shares
                              #:list-workload-shares-max-results
                              #:list-workloads #:list-workloads-max-results
                              #:max-results #:max-selected-profile-choices
                              #:metric-type #:milestone #:milestone-name
                              #:milestone-number #:milestone-summaries
                              #:milestone-summary
                              #:min-selected-profile-choices #:next-token
                              #:notes #:notification-summaries
                              #:notification-summary #:notification-type
                              #:organization-sharing-status #:permission-type
                              #:pillar-difference #:pillar-differences
                              #:pillar-id #:pillar-metric #:pillar-metrics
                              #:pillar-name #:pillar-notes
                              #:pillar-review-summaries #:pillar-review-summary
                              #:profile #:profile-arn #:profile-arns
                              #:profile-choice #:profile-description
                              #:profile-name #:profile-name-prefix
                              #:profile-notification-summaries
                              #:profile-notification-summary
                              #:profile-notification-type #:profile-owner-type
                              #:profile-question #:profile-question-choices
                              #:profile-question-update
                              #:profile-question-updates #:profile-questions
                              #:profile-share-summaries #:profile-share-summary
                              #:profile-summaries #:profile-summary
                              #:profile-template #:profile-template-choice
                              #:profile-template-question
                              #:profile-template-question-choices
                              #:profile-version #:question #:question-counts
                              #:question-description #:question-difference
                              #:question-differences #:question-id
                              #:question-metric #:question-metrics
                              #:question-priority #:question-title
                              #:question-type #:quota-code #:report-format
                              #:resource-arn #:review-template
                              #:review-template-answer
                              #:review-template-answer-status
                              #:review-template-answer-summaries
                              #:review-template-answer-summary
                              #:review-template-arns
                              #:review-template-lens-aliases
                              #:review-template-lens-review
                              #:review-template-lenses
                              #:review-template-pillar-review-summaries
                              #:review-template-pillar-review-summary
                              #:review-template-summary
                              #:review-template-update-status
                              #:review-templates #:risk #:risk-counts
                              #:selected-choice-ids #:selected-choices
                              #:selected-pillar #:selected-pillars
                              #:selected-profile-choice-ids
                              #:selected-question-id #:selected-question-ids
                              #:service-code #:share-id #:share-invitation
                              #:share-invitation-action #:share-invitation-id
                              #:share-invitation-summaries
                              #:share-invitation-summary #:share-resource-type
                              #:share-status #:shared-with #:shared-with-prefix
                              #:status-message #:subdomain #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:template-arn #:template-description
                              #:template-name #:template-name-prefix
                              #:template-questions #:template-share-summaries
                              #:template-share-summary #:timestamp
                              #:trusted-advisor-integration-status
                              #:untag-resource #:update-answer
                              #:update-global-settings #:update-integration
                              #:update-lens-review #:update-profile
                              #:update-review-template
                              #:update-review-template-answer
                              #:update-review-template-lens-review
                              #:update-share-invitation #:update-workload
                              #:update-workload-share #:upgrade-lens-review
                              #:upgrade-profile-version
                              #:upgrade-review-template-lens-review #:urls
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-field-name
                              #:validation-exception-reason
                              #:version-differences
                              #:well-architected-api-service-lambda #:workload
                              #:workload-account-ids #:workload-applications
                              #:workload-architectural-design #:workload-arn
                              #:workload-aws-regions #:workload-description
                              #:workload-discovery-config
                              #:workload-environment #:workload-id
                              #:workload-improvement-status #:workload-industry
                              #:workload-industry-type
                              #:workload-issue-management-status
                              #:workload-jira-configuration-input
                              #:workload-jira-configuration-output
                              #:workload-lenses #:workload-name
                              #:workload-name-prefix #:workload-non-aws-region
                              #:workload-non-aws-regions
                              #:workload-pillar-priorities #:workload-profile
                              #:workload-profile-arns #:workload-profiles
                              #:workload-resource-definition
                              #:workload-review-owner #:workload-share
                              #:workload-share-summaries
                              #:workload-share-summary #:workload-summaries
                              #:workload-summary))
(common-lisp:in-package #:pira/wellarchitected)

(smithy/sdk/service:define-service well-architected-api-service-lambda
                                   :shape-name
                                   "WellArchitectedApiServiceLambda" :version
                                   "2020-03-31" :title
                                   "AWS Well-Architected Tool" :operations
                                   '(associate-lenses associate-profiles
                                     create-lens-share create-lens-version
                                     create-milestone create-profile
                                     create-profile-share
                                     create-review-template
                                     create-template-share create-workload
                                     create-workload-share delete-lens
                                     delete-lens-share delete-profile
                                     delete-profile-share
                                     delete-review-template
                                     delete-template-share delete-workload
                                     delete-workload-share disassociate-lenses
                                     disassociate-profiles export-lens
                                     get-answer get-consolidated-report
                                     get-global-settings get-lens
                                     get-lens-review get-lens-review-report
                                     get-lens-version-difference get-milestone
                                     get-profile get-profile-template
                                     get-review-template
                                     get-review-template-answer
                                     get-review-template-lens-review
                                     get-workload import-lens list-answers
                                     list-check-details list-check-summaries
                                     list-lenses list-lens-review-improvements
                                     list-lens-reviews list-lens-shares
                                     list-milestones list-notifications
                                     list-profile-notifications list-profiles
                                     list-profile-shares
                                     list-review-template-answers
                                     list-review-templates
                                     list-share-invitations
                                     list-tags-for-resource
                                     list-template-shares list-workloads
                                     list-workload-shares tag-resource
                                     untag-resource update-answer
                                     update-global-settings update-integration
                                     update-lens-review update-profile
                                     update-review-template
                                     update-review-template-answer
                                     update-review-template-lens-review
                                     update-share-invitation update-workload
                                     update-workload-share upgrade-lens-review
                                     upgrade-profile-version
                                     upgrade-review-template-lens-review)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "WellArchitected")
                                      ("arnNamespace" . "wellarchitected")
                                      ("cloudFormationName"
                                       . "WellArchitected")
                                      ("cloudTrailEventSource"
                                       . "wellarchitected.amazonaws.com")
                                      ("endpointPrefix" . "wellarchitected"))
                                     ("aws.auth#sigv4"
                                      ("name" . "wellarchitected"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-jira-configuration-input
                                    common-lisp:nil
                                    ((issue-management-status :target-type
                                      account-jira-issue-management-status
                                      :member-name "IssueManagementStatus")
                                     (issue-management-type :target-type
                                      issue-management-type :member-name
                                      "IssueManagementType")
                                     (jira-project-key :target-type
                                      jira-project-key :member-name
                                      "JiraProjectKey")
                                     (integration-status :target-type
                                      integration-status-input :member-name
                                      "IntegrationStatus"))
                                    (:shape-name
                                     "AccountJiraConfigurationInput"))

(smithy/sdk/shapes:define-structure account-jira-configuration-output
                                    common-lisp:nil
                                    ((integration-status :target-type
                                      integration-status :member-name
                                      "IntegrationStatus")
                                     (issue-management-status :target-type
                                      account-jira-issue-management-status
                                      :member-name "IssueManagementStatus")
                                     (issue-management-type :target-type
                                      issue-management-type :member-name
                                      "IssueManagementType")
                                     (subdomain :target-type subdomain
                                      :member-name "Subdomain")
                                     (jira-project-key :target-type
                                      jira-project-key :member-name
                                      "JiraProjectKey")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name
                                     "AccountJiraConfigurationOutput"))

(smithy/sdk/shapes:define-enum account-jira-issue-management-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-map account-summary :key check-status :value
                              check-status-count)

(smithy/sdk/shapes:define-enum additional-resource-type
    common-lisp:nil
  (:helpful-resource "HELPFUL_RESOURCE")
  (:improvement-plan "IMPROVEMENT_PLAN"))

(smithy/sdk/shapes:define-structure additional-resources common-lisp:nil
                                    ((type :target-type
                                      additional-resource-type :member-name
                                      "Type")
                                     (content :target-type urls :member-name
                                      "Content"))
                                    (:shape-name "AdditionalResources"))

(smithy/sdk/shapes:define-list additional-resources-list :member
                               additional-resources)

(smithy/sdk/shapes:define-structure answer common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (question-description :target-type
                                      question-description :member-name
                                      "QuestionDescription")
                                     (improvement-plan-url :target-type
                                      improvement-plan-url :member-name
                                      "ImprovementPlanUrl")
                                     (helpful-resource-url :target-type
                                      helpful-resource-url :member-name
                                      "HelpfulResourceUrl")
                                     (helpful-resource-display-text
                                      :target-type display-text :member-name
                                      "HelpfulResourceDisplayText")
                                     (choices :target-type choices :member-name
                                      "Choices")
                                     (selected-choices :target-type
                                      selected-choices :member-name
                                      "SelectedChoices")
                                     (choice-answers :target-type
                                      choice-answers :member-name
                                      "ChoiceAnswers")
                                     (is-applicable :target-type is-applicable
                                      :member-name "IsApplicable")
                                     (risk :target-type risk :member-name
                                      "Risk")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (reason :target-type answer-reason
                                      :member-name "Reason")
                                     (jira-configuration :target-type
                                      jira-configuration :member-name
                                      "JiraConfiguration"))
                                    (:shape-name "Answer"))

(smithy/sdk/shapes:define-enum answer-reason
    common-lisp:nil
  (:out-of-scope "OUT_OF_SCOPE")
  (:business-priorities "BUSINESS_PRIORITIES")
  (:architecture-constraints "ARCHITECTURE_CONSTRAINTS")
  (:other "OTHER")
  (:none "NONE"))

(smithy/sdk/shapes:define-list answer-summaries :member answer-summary)

(smithy/sdk/shapes:define-structure answer-summary common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (choices :target-type choices :member-name
                                      "Choices")
                                     (selected-choices :target-type
                                      selected-choices :member-name
                                      "SelectedChoices")
                                     (choice-answer-summaries :target-type
                                      choice-answer-summaries :member-name
                                      "ChoiceAnswerSummaries")
                                     (is-applicable :target-type is-applicable
                                      :member-name "IsApplicable")
                                     (risk :target-type risk :member-name
                                      "Risk")
                                     (reason :target-type answer-reason
                                      :member-name "Reason")
                                     (question-type :target-type question-type
                                      :member-name "QuestionType")
                                     (jira-configuration :target-type
                                      jira-configuration :member-name
                                      "JiraConfiguration"))
                                    (:shape-name "AnswerSummary"))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-lenses-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-aliases :target-type lens-aliases
                                  :required common-lisp:t :member-name
                                  "LensAliases"))
                                (:shape-name "AssociateLensesInput"))

(smithy/sdk/shapes:define-input associate-profiles-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (profile-arns :target-type profile-arns
                                  :required common-lisp:t :member-name
                                  "ProfileArns"))
                                (:shape-name "AssociateProfilesInput"))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type base64string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure best-practice common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (choice-title :target-type choice-title
                                      :member-name "ChoiceTitle"))
                                    (:shape-name "BestPractice"))

(smithy/sdk/shapes:define-list best-practices :member best-practice)

(smithy/sdk/shapes:define-type check-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure check-detail common-lisp:nil
                                    ((id :target-type check-id :member-name
                                      "Id")
                                     (name :target-type check-name :member-name
                                      "Name")
                                     (description :target-type
                                      check-description :member-name
                                      "Description")
                                     (provider :target-type check-provider
                                      :member-name "Provider")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (status :target-type check-status
                                      :member-name "Status")
                                     (account-id :target-type aws-account-id
                                      :member-name "AccountId")
                                     (flagged-resources :target-type
                                      flagged-resources :member-name
                                      "FlaggedResources")
                                     (reason :target-type check-failure-reason
                                      :member-name "Reason")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "CheckDetail"))

(smithy/sdk/shapes:define-list check-details :member check-detail)

(smithy/sdk/shapes:define-enum check-failure-reason
    common-lisp:nil
  (:assume-role-error "ASSUME_ROLE_ERROR")
  (:access-denied "ACCESS_DENIED")
  (:unknown-error "UNKNOWN_ERROR")
  (:premium-support-required "PREMIUM_SUPPORT_REQUIRED"))

(smithy/sdk/shapes:define-type check-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type check-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum check-provider
    common-lisp:nil
  (:trusted-advisor "TRUSTED_ADVISOR"))

(smithy/sdk/shapes:define-enum check-status
    common-lisp:nil
  (:okay "OKAY")
  (:warning "WARNING")
  (:error "ERROR")
  (:not-available "NOT_AVAILABLE")
  (:fetch-failed "FETCH_FAILED"))

(smithy/sdk/shapes:define-type check-status-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list check-summaries :member check-summary)

(smithy/sdk/shapes:define-structure check-summary common-lisp:nil
                                    ((id :target-type check-id :member-name
                                      "Id")
                                     (name :target-type check-name :member-name
                                      "Name")
                                     (provider :target-type check-provider
                                      :member-name "Provider")
                                     (description :target-type
                                      check-description :member-name
                                      "Description")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (status :target-type check-status
                                      :member-name "Status")
                                     (account-summary :target-type
                                      account-summary :member-name
                                      "AccountSummary"))
                                    (:shape-name "CheckSummary"))

(smithy/sdk/shapes:define-structure choice common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (title :target-type choice-title
                                      :member-name "Title")
                                     (description :target-type
                                      choice-description :member-name
                                      "Description")
                                     (helpful-resource :target-type
                                      choice-content :member-name
                                      "HelpfulResource")
                                     (improvement-plan :target-type
                                      choice-content :member-name
                                      "ImprovementPlan")
                                     (additional-resources :target-type
                                      additional-resources-list :member-name
                                      "AdditionalResources"))
                                    (:shape-name "Choice"))

(smithy/sdk/shapes:define-structure choice-answer common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (status :target-type choice-status
                                      :member-name "Status")
                                     (reason :target-type choice-reason
                                      :member-name "Reason")
                                     (notes :target-type choice-notes
                                      :member-name "Notes"))
                                    (:shape-name "ChoiceAnswer"))

(smithy/sdk/shapes:define-list choice-answer-summaries :member
                               choice-answer-summary)

(smithy/sdk/shapes:define-structure choice-answer-summary common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (status :target-type choice-status
                                      :member-name "Status")
                                     (reason :target-type choice-reason
                                      :member-name "Reason"))
                                    (:shape-name "ChoiceAnswerSummary"))

(smithy/sdk/shapes:define-list choice-answers :member choice-answer)

(smithy/sdk/shapes:define-structure choice-content common-lisp:nil
                                    ((display-text :target-type
                                      choice-content-display-text :member-name
                                      "DisplayText")
                                     (url :target-type choice-content-url
                                      :member-name "Url"))
                                    (:shape-name "ChoiceContent"))

(smithy/sdk/shapes:define-type choice-content-display-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type choice-content-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type choice-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type choice-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure choice-improvement-plan common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (display-text :target-type display-text
                                      :member-name "DisplayText")
                                     (improvement-plan-url :target-type
                                      improvement-plan-url :member-name
                                      "ImprovementPlanUrl"))
                                    (:shape-name "ChoiceImprovementPlan"))

(smithy/sdk/shapes:define-list choice-improvement-plans :member
                               choice-improvement-plan)

(smithy/sdk/shapes:define-type choice-notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum choice-reason
    common-lisp:nil
  (:out-of-scope "OUT_OF_SCOPE")
  (:business-priorities "BUSINESS_PRIORITIES")
  (:architecture-constraints "ARCHITECTURE_CONSTRAINTS")
  (:other "OTHER")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum choice-status
    common-lisp:nil
  (:selected "SELECTED")
  (:not-applicable "NOT_APPLICABLE")
  (:unselected "UNSELECTED"))

(smithy/sdk/shapes:define-type choice-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure choice-update common-lisp:nil
                                    ((status :target-type choice-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (reason :target-type choice-reason
                                      :member-name "Reason")
                                     (notes :target-type choice-notes
                                      :member-name "Notes"))
                                    (:shape-name "ChoiceUpdate"))

(smithy/sdk/shapes:define-map choice-updates :key choice-id :value
                              choice-update)

(smithy/sdk/shapes:define-list choices :member choice)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type
                                  exception-resource-id :required common-lisp:t
                                  :member-name "ResourceId")
                                 (resource-type :target-type
                                  exception-resource-type :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure consolidated-report-metric common-lisp:nil
                                    ((metric-type :target-type metric-type
                                      :member-name "MetricType")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (workload-arn :target-type workload-arn
                                      :member-name "WorkloadArn")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (lenses :target-type lens-metrics
                                      :member-name "Lenses")
                                     (lenses-applied-count :target-type
                                      lenses-applied-count :member-name
                                      "LensesAppliedCount"))
                                    (:shape-name "ConsolidatedReportMetric"))

(smithy/sdk/shapes:define-list consolidated-report-metrics :member
                               consolidated-report-metric)

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-lens-share-input common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (shared-with :target-type shared-with
                                  :required common-lisp:t :member-name
                                  "SharedWith")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateLensShareInput"))

(smithy/sdk/shapes:define-output create-lens-share-output common-lisp:nil
                                 ((share-id :target-type share-id :member-name
                                   "ShareId"))
                                 (:shape-name "CreateLensShareOutput"))

(smithy/sdk/shapes:define-input create-lens-version-input common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (lens-version :target-type lens-version
                                  :required common-lisp:t :member-name
                                  "LensVersion")
                                 (is-major-version :target-type
                                  is-major-version :member-name
                                  "IsMajorVersion")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateLensVersionInput"))

(smithy/sdk/shapes:define-output create-lens-version-output common-lisp:nil
                                 ((lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (lens-version :target-type lens-version
                                   :member-name "LensVersion"))
                                 (:shape-name "CreateLensVersionOutput"))

(smithy/sdk/shapes:define-input create-milestone-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (milestone-name :target-type milestone-name
                                  :required common-lisp:t :member-name
                                  "MilestoneName")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateMilestoneInput"))

(smithy/sdk/shapes:define-output create-milestone-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber"))
                                 (:shape-name "CreateMilestoneOutput"))

(smithy/sdk/shapes:define-input create-profile-input common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "ProfileName")
                                 (profile-description :target-type
                                  profile-description :required common-lisp:t
                                  :member-name "ProfileDescription")
                                 (profile-questions :target-type
                                  profile-question-updates :required
                                  common-lisp:t :member-name
                                  "ProfileQuestions")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateProfileInput"))

(smithy/sdk/shapes:define-output create-profile-output common-lisp:nil
                                 ((profile-arn :target-type profile-arn
                                   :member-name "ProfileArn")
                                  (profile-version :target-type profile-version
                                   :member-name "ProfileVersion"))
                                 (:shape-name "CreateProfileOutput"))

(smithy/sdk/shapes:define-input create-profile-share-input common-lisp:nil
                                ((profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (shared-with :target-type shared-with
                                  :required common-lisp:t :member-name
                                  "SharedWith")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateProfileShareInput"))

(smithy/sdk/shapes:define-output create-profile-share-output common-lisp:nil
                                 ((share-id :target-type share-id :member-name
                                   "ShareId")
                                  (profile-arn :target-type profile-arn
                                   :member-name "ProfileArn"))
                                 (:shape-name "CreateProfileShareOutput"))

(smithy/sdk/shapes:define-input create-review-template-input common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "TemplateName")
                                 (description :target-type template-description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (lenses :target-type review-template-lenses
                                  :required common-lisp:t :member-name
                                  "Lenses")
                                 (notes :target-type notes :member-name
                                  "Notes")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateReviewTemplateInput"))

(smithy/sdk/shapes:define-output create-review-template-output common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn"))
                                 (:shape-name "CreateReviewTemplateOutput"))

(smithy/sdk/shapes:define-input create-template-share-input common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (shared-with :target-type shared-with
                                  :required common-lisp:t :member-name
                                  "SharedWith")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateTemplateShareInput"))

(smithy/sdk/shapes:define-output create-template-share-output common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (share-id :target-type share-id :member-name
                                   "ShareId"))
                                 (:shape-name "CreateTemplateShareOutput"))

(smithy/sdk/shapes:define-input create-workload-input common-lisp:nil
                                ((workload-name :target-type workload-name
                                  :required common-lisp:t :member-name
                                  "WorkloadName")
                                 (description :target-type workload-description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (environment :target-type workload-environment
                                  :required common-lisp:t :member-name
                                  "Environment")
                                 (account-ids :target-type workload-account-ids
                                  :member-name "AccountIds")
                                 (aws-regions :target-type workload-aws-regions
                                  :member-name "AwsRegions")
                                 (non-aws-regions :target-type
                                  workload-non-aws-regions :member-name
                                  "NonAwsRegions")
                                 (pillar-priorities :target-type
                                  workload-pillar-priorities :member-name
                                  "PillarPriorities")
                                 (architectural-design :target-type
                                  workload-architectural-design :member-name
                                  "ArchitecturalDesign")
                                 (review-owner :target-type
                                  workload-review-owner :member-name
                                  "ReviewOwner")
                                 (industry-type :target-type
                                  workload-industry-type :member-name
                                  "IndustryType")
                                 (industry :target-type workload-industry
                                  :member-name "Industry")
                                 (lenses :target-type workload-lenses :required
                                  common-lisp:t :member-name "Lenses")
                                 (notes :target-type notes :member-name
                                  "Notes")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (discovery-config :target-type
                                  workload-discovery-config :member-name
                                  "DiscoveryConfig")
                                 (applications :target-type
                                  workload-applications :member-name
                                  "Applications")
                                 (profile-arns :target-type
                                  workload-profile-arns :member-name
                                  "ProfileArns")
                                 (review-template-arns :target-type
                                  review-template-arns :member-name
                                  "ReviewTemplateArns")
                                 (jira-configuration :target-type
                                  workload-jira-configuration-input
                                  :member-name "JiraConfiguration"))
                                (:shape-name "CreateWorkloadInput"))

(smithy/sdk/shapes:define-output create-workload-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (workload-arn :target-type workload-arn
                                   :member-name "WorkloadArn"))
                                 (:shape-name "CreateWorkloadOutput"))

(smithy/sdk/shapes:define-input create-workload-share-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (shared-with :target-type shared-with
                                  :required common-lisp:t :member-name
                                  "SharedWith")
                                 (permission-type :target-type permission-type
                                  :required common-lisp:t :member-name
                                  "PermissionType")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken"))
                                (:shape-name "CreateWorkloadShareInput"))

(smithy/sdk/shapes:define-output create-workload-share-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (share-id :target-type share-id :member-name
                                   "ShareId"))
                                 (:shape-name "CreateWorkloadShareOutput"))

(smithy/sdk/shapes:define-enum definition-type
    common-lisp:nil
  (:workload-metadata "WORKLOAD_METADATA")
  (:app-registry "APP_REGISTRY"))

(smithy/sdk/shapes:define-input delete-lens-input common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken")
                                 (lens-status :target-type lens-status-type
                                  :required common-lisp:t :member-name
                                  "LensStatus" :http-query "LensStatus"))
                                (:shape-name "DeleteLensInput"))

(smithy/sdk/shapes:define-input delete-lens-share-input common-lisp:nil
                                ((share-id :target-type share-id :required
                                  common-lisp:t :member-name "ShareId"
                                  :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteLensShareInput"))

(smithy/sdk/shapes:define-input delete-profile-input common-lisp:nil
                                ((profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteProfileInput"))

(smithy/sdk/shapes:define-input delete-profile-share-input common-lisp:nil
                                ((share-id :target-type share-id :required
                                  common-lisp:t :member-name "ShareId"
                                  :http-label common-lisp:t)
                                 (profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteProfileShareInput"))

(smithy/sdk/shapes:define-input delete-review-template-input common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteReviewTemplateInput"))

(smithy/sdk/shapes:define-input delete-template-share-input common-lisp:nil
                                ((share-id :target-type share-id :required
                                  common-lisp:t :member-name "ShareId"
                                  :http-label common-lisp:t)
                                 (template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteTemplateShareInput"))

(smithy/sdk/shapes:define-input delete-workload-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteWorkloadInput"))

(smithy/sdk/shapes:define-input delete-workload-share-input common-lisp:nil
                                ((share-id :target-type share-id :required
                                  common-lisp:t :member-name "ShareId"
                                  :http-label common-lisp:t)
                                 (workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken" :http-query
                                  "ClientRequestToken"))
                                (:shape-name "DeleteWorkloadShareInput"))

(smithy/sdk/shapes:define-enum difference-status
    common-lisp:nil
  (:updated "UPDATED")
  (:new "NEW")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-input disassociate-lenses-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-aliases :target-type lens-aliases
                                  :required common-lisp:t :member-name
                                  "LensAliases"))
                                (:shape-name "DisassociateLensesInput"))

(smithy/sdk/shapes:define-input disassociate-profiles-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (profile-arns :target-type profile-arns
                                  :required common-lisp:t :member-name
                                  "ProfileArns"))
                                (:shape-name "DisassociateProfilesInput"))

(smithy/sdk/shapes:define-enum discovery-integration-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type display-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input export-lens-input common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (lens-version :target-type lens-version
                                  :member-name "LensVersion" :http-query
                                  "LensVersion"))
                                (:shape-name "ExportLensInput"))

(smithy/sdk/shapes:define-output export-lens-output common-lisp:nil
                                 ((lens-json :target-type lens-json
                                   :member-name "LensJSON"))
                                 (:shape-name "ExportLensOutput"))

(smithy/sdk/shapes:define-type flagged-resources
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-answer-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (question-id :target-type question-id
                                  :required common-lisp:t :member-name
                                  "QuestionId" :http-label common-lisp:t)
                                 (milestone-number :target-type
                                  milestone-number :member-name
                                  "MilestoneNumber" :http-query
                                  "MilestoneNumber"))
                                (:shape-name "GetAnswerInput"))

(smithy/sdk/shapes:define-output get-answer-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (answer :target-type answer :member-name
                                   "Answer"))
                                 (:shape-name "GetAnswerOutput"))

(smithy/sdk/shapes:define-input get-consolidated-report-input common-lisp:nil
                                ((format :target-type report-format :required
                                  common-lisp:t :member-name "Format"
                                  :http-query "Format")
                                 (include-shared-resources :target-type
                                  include-shared-resources :member-name
                                  "IncludeSharedResources" :http-query
                                  "IncludeSharedResources")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  get-consolidated-report-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "GetConsolidatedReportInput"))

(smithy/sdk/shapes:define-type get-consolidated-report-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output get-consolidated-report-output common-lisp:nil
                                 ((metrics :target-type
                                   consolidated-report-metrics :member-name
                                   "Metrics")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (base64string :target-type base64string
                                   :member-name "Base64String"))
                                 (:shape-name "GetConsolidatedReportOutput"))

(smithy/sdk/shapes:define-output get-global-settings-output common-lisp:nil
                                 ((organization-sharing-status :target-type
                                   organization-sharing-status :member-name
                                   "OrganizationSharingStatus")
                                  (discovery-integration-status :target-type
                                   discovery-integration-status :member-name
                                   "DiscoveryIntegrationStatus")
                                  (jira-configuration :target-type
                                   account-jira-configuration-output
                                   :member-name "JiraConfiguration"))
                                 (:shape-name "GetGlobalSettingsOutput"))

(smithy/sdk/shapes:define-input get-lens-input common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (lens-version :target-type lens-version
                                  :member-name "LensVersion" :http-query
                                  "LensVersion"))
                                (:shape-name "GetLensInput"))

(smithy/sdk/shapes:define-output get-lens-output common-lisp:nil
                                 ((lens :target-type lens :member-name "Lens"))
                                 (:shape-name "GetLensOutput"))

(smithy/sdk/shapes:define-input get-lens-review-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (milestone-number :target-type
                                  milestone-number :member-name
                                  "MilestoneNumber" :http-query
                                  "MilestoneNumber"))
                                (:shape-name "GetLensReviewInput"))

(smithy/sdk/shapes:define-output get-lens-review-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber")
                                  (lens-review :target-type lens-review
                                   :member-name "LensReview"))
                                 (:shape-name "GetLensReviewOutput"))

(smithy/sdk/shapes:define-input get-lens-review-report-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (milestone-number :target-type
                                  milestone-number :member-name
                                  "MilestoneNumber" :http-query
                                  "MilestoneNumber"))
                                (:shape-name "GetLensReviewReportInput"))

(smithy/sdk/shapes:define-output get-lens-review-report-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber")
                                  (lens-review-report :target-type
                                   lens-review-report :member-name
                                   "LensReviewReport"))
                                 (:shape-name "GetLensReviewReportOutput"))

(smithy/sdk/shapes:define-input get-lens-version-difference-input
                                common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (base-lens-version :target-type lens-version
                                  :member-name "BaseLensVersion" :http-query
                                  "BaseLensVersion")
                                 (target-lens-version :target-type lens-version
                                  :member-name "TargetLensVersion" :http-query
                                  "TargetLensVersion"))
                                (:shape-name "GetLensVersionDifferenceInput"))

(smithy/sdk/shapes:define-output get-lens-version-difference-output
                                 common-lisp:nil
                                 ((lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (base-lens-version :target-type lens-version
                                   :member-name "BaseLensVersion")
                                  (target-lens-version :target-type
                                   lens-version :member-name
                                   "TargetLensVersion")
                                  (latest-lens-version :target-type
                                   lens-version :member-name
                                   "LatestLensVersion")
                                  (version-differences :target-type
                                   version-differences :member-name
                                   "VersionDifferences"))
                                 (:shape-name "GetLensVersionDifferenceOutput"))

(smithy/sdk/shapes:define-input get-milestone-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (milestone-number :target-type
                                  milestone-number :required common-lisp:t
                                  :member-name "MilestoneNumber" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMilestoneInput"))

(smithy/sdk/shapes:define-output get-milestone-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone :target-type milestone
                                   :member-name "Milestone"))
                                 (:shape-name "GetMilestoneOutput"))

(smithy/sdk/shapes:define-input get-profile-input common-lisp:nil
                                ((profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (profile-version :target-type profile-version
                                  :member-name "ProfileVersion" :http-query
                                  "ProfileVersion"))
                                (:shape-name "GetProfileInput"))

(smithy/sdk/shapes:define-output get-profile-output common-lisp:nil
                                 ((profile :target-type profile :member-name
                                   "Profile"))
                                 (:shape-name "GetProfileOutput"))

(smithy/sdk/shapes:define-input get-profile-template-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetProfileTemplateInput"))

(smithy/sdk/shapes:define-output get-profile-template-output common-lisp:nil
                                 ((profile-template :target-type
                                   profile-template :member-name
                                   "ProfileTemplate"))
                                 (:shape-name "GetProfileTemplateOutput"))

(smithy/sdk/shapes:define-input get-review-template-answer-input
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (question-id :target-type question-id
                                  :required common-lisp:t :member-name
                                  "QuestionId" :http-label common-lisp:t))
                                (:shape-name "GetReviewTemplateAnswerInput"))

(smithy/sdk/shapes:define-output get-review-template-answer-output
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (answer :target-type review-template-answer
                                   :member-name "Answer"))
                                 (:shape-name "GetReviewTemplateAnswerOutput"))

(smithy/sdk/shapes:define-input get-review-template-input common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t))
                                (:shape-name "GetReviewTemplateInput"))

(smithy/sdk/shapes:define-input get-review-template-lens-review-input
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetReviewTemplateLensReviewInput"))

(smithy/sdk/shapes:define-output get-review-template-lens-review-output
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (lens-review :target-type
                                   review-template-lens-review :member-name
                                   "LensReview"))
                                 (:shape-name
                                  "GetReviewTemplateLensReviewOutput"))

(smithy/sdk/shapes:define-output get-review-template-output common-lisp:nil
                                 ((review-template :target-type review-template
                                   :member-name "ReviewTemplate"))
                                 (:shape-name "GetReviewTemplateOutput"))

(smithy/sdk/shapes:define-input get-workload-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t))
                                (:shape-name "GetWorkloadInput"))

(smithy/sdk/shapes:define-output get-workload-output common-lisp:nil
                                 ((workload :target-type workload :member-name
                                   "Workload"))
                                 (:shape-name "GetWorkloadOutput"))

(smithy/sdk/shapes:define-type helpful-resource-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-lens-input common-lisp:nil
                                ((lens-alias :target-type lens-alias
                                  :member-name "LensAlias")
                                 (jsonstring :target-type lens-json :required
                                  common-lisp:t :member-name "JSONString")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "ImportLensInput"))

(smithy/sdk/shapes:define-output import-lens-output common-lisp:nil
                                 ((lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (status :target-type import-lens-status
                                   :member-name "Status"))
                                 (:shape-name "ImportLensOutput"))

(smithy/sdk/shapes:define-enum import-lens-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type improvement-plan-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list improvement-summaries :member
                               improvement-summary)

(smithy/sdk/shapes:define-structure improvement-summary common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (risk :target-type risk :member-name
                                      "Risk")
                                     (improvement-plan-url :target-type
                                      improvement-plan-url :member-name
                                      "ImprovementPlanUrl")
                                     (improvement-plans :target-type
                                      choice-improvement-plans :member-name
                                      "ImprovementPlans")
                                     (jira-configuration :target-type
                                      jira-configuration :member-name
                                      "JiraConfiguration"))
                                    (:shape-name "ImprovementSummary"))

(smithy/sdk/shapes:define-type include-shared-resources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum integrating-service
    common-lisp:nil
  (:jira "JIRA"))

(smithy/sdk/shapes:define-enum integration-status
    common-lisp:nil
  (:configured "CONFIGURED")
  (:not-configured "NOT_CONFIGURED"))

(smithy/sdk/shapes:define-enum integration-status-input
    common-lisp:nil
  (:not-configured "NOT_CONFIGURED"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type is-applicable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-major-version smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-review-owner-update-acknowledged
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum issue-management-type
    common-lisp:nil
  (:auto "AUTO")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-structure jira-configuration common-lisp:nil
                                    ((jira-issue-url :target-type
                                      jira-issue-url :member-name
                                      "JiraIssueUrl")
                                     (last-synced-time :target-type timestamp
                                      :member-name "LastSyncedTime"))
                                    (:shape-name "JiraConfiguration"))

(smithy/sdk/shapes:define-type jira-issue-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type jira-project-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure jira-selected-question-configuration
                                    common-lisp:nil
                                    ((selected-pillars :target-type
                                      selected-pillars :member-name
                                      "SelectedPillars"))
                                    (:shape-name
                                     "JiraSelectedQuestionConfiguration"))

(smithy/sdk/shapes:define-structure lens common-lisp:nil
                                    ((lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (lens-version :target-type lens-version
                                      :member-name "LensVersion")
                                     (name :target-type lens-name :member-name
                                      "Name")
                                     (description :target-type lens-description
                                      :member-name "Description")
                                     (owner :target-type lens-owner
                                      :member-name "Owner")
                                     (share-invitation-id :target-type
                                      share-invitation-id :member-name
                                      "ShareInvitationId")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "Lens"))

(smithy/sdk/shapes:define-type lens-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lens-aliases :member lens-alias)

(smithy/sdk/shapes:define-type lens-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lens-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lens-json smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lens-metric common-lisp:nil
                                    ((lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (pillars :target-type pillar-metrics
                                      :member-name "Pillars")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts"))
                                    (:shape-name "LensMetric"))

(smithy/sdk/shapes:define-list lens-metrics :member lens-metric)

(smithy/sdk/shapes:define-type lens-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lens-name-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lens-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lens-review common-lisp:nil
                                    ((lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (lens-version :target-type lens-version
                                      :member-name "LensVersion")
                                     (lens-name :target-type lens-name
                                      :member-name "LensName")
                                     (lens-status :target-type lens-status
                                      :member-name "LensStatus")
                                     (pillar-review-summaries :target-type
                                      pillar-review-summaries :member-name
                                      "PillarReviewSummaries")
                                     (jira-configuration :target-type
                                      jira-selected-question-configuration
                                      :member-name "JiraConfiguration")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (profiles :target-type workload-profiles
                                      :member-name "Profiles")
                                     (prioritized-risk-counts :target-type
                                      risk-counts :member-name
                                      "PrioritizedRiskCounts"))
                                    (:shape-name "LensReview"))

(smithy/sdk/shapes:define-structure lens-review-report common-lisp:nil
                                    ((lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (base64string :target-type base64string
                                      :member-name "Base64String"))
                                    (:shape-name "LensReviewReport"))

(smithy/sdk/shapes:define-list lens-review-summaries :member
                               lens-review-summary)

(smithy/sdk/shapes:define-structure lens-review-summary common-lisp:nil
                                    ((lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (lens-version :target-type lens-version
                                      :member-name "LensVersion")
                                     (lens-name :target-type lens-name
                                      :member-name "LensName")
                                     (lens-status :target-type lens-status
                                      :member-name "LensStatus")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (profiles :target-type workload-profiles
                                      :member-name "Profiles")
                                     (prioritized-risk-counts :target-type
                                      risk-counts :member-name
                                      "PrioritizedRiskCounts"))
                                    (:shape-name "LensReviewSummary"))

(smithy/sdk/shapes:define-list lens-share-summaries :member lens-share-summary)

(smithy/sdk/shapes:define-structure lens-share-summary common-lisp:nil
                                    ((share-id :target-type share-id
                                      :member-name "ShareId")
                                     (shared-with :target-type shared-with
                                      :member-name "SharedWith")
                                     (status :target-type share-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "LensShareSummary"))

(smithy/sdk/shapes:define-enum lens-status
    common-lisp:nil
  (:current "CURRENT")
  (:not-current "NOT_CURRENT")
  (:deprecated "DEPRECATED")
  (:deleted "DELETED")
  (:unshared "UNSHARED"))

(smithy/sdk/shapes:define-enum lens-status-type
    common-lisp:nil
  (:all "ALL")
  (:draft "DRAFT")
  (:published "PUBLISHED"))

(smithy/sdk/shapes:define-list lens-summaries :member lens-summary)

(smithy/sdk/shapes:define-structure lens-summary common-lisp:nil
                                    ((lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-name :target-type lens-name
                                      :member-name "LensName")
                                     (lens-type :target-type lens-type
                                      :member-name "LensType")
                                     (description :target-type lens-description
                                      :member-name "Description")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (lens-version :target-type lens-version
                                      :member-name "LensVersion")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (lens-status :target-type lens-status
                                      :member-name "LensStatus"))
                                    (:shape-name "LensSummary"))

(smithy/sdk/shapes:define-enum lens-type
    common-lisp:nil
  (:aws-official "AWS_OFFICIAL")
  (:custom-shared "CUSTOM_SHARED")
  (:custom-self "CUSTOM_SELF"))

(smithy/sdk/shapes:define-structure lens-upgrade-summary common-lisp:nil
                                    ((workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (current-lens-version :target-type
                                      lens-version :member-name
                                      "CurrentLensVersion")
                                     (latest-lens-version :target-type
                                      lens-version :member-name
                                      "LatestLensVersion")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (resource-name :target-type workload-name
                                      :member-name "ResourceName"))
                                    (:shape-name "LensUpgradeSummary"))

(smithy/sdk/shapes:define-type lens-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lenses-applied-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-answers-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (pillar-id :target-type pillar-id :member-name
                                  "PillarId" :http-query "PillarId")
                                 (milestone-number :target-type
                                  milestone-number :member-name
                                  "MilestoneNumber" :http-query
                                  "MilestoneNumber")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-answers-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (question-priority :target-type
                                  question-priority :member-name
                                  "QuestionPriority" :http-query
                                  "QuestionPriority"))
                                (:shape-name "ListAnswersInput"))

(smithy/sdk/shapes:define-type list-answers-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-answers-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (answer-summaries :target-type
                                   answer-summaries :member-name
                                   "AnswerSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAnswersOutput"))

(smithy/sdk/shapes:define-input list-check-details-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (lens-arn :target-type lens-arn :required
                                  common-lisp:t :member-name "LensArn")
                                 (pillar-id :target-type pillar-id :required
                                  common-lisp:t :member-name "PillarId")
                                 (question-id :target-type question-id
                                  :required common-lisp:t :member-name
                                  "QuestionId")
                                 (choice-id :target-type choice-id :required
                                  common-lisp:t :member-name "ChoiceId"))
                                (:shape-name "ListCheckDetailsInput"))

(smithy/sdk/shapes:define-output list-check-details-output common-lisp:nil
                                 ((check-details :target-type check-details
                                   :member-name "CheckDetails")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCheckDetailsOutput"))

(smithy/sdk/shapes:define-input list-check-summaries-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (lens-arn :target-type lens-arn :required
                                  common-lisp:t :member-name "LensArn")
                                 (pillar-id :target-type pillar-id :required
                                  common-lisp:t :member-name "PillarId")
                                 (question-id :target-type question-id
                                  :required common-lisp:t :member-name
                                  "QuestionId")
                                 (choice-id :target-type choice-id :required
                                  common-lisp:t :member-name "ChoiceId"))
                                (:shape-name "ListCheckSummariesInput"))

(smithy/sdk/shapes:define-output list-check-summaries-output common-lisp:nil
                                 ((check-summaries :target-type check-summaries
                                   :member-name "CheckSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCheckSummariesOutput"))

(smithy/sdk/shapes:define-input list-lens-review-improvements-input
                                common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (pillar-id :target-type pillar-id :member-name
                                  "PillarId" :http-query "PillarId")
                                 (milestone-number :target-type
                                  milestone-number :member-name
                                  "MilestoneNumber" :http-query
                                  "MilestoneNumber")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-lens-review-improvements-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (question-priority :target-type
                                  question-priority :member-name
                                  "QuestionPriority" :http-query
                                  "QuestionPriority"))
                                (:shape-name "ListLensReviewImprovementsInput"))

(smithy/sdk/shapes:define-type list-lens-review-improvements-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-lens-review-improvements-output
                                 common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (improvement-summaries :target-type
                                   improvement-summaries :member-name
                                   "ImprovementSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListLensReviewImprovementsOutput"))

(smithy/sdk/shapes:define-input list-lens-reviews-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (milestone-number :target-type
                                  milestone-number :member-name
                                  "MilestoneNumber" :http-query
                                  "MilestoneNumber")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListLensReviewsInput"))

(smithy/sdk/shapes:define-output list-lens-reviews-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-number :target-type
                                   milestone-number :member-name
                                   "MilestoneNumber")
                                  (lens-review-summaries :target-type
                                   lens-review-summaries :member-name
                                   "LensReviewSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLensReviewsOutput"))

(smithy/sdk/shapes:define-input list-lens-shares-input common-lisp:nil
                                ((lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (shared-with-prefix :target-type
                                  shared-with-prefix :member-name
                                  "SharedWithPrefix" :http-query
                                  "SharedWithPrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-workload-shares-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (status :target-type share-status :member-name
                                  "Status" :http-query "Status"))
                                (:shape-name "ListLensSharesInput"))

(smithy/sdk/shapes:define-output list-lens-shares-output common-lisp:nil
                                 ((lens-share-summaries :target-type
                                   lens-share-summaries :member-name
                                   "LensShareSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLensSharesOutput"))

(smithy/sdk/shapes:define-input list-lenses-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (lens-type :target-type lens-type :member-name
                                  "LensType" :http-query "LensType")
                                 (lens-status :target-type lens-status-type
                                  :member-name "LensStatus" :http-query
                                  "LensStatus")
                                 (lens-name :target-type lens-name :member-name
                                  "LensName" :http-query "LensName"))
                                (:shape-name "ListLensesInput"))

(smithy/sdk/shapes:define-output list-lenses-output common-lisp:nil
                                 ((lens-summaries :target-type lens-summaries
                                   :member-name "LensSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLensesOutput"))

(smithy/sdk/shapes:define-input list-milestones-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListMilestonesInput"))

(smithy/sdk/shapes:define-output list-milestones-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (milestone-summaries :target-type
                                   milestone-summaries :member-name
                                   "MilestoneSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMilestonesOutput"))

(smithy/sdk/shapes:define-input list-notifications-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :member-name "WorkloadId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-notifications-max-results :member-name
                                  "MaxResults")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceArn"))
                                (:shape-name "ListNotificationsInput"))

(smithy/sdk/shapes:define-type list-notifications-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-notifications-output common-lisp:nil
                                 ((notification-summaries :target-type
                                   notification-summaries :member-name
                                   "NotificationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListNotificationsOutput"))

(smithy/sdk/shapes:define-input list-profile-notifications-input
                                common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :member-name "WorkloadId" :http-query
                                  "WorkloadId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListProfileNotificationsInput"))

(smithy/sdk/shapes:define-output list-profile-notifications-output
                                 common-lisp:nil
                                 ((notification-summaries :target-type
                                   profile-notification-summaries :member-name
                                   "NotificationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProfileNotificationsOutput"))

(smithy/sdk/shapes:define-input list-profile-shares-input common-lisp:nil
                                ((profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (shared-with-prefix :target-type
                                  shared-with-prefix :member-name
                                  "SharedWithPrefix" :http-query
                                  "SharedWithPrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-profile-shares-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (status :target-type share-status :member-name
                                  "Status" :http-query "Status"))
                                (:shape-name "ListProfileSharesInput"))

(smithy/sdk/shapes:define-type list-profile-shares-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-profile-shares-output common-lisp:nil
                                 ((profile-share-summaries :target-type
                                   profile-share-summaries :member-name
                                   "ProfileShareSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProfileSharesOutput"))

(smithy/sdk/shapes:define-input list-profiles-input common-lisp:nil
                                ((profile-name-prefix :target-type
                                  profile-name-prefix :member-name
                                  "ProfileNamePrefix" :http-query
                                  "ProfileNamePrefix")
                                 (profile-owner-type :target-type
                                  profile-owner-type :member-name
                                  "ProfileOwnerType" :http-query
                                  "ProfileOwnerType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListProfilesInput"))

(smithy/sdk/shapes:define-output list-profiles-output common-lisp:nil
                                 ((profile-summaries :target-type
                                   profile-summaries :member-name
                                   "ProfileSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProfilesOutput"))

(smithy/sdk/shapes:define-input list-review-template-answers-input
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (pillar-id :target-type pillar-id :member-name
                                  "PillarId" :http-query "PillarId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-review-template-answers-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListReviewTemplateAnswersInput"))

(smithy/sdk/shapes:define-type list-review-template-answers-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-review-template-answers-output
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (answer-summaries :target-type
                                   review-template-answer-summaries
                                   :member-name "AnswerSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListReviewTemplateAnswersOutput"))

(smithy/sdk/shapes:define-input list-review-templates-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListReviewTemplatesInput"))

(smithy/sdk/shapes:define-output list-review-templates-output common-lisp:nil
                                 ((review-templates :target-type
                                   review-templates :member-name
                                   "ReviewTemplates")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListReviewTemplatesOutput"))

(smithy/sdk/shapes:define-input list-share-invitations-input common-lisp:nil
                                ((workload-name-prefix :target-type
                                  workload-name-prefix :member-name
                                  "WorkloadNamePrefix" :http-query
                                  "WorkloadNamePrefix")
                                 (lens-name-prefix :target-type
                                  lens-name-prefix :member-name
                                  "LensNamePrefix" :http-query
                                  "LensNamePrefix")
                                 (share-resource-type :target-type
                                  share-resource-type :member-name
                                  "ShareResourceType" :http-query
                                  "ShareResourceType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-share-invitations-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (profile-name-prefix :target-type
                                  profile-name-prefix :member-name
                                  "ProfileNamePrefix" :http-query
                                  "ProfileNamePrefix")
                                 (template-name-prefix :target-type
                                  template-name-prefix :member-name
                                  "TemplateNamePrefix" :http-query
                                  "TemplateNamePrefix"))
                                (:shape-name "ListShareInvitationsInput"))

(smithy/sdk/shapes:define-type list-share-invitations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-share-invitations-output common-lisp:nil
                                 ((share-invitation-summaries :target-type
                                   share-invitation-summaries :member-name
                                   "ShareInvitationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListShareInvitationsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((workload-arn :target-type workload-arn
                                  :required common-lisp:t :member-name
                                  "WorkloadArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-template-shares-input common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (shared-with-prefix :target-type
                                  shared-with-prefix :member-name
                                  "SharedWithPrefix" :http-query
                                  "SharedWithPrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-template-shares-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (status :target-type share-status :member-name
                                  "Status" :http-query "Status"))
                                (:shape-name "ListTemplateSharesInput"))

(smithy/sdk/shapes:define-type list-template-shares-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-template-shares-output common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (template-share-summaries :target-type
                                   template-share-summaries :member-name
                                   "TemplateShareSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTemplateSharesOutput"))

(smithy/sdk/shapes:define-input list-workload-shares-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (shared-with-prefix :target-type
                                  shared-with-prefix :member-name
                                  "SharedWithPrefix" :http-query
                                  "SharedWithPrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type
                                  list-workload-shares-max-results :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (status :target-type share-status :member-name
                                  "Status" :http-query "Status"))
                                (:shape-name "ListWorkloadSharesInput"))

(smithy/sdk/shapes:define-type list-workload-shares-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-workload-shares-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (workload-share-summaries :target-type
                                   workload-share-summaries :member-name
                                   "WorkloadShareSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWorkloadSharesOutput"))

(smithy/sdk/shapes:define-input list-workloads-input common-lisp:nil
                                ((workload-name-prefix :target-type
                                  workload-name-prefix :member-name
                                  "WorkloadNamePrefix")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-workloads-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListWorkloadsInput"))

(smithy/sdk/shapes:define-type list-workloads-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-workloads-output common-lisp:nil
                                 ((workload-summaries :target-type
                                   workload-summaries :member-name
                                   "WorkloadSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWorkloadsOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-selected-profile-choices
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metric-type
    common-lisp:nil
  (:workload "WORKLOAD"))

(smithy/sdk/shapes:define-structure milestone common-lisp:nil
                                    ((milestone-number :target-type
                                      milestone-number :member-name
                                      "MilestoneNumber")
                                     (milestone-name :target-type
                                      milestone-name :member-name
                                      "MilestoneName")
                                     (recorded-at :target-type timestamp
                                      :member-name "RecordedAt")
                                     (workload :target-type workload
                                      :member-name "Workload"))
                                    (:shape-name "Milestone"))

(smithy/sdk/shapes:define-type milestone-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type milestone-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list milestone-summaries :member milestone-summary)

(smithy/sdk/shapes:define-structure milestone-summary common-lisp:nil
                                    ((milestone-number :target-type
                                      milestone-number :member-name
                                      "MilestoneNumber")
                                     (milestone-name :target-type
                                      milestone-name :member-name
                                      "MilestoneName")
                                     (recorded-at :target-type timestamp
                                      :member-name "RecordedAt")
                                     (workload-summary :target-type
                                      workload-summary :member-name
                                      "WorkloadSummary"))
                                    (:shape-name "MilestoneSummary"))

(smithy/sdk/shapes:define-type min-selected-profile-choices
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list notification-summaries :member
                               notification-summary)

(smithy/sdk/shapes:define-structure notification-summary common-lisp:nil
                                    ((type :target-type notification-type
                                      :member-name "Type")
                                     (lens-upgrade-summary :target-type
                                      lens-upgrade-summary :member-name
                                      "LensUpgradeSummary"))
                                    (:shape-name "NotificationSummary"))

(smithy/sdk/shapes:define-enum notification-type
    common-lisp:nil
  (:lens-version-upgraded "LENS_VERSION_UPGRADED")
  (:lens-version-deprecated "LENS_VERSION_DEPRECATED"))

(smithy/sdk/shapes:define-enum organization-sharing-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum permission-type
    common-lisp:nil
  (:readonly "READONLY")
  (:contributor "CONTRIBUTOR"))

(smithy/sdk/shapes:define-structure pillar-difference common-lisp:nil
                                    ((pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (pillar-name :target-type pillar-name
                                      :member-name "PillarName")
                                     (difference-status :target-type
                                      difference-status :member-name
                                      "DifferenceStatus")
                                     (question-differences :target-type
                                      question-differences :member-name
                                      "QuestionDifferences"))
                                    (:shape-name "PillarDifference"))

(smithy/sdk/shapes:define-list pillar-differences :member pillar-difference)

(smithy/sdk/shapes:define-type pillar-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pillar-metric common-lisp:nil
                                    ((pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (questions :target-type question-metrics
                                      :member-name "Questions"))
                                    (:shape-name "PillarMetric"))

(smithy/sdk/shapes:define-list pillar-metrics :member pillar-metric)

(smithy/sdk/shapes:define-type pillar-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map pillar-notes :key pillar-id :value notes)

(smithy/sdk/shapes:define-list pillar-review-summaries :member
                               pillar-review-summary)

(smithy/sdk/shapes:define-structure pillar-review-summary common-lisp:nil
                                    ((pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (pillar-name :target-type pillar-name
                                      :member-name "PillarName")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (prioritized-risk-counts :target-type
                                      risk-counts :member-name
                                      "PrioritizedRiskCounts"))
                                    (:shape-name "PillarReviewSummary"))

(smithy/sdk/shapes:define-structure profile common-lisp:nil
                                    ((profile-arn :target-type profile-arn
                                      :member-name "ProfileArn")
                                     (profile-version :target-type
                                      profile-version :member-name
                                      "ProfileVersion")
                                     (profile-name :target-type profile-name
                                      :member-name "ProfileName")
                                     (profile-description :target-type
                                      profile-description :member-name
                                      "ProfileDescription")
                                     (profile-questions :target-type
                                      profile-questions :member-name
                                      "ProfileQuestions")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (share-invitation-id :target-type
                                      share-invitation-id :member-name
                                      "ShareInvitationId")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "Profile"))

(smithy/sdk/shapes:define-type profile-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profile-arns :member profile-arn)

(smithy/sdk/shapes:define-structure profile-choice common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (choice-title :target-type choice-title
                                      :member-name "ChoiceTitle")
                                     (choice-description :target-type
                                      choice-description :member-name
                                      "ChoiceDescription"))
                                    (:shape-name "ProfileChoice"))

(smithy/sdk/shapes:define-type profile-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profile-notification-summaries :member
                               profile-notification-summary)

(smithy/sdk/shapes:define-structure profile-notification-summary
                                    common-lisp:nil
                                    ((current-profile-version :target-type
                                      profile-version :member-name
                                      "CurrentProfileVersion")
                                     (latest-profile-version :target-type
                                      profile-version :member-name
                                      "LatestProfileVersion")
                                     (type :target-type
                                      profile-notification-type :member-name
                                      "Type")
                                     (profile-arn :target-type profile-arn
                                      :member-name "ProfileArn")
                                     (profile-name :target-type profile-name
                                      :member-name "ProfileName")
                                     (workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName"))
                                    (:shape-name "ProfileNotificationSummary"))

(smithy/sdk/shapes:define-enum profile-notification-type
    common-lisp:nil
  (:profile-answers-updated "PROFILE_ANSWERS_UPDATED")
  (:profile-deleted "PROFILE_DELETED"))

(smithy/sdk/shapes:define-enum profile-owner-type
    common-lisp:nil
  (:self "SELF")
  (:shared "SHARED"))

(smithy/sdk/shapes:define-structure profile-question common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (question-description :target-type
                                      question-description :member-name
                                      "QuestionDescription")
                                     (question-choices :target-type
                                      profile-question-choices :member-name
                                      "QuestionChoices")
                                     (selected-choice-ids :target-type
                                      selected-choice-ids :member-name
                                      "SelectedChoiceIds")
                                     (min-selected-choices :target-type
                                      min-selected-profile-choices :member-name
                                      "MinSelectedChoices")
                                     (max-selected-choices :target-type
                                      max-selected-profile-choices :member-name
                                      "MaxSelectedChoices"))
                                    (:shape-name "ProfileQuestion"))

(smithy/sdk/shapes:define-list profile-question-choices :member profile-choice)

(smithy/sdk/shapes:define-structure profile-question-update common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (selected-choice-ids :target-type
                                      selected-profile-choice-ids :member-name
                                      "SelectedChoiceIds"))
                                    (:shape-name "ProfileQuestionUpdate"))

(smithy/sdk/shapes:define-list profile-question-updates :member
                               profile-question-update)

(smithy/sdk/shapes:define-list profile-questions :member profile-question)

(smithy/sdk/shapes:define-list profile-share-summaries :member
                               profile-share-summary)

(smithy/sdk/shapes:define-structure profile-share-summary common-lisp:nil
                                    ((share-id :target-type share-id
                                      :member-name "ShareId")
                                     (shared-with :target-type shared-with
                                      :member-name "SharedWith")
                                     (status :target-type share-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "ProfileShareSummary"))

(smithy/sdk/shapes:define-list profile-summaries :member profile-summary)

(smithy/sdk/shapes:define-structure profile-summary common-lisp:nil
                                    ((profile-arn :target-type profile-arn
                                      :member-name "ProfileArn")
                                     (profile-version :target-type
                                      profile-version :member-name
                                      "ProfileVersion")
                                     (profile-name :target-type profile-name
                                      :member-name "ProfileName")
                                     (profile-description :target-type
                                      profile-description :member-name
                                      "ProfileDescription")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ProfileSummary"))

(smithy/sdk/shapes:define-structure profile-template common-lisp:nil
                                    ((template-name :target-type profile-name
                                      :member-name "TemplateName")
                                     (template-questions :target-type
                                      template-questions :member-name
                                      "TemplateQuestions")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ProfileTemplate"))

(smithy/sdk/shapes:define-structure profile-template-choice common-lisp:nil
                                    ((choice-id :target-type choice-id
                                      :member-name "ChoiceId")
                                     (choice-title :target-type choice-title
                                      :member-name "ChoiceTitle")
                                     (choice-description :target-type
                                      choice-description :member-name
                                      "ChoiceDescription"))
                                    (:shape-name "ProfileTemplateChoice"))

(smithy/sdk/shapes:define-structure profile-template-question common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (question-description :target-type
                                      question-description :member-name
                                      "QuestionDescription")
                                     (question-choices :target-type
                                      profile-template-question-choices
                                      :member-name "QuestionChoices")
                                     (min-selected-choices :target-type
                                      min-selected-profile-choices :member-name
                                      "MinSelectedChoices")
                                     (max-selected-choices :target-type
                                      max-selected-profile-choices :member-name
                                      "MaxSelectedChoices"))
                                    (:shape-name "ProfileTemplateQuestion"))

(smithy/sdk/shapes:define-list profile-template-question-choices :member
                               profile-template-choice)

(smithy/sdk/shapes:define-type profile-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum question
    common-lisp:nil
  (:unanswered "UNANSWERED")
  (:answered "ANSWERED"))

(smithy/sdk/shapes:define-map question-counts :key question :value count)

(smithy/sdk/shapes:define-type question-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure question-difference common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (difference-status :target-type
                                      difference-status :member-name
                                      "DifferenceStatus"))
                                    (:shape-name "QuestionDifference"))

(smithy/sdk/shapes:define-list question-differences :member question-difference)

(smithy/sdk/shapes:define-type question-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure question-metric common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (risk :target-type risk :member-name
                                      "Risk")
                                     (best-practices :target-type
                                      best-practices :member-name
                                      "BestPractices"))
                                    (:shape-name "QuestionMetric"))

(smithy/sdk/shapes:define-list question-metrics :member question-metric)

(smithy/sdk/shapes:define-enum question-priority
    common-lisp:nil
  (:prioritized "PRIORITIZED")
  (:none "NONE"))

(smithy/sdk/shapes:define-type question-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum question-type
    common-lisp:nil
  (:prioritized "PRIORITIZED")
  (:non-prioritized "NON_PRIORITIZED"))

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum report-format
    common-lisp:nil
  (:pdf "PDF")
  (:json "JSON"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type
                                  exception-resource-id :required common-lisp:t
                                  :member-name "ResourceId")
                                 (resource-type :target-type
                                  exception-resource-type :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure review-template common-lisp:nil
                                    ((description :target-type
                                      template-description :member-name
                                      "Description")
                                     (lenses :target-type
                                      review-template-lenses :member-name
                                      "Lenses")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (question-counts :target-type
                                      question-counts :member-name
                                      "QuestionCounts")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (template-arn :target-type template-arn
                                      :member-name "TemplateArn")
                                     (template-name :target-type template-name
                                      :member-name "TemplateName")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (update-status :target-type
                                      review-template-update-status
                                      :member-name "UpdateStatus")
                                     (share-invitation-id :target-type
                                      share-invitation-id :member-name
                                      "ShareInvitationId"))
                                    (:shape-name "ReviewTemplate"))

(smithy/sdk/shapes:define-structure review-template-answer common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (question-description :target-type
                                      question-description :member-name
                                      "QuestionDescription")
                                     (improvement-plan-url :target-type
                                      improvement-plan-url :member-name
                                      "ImprovementPlanUrl")
                                     (helpful-resource-url :target-type
                                      helpful-resource-url :member-name
                                      "HelpfulResourceUrl")
                                     (helpful-resource-display-text
                                      :target-type display-text :member-name
                                      "HelpfulResourceDisplayText")
                                     (choices :target-type choices :member-name
                                      "Choices")
                                     (selected-choices :target-type
                                      selected-choices :member-name
                                      "SelectedChoices")
                                     (choice-answers :target-type
                                      choice-answers :member-name
                                      "ChoiceAnswers")
                                     (is-applicable :target-type is-applicable
                                      :member-name "IsApplicable")
                                     (answer-status :target-type
                                      review-template-answer-status
                                      :member-name "AnswerStatus")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (reason :target-type answer-reason
                                      :member-name "Reason"))
                                    (:shape-name "ReviewTemplateAnswer"))

(smithy/sdk/shapes:define-enum review-template-answer-status
    common-lisp:nil
  (:unanswered "UNANSWERED")
  (:answered "ANSWERED"))

(smithy/sdk/shapes:define-list review-template-answer-summaries :member
                               review-template-answer-summary)

(smithy/sdk/shapes:define-structure review-template-answer-summary
                                    common-lisp:nil
                                    ((question-id :target-type question-id
                                      :member-name "QuestionId")
                                     (pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (question-title :target-type
                                      question-title :member-name
                                      "QuestionTitle")
                                     (choices :target-type choices :member-name
                                      "Choices")
                                     (selected-choices :target-type
                                      selected-choices :member-name
                                      "SelectedChoices")
                                     (choice-answer-summaries :target-type
                                      choice-answer-summaries :member-name
                                      "ChoiceAnswerSummaries")
                                     (is-applicable :target-type is-applicable
                                      :member-name "IsApplicable")
                                     (answer-status :target-type
                                      review-template-answer-status
                                      :member-name "AnswerStatus")
                                     (reason :target-type answer-reason
                                      :member-name "Reason")
                                     (question-type :target-type question-type
                                      :member-name "QuestionType"))
                                    (:shape-name "ReviewTemplateAnswerSummary"))

(smithy/sdk/shapes:define-list review-template-arns :member template-arn)

(smithy/sdk/shapes:define-list review-template-lens-aliases :member lens-alias)

(smithy/sdk/shapes:define-structure review-template-lens-review common-lisp:nil
                                    ((lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (lens-version :target-type lens-version
                                      :member-name "LensVersion")
                                     (lens-name :target-type lens-name
                                      :member-name "LensName")
                                     (lens-status :target-type lens-status
                                      :member-name "LensStatus")
                                     (pillar-review-summaries :target-type
                                      review-template-pillar-review-summaries
                                      :member-name "PillarReviewSummaries")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (question-counts :target-type
                                      question-counts :member-name
                                      "QuestionCounts")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ReviewTemplateLensReview"))

(smithy/sdk/shapes:define-list review-template-lenses :member lens-alias)

(smithy/sdk/shapes:define-list review-template-pillar-review-summaries :member
                               review-template-pillar-review-summary)

(smithy/sdk/shapes:define-structure review-template-pillar-review-summary
                                    common-lisp:nil
                                    ((pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (pillar-name :target-type pillar-name
                                      :member-name "PillarName")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (question-counts :target-type
                                      question-counts :member-name
                                      "QuestionCounts"))
                                    (:shape-name
                                     "ReviewTemplatePillarReviewSummary"))

(smithy/sdk/shapes:define-structure review-template-summary common-lisp:nil
                                    ((description :target-type
                                      template-description :member-name
                                      "Description")
                                     (lenses :target-type
                                      review-template-lenses :member-name
                                      "Lenses")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (template-arn :target-type template-arn
                                      :member-name "TemplateArn")
                                     (template-name :target-type template-name
                                      :member-name "TemplateName")
                                     (update-status :target-type
                                      review-template-update-status
                                      :member-name "UpdateStatus"))
                                    (:shape-name "ReviewTemplateSummary"))

(smithy/sdk/shapes:define-enum review-template-update-status
    common-lisp:nil
  (:current "CURRENT")
  (:lens-not-current "LENS_NOT_CURRENT"))

(smithy/sdk/shapes:define-list review-templates :member review-template-summary)

(smithy/sdk/shapes:define-enum risk
    common-lisp:nil
  (:unanswered "UNANSWERED")
  (:high "HIGH")
  (:medium "MEDIUM")
  (:none "NONE")
  (:not-applicable "NOT_APPLICABLE"))

(smithy/sdk/shapes:define-map risk-counts :key risk :value count)

(smithy/sdk/shapes:define-list selected-choice-ids :member choice-id)

(smithy/sdk/shapes:define-list selected-choices :member choice-id)

(smithy/sdk/shapes:define-structure selected-pillar common-lisp:nil
                                    ((pillar-id :target-type pillar-id
                                      :member-name "PillarId")
                                     (selected-question-ids :target-type
                                      selected-question-ids :member-name
                                      "SelectedQuestionIds"))
                                    (:shape-name "SelectedPillar"))

(smithy/sdk/shapes:define-list selected-pillars :member selected-pillar)

(smithy/sdk/shapes:define-list selected-profile-choice-ids :member choice-id)

(smithy/sdk/shapes:define-type selected-question-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list selected-question-ids :member
                               selected-question-id)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type
                                  exception-resource-id :member-name
                                  "ResourceId")
                                 (resource-type :target-type
                                  exception-resource-type :member-name
                                  "ResourceType")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "QuotaCode")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type share-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure share-invitation common-lisp:nil
                                    ((share-invitation-id :target-type
                                      share-invitation-id :member-name
                                      "ShareInvitationId")
                                     (share-resource-type :target-type
                                      share-resource-type :member-name
                                      "ShareResourceType")
                                     (workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (lens-alias :target-type lens-alias
                                      :member-name "LensAlias")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (profile-arn :target-type profile-arn
                                      :member-name "ProfileArn")
                                     (template-arn :target-type template-arn
                                      :member-name "TemplateArn"))
                                    (:shape-name "ShareInvitation"))

(smithy/sdk/shapes:define-enum share-invitation-action
    common-lisp:nil
  (:accept "ACCEPT")
  (:reject "REJECT"))

(smithy/sdk/shapes:define-type share-invitation-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list share-invitation-summaries :member
                               share-invitation-summary)

(smithy/sdk/shapes:define-structure share-invitation-summary common-lisp:nil
                                    ((share-invitation-id :target-type
                                      share-invitation-id :member-name
                                      "ShareInvitationId")
                                     (shared-by :target-type aws-account-id
                                      :member-name "SharedBy")
                                     (shared-with :target-type shared-with
                                      :member-name "SharedWith")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "PermissionType")
                                     (share-resource-type :target-type
                                      share-resource-type :member-name
                                      "ShareResourceType")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (lens-name :target-type lens-name
                                      :member-name "LensName")
                                     (lens-arn :target-type lens-arn
                                      :member-name "LensArn")
                                     (profile-name :target-type profile-name
                                      :member-name "ProfileName")
                                     (profile-arn :target-type profile-arn
                                      :member-name "ProfileArn")
                                     (template-name :target-type template-name
                                      :member-name "TemplateName")
                                     (template-arn :target-type template-arn
                                      :member-name "TemplateArn"))
                                    (:shape-name "ShareInvitationSummary"))

(smithy/sdk/shapes:define-enum share-resource-type
    common-lisp:nil
  (:workload "WORKLOAD")
  (:lens "LENS")
  (:profile "PROFILE")
  (:template "TEMPLATE"))

(smithy/sdk/shapes:define-enum share-status
    common-lisp:nil
  (:accepted "ACCEPTED")
  (:rejected "REJECTED")
  (:pending "PENDING")
  (:revoked "REVOKED")
  (:expired "EXPIRED")
  (:associating "ASSOCIATING")
  (:associated "ASSOCIATED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type shared-with smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type shared-with-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subdomain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((workload-arn :target-type workload-arn
                                  :required common-lisp:t :member-name
                                  "WorkloadArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list template-questions :member
                               profile-template-question)

(smithy/sdk/shapes:define-list template-share-summaries :member
                               template-share-summary)

(smithy/sdk/shapes:define-structure template-share-summary common-lisp:nil
                                    ((share-id :target-type share-id
                                      :member-name "ShareId")
                                     (shared-with :target-type shared-with
                                      :member-name "SharedWith")
                                     (status :target-type share-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "TemplateShareSummary"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (quota-code :target-type quota-code
                                  :member-name "QuotaCode")
                                 (service-code :target-type service-code
                                  :member-name "ServiceCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum trusted-advisor-integration-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((workload-arn :target-type workload-arn
                                  :required common-lisp:t :member-name
                                  "WorkloadArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-answer-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (question-id :target-type question-id
                                  :required common-lisp:t :member-name
                                  "QuestionId" :http-label common-lisp:t)
                                 (selected-choices :target-type
                                  selected-choices :member-name
                                  "SelectedChoices")
                                 (choice-updates :target-type choice-updates
                                  :member-name "ChoiceUpdates")
                                 (notes :target-type notes :member-name
                                  "Notes")
                                 (is-applicable :target-type is-applicable
                                  :member-name "IsApplicable")
                                 (reason :target-type answer-reason
                                  :member-name "Reason"))
                                (:shape-name "UpdateAnswerInput"))

(smithy/sdk/shapes:define-output update-answer-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (lens-arn :target-type lens-arn :member-name
                                   "LensArn")
                                  (answer :target-type answer :member-name
                                   "Answer"))
                                 (:shape-name "UpdateAnswerOutput"))

(smithy/sdk/shapes:define-input update-global-settings-input common-lisp:nil
                                ((organization-sharing-status :target-type
                                  organization-sharing-status :member-name
                                  "OrganizationSharingStatus")
                                 (discovery-integration-status :target-type
                                  discovery-integration-status :member-name
                                  "DiscoveryIntegrationStatus")
                                 (jira-configuration :target-type
                                  account-jira-configuration-input :member-name
                                  "JiraConfiguration"))
                                (:shape-name "UpdateGlobalSettingsInput"))

(smithy/sdk/shapes:define-input update-integration-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientRequestToken")
                                 (integrating-service :target-type
                                  integrating-service :required common-lisp:t
                                  :member-name "IntegratingService"))
                                (:shape-name "UpdateIntegrationInput"))

(smithy/sdk/shapes:define-input update-lens-review-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (lens-notes :target-type notes :member-name
                                  "LensNotes")
                                 (pillar-notes :target-type pillar-notes
                                  :member-name "PillarNotes")
                                 (jira-configuration :target-type
                                  jira-selected-question-configuration
                                  :member-name "JiraConfiguration"))
                                (:shape-name "UpdateLensReviewInput"))

(smithy/sdk/shapes:define-output update-lens-review-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (lens-review :target-type lens-review
                                   :member-name "LensReview"))
                                 (:shape-name "UpdateLensReviewOutput"))

(smithy/sdk/shapes:define-input update-profile-input common-lisp:nil
                                ((profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (profile-description :target-type
                                  profile-description :member-name
                                  "ProfileDescription")
                                 (profile-questions :target-type
                                  profile-question-updates :member-name
                                  "ProfileQuestions"))
                                (:shape-name "UpdateProfileInput"))

(smithy/sdk/shapes:define-output update-profile-output common-lisp:nil
                                 ((profile :target-type profile :member-name
                                   "Profile"))
                                 (:shape-name "UpdateProfileOutput"))

(smithy/sdk/shapes:define-input update-review-template-answer-input
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (question-id :target-type question-id
                                  :required common-lisp:t :member-name
                                  "QuestionId" :http-label common-lisp:t)
                                 (selected-choices :target-type
                                  selected-choices :member-name
                                  "SelectedChoices")
                                 (choice-updates :target-type choice-updates
                                  :member-name "ChoiceUpdates")
                                 (notes :target-type notes :member-name
                                  "Notes")
                                 (is-applicable :target-type is-applicable
                                  :member-name "IsApplicable")
                                 (reason :target-type answer-reason
                                  :member-name "Reason"))
                                (:shape-name "UpdateReviewTemplateAnswerInput"))

(smithy/sdk/shapes:define-output update-review-template-answer-output
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (lens-alias :target-type lens-alias
                                   :member-name "LensAlias")
                                  (answer :target-type review-template-answer
                                   :member-name "Answer"))
                                 (:shape-name
                                  "UpdateReviewTemplateAnswerOutput"))

(smithy/sdk/shapes:define-input update-review-template-input common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (template-name :target-type template-name
                                  :member-name "TemplateName")
                                 (description :target-type template-description
                                  :member-name "Description")
                                 (notes :target-type notes :member-name
                                  "Notes")
                                 (lenses-to-associate :target-type
                                  review-template-lens-aliases :member-name
                                  "LensesToAssociate")
                                 (lenses-to-disassociate :target-type
                                  review-template-lens-aliases :member-name
                                  "LensesToDisassociate"))
                                (:shape-name "UpdateReviewTemplateInput"))

(smithy/sdk/shapes:define-input update-review-template-lens-review-input
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (lens-notes :target-type notes :member-name
                                  "LensNotes")
                                 (pillar-notes :target-type pillar-notes
                                  :member-name "PillarNotes"))
                                (:shape-name
                                 "UpdateReviewTemplateLensReviewInput"))

(smithy/sdk/shapes:define-output update-review-template-lens-review-output
                                 common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn")
                                  (lens-review :target-type
                                   review-template-lens-review :member-name
                                   "LensReview"))
                                 (:shape-name
                                  "UpdateReviewTemplateLensReviewOutput"))

(smithy/sdk/shapes:define-output update-review-template-output common-lisp:nil
                                 ((review-template :target-type review-template
                                   :member-name "ReviewTemplate"))
                                 (:shape-name "UpdateReviewTemplateOutput"))

(smithy/sdk/shapes:define-input update-share-invitation-input common-lisp:nil
                                ((share-invitation-id :target-type
                                  share-invitation-id :required common-lisp:t
                                  :member-name "ShareInvitationId" :http-label
                                  common-lisp:t)
                                 (share-invitation-action :target-type
                                  share-invitation-action :required
                                  common-lisp:t :member-name
                                  "ShareInvitationAction"))
                                (:shape-name "UpdateShareInvitationInput"))

(smithy/sdk/shapes:define-output update-share-invitation-output common-lisp:nil
                                 ((share-invitation :target-type
                                   share-invitation :member-name
                                   "ShareInvitation"))
                                 (:shape-name "UpdateShareInvitationOutput"))

(smithy/sdk/shapes:define-input update-workload-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (workload-name :target-type workload-name
                                  :member-name "WorkloadName")
                                 (description :target-type workload-description
                                  :member-name "Description")
                                 (environment :target-type workload-environment
                                  :member-name "Environment")
                                 (account-ids :target-type workload-account-ids
                                  :member-name "AccountIds")
                                 (aws-regions :target-type workload-aws-regions
                                  :member-name "AwsRegions")
                                 (non-aws-regions :target-type
                                  workload-non-aws-regions :member-name
                                  "NonAwsRegions")
                                 (pillar-priorities :target-type
                                  workload-pillar-priorities :member-name
                                  "PillarPriorities")
                                 (architectural-design :target-type
                                  workload-architectural-design :member-name
                                  "ArchitecturalDesign")
                                 (review-owner :target-type
                                  workload-review-owner :member-name
                                  "ReviewOwner")
                                 (is-review-owner-update-acknowledged
                                  :target-type
                                  is-review-owner-update-acknowledged
                                  :member-name
                                  "IsReviewOwnerUpdateAcknowledged")
                                 (industry-type :target-type
                                  workload-industry-type :member-name
                                  "IndustryType")
                                 (industry :target-type workload-industry
                                  :member-name "Industry")
                                 (notes :target-type notes :member-name
                                  "Notes")
                                 (improvement-status :target-type
                                  workload-improvement-status :member-name
                                  "ImprovementStatus")
                                 (discovery-config :target-type
                                  workload-discovery-config :member-name
                                  "DiscoveryConfig")
                                 (applications :target-type
                                  workload-applications :member-name
                                  "Applications")
                                 (jira-configuration :target-type
                                  workload-jira-configuration-input
                                  :member-name "JiraConfiguration"))
                                (:shape-name "UpdateWorkloadInput"))

(smithy/sdk/shapes:define-output update-workload-output common-lisp:nil
                                 ((workload :target-type workload :member-name
                                   "Workload"))
                                 (:shape-name "UpdateWorkloadOutput"))

(smithy/sdk/shapes:define-input update-workload-share-input common-lisp:nil
                                ((share-id :target-type share-id :required
                                  common-lisp:t :member-name "ShareId"
                                  :http-label common-lisp:t)
                                 (workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (permission-type :target-type permission-type
                                  :required common-lisp:t :member-name
                                  "PermissionType"))
                                (:shape-name "UpdateWorkloadShareInput"))

(smithy/sdk/shapes:define-output update-workload-share-output common-lisp:nil
                                 ((workload-id :target-type workload-id
                                   :member-name "WorkloadId")
                                  (workload-share :target-type workload-share
                                   :member-name "WorkloadShare"))
                                 (:shape-name "UpdateWorkloadShareOutput"))

(smithy/sdk/shapes:define-input upgrade-lens-review-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (milestone-name :target-type milestone-name
                                  :required common-lisp:t :member-name
                                  "MilestoneName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "UpgradeLensReviewInput"))

(smithy/sdk/shapes:define-input upgrade-profile-version-input common-lisp:nil
                                ((workload-id :target-type workload-id
                                  :required common-lisp:t :member-name
                                  "WorkloadId" :http-label common-lisp:t)
                                 (profile-arn :target-type profile-arn
                                  :required common-lisp:t :member-name
                                  "ProfileArn" :http-label common-lisp:t)
                                 (milestone-name :target-type milestone-name
                                  :member-name "MilestoneName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "UpgradeProfileVersionInput"))

(smithy/sdk/shapes:define-input upgrade-review-template-lens-review-input
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (lens-alias :target-type lens-alias :required
                                  common-lisp:t :member-name "LensAlias"
                                  :http-label common-lisp:t)
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "UpgradeReviewTemplateLensReviewInput"))

(smithy/sdk/shapes:define-list urls :member choice-content)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      validation-exception-field-name :required
                                      common-lisp:t :member-name "Name")
                                     (message :target-type exception-message
                                      :required common-lisp:t :member-name
                                      "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure version-differences common-lisp:nil
                                    ((pillar-differences :target-type
                                      pillar-differences :member-name
                                      "PillarDifferences"))
                                    (:shape-name "VersionDifferences"))

(smithy/sdk/shapes:define-structure workload common-lisp:nil
                                    ((workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (workload-arn :target-type workload-arn
                                      :member-name "WorkloadArn")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (description :target-type
                                      workload-description :member-name
                                      "Description")
                                     (environment :target-type
                                      workload-environment :member-name
                                      "Environment")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (account-ids :target-type
                                      workload-account-ids :member-name
                                      "AccountIds")
                                     (aws-regions :target-type
                                      workload-aws-regions :member-name
                                      "AwsRegions")
                                     (non-aws-regions :target-type
                                      workload-non-aws-regions :member-name
                                      "NonAwsRegions")
                                     (architectural-design :target-type
                                      workload-architectural-design
                                      :member-name "ArchitecturalDesign")
                                     (review-owner :target-type
                                      workload-review-owner :member-name
                                      "ReviewOwner")
                                     (review-restriction-date :target-type
                                      timestamp :member-name
                                      "ReviewRestrictionDate")
                                     (is-review-owner-update-acknowledged
                                      :target-type
                                      is-review-owner-update-acknowledged
                                      :member-name
                                      "IsReviewOwnerUpdateAcknowledged")
                                     (industry-type :target-type
                                      workload-industry-type :member-name
                                      "IndustryType")
                                     (industry :target-type workload-industry
                                      :member-name "Industry")
                                     (notes :target-type notes :member-name
                                      "Notes")
                                     (improvement-status :target-type
                                      workload-improvement-status :member-name
                                      "ImprovementStatus")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (pillar-priorities :target-type
                                      workload-pillar-priorities :member-name
                                      "PillarPriorities")
                                     (lenses :target-type workload-lenses
                                      :member-name "Lenses")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (share-invitation-id :target-type
                                      share-invitation-id :member-name
                                      "ShareInvitationId")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (discovery-config :target-type
                                      workload-discovery-config :member-name
                                      "DiscoveryConfig")
                                     (applications :target-type
                                      workload-applications :member-name
                                      "Applications")
                                     (profiles :target-type workload-profiles
                                      :member-name "Profiles")
                                     (prioritized-risk-counts :target-type
                                      risk-counts :member-name
                                      "PrioritizedRiskCounts")
                                     (jira-configuration :target-type
                                      workload-jira-configuration-output
                                      :member-name "JiraConfiguration"))
                                    (:shape-name "Workload"))

(smithy/sdk/shapes:define-list workload-account-ids :member aws-account-id)

(smithy/sdk/shapes:define-list workload-applications :member application-arn)

(smithy/sdk/shapes:define-type workload-architectural-design
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workload-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workload-aws-regions :member aws-region)

(smithy/sdk/shapes:define-type workload-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workload-discovery-config common-lisp:nil
                                    ((trusted-advisor-integration-status
                                      :target-type
                                      trusted-advisor-integration-status
                                      :member-name
                                      "TrustedAdvisorIntegrationStatus")
                                     (workload-resource-definition :target-type
                                      workload-resource-definition :member-name
                                      "WorkloadResourceDefinition"))
                                    (:shape-name "WorkloadDiscoveryConfig"))

(smithy/sdk/shapes:define-enum workload-environment
    common-lisp:nil
  (:production "PRODUCTION")
  (:preproduction "PREPRODUCTION"))

(smithy/sdk/shapes:define-type workload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workload-improvement-status
    common-lisp:nil
  (:not-applicable "NOT_APPLICABLE")
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:risk-acknowledged "RISK_ACKNOWLEDGED"))

(smithy/sdk/shapes:define-type workload-industry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workload-industry-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workload-issue-management-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:inherit "INHERIT"))

(smithy/sdk/shapes:define-structure workload-jira-configuration-input
                                    common-lisp:nil
                                    ((issue-management-status :target-type
                                      workload-issue-management-status
                                      :member-name "IssueManagementStatus")
                                     (issue-management-type :target-type
                                      issue-management-type :member-name
                                      "IssueManagementType")
                                     (jira-project-key :target-type
                                      jira-project-key :member-name
                                      "JiraProjectKey"))
                                    (:shape-name
                                     "WorkloadJiraConfigurationInput"))

(smithy/sdk/shapes:define-structure workload-jira-configuration-output
                                    common-lisp:nil
                                    ((issue-management-status :target-type
                                      workload-issue-management-status
                                      :member-name "IssueManagementStatus")
                                     (issue-management-type :target-type
                                      issue-management-type :member-name
                                      "IssueManagementType")
                                     (jira-project-key :target-type
                                      jira-project-key :member-name
                                      "JiraProjectKey")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name
                                     "WorkloadJiraConfigurationOutput"))

(smithy/sdk/shapes:define-list workload-lenses :member lens-alias)

(smithy/sdk/shapes:define-type workload-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workload-name-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workload-non-aws-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workload-non-aws-regions :member
                               workload-non-aws-region)

(smithy/sdk/shapes:define-list workload-pillar-priorities :member pillar-id)

(smithy/sdk/shapes:define-structure workload-profile common-lisp:nil
                                    ((profile-arn :target-type profile-arn
                                      :member-name "ProfileArn")
                                     (profile-version :target-type
                                      profile-version :member-name
                                      "ProfileVersion"))
                                    (:shape-name "WorkloadProfile"))

(smithy/sdk/shapes:define-list workload-profile-arns :member profile-arn)

(smithy/sdk/shapes:define-list workload-profiles :member workload-profile)

(smithy/sdk/shapes:define-list workload-resource-definition :member
                               definition-type)

(smithy/sdk/shapes:define-type workload-review-owner
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workload-share common-lisp:nil
                                    ((share-id :target-type share-id
                                      :member-name "ShareId")
                                     (shared-by :target-type aws-account-id
                                      :member-name "SharedBy")
                                     (shared-with :target-type shared-with
                                      :member-name "SharedWith")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "PermissionType")
                                     (status :target-type share-status
                                      :member-name "Status")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (workload-id :target-type workload-id
                                      :member-name "WorkloadId"))
                                    (:shape-name "WorkloadShare"))

(smithy/sdk/shapes:define-list workload-share-summaries :member
                               workload-share-summary)

(smithy/sdk/shapes:define-structure workload-share-summary common-lisp:nil
                                    ((share-id :target-type share-id
                                      :member-name "ShareId")
                                     (shared-with :target-type shared-with
                                      :member-name "SharedWith")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "PermissionType")
                                     (status :target-type share-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "WorkloadShareSummary"))

(smithy/sdk/shapes:define-list workload-summaries :member workload-summary)

(smithy/sdk/shapes:define-structure workload-summary common-lisp:nil
                                    ((workload-id :target-type workload-id
                                      :member-name "WorkloadId")
                                     (workload-arn :target-type workload-arn
                                      :member-name "WorkloadArn")
                                     (workload-name :target-type workload-name
                                      :member-name "WorkloadName")
                                     (owner :target-type aws-account-id
                                      :member-name "Owner")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (lenses :target-type workload-lenses
                                      :member-name "Lenses")
                                     (risk-counts :target-type risk-counts
                                      :member-name "RiskCounts")
                                     (improvement-status :target-type
                                      workload-improvement-status :member-name
                                      "ImprovementStatus")
                                     (profiles :target-type workload-profiles
                                      :member-name "Profiles")
                                     (prioritized-risk-counts :target-type
                                      risk-counts :member-name
                                      "PrioritizedRiskCounts"))
                                    (:shape-name "WorkloadSummary"))

(smithy/sdk/operation:define-operation associate-lenses :shape-name
                                       "AssociateLenses" :input
                                       associate-lenses-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/associateLenses"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-profiles :shape-name
                                       "AssociateProfiles" :input
                                       associate-profiles-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/associateProfiles"
                                       :code 200)

(smithy/sdk/operation:define-operation create-lens-share :shape-name
                                       "CreateLensShare" :input
                                       create-lens-share-input :output
                                       create-lens-share-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/lenses/{LensAlias}/shares" :code 200)

(smithy/sdk/operation:define-operation create-lens-version :shape-name
                                       "CreateLensVersion" :input
                                       create-lens-version-input :output
                                       create-lens-version-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/lenses/{LensAlias}/versions" :code 200)

(smithy/sdk/operation:define-operation create-milestone :shape-name
                                       "CreateMilestone" :input
                                       create-milestone-input :output
                                       create-milestone-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloads/{WorkloadId}/milestones"
                                       :code 200)

(smithy/sdk/operation:define-operation create-profile :shape-name
                                       "CreateProfile" :input
                                       create-profile-input :output
                                       create-profile-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/profiles" :code
                                       200)

(smithy/sdk/operation:define-operation create-profile-share :shape-name
                                       "CreateProfileShare" :input
                                       create-profile-share-input :output
                                       create-profile-share-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profiles/{ProfileArn}/shares" :code
                                       200)

(smithy/sdk/operation:define-operation create-review-template :shape-name
                                       "CreateReviewTemplate" :input
                                       create-review-template-input :output
                                       create-review-template-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/reviewTemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation create-template-share :shape-name
                                       "CreateTemplateShare" :input
                                       create-template-share-input :output
                                       create-template-share-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/templates/shares/{TemplateArn}" :code
                                       200)

(smithy/sdk/operation:define-operation create-workload :shape-name
                                       "CreateWorkload" :input
                                       create-workload-input :output
                                       create-workload-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workloads" :code
                                       200)

(smithy/sdk/operation:define-operation create-workload-share :shape-name
                                       "CreateWorkloadShare" :input
                                       create-workload-share-input :output
                                       create-workload-share-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloads/{WorkloadId}/shares" :code
                                       200)

(smithy/sdk/operation:define-operation delete-lens :shape-name "DeleteLens"
                                       :input delete-lens-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/lenses/{LensAlias}" :code 200)

(smithy/sdk/operation:define-operation delete-lens-share :shape-name
                                       "DeleteLensShare" :input
                                       delete-lens-share-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/lenses/{LensAlias}/shares/{ShareId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-profile :shape-name
                                       "DeleteProfile" :input
                                       delete-profile-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profiles/{ProfileArn}" :code 200)

(smithy/sdk/operation:define-operation delete-profile-share :shape-name
                                       "DeleteProfileShare" :input
                                       delete-profile-share-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profiles/{ProfileArn}/shares/{ShareId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-review-template :shape-name
                                       "DeleteReviewTemplate" :input
                                       delete-review-template-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/reviewTemplates/{TemplateArn}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-template-share :shape-name
                                       "DeleteTemplateShare" :input
                                       delete-template-share-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/templates/shares/{TemplateArn}/{ShareId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-workload :shape-name
                                       "DeleteWorkload" :input
                                       delete-workload-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workloads/{WorkloadId}" :code 200)

(smithy/sdk/operation:define-operation delete-workload-share :shape-name
                                       "DeleteWorkloadShare" :input
                                       delete-workload-share-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workloads/{WorkloadId}/shares/{ShareId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-lenses :shape-name
                                       "DisassociateLenses" :input
                                       disassociate-lenses-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/disassociateLenses"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-profiles :shape-name
                                       "DisassociateProfiles" :input
                                       disassociate-profiles-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/disassociateProfiles"
                                       :code 200)

(smithy/sdk/operation:define-operation export-lens :shape-name "ExportLens"
                                       :input export-lens-input :output
                                       export-lens-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/lenses/{LensAlias}/export" :code 200)

(smithy/sdk/operation:define-operation get-answer :shape-name "GetAnswer"
                                       :input get-answer-input :output
                                       get-answer-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-consolidated-report :shape-name
                                       "GetConsolidatedReport" :input
                                       get-consolidated-report-input :output
                                       get-consolidated-report-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/consolidatedReport"
                                       :code 200)

(smithy/sdk/operation:define-operation get-global-settings :shape-name
                                       "GetGlobalSettings" :input
                                       common-lisp:null :output
                                       get-global-settings-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/global-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation get-lens :shape-name "GetLens" :input
                                       get-lens-input :output get-lens-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/lenses/{LensAlias}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-lens-review :shape-name
                                       "GetLensReview" :input
                                       get-lens-review-input :output
                                       get-lens-review-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-lens-review-report :shape-name
                                       "GetLensReviewReport" :input
                                       get-lens-review-report-input :output
                                       get-lens-review-report-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report"
                                       :code 200)

(smithy/sdk/operation:define-operation get-lens-version-difference :shape-name
                                       "GetLensVersionDifference" :input
                                       get-lens-version-difference-input
                                       :output
                                       get-lens-version-difference-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/lenses/{LensAlias}/versionDifference"
                                       :code 200)

(smithy/sdk/operation:define-operation get-milestone :shape-name "GetMilestone"
                                       :input get-milestone-input :output
                                       get-milestone-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/milestones/{MilestoneNumber}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-profile :shape-name "GetProfile"
                                       :input get-profile-input :output
                                       get-profile-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profiles/{ProfileArn}" :code 200)

(smithy/sdk/operation:define-operation get-profile-template :shape-name
                                       "GetProfileTemplate" :input
                                       get-profile-template-input :output
                                       get-profile-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/profileTemplate"
                                       :code 200)

(smithy/sdk/operation:define-operation get-review-template :shape-name
                                       "GetReviewTemplate" :input
                                       get-review-template-input :output
                                       get-review-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/reviewTemplates/{TemplateArn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-review-template-answer :shape-name
                                       "GetReviewTemplateAnswer" :input
                                       get-review-template-answer-input :output
                                       get-review-template-answer-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-review-template-lens-review
                                       :shape-name
                                       "GetReviewTemplateLensReview" :input
                                       get-review-template-lens-review-input
                                       :output
                                       get-review-template-lens-review-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workload :shape-name "GetWorkload"
                                       :input get-workload-input :output
                                       get-workload-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}" :code 200)

(smithy/sdk/operation:define-operation import-lens :shape-name "ImportLens"
                                       :input import-lens-input :output
                                       import-lens-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/importLens" :code
                                       200)

(smithy/sdk/operation:define-operation list-answers :shape-name "ListAnswers"
                                       :input list-answers-input :output
                                       list-answers-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-check-details :shape-name
                                       "ListCheckDetails" :input
                                       list-check-details-input :output
                                       list-check-details-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloads/{WorkloadId}/checks" :code
                                       200)

(smithy/sdk/operation:define-operation list-check-summaries :shape-name
                                       "ListCheckSummaries" :input
                                       list-check-summaries-input :output
                                       list-check-summaries-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloads/{WorkloadId}/checkSummaries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-lens-review-improvements
                                       :shape-name "ListLensReviewImprovements"
                                       :input
                                       list-lens-review-improvements-input
                                       :output
                                       list-lens-review-improvements-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements"
                                       :code 200)

(smithy/sdk/operation:define-operation list-lens-reviews :shape-name
                                       "ListLensReviews" :input
                                       list-lens-reviews-input :output
                                       list-lens-reviews-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/lensReviews"
                                       :code 200)

(smithy/sdk/operation:define-operation list-lens-shares :shape-name
                                       "ListLensShares" :input
                                       list-lens-shares-input :output
                                       list-lens-shares-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/lenses/{LensAlias}/shares" :code 200)

(smithy/sdk/operation:define-operation list-lenses :shape-name "ListLenses"
                                       :input list-lenses-input :output
                                       list-lenses-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/lenses" :code 200)

(smithy/sdk/operation:define-operation list-milestones :shape-name
                                       "ListMilestones" :input
                                       list-milestones-input :output
                                       list-milestones-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloads/{WorkloadId}/milestonesSummaries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-notifications :shape-name
                                       "ListNotifications" :input
                                       list-notifications-input :output
                                       list-notifications-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/notifications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profile-notifications :shape-name
                                       "ListProfileNotifications" :input
                                       list-profile-notifications-input :output
                                       list-profile-notifications-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profileNotifications" :code 200)

(smithy/sdk/operation:define-operation list-profile-shares :shape-name
                                       "ListProfileShares" :input
                                       list-profile-shares-input :output
                                       list-profile-shares-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profiles/{ProfileArn}/shares" :code
                                       200)

(smithy/sdk/operation:define-operation list-profiles :shape-name "ListProfiles"
                                       :input list-profiles-input :output
                                       list-profiles-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/profileSummaries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-review-template-answers :shape-name
                                       "ListReviewTemplateAnswers" :input
                                       list-review-template-answers-input
                                       :output
                                       list-review-template-answers-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-review-templates :shape-name
                                       "ListReviewTemplates" :input
                                       list-review-templates-input :output
                                       list-review-templates-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/reviewTemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-share-invitations :shape-name
                                       "ListShareInvitations" :input
                                       list-share-invitations-input :output
                                       list-share-invitations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/shareInvitations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{WorkloadArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-template-shares :shape-name
                                       "ListTemplateShares" :input
                                       list-template-shares-input :output
                                       list-template-shares-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/templates/shares/{TemplateArn}" :code
                                       200)

(smithy/sdk/operation:define-operation list-workload-shares :shape-name
                                       "ListWorkloadShares" :input
                                       list-workload-shares-input :output
                                       list-workload-shares-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workloads/{WorkloadId}/shares" :code
                                       200)

(smithy/sdk/operation:define-operation list-workloads :shape-name
                                       "ListWorkloads" :input
                                       list-workloads-input :output
                                       list-workloads-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloadsSummaries" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{WorkloadArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{WorkloadArn}" :code 200)

(smithy/sdk/operation:define-operation update-answer :shape-name "UpdateAnswer"
                                       :input update-answer-input :output
                                       update-answer-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-global-settings :shape-name
                                       "UpdateGlobalSettings" :input
                                       update-global-settings-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/global-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation update-integration :shape-name
                                       "UpdateIntegration" :input
                                       update-integration-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workloads/{WorkloadId}/updateIntegration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-lens-review :shape-name
                                       "UpdateLensReview" :input
                                       update-lens-review-input :output
                                       update-lens-review-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-profile :shape-name
                                       "UpdateProfile" :input
                                       update-profile-input :output
                                       update-profile-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/profiles/{ProfileArn}" :code 200)

(smithy/sdk/operation:define-operation update-review-template :shape-name
                                       "UpdateReviewTemplate" :input
                                       update-review-template-input :output
                                       update-review-template-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/reviewTemplates/{TemplateArn}" :code
                                       200)

(smithy/sdk/operation:define-operation update-review-template-answer
                                       :shape-name "UpdateReviewTemplateAnswer"
                                       :input
                                       update-review-template-answer-input
                                       :output
                                       update-review-template-answer-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-review-template-lens-review
                                       :shape-name
                                       "UpdateReviewTemplateLensReview" :input
                                       update-review-template-lens-review-input
                                       :output
                                       update-review-template-lens-review-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-share-invitation :shape-name
                                       "UpdateShareInvitation" :input
                                       update-share-invitation-input :output
                                       update-share-invitation-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/shareInvitations/{ShareInvitationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-workload :shape-name
                                       "UpdateWorkload" :input
                                       update-workload-input :output
                                       update-workload-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}" :code 200)

(smithy/sdk/operation:define-operation update-workload-share :shape-name
                                       "UpdateWorkloadShare" :input
                                       update-workload-share-input :output
                                       update-workload-share-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workloads/{WorkloadId}/shares/{ShareId}"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-lens-review :shape-name
                                       "UpgradeLensReview" :input
                                       upgrade-lens-review-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-profile-version :shape-name
                                       "UpgradeProfileVersion" :input
                                       upgrade-profile-version-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workloads/{WorkloadId}/profiles/{ProfileArn}/upgrade"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-review-template-lens-review
                                       :shape-name
                                       "UpgradeReviewTemplateLensReview" :input
                                       upgrade-review-template-lens-review-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/upgrade"
                                       :code 200)
