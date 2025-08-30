(uiop/package:define-package #:pira/codecommit (:use)
                             (:export #:account-id
                              #:actor-does-not-exist-exception
                              #:additional-data #:approval #:approval-list
                              #:approval-rule #:approval-rule-content
                              #:approval-rule-content-required-exception
                              #:approval-rule-does-not-exist-exception
                              #:approval-rule-event-metadata #:approval-rule-id
                              #:approval-rule-name
                              #:approval-rule-name-already-exists-exception
                              #:approval-rule-name-required-exception
                              #:approval-rule-overridden-event-metadata
                              #:approval-rule-template
                              #:approval-rule-template-content
                              #:approval-rule-template-content-required-exception
                              #:approval-rule-template-description
                              #:approval-rule-template-does-not-exist-exception
                              #:approval-rule-template-id
                              #:approval-rule-template-in-use-exception
                              #:approval-rule-template-name
                              #:approval-rule-template-name-already-exists-exception
                              #:approval-rule-template-name-list
                              #:approval-rule-template-name-required-exception
                              #:approval-rules-list
                              #:approval-rules-not-satisfied-list
                              #:approval-rules-satisfied-list #:approval-state
                              #:approval-state-changed-event-metadata
                              #:approval-state-required-exception #:approved
                              #:arn
                              #:associate-approval-rule-template-with-repository
                              #:author-does-not-exist-exception
                              #:batch-associate-approval-rule-template-with-repositories
                              #:batch-associate-approval-rule-template-with-repositories-error
                              #:batch-associate-approval-rule-template-with-repositories-errors-list
                              #:batch-describe-merge-conflicts
                              #:batch-describe-merge-conflicts-error
                              #:batch-describe-merge-conflicts-errors
                              #:batch-disassociate-approval-rule-template-from-repositories
                              #:batch-disassociate-approval-rule-template-from-repositories-error
                              #:batch-disassociate-approval-rule-template-from-repositories-errors-list
                              #:batch-get-commits #:batch-get-commits-error
                              #:batch-get-commits-errors-list
                              #:batch-get-repositories
                              #:batch-get-repositories-error
                              #:batch-get-repositories-error-code-enum
                              #:batch-get-repositories-errors-list
                              #:before-commit-id-and-after-commit-id-are-same-exception
                              #:blob-id-does-not-exist-exception
                              #:blob-id-required-exception #:blob-metadata
                              #:branch-does-not-exist-exception #:branch-info
                              #:branch-name #:branch-name-exists-exception
                              #:branch-name-is-tag-name-exception
                              #:branch-name-list
                              #:branch-name-required-exception
                              #:caller-reactions
                              #:cannot-delete-approval-rule-from-template-exception
                              #:cannot-modify-approval-rule-from-template-exception
                              #:capital-boolean #:change-type-enum
                              #:client-request-token
                              #:client-request-token-required-exception
                              #:clone-url-http #:clone-url-ssh
                              #:code-commit-20150413 #:comment
                              #:comment-content-required-exception
                              #:comment-content-size-limit-exceeded-exception
                              #:comment-deleted-exception
                              #:comment-does-not-exist-exception #:comment-id
                              #:comment-id-required-exception
                              #:comment-not-created-by-caller-exception
                              #:comments #:comments-for-compared-commit
                              #:comments-for-compared-commit-data
                              #:comments-for-pull-request
                              #:comments-for-pull-request-data #:commit
                              #:commit-does-not-exist-exception #:commit-id
                              #:commit-id-does-not-exist-exception
                              #:commit-id-required-exception
                              #:commit-ids-input-list
                              #:commit-ids-limit-exceeded-exception
                              #:commit-ids-list-required-exception
                              #:commit-message-length-exceeded-exception
                              #:commit-name #:commit-objects-list
                              #:commit-required-exception
                              #:concurrent-reference-update-exception
                              #:conflict #:conflict-detail-level-type-enum
                              #:conflict-metadata #:conflict-metadata-list
                              #:conflict-resolution
                              #:conflict-resolution-strategy-type-enum
                              #:conflicts #:content #:count
                              #:create-approval-rule-template #:create-branch
                              #:create-commit #:create-pull-request
                              #:create-pull-request-approval-rule
                              #:create-repository
                              #:create-unreferenced-merge-commit
                              #:creation-date #:date
                              #:default-branch-cannot-be-deleted-exception
                              #:delete-approval-rule-template #:delete-branch
                              #:delete-comment-content #:delete-file
                              #:delete-file-entries #:delete-file-entry
                              #:delete-pull-request-approval-rule
                              #:delete-repository #:describe-merge-conflicts
                              #:describe-pull-request-events #:description
                              #:difference #:difference-list
                              #:directory-name-conflicts-with-file-name-exception
                              #:disassociate-approval-rule-template-from-repository
                              #:email
                              #:encryption-integrity-checks-failed-exception
                              #:encryption-key-access-denied-exception
                              #:encryption-key-disabled-exception
                              #:encryption-key-invalid-id-exception
                              #:encryption-key-invalid-usage-exception
                              #:encryption-key-not-found-exception
                              #:encryption-key-required-exception
                              #:encryption-key-unavailable-exception
                              #:error-code #:error-message
                              #:evaluate-pull-request-approval-rules
                              #:evaluation #:event-date #:exception-name #:file
                              #:file-content
                              #:file-content-and-source-file-specified-exception
                              #:file-content-required-exception
                              #:file-content-size-limit-exceeded-exception
                              #:file-does-not-exist-exception
                              #:file-entry-required-exception #:file-list
                              #:file-metadata #:file-mode-required-exception
                              #:file-mode-type-enum #:file-modes
                              #:file-name-conflicts-with-directory-name-exception
                              #:file-path-conflicts-with-submodule-path-exception
                              #:file-paths #:file-size #:file-sizes
                              #:file-too-large-exception #:file-version
                              #:files-metadata #:folder
                              #:folder-content-size-limit-exceeded-exception
                              #:folder-does-not-exist-exception #:folder-list
                              #:get-approval-rule-template #:get-blob
                              #:get-branch #:get-comment
                              #:get-comment-reactions
                              #:get-comments-for-compared-commit
                              #:get-comments-for-pull-request #:get-commit
                              #:get-differences #:get-file #:get-folder
                              #:get-merge-commit #:get-merge-conflicts
                              #:get-merge-options #:get-pull-request
                              #:get-pull-request-approval-states
                              #:get-pull-request-override-state
                              #:get-repository #:get-repository-triggers
                              #:hunk-content
                              #:idempotency-parameter-mismatch-exception
                              #:invalid-actor-arn-exception
                              #:invalid-approval-rule-content-exception
                              #:invalid-approval-rule-name-exception
                              #:invalid-approval-rule-template-content-exception
                              #:invalid-approval-rule-template-description-exception
                              #:invalid-approval-rule-template-name-exception
                              #:invalid-approval-state-exception
                              #:invalid-author-arn-exception
                              #:invalid-blob-id-exception
                              #:invalid-branch-name-exception
                              #:invalid-client-request-token-exception
                              #:invalid-comment-id-exception
                              #:invalid-commit-exception
                              #:invalid-commit-id-exception
                              #:invalid-conflict-detail-level-exception
                              #:invalid-conflict-resolution-exception
                              #:invalid-conflict-resolution-strategy-exception
                              #:invalid-continuation-token-exception
                              #:invalid-deletion-parameter-exception
                              #:invalid-description-exception
                              #:invalid-destination-commit-specifier-exception
                              #:invalid-email-exception
                              #:invalid-file-location-exception
                              #:invalid-file-mode-exception
                              #:invalid-file-position-exception
                              #:invalid-max-conflict-files-exception
                              #:invalid-max-merge-hunks-exception
                              #:invalid-max-results-exception
                              #:invalid-merge-option-exception
                              #:invalid-order-exception
                              #:invalid-override-status-exception
                              #:invalid-parent-commit-id-exception
                              #:invalid-path-exception
                              #:invalid-pull-request-event-type-exception
                              #:invalid-pull-request-id-exception
                              #:invalid-pull-request-status-exception
                              #:invalid-pull-request-status-update-exception
                              #:invalid-reaction-user-arn-exception
                              #:invalid-reaction-value-exception
                              #:invalid-reference-name-exception
                              #:invalid-relative-file-version-enum-exception
                              #:invalid-replacement-content-exception
                              #:invalid-replacement-type-exception
                              #:invalid-repository-description-exception
                              #:invalid-repository-name-exception
                              #:invalid-repository-trigger-branch-name-exception
                              #:invalid-repository-trigger-custom-data-exception
                              #:invalid-repository-trigger-destination-arn-exception
                              #:invalid-repository-trigger-events-exception
                              #:invalid-repository-trigger-name-exception
                              #:invalid-repository-trigger-region-exception
                              #:invalid-resource-arn-exception
                              #:invalid-revision-id-exception
                              #:invalid-rule-content-sha256exception
                              #:invalid-sort-by-exception
                              #:invalid-source-commit-specifier-exception
                              #:invalid-system-tag-usage-exception
                              #:invalid-tag-keys-list-exception
                              #:invalid-tags-map-exception
                              #:invalid-target-branch-exception
                              #:invalid-target-exception
                              #:invalid-targets-exception
                              #:invalid-title-exception #:is-binary-file
                              #:is-comment-deleted #:is-content-conflict
                              #:is-file-mode-conflict #:is-hunk-conflict
                              #:is-mergeable #:is-merged #:is-move
                              #:is-object-type-conflict #:keep-empty-folders
                              #:kms-key-id #:last-modified-date #:limit
                              #:line-number #:list-approval-rule-templates
                              #:list-associated-approval-rule-templates-for-repository
                              #:list-branches #:list-file-commit-history
                              #:list-pull-requests #:list-repositories
                              #:list-repositories-for-approval-rule-template
                              #:list-tags-for-resource #:location
                              #:manual-merge-required-exception #:max-results
                              #:maximum-branches-exceeded-exception
                              #:maximum-conflict-resolution-entries-exceeded-exception
                              #:maximum-file-content-to-load-exceeded-exception
                              #:maximum-file-entries-exceeded-exception
                              #:maximum-items-to-compare-exceeded-exception
                              #:maximum-number-of-approvals-exceeded-exception
                              #:maximum-open-pull-requests-exceeded-exception
                              #:maximum-repository-names-exceeded-exception
                              #:maximum-repository-triggers-exceeded-exception
                              #:maximum-rule-templates-associated-with-repository-exception
                              #:merge-branches-by-fast-forward
                              #:merge-branches-by-squash
                              #:merge-branches-by-three-way #:merge-hunk
                              #:merge-hunk-detail #:merge-hunks
                              #:merge-metadata #:merge-operations
                              #:merge-option-required-exception
                              #:merge-option-type-enum #:merge-options
                              #:merge-pull-request-by-fast-forward
                              #:merge-pull-request-by-squash
                              #:merge-pull-request-by-three-way #:message
                              #:mode
                              #:multiple-conflict-resolution-entries-exception
                              #:multiple-repositories-in-pull-request-exception
                              #:name #:name-length-exceeded-exception
                              #:next-token #:no-change-exception
                              #:number-of-conflicts
                              #:number-of-rule-templates-exceeded-exception
                              #:number-of-rules-exceeded-exception #:object-id
                              #:object-size #:object-type-enum #:object-types
                              #:operation-not-allowed-exception #:order-enum
                              #:origin-approval-rule-template #:overridden
                              #:override-already-set-exception
                              #:override-pull-request-approval-rules
                              #:override-status
                              #:override-status-required-exception
                              #:parent-commit-does-not-exist-exception
                              #:parent-commit-id-outdated-exception
                              #:parent-commit-id-required-exception
                              #:parent-list #:path
                              #:path-does-not-exist-exception
                              #:path-required-exception #:position
                              #:post-comment-for-compared-commit
                              #:post-comment-for-pull-request
                              #:post-comment-reply #:pull-request
                              #:pull-request-already-closed-exception
                              #:pull-request-approval-rules-not-satisfied-exception
                              #:pull-request-cannot-be-approved-by-author-exception
                              #:pull-request-created-event-metadata
                              #:pull-request-does-not-exist-exception
                              #:pull-request-event #:pull-request-event-list
                              #:pull-request-event-type #:pull-request-id
                              #:pull-request-id-list
                              #:pull-request-id-required-exception
                              #:pull-request-merged-state-changed-event-metadata
                              #:pull-request-source-reference-updated-event-metadata
                              #:pull-request-status-changed-event-metadata
                              #:pull-request-status-enum
                              #:pull-request-status-required-exception
                              #:pull-request-target #:pull-request-target-list
                              #:put-comment-reaction #:put-file
                              #:put-file-entries #:put-file-entry
                              #:put-file-entry-conflict-exception
                              #:put-repository-triggers #:reaction-counts-map
                              #:reaction-emoji #:reaction-for-comment
                              #:reaction-limit-exceeded-exception
                              #:reaction-short-code #:reaction-unicode
                              #:reaction-users-list #:reaction-value
                              #:reaction-value-formats
                              #:reaction-value-required-exception
                              #:reactions-for-comment-list
                              #:reference-does-not-exist-exception
                              #:reference-name
                              #:reference-name-required-exception
                              #:reference-type-not-supported-exception
                              #:relative-file-version-enum
                              #:replace-content-entries #:replace-content-entry
                              #:replacement-content-required-exception
                              #:replacement-type-enum
                              #:replacement-type-required-exception
                              #:repository-description
                              #:repository-does-not-exist-exception
                              #:repository-id
                              #:repository-limit-exceeded-exception
                              #:repository-metadata #:repository-metadata-list
                              #:repository-name
                              #:repository-name-exists-exception
                              #:repository-name-id-pair
                              #:repository-name-id-pair-list
                              #:repository-name-list
                              #:repository-name-required-exception
                              #:repository-names-required-exception
                              #:repository-not-associated-with-pull-request-exception
                              #:repository-not-found-list #:repository-trigger
                              #:repository-trigger-branch-name-list-required-exception
                              #:repository-trigger-custom-data
                              #:repository-trigger-destination-arn-required-exception
                              #:repository-trigger-event-enum
                              #:repository-trigger-event-list
                              #:repository-trigger-events-list-required-exception
                              #:repository-trigger-execution-failure
                              #:repository-trigger-execution-failure-list
                              #:repository-trigger-execution-failure-message
                              #:repository-trigger-name
                              #:repository-trigger-name-list
                              #:repository-trigger-name-required-exception
                              #:repository-triggers-configuration-id
                              #:repository-triggers-list
                              #:repository-triggers-list-required-exception
                              #:resource-arn #:resource-arn-required-exception
                              #:restricted-source-file-exception
                              #:revision-children #:revision-dag #:revision-id
                              #:revision-id-required-exception
                              #:revision-not-current-exception
                              #:rule-content-sha256
                              #:same-file-content-exception
                              #:same-path-request-exception
                              #:set-file-mode-entries #:set-file-mode-entry
                              #:sort-by-enum
                              #:source-and-destination-are-same-exception
                              #:source-file-or-content-required-exception
                              #:source-file-specifier #:sub-module
                              #:sub-module-list #:symbolic-link
                              #:symbolic-link-list #:tag-key #:tag-keys-list
                              #:tag-keys-list-required-exception
                              #:tag-policy-exception #:tag-resource #:tag-value
                              #:tags-map #:tags-map-required-exception #:target
                              #:target-list #:target-required-exception
                              #:targets-required-exception
                              #:test-repository-triggers
                              #:tip-of-source-reference-is-different-exception
                              #:tips-divergence-exceeded-exception #:title
                              #:title-required-exception
                              #:too-many-tags-exception #:untag-resource
                              #:update-approval-rule-template-content
                              #:update-approval-rule-template-description
                              #:update-approval-rule-template-name
                              #:update-comment #:update-default-branch
                              #:update-pull-request-approval-rule-content
                              #:update-pull-request-approval-state
                              #:update-pull-request-description
                              #:update-pull-request-status
                              #:update-pull-request-title
                              #:update-repository-description
                              #:update-repository-encryption-key
                              #:update-repository-name #:user-info #:blob
                              #:codecommit-error))
(common-lisp:in-package #:pira/codecommit)

(common-lisp:define-condition codecommit-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service code-commit-20150413 :shape-name
                                   "CodeCommit_20150413" :version "2015-04-13"
                                   :title "AWS CodeCommit" :operations
                                   '(associate-approval-rule-template-with-repository
                                     batch-associate-approval-rule-template-with-repositories
                                     batch-describe-merge-conflicts
                                     batch-disassociate-approval-rule-template-from-repositories
                                     batch-get-commits batch-get-repositories
                                     create-approval-rule-template
                                     create-branch create-commit
                                     create-pull-request
                                     create-pull-request-approval-rule
                                     create-repository
                                     create-unreferenced-merge-commit
                                     delete-approval-rule-template
                                     delete-branch delete-comment-content
                                     delete-file
                                     delete-pull-request-approval-rule
                                     delete-repository describe-merge-conflicts
                                     describe-pull-request-events
                                     disassociate-approval-rule-template-from-repository
                                     evaluate-pull-request-approval-rules
                                     get-approval-rule-template get-blob
                                     get-branch get-comment
                                     get-comment-reactions
                                     get-comments-for-compared-commit
                                     get-comments-for-pull-request get-commit
                                     get-differences get-file get-folder
                                     get-merge-commit get-merge-conflicts
                                     get-merge-options get-pull-request
                                     get-pull-request-approval-states
                                     get-pull-request-override-state
                                     get-repository get-repository-triggers
                                     list-approval-rule-templates
                                     list-associated-approval-rule-templates-for-repository
                                     list-branches list-file-commit-history
                                     list-pull-requests list-repositories
                                     list-repositories-for-approval-rule-template
                                     list-tags-for-resource
                                     merge-branches-by-fast-forward
                                     merge-branches-by-squash
                                     merge-branches-by-three-way
                                     merge-pull-request-by-fast-forward
                                     merge-pull-request-by-squash
                                     merge-pull-request-by-three-way
                                     override-pull-request-approval-rules
                                     post-comment-for-compared-commit
                                     post-comment-for-pull-request
                                     post-comment-reply put-comment-reaction
                                     put-file put-repository-triggers
                                     tag-resource test-repository-triggers
                                     untag-resource
                                     update-approval-rule-template-content
                                     update-approval-rule-template-description
                                     update-approval-rule-template-name
                                     update-comment update-default-branch
                                     update-pull-request-approval-rule-content
                                     update-pull-request-approval-state
                                     update-pull-request-description
                                     update-pull-request-status
                                     update-pull-request-title
                                     update-repository-description
                                     update-repository-encryption-key
                                     update-repository-name)
                                   :xml-namespace
                                   '(:uri
                                     "http://codecommit.amazonaws.com/doc/2015-04-13"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeCommit")
                                      ("arnNamespace" . "codecommit")
                                      ("cloudFormationName" . "CodeCommit")
                                      ("cloudTrailEventSource"
                                       . "codecommit.amazonaws.com")
                                      ("endpointPrefix" . "codecommit"))
                                     ("aws.auth#sigv4" ("name" . "codecommit"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error actor-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ActorDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type additional-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure approval common-lisp:nil
                                    ((user-arn :target-type arn :member-name
                                      "userArn")
                                     (approval-state :target-type
                                      approval-state :member-name
                                      "approvalState"))
                                    (:shape-name "Approval"))

(smithy/sdk/shapes:define-list approval-list :member approval)

(smithy/sdk/shapes:define-structure approval-rule common-lisp:nil
                                    ((approval-rule-id :target-type
                                      approval-rule-id :member-name
                                      "approvalRuleId")
                                     (approval-rule-name :target-type
                                      approval-rule-name :member-name
                                      "approvalRuleName")
                                     (approval-rule-content :target-type
                                      approval-rule-content :member-name
                                      "approvalRuleContent")
                                     (rule-content-sha256 :target-type
                                      rule-content-sha256 :member-name
                                      "ruleContentSha256")
                                     (last-modified-date :target-type
                                      last-modified-date :member-name
                                      "lastModifiedDate")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (last-modified-user :target-type arn
                                      :member-name "lastModifiedUser")
                                     (origin-approval-rule-template
                                      :target-type
                                      origin-approval-rule-template
                                      :member-name
                                      "originApprovalRuleTemplate"))
                                    (:shape-name "ApprovalRule"))

(smithy/sdk/shapes:define-type approval-rule-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error approval-rule-content-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleContentRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error approval-rule-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure approval-rule-event-metadata
                                    common-lisp:nil
                                    ((approval-rule-name :target-type
                                      approval-rule-name :member-name
                                      "approvalRuleName")
                                     (approval-rule-id :target-type
                                      approval-rule-id :member-name
                                      "approvalRuleId")
                                     (approval-rule-content :target-type
                                      approval-rule-content :member-name
                                      "approvalRuleContent"))
                                    (:shape-name "ApprovalRuleEventMetadata"))

(smithy/sdk/shapes:define-type approval-rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type approval-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error approval-rule-name-already-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleNameAlreadyExistsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error approval-rule-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleNameRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure approval-rule-overridden-event-metadata
                                    common-lisp:nil
                                    ((revision-id :target-type revision-id
                                      :member-name "revisionId")
                                     (override-status :target-type
                                      override-status :member-name
                                      "overrideStatus"))
                                    (:shape-name
                                     "ApprovalRuleOverriddenEventMetadata"))

(smithy/sdk/shapes:define-structure approval-rule-template common-lisp:nil
                                    ((approval-rule-template-id :target-type
                                      approval-rule-template-id :member-name
                                      "approvalRuleTemplateId")
                                     (approval-rule-template-name :target-type
                                      approval-rule-template-name :member-name
                                      "approvalRuleTemplateName")
                                     (approval-rule-template-description
                                      :target-type
                                      approval-rule-template-description
                                      :member-name
                                      "approvalRuleTemplateDescription")
                                     (approval-rule-template-content
                                      :target-type
                                      approval-rule-template-content
                                      :member-name
                                      "approvalRuleTemplateContent")
                                     (rule-content-sha256 :target-type
                                      rule-content-sha256 :member-name
                                      "ruleContentSha256")
                                     (last-modified-date :target-type
                                      last-modified-date :member-name
                                      "lastModifiedDate")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (last-modified-user :target-type arn
                                      :member-name "lastModifiedUser"))
                                    (:shape-name "ApprovalRuleTemplate"))

(smithy/sdk/shapes:define-type approval-rule-template-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 approval-rule-template-content-required-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "ApprovalRuleTemplateContentRequiredException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-type approval-rule-template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error approval-rule-template-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleTemplateDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type approval-rule-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error approval-rule-template-in-use-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleTemplateInUseException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type approval-rule-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 approval-rule-template-name-already-exists-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "ApprovalRuleTemplateNameAlreadyExistsException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-list approval-rule-template-name-list :member
                               approval-rule-template-name)

(smithy/sdk/shapes:define-error approval-rule-template-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ApprovalRuleTemplateNameRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list approval-rules-list :member approval-rule)

(smithy/sdk/shapes:define-list approval-rules-not-satisfied-list :member
                               approval-rule-name)

(smithy/sdk/shapes:define-list approval-rules-satisfied-list :member
                               approval-rule-name)

(smithy/sdk/shapes:define-enum approval-state
    common-lisp:nil
  (:approve "APPROVE")
  (:revoke "REVOKE"))

(smithy/sdk/shapes:define-structure approval-state-changed-event-metadata
                                    common-lisp:nil
                                    ((revision-id :target-type revision-id
                                      :member-name "revisionId")
                                     (approval-status :target-type
                                      approval-state :member-name
                                      "approvalStatus"))
                                    (:shape-name
                                     "ApprovalStateChangedEventMetadata"))

(smithy/sdk/shapes:define-error approval-state-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ApprovalStateRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type approved smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 associate-approval-rule-template-with-repository-input common-lisp:nil
 ((approval-rule-template-name :target-type approval-rule-template-name
   :required common-lisp:t :member-name "approvalRuleTemplateName")
  (repository-name :target-type repository-name :required common-lisp:t
   :member-name "repositoryName"))
 (:shape-name "AssociateApprovalRuleTemplateWithRepositoryInput"))

(smithy/sdk/shapes:define-error author-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "AuthorDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure
 batch-associate-approval-rule-template-with-repositories-error common-lisp:nil
 ((repository-name :target-type repository-name :member-name "repositoryName")
  (error-code :target-type error-code :member-name "errorCode")
  (error-message :target-type error-message :member-name "errorMessage"))
 (:shape-name "BatchAssociateApprovalRuleTemplateWithRepositoriesError"))

(smithy/sdk/shapes:define-list
 batch-associate-approval-rule-template-with-repositories-errors-list :member
 batch-associate-approval-rule-template-with-repositories-error)

(smithy/sdk/shapes:define-input
 batch-associate-approval-rule-template-with-repositories-input common-lisp:nil
 ((approval-rule-template-name :target-type approval-rule-template-name
   :required common-lisp:t :member-name "approvalRuleTemplateName")
  (repository-names :target-type repository-name-list :required common-lisp:t
   :member-name "repositoryNames"))
 (:shape-name "BatchAssociateApprovalRuleTemplateWithRepositoriesInput"))

(smithy/sdk/shapes:define-output
 batch-associate-approval-rule-template-with-repositories-output
 common-lisp:nil
 ((associated-repository-names :target-type repository-name-list :required
   common-lisp:t :member-name "associatedRepositoryNames")
  (errors :target-type
   batch-associate-approval-rule-template-with-repositories-errors-list
   :required common-lisp:t :member-name "errors"))
 (:shape-name "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput"))

(smithy/sdk/shapes:define-structure batch-describe-merge-conflicts-error
                                    common-lisp:nil
                                    ((file-path :target-type path :required
                                      common-lisp:t :member-name "filePath")
                                     (exception-name :target-type
                                      exception-name :required common-lisp:t
                                      :member-name "exceptionName")
                                     (message :target-type message :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name
                                     "BatchDescribeMergeConflictsError"))

(smithy/sdk/shapes:define-list batch-describe-merge-conflicts-errors :member
                               batch-describe-merge-conflicts-error)

(smithy/sdk/shapes:define-input batch-describe-merge-conflicts-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (merge-option :target-type
                                  merge-option-type-enum :required
                                  common-lisp:t :member-name "mergeOption")
                                 (max-merge-hunks :target-type max-results
                                  :member-name "maxMergeHunks")
                                 (max-conflict-files :target-type max-results
                                  :member-name "maxConflictFiles")
                                 (file-paths :target-type file-paths
                                  :member-name "filePaths")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "BatchDescribeMergeConflictsInput"))

(smithy/sdk/shapes:define-output batch-describe-merge-conflicts-output
                                 common-lisp:nil
                                 ((conflicts :target-type conflicts :required
                                   common-lisp:t :member-name "conflicts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (errors :target-type
                                   batch-describe-merge-conflicts-errors
                                   :member-name "errors")
                                  (destination-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "destinationCommitId")
                                  (source-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "sourceCommitId")
                                  (base-commit-id :target-type object-id
                                   :member-name "baseCommitId"))
                                 (:shape-name
                                  "BatchDescribeMergeConflictsOutput"))

(smithy/sdk/shapes:define-structure
 batch-disassociate-approval-rule-template-from-repositories-error
 common-lisp:nil
 ((repository-name :target-type repository-name :member-name "repositoryName")
  (error-code :target-type error-code :member-name "errorCode")
  (error-message :target-type error-message :member-name "errorMessage"))
 (:shape-name "BatchDisassociateApprovalRuleTemplateFromRepositoriesError"))

(smithy/sdk/shapes:define-list
 batch-disassociate-approval-rule-template-from-repositories-errors-list
 :member batch-disassociate-approval-rule-template-from-repositories-error)

(smithy/sdk/shapes:define-input
 batch-disassociate-approval-rule-template-from-repositories-input
 common-lisp:nil
 ((approval-rule-template-name :target-type approval-rule-template-name
   :required common-lisp:t :member-name "approvalRuleTemplateName")
  (repository-names :target-type repository-name-list :required common-lisp:t
   :member-name "repositoryNames"))
 (:shape-name "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput"))

(smithy/sdk/shapes:define-output
 batch-disassociate-approval-rule-template-from-repositories-output
 common-lisp:nil
 ((disassociated-repository-names :target-type repository-name-list :required
   common-lisp:t :member-name "disassociatedRepositoryNames")
  (errors :target-type
   batch-disassociate-approval-rule-template-from-repositories-errors-list
   :required common-lisp:t :member-name "errors"))
 (:shape-name "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput"))

(smithy/sdk/shapes:define-structure batch-get-commits-error common-lisp:nil
                                    ((commit-id :target-type object-id
                                      :member-name "commitId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "BatchGetCommitsError"))

(smithy/sdk/shapes:define-list batch-get-commits-errors-list :member
                               batch-get-commits-error)

(smithy/sdk/shapes:define-input batch-get-commits-input common-lisp:nil
                                ((commit-ids :target-type commit-ids-input-list
                                  :required common-lisp:t :member-name
                                  "commitIds")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "BatchGetCommitsInput"))

(smithy/sdk/shapes:define-output batch-get-commits-output common-lisp:nil
                                 ((commits :target-type commit-objects-list
                                   :member-name "commits")
                                  (errors :target-type
                                   batch-get-commits-errors-list :member-name
                                   "errors"))
                                 (:shape-name "BatchGetCommitsOutput"))

(smithy/sdk/shapes:define-structure batch-get-repositories-error
                                    common-lisp:nil
                                    ((repository-id :target-type repository-id
                                      :member-name "repositoryId")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (error-code :target-type
                                      batch-get-repositories-error-code-enum
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "BatchGetRepositoriesError"))

(smithy/sdk/shapes:define-enum batch-get-repositories-error-code-enum
    common-lisp:nil
  (:encryption-integrity-checks-failed-exception
   "EncryptionIntegrityChecksFailedException")
  (:encryption-key-access-denied-exception "EncryptionKeyAccessDeniedException")
  (:encryption-key-disabled-exception "EncryptionKeyDisabledException")
  (:encryption-key-not-found-exception "EncryptionKeyNotFoundException")
  (:encryption-key-unavailable-exception "EncryptionKeyUnavailableException")
  (:repository-does-not-exist-exception "RepositoryDoesNotExistException"))

(smithy/sdk/shapes:define-list batch-get-repositories-errors-list :member
                               batch-get-repositories-error)

(smithy/sdk/shapes:define-input batch-get-repositories-input common-lisp:nil
                                ((repository-names :target-type
                                  repository-name-list :required common-lisp:t
                                  :member-name "repositoryNames"))
                                (:shape-name "BatchGetRepositoriesInput"))

(smithy/sdk/shapes:define-output batch-get-repositories-output common-lisp:nil
                                 ((repositories :target-type
                                   repository-metadata-list :member-name
                                   "repositories")
                                  (repositories-not-found :target-type
                                   repository-not-found-list :member-name
                                   "repositoriesNotFound")
                                  (errors :target-type
                                   batch-get-repositories-errors-list
                                   :member-name "errors"))
                                 (:shape-name "BatchGetRepositoriesOutput"))

(smithy/sdk/shapes:define-error
 before-commit-id-and-after-commit-id-are-same-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "BeforeCommitIdAndAfterCommitIdAreSameException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-error blob-id-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BlobIdDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error blob-id-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BlobIdRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure blob-metadata common-lisp:nil
                                    ((blob-id :target-type object-id
                                      :member-name "blobId")
                                     (path :target-type path :member-name
                                      "path")
                                     (mode :target-type mode :member-name
                                      "mode"))
                                    (:shape-name "BlobMetadata"))

(smithy/sdk/shapes:define-error branch-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BranchDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure branch-info common-lisp:nil
                                    ((branch-name :target-type branch-name
                                      :member-name "branchName")
                                     (commit-id :target-type commit-id
                                      :member-name "commitId"))
                                    (:shape-name "BranchInfo"))

(smithy/sdk/shapes:define-type branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error branch-name-exists-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BranchNameExistsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error branch-name-is-tag-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BranchNameIsTagNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list branch-name-list :member branch-name)

(smithy/sdk/shapes:define-error branch-name-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "BranchNameRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list caller-reactions :member reaction-value)

(smithy/sdk/shapes:define-error
 cannot-delete-approval-rule-from-template-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "CannotDeleteApprovalRuleFromTemplateException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 cannot-modify-approval-rule-from-template-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "CannotModifyApprovalRuleFromTemplateException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-type capital-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum change-type-enum
    common-lisp:nil
  (:added "A")
  (:modified "M")
  (:deleted "D"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error client-request-token-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ClientRequestTokenRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type clone-url-http smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type clone-url-ssh smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure comment common-lisp:nil
                                    ((comment-id :target-type comment-id
                                      :member-name "commentId")
                                     (content :target-type content :member-name
                                      "content")
                                     (in-reply-to :target-type comment-id
                                      :member-name "inReplyTo")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (last-modified-date :target-type
                                      last-modified-date :member-name
                                      "lastModifiedDate")
                                     (author-arn :target-type arn :member-name
                                      "authorArn")
                                     (deleted :target-type is-comment-deleted
                                      :member-name "deleted")
                                     (client-request-token :target-type
                                      client-request-token :member-name
                                      "clientRequestToken")
                                     (caller-reactions :target-type
                                      caller-reactions :member-name
                                      "callerReactions")
                                     (reaction-counts :target-type
                                      reaction-counts-map :member-name
                                      "reactionCounts"))
                                    (:shape-name "Comment"))

(smithy/sdk/shapes:define-error comment-content-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommentContentRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error comment-content-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "CommentContentSizeLimitExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error comment-deleted-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommentDeletedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error comment-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommentDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type comment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error comment-id-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommentIdRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error comment-not-created-by-caller-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "CommentNotCreatedByCallerException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list comments :member comment)

(smithy/sdk/shapes:define-structure comments-for-compared-commit
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (before-commit-id :target-type commit-id
                                      :member-name "beforeCommitId")
                                     (after-commit-id :target-type commit-id
                                      :member-name "afterCommitId")
                                     (before-blob-id :target-type object-id
                                      :member-name "beforeBlobId")
                                     (after-blob-id :target-type object-id
                                      :member-name "afterBlobId")
                                     (location :target-type location
                                      :member-name "location")
                                     (comments :target-type comments
                                      :member-name "comments"))
                                    (:shape-name "CommentsForComparedCommit"))

(smithy/sdk/shapes:define-list comments-for-compared-commit-data :member
                               comments-for-compared-commit)

(smithy/sdk/shapes:define-structure comments-for-pull-request common-lisp:nil
                                    ((pull-request-id :target-type
                                      pull-request-id :member-name
                                      "pullRequestId")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (before-commit-id :target-type commit-id
                                      :member-name "beforeCommitId")
                                     (after-commit-id :target-type commit-id
                                      :member-name "afterCommitId")
                                     (before-blob-id :target-type object-id
                                      :member-name "beforeBlobId")
                                     (after-blob-id :target-type object-id
                                      :member-name "afterBlobId")
                                     (location :target-type location
                                      :member-name "location")
                                     (comments :target-type comments
                                      :member-name "comments"))
                                    (:shape-name "CommentsForPullRequest"))

(smithy/sdk/shapes:define-list comments-for-pull-request-data :member
                               comments-for-pull-request)

(smithy/sdk/shapes:define-structure commit common-lisp:nil
                                    ((commit-id :target-type object-id
                                      :member-name "commitId")
                                     (tree-id :target-type object-id
                                      :member-name "treeId")
                                     (parents :target-type parent-list
                                      :member-name "parents")
                                     (message :target-type message :member-name
                                      "message")
                                     (author :target-type user-info
                                      :member-name "author")
                                     (committer :target-type user-info
                                      :member-name "committer")
                                     (additional-data :target-type
                                      additional-data :member-name
                                      "additionalData"))
                                    (:shape-name "Commit"))

(smithy/sdk/shapes:define-error commit-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommitDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type commit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error commit-id-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommitIdDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error commit-id-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommitIdRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list commit-ids-input-list :member object-id)

(smithy/sdk/shapes:define-error commit-ids-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommitIdsLimitExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error commit-ids-list-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommitIdsListRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error commit-message-length-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "CommitMessageLengthExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type commit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list commit-objects-list :member commit)

(smithy/sdk/shapes:define-error commit-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "CommitRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error concurrent-reference-update-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ConcurrentReferenceUpdateException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure conflict common-lisp:nil
                                    ((conflict-metadata :target-type
                                      conflict-metadata :member-name
                                      "conflictMetadata")
                                     (merge-hunks :target-type merge-hunks
                                      :member-name "mergeHunks"))
                                    (:shape-name "Conflict"))

(smithy/sdk/shapes:define-enum conflict-detail-level-type-enum
    common-lisp:nil
  (:file-level "FILE_LEVEL")
  (:line-level "LINE_LEVEL"))

(smithy/sdk/shapes:define-structure conflict-metadata common-lisp:nil
                                    ((file-path :target-type path :member-name
                                      "filePath")
                                     (file-sizes :target-type file-sizes
                                      :member-name "fileSizes")
                                     (file-modes :target-type file-modes
                                      :member-name "fileModes")
                                     (object-types :target-type object-types
                                      :member-name "objectTypes")
                                     (number-of-conflicts :target-type
                                      number-of-conflicts :member-name
                                      "numberOfConflicts")
                                     (is-binary-file :target-type
                                      is-binary-file :member-name
                                      "isBinaryFile")
                                     (content-conflict :target-type
                                      is-content-conflict :member-name
                                      "contentConflict")
                                     (file-mode-conflict :target-type
                                      is-file-mode-conflict :member-name
                                      "fileModeConflict")
                                     (object-type-conflict :target-type
                                      is-object-type-conflict :member-name
                                      "objectTypeConflict")
                                     (merge-operations :target-type
                                      merge-operations :member-name
                                      "mergeOperations"))
                                    (:shape-name "ConflictMetadata"))

(smithy/sdk/shapes:define-list conflict-metadata-list :member conflict-metadata)

(smithy/sdk/shapes:define-structure conflict-resolution common-lisp:nil
                                    ((replace-contents :target-type
                                      replace-content-entries :member-name
                                      "replaceContents")
                                     (delete-files :target-type
                                      delete-file-entries :member-name
                                      "deleteFiles")
                                     (set-file-modes :target-type
                                      set-file-mode-entries :member-name
                                      "setFileModes"))
                                    (:shape-name "ConflictResolution"))

(smithy/sdk/shapes:define-enum conflict-resolution-strategy-type-enum
    common-lisp:nil
  (:none "NONE")
  (:accept-source "ACCEPT_SOURCE")
  (:accept-destination "ACCEPT_DESTINATION")
  (:automerge "AUTOMERGE"))

(smithy/sdk/shapes:define-list conflicts :member conflict)

(smithy/sdk/shapes:define-type content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-approval-rule-template-input
                                common-lisp:nil
                                ((approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateName")
                                 (approval-rule-template-content :target-type
                                  approval-rule-template-content :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateContent")
                                 (approval-rule-template-description
                                  :target-type
                                  approval-rule-template-description
                                  :member-name
                                  "approvalRuleTemplateDescription"))
                                (:shape-name "CreateApprovalRuleTemplateInput"))

(smithy/sdk/shapes:define-output create-approval-rule-template-output
                                 common-lisp:nil
                                 ((approval-rule-template :target-type
                                   approval-rule-template :required
                                   common-lisp:t :member-name
                                   "approvalRuleTemplate"))
                                 (:shape-name
                                  "CreateApprovalRuleTemplateOutput"))

(smithy/sdk/shapes:define-input create-branch-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName")
                                 (commit-id :target-type commit-id :required
                                  common-lisp:t :member-name "commitId"))
                                (:shape-name "CreateBranchInput"))

(smithy/sdk/shapes:define-input create-commit-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName")
                                 (parent-commit-id :target-type commit-id
                                  :member-name "parentCommitId")
                                 (author-name :target-type name :member-name
                                  "authorName")
                                 (email :target-type email :member-name
                                  "email")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (put-files :target-type put-file-entries
                                  :member-name "putFiles")
                                 (delete-files :target-type delete-file-entries
                                  :member-name "deleteFiles")
                                 (set-file-modes :target-type
                                  set-file-mode-entries :member-name
                                  "setFileModes"))
                                (:shape-name "CreateCommitInput"))

(smithy/sdk/shapes:define-output create-commit-output common-lisp:nil
                                 ((commit-id :target-type object-id
                                   :member-name "commitId")
                                  (tree-id :target-type object-id :member-name
                                   "treeId")
                                  (files-added :target-type files-metadata
                                   :member-name "filesAdded")
                                  (files-updated :target-type files-metadata
                                   :member-name "filesUpdated")
                                  (files-deleted :target-type files-metadata
                                   :member-name "filesDeleted"))
                                 (:shape-name "CreateCommitOutput"))

(smithy/sdk/shapes:define-input create-pull-request-approval-rule-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (approval-rule-name :target-type
                                  approval-rule-name :required common-lisp:t
                                  :member-name "approvalRuleName")
                                 (approval-rule-content :target-type
                                  approval-rule-content :required common-lisp:t
                                  :member-name "approvalRuleContent"))
                                (:shape-name
                                 "CreatePullRequestApprovalRuleInput"))

(smithy/sdk/shapes:define-output create-pull-request-approval-rule-output
                                 common-lisp:nil
                                 ((approval-rule :target-type approval-rule
                                   :required common-lisp:t :member-name
                                   "approvalRule"))
                                 (:shape-name
                                  "CreatePullRequestApprovalRuleOutput"))

(smithy/sdk/shapes:define-input create-pull-request-input common-lisp:nil
                                ((title :target-type title :required
                                  common-lisp:t :member-name "title")
                                 (description :target-type description
                                  :member-name "description")
                                 (targets :target-type target-list :required
                                  common-lisp:t :member-name "targets")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken"))
                                (:shape-name "CreatePullRequestInput"))

(smithy/sdk/shapes:define-output create-pull-request-output common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :required common-lisp:t :member-name
                                   "pullRequest"))
                                 (:shape-name "CreatePullRequestOutput"))

(smithy/sdk/shapes:define-input create-repository-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (repository-description :target-type
                                  repository-description :member-name
                                  "repositoryDescription")
                                 (tags :target-type tags-map :member-name
                                  "tags")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId"))
                                (:shape-name "CreateRepositoryInput"))

(smithy/sdk/shapes:define-output create-repository-output common-lisp:nil
                                 ((repository-metadata :target-type
                                   repository-metadata :member-name
                                   "repositoryMetadata"))
                                 (:shape-name "CreateRepositoryOutput"))

(smithy/sdk/shapes:define-input create-unreferenced-merge-commit-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (merge-option :target-type
                                  merge-option-type-enum :required
                                  common-lisp:t :member-name "mergeOption")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (author-name :target-type name :member-name
                                  "authorName")
                                 (email :target-type email :member-name
                                  "email")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (conflict-resolution :target-type
                                  conflict-resolution :member-name
                                  "conflictResolution"))
                                (:shape-name
                                 "CreateUnreferencedMergeCommitInput"))

(smithy/sdk/shapes:define-output create-unreferenced-merge-commit-output
                                 common-lisp:nil
                                 ((commit-id :target-type object-id
                                   :member-name "commitId")
                                  (tree-id :target-type object-id :member-name
                                   "treeId"))
                                 (:shape-name
                                  "CreateUnreferencedMergeCommitOutput"))

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error default-branch-cannot-be-deleted-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "DefaultBranchCannotBeDeletedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-input delete-approval-rule-template-input
                                common-lisp:nil
                                ((approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateName"))
                                (:shape-name "DeleteApprovalRuleTemplateInput"))

(smithy/sdk/shapes:define-output delete-approval-rule-template-output
                                 common-lisp:nil
                                 ((approval-rule-template-id :target-type
                                   approval-rule-template-id :required
                                   common-lisp:t :member-name
                                   "approvalRuleTemplateId"))
                                 (:shape-name
                                  "DeleteApprovalRuleTemplateOutput"))

(smithy/sdk/shapes:define-input delete-branch-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName"))
                                (:shape-name "DeleteBranchInput"))

(smithy/sdk/shapes:define-output delete-branch-output common-lisp:nil
                                 ((deleted-branch :target-type branch-info
                                   :member-name "deletedBranch"))
                                 (:shape-name "DeleteBranchOutput"))

(smithy/sdk/shapes:define-input delete-comment-content-input common-lisp:nil
                                ((comment-id :target-type comment-id :required
                                  common-lisp:t :member-name "commentId"))
                                (:shape-name "DeleteCommentContentInput"))

(smithy/sdk/shapes:define-output delete-comment-content-output common-lisp:nil
                                 ((comment :target-type comment :member-name
                                   "comment"))
                                 (:shape-name "DeleteCommentContentOutput"))

(smithy/sdk/shapes:define-list delete-file-entries :member delete-file-entry)

(smithy/sdk/shapes:define-structure delete-file-entry common-lisp:nil
                                    ((file-path :target-type path :required
                                      common-lisp:t :member-name "filePath"))
                                    (:shape-name "DeleteFileEntry"))

(smithy/sdk/shapes:define-input delete-file-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName")
                                 (file-path :target-type path :required
                                  common-lisp:t :member-name "filePath")
                                 (parent-commit-id :target-type commit-id
                                  :required common-lisp:t :member-name
                                  "parentCommitId")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (name :target-type name :member-name "name")
                                 (email :target-type email :member-name
                                  "email"))
                                (:shape-name "DeleteFileInput"))

(smithy/sdk/shapes:define-output delete-file-output common-lisp:nil
                                 ((commit-id :target-type object-id :required
                                   common-lisp:t :member-name "commitId")
                                  (blob-id :target-type object-id :required
                                   common-lisp:t :member-name "blobId")
                                  (tree-id :target-type object-id :required
                                   common-lisp:t :member-name "treeId")
                                  (file-path :target-type path :required
                                   common-lisp:t :member-name "filePath"))
                                 (:shape-name "DeleteFileOutput"))

(smithy/sdk/shapes:define-input delete-pull-request-approval-rule-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (approval-rule-name :target-type
                                  approval-rule-name :required common-lisp:t
                                  :member-name "approvalRuleName"))
                                (:shape-name
                                 "DeletePullRequestApprovalRuleInput"))

(smithy/sdk/shapes:define-output delete-pull-request-approval-rule-output
                                 common-lisp:nil
                                 ((approval-rule-id :target-type
                                   approval-rule-id :required common-lisp:t
                                   :member-name "approvalRuleId"))
                                 (:shape-name
                                  "DeletePullRequestApprovalRuleOutput"))

(smithy/sdk/shapes:define-input delete-repository-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "DeleteRepositoryInput"))

(smithy/sdk/shapes:define-output delete-repository-output common-lisp:nil
                                 ((repository-id :target-type repository-id
                                   :member-name "repositoryId"))
                                 (:shape-name "DeleteRepositoryOutput"))

(smithy/sdk/shapes:define-input describe-merge-conflicts-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (merge-option :target-type
                                  merge-option-type-enum :required
                                  common-lisp:t :member-name "mergeOption")
                                 (max-merge-hunks :target-type max-results
                                  :member-name "maxMergeHunks")
                                 (file-path :target-type path :required
                                  common-lisp:t :member-name "filePath")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeMergeConflictsInput"))

(smithy/sdk/shapes:define-output describe-merge-conflicts-output
                                 common-lisp:nil
                                 ((conflict-metadata :target-type
                                   conflict-metadata :required common-lisp:t
                                   :member-name "conflictMetadata")
                                  (merge-hunks :target-type merge-hunks
                                   :required common-lisp:t :member-name
                                   "mergeHunks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (destination-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "destinationCommitId")
                                  (source-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "sourceCommitId")
                                  (base-commit-id :target-type object-id
                                   :member-name "baseCommitId"))
                                 (:shape-name "DescribeMergeConflictsOutput"))

(smithy/sdk/shapes:define-input describe-pull-request-events-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (pull-request-event-type :target-type
                                  pull-request-event-type :member-name
                                  "pullRequestEventType")
                                 (actor-arn :target-type arn :member-name
                                  "actorArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribePullRequestEventsInput"))

(smithy/sdk/shapes:define-output describe-pull-request-events-output
                                 common-lisp:nil
                                 ((pull-request-events :target-type
                                   pull-request-event-list :required
                                   common-lisp:t :member-name
                                   "pullRequestEvents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribePullRequestEventsOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure difference common-lisp:nil
                                    ((before-blob :target-type blob-metadata
                                      :member-name "beforeBlob")
                                     (after-blob :target-type blob-metadata
                                      :member-name "afterBlob")
                                     (change-type :target-type change-type-enum
                                      :member-name "changeType"))
                                    (:shape-name "Difference"))

(smithy/sdk/shapes:define-list difference-list :member difference)

(smithy/sdk/shapes:define-error
 directory-name-conflicts-with-file-name-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "DirectoryNameConflictsWithFileNameException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-input
 disassociate-approval-rule-template-from-repository-input common-lisp:nil
 ((approval-rule-template-name :target-type approval-rule-template-name
   :required common-lisp:t :member-name "approvalRuleTemplateName")
  (repository-name :target-type repository-name :required common-lisp:t
   :member-name "repositoryName"))
 (:shape-name "DisassociateApprovalRuleTemplateFromRepositoryInput"))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error encryption-integrity-checks-failed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "EncryptionIntegrityChecksFailedException")
                                (:error-code 500)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-access-denied-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "EncryptionKeyAccessDeniedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-disabled-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "EncryptionKeyDisabledException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-invalid-id-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "EncryptionKeyInvalidIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-invalid-usage-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "EncryptionKeyInvalidUsageException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-not-found-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "EncryptionKeyNotFoundException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "EncryptionKeyRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error encryption-key-unavailable-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "EncryptionKeyUnavailableException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input evaluate-pull-request-approval-rules-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (revision-id :target-type revision-id
                                  :required common-lisp:t :member-name
                                  "revisionId"))
                                (:shape-name
                                 "EvaluatePullRequestApprovalRulesInput"))

(smithy/sdk/shapes:define-output evaluate-pull-request-approval-rules-output
                                 common-lisp:nil
                                 ((evaluation :target-type evaluation :required
                                   common-lisp:t :member-name "evaluation"))
                                 (:shape-name
                                  "EvaluatePullRequestApprovalRulesOutput"))

(smithy/sdk/shapes:define-structure evaluation common-lisp:nil
                                    ((approved :target-type approved
                                      :member-name "approved")
                                     (overridden :target-type overridden
                                      :member-name "overridden")
                                     (approval-rules-satisfied :target-type
                                      approval-rules-satisfied-list
                                      :member-name "approvalRulesSatisfied")
                                     (approval-rules-not-satisfied :target-type
                                      approval-rules-not-satisfied-list
                                      :member-name
                                      "approvalRulesNotSatisfied"))
                                    (:shape-name "Evaluation"))

(smithy/sdk/shapes:define-type event-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type exception-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file common-lisp:nil
                                    ((blob-id :target-type object-id
                                      :member-name "blobId")
                                     (absolute-path :target-type path
                                      :member-name "absolutePath")
                                     (relative-path :target-type path
                                      :member-name "relativePath")
                                     (file-mode :target-type
                                      file-mode-type-enum :member-name
                                      "fileMode"))
                                    (:shape-name "File"))

(smithy/sdk/shapes:define-type file-content smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error
 file-content-and-source-file-specified-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "FileContentAndSourceFileSpecifiedException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-error file-content-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "FileContentRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error file-content-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "FileContentSizeLimitExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error file-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "FileDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error file-entry-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "FileEntryRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list file-list :member file)

(smithy/sdk/shapes:define-structure file-metadata common-lisp:nil
                                    ((absolute-path :target-type path
                                      :member-name "absolutePath")
                                     (blob-id :target-type object-id
                                      :member-name "blobId")
                                     (file-mode :target-type
                                      file-mode-type-enum :member-name
                                      "fileMode"))
                                    (:shape-name "FileMetadata"))

(smithy/sdk/shapes:define-error file-mode-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "FileModeRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-enum file-mode-type-enum
    common-lisp:nil
  (:executable "EXECUTABLE")
  (:normal "NORMAL")
  (:symlink "SYMLINK"))

(smithy/sdk/shapes:define-structure file-modes common-lisp:nil
                                    ((source :target-type file-mode-type-enum
                                      :member-name "source")
                                     (destination :target-type
                                      file-mode-type-enum :member-name
                                      "destination")
                                     (base :target-type file-mode-type-enum
                                      :member-name "base"))
                                    (:shape-name "FileModes"))

(smithy/sdk/shapes:define-error
 file-name-conflicts-with-directory-name-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "FileNameConflictsWithDirectoryNameException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 file-path-conflicts-with-submodule-path-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "FilePathConflictsWithSubmodulePathException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-list file-paths :member path)

(smithy/sdk/shapes:define-type file-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure file-sizes common-lisp:nil
                                    ((source :target-type file-size
                                      :member-name "source")
                                     (destination :target-type file-size
                                      :member-name "destination")
                                     (base :target-type file-size :member-name
                                      "base"))
                                    (:shape-name "FileSizes"))

(smithy/sdk/shapes:define-error file-too-large-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "FileTooLargeException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure file-version common-lisp:nil
                                    ((commit :target-type commit :member-name
                                      "commit")
                                     (blob-id :target-type object-id
                                      :member-name "blobId")
                                     (path :target-type path :member-name
                                      "path")
                                     (revision-children :target-type
                                      revision-children :member-name
                                      "revisionChildren"))
                                    (:shape-name "FileVersion"))

(smithy/sdk/shapes:define-list files-metadata :member file-metadata)

(smithy/sdk/shapes:define-structure folder common-lisp:nil
                                    ((tree-id :target-type object-id
                                      :member-name "treeId")
                                     (absolute-path :target-type path
                                      :member-name "absolutePath")
                                     (relative-path :target-type path
                                      :member-name "relativePath"))
                                    (:shape-name "Folder"))

(smithy/sdk/shapes:define-error folder-content-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "FolderContentSizeLimitExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error folder-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "FolderDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list folder-list :member folder)

(smithy/sdk/shapes:define-input get-approval-rule-template-input
                                common-lisp:nil
                                ((approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateName"))
                                (:shape-name "GetApprovalRuleTemplateInput"))

(smithy/sdk/shapes:define-output get-approval-rule-template-output
                                 common-lisp:nil
                                 ((approval-rule-template :target-type
                                   approval-rule-template :required
                                   common-lisp:t :member-name
                                   "approvalRuleTemplate"))
                                 (:shape-name "GetApprovalRuleTemplateOutput"))

(smithy/sdk/shapes:define-input get-blob-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (blob-id :target-type object-id :required
                                  common-lisp:t :member-name "blobId"))
                                (:shape-name "GetBlobInput"))

(smithy/sdk/shapes:define-output get-blob-output common-lisp:nil
                                 ((content :target-type blob :required
                                   common-lisp:t :member-name "content"))
                                 (:shape-name "GetBlobOutput"))

(smithy/sdk/shapes:define-input get-branch-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :member-name "repositoryName")
                                 (branch-name :target-type branch-name
                                  :member-name "branchName"))
                                (:shape-name "GetBranchInput"))

(smithy/sdk/shapes:define-output get-branch-output common-lisp:nil
                                 ((branch :target-type branch-info :member-name
                                   "branch"))
                                 (:shape-name "GetBranchOutput"))

(smithy/sdk/shapes:define-input get-comment-input common-lisp:nil
                                ((comment-id :target-type comment-id :required
                                  common-lisp:t :member-name "commentId"))
                                (:shape-name "GetCommentInput"))

(smithy/sdk/shapes:define-output get-comment-output common-lisp:nil
                                 ((comment :target-type comment :member-name
                                   "comment"))
                                 (:shape-name "GetCommentOutput"))

(smithy/sdk/shapes:define-input get-comment-reactions-input common-lisp:nil
                                ((comment-id :target-type comment-id :required
                                  common-lisp:t :member-name "commentId")
                                 (reaction-user-arn :target-type arn
                                  :member-name "reactionUserArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetCommentReactionsInput"))

(smithy/sdk/shapes:define-output get-comment-reactions-output common-lisp:nil
                                 ((reactions-for-comment :target-type
                                   reactions-for-comment-list :required
                                   common-lisp:t :member-name
                                   "reactionsForComment")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetCommentReactionsOutput"))

(smithy/sdk/shapes:define-input get-comments-for-compared-commit-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (before-commit-id :target-type commit-id
                                  :member-name "beforeCommitId")
                                 (after-commit-id :target-type commit-id
                                  :required common-lisp:t :member-name
                                  "afterCommitId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "GetCommentsForComparedCommitInput"))

(smithy/sdk/shapes:define-output get-comments-for-compared-commit-output
                                 common-lisp:nil
                                 ((comments-for-compared-commit-data
                                   :target-type
                                   comments-for-compared-commit-data
                                   :member-name
                                   "commentsForComparedCommitData")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetCommentsForComparedCommitOutput"))

(smithy/sdk/shapes:define-input get-comments-for-pull-request-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (repository-name :target-type repository-name
                                  :member-name "repositoryName")
                                 (before-commit-id :target-type commit-id
                                  :member-name "beforeCommitId")
                                 (after-commit-id :target-type commit-id
                                  :member-name "afterCommitId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetCommentsForPullRequestInput"))

(smithy/sdk/shapes:define-output get-comments-for-pull-request-output
                                 common-lisp:nil
                                 ((comments-for-pull-request-data :target-type
                                   comments-for-pull-request-data :member-name
                                   "commentsForPullRequestData")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetCommentsForPullRequestOutput"))

(smithy/sdk/shapes:define-input get-commit-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (commit-id :target-type object-id :required
                                  common-lisp:t :member-name "commitId"))
                                (:shape-name "GetCommitInput"))

(smithy/sdk/shapes:define-output get-commit-output common-lisp:nil
                                 ((commit :target-type commit :required
                                   common-lisp:t :member-name "commit"))
                                 (:shape-name "GetCommitOutput"))

(smithy/sdk/shapes:define-input get-differences-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (before-commit-specifier :target-type
                                  commit-name :member-name
                                  "beforeCommitSpecifier")
                                 (after-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "afterCommitSpecifier")
                                 (before-path :target-type path :member-name
                                  "beforePath")
                                 (after-path :target-type path :member-name
                                  "afterPath")
                                 (max-results :target-type limit :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetDifferencesInput"))

(smithy/sdk/shapes:define-output get-differences-output common-lisp:nil
                                 ((differences :target-type difference-list
                                   :member-name "differences")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetDifferencesOutput"))

(smithy/sdk/shapes:define-input get-file-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (commit-specifier :target-type commit-name
                                  :member-name "commitSpecifier")
                                 (file-path :target-type path :required
                                  common-lisp:t :member-name "filePath"))
                                (:shape-name "GetFileInput"))

(smithy/sdk/shapes:define-output get-file-output common-lisp:nil
                                 ((commit-id :target-type object-id :required
                                   common-lisp:t :member-name "commitId")
                                  (blob-id :target-type object-id :required
                                   common-lisp:t :member-name "blobId")
                                  (file-path :target-type path :required
                                   common-lisp:t :member-name "filePath")
                                  (file-mode :target-type file-mode-type-enum
                                   :required common-lisp:t :member-name
                                   "fileMode")
                                  (file-size :target-type object-size :required
                                   common-lisp:t :member-name "fileSize")
                                  (file-content :target-type file-content
                                   :required common-lisp:t :member-name
                                   "fileContent"))
                                 (:shape-name "GetFileOutput"))

(smithy/sdk/shapes:define-input get-folder-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (commit-specifier :target-type commit-name
                                  :member-name "commitSpecifier")
                                 (folder-path :target-type path :required
                                  common-lisp:t :member-name "folderPath"))
                                (:shape-name "GetFolderInput"))

(smithy/sdk/shapes:define-output get-folder-output common-lisp:nil
                                 ((commit-id :target-type object-id :required
                                   common-lisp:t :member-name "commitId")
                                  (folder-path :target-type path :required
                                   common-lisp:t :member-name "folderPath")
                                  (tree-id :target-type object-id :member-name
                                   "treeId")
                                  (sub-folders :target-type folder-list
                                   :member-name "subFolders")
                                  (files :target-type file-list :member-name
                                   "files")
                                  (symbolic-links :target-type
                                   symbolic-link-list :member-name
                                   "symbolicLinks")
                                  (sub-modules :target-type sub-module-list
                                   :member-name "subModules"))
                                 (:shape-name "GetFolderOutput"))

(smithy/sdk/shapes:define-input get-merge-commit-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy"))
                                (:shape-name "GetMergeCommitInput"))

(smithy/sdk/shapes:define-output get-merge-commit-output common-lisp:nil
                                 ((source-commit-id :target-type object-id
                                   :member-name "sourceCommitId")
                                  (destination-commit-id :target-type object-id
                                   :member-name "destinationCommitId")
                                  (base-commit-id :target-type object-id
                                   :member-name "baseCommitId")
                                  (merged-commit-id :target-type object-id
                                   :member-name "mergedCommitId"))
                                 (:shape-name "GetMergeCommitOutput"))

(smithy/sdk/shapes:define-input get-merge-conflicts-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (merge-option :target-type
                                  merge-option-type-enum :required
                                  common-lisp:t :member-name "mergeOption")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (max-conflict-files :target-type max-results
                                  :member-name "maxConflictFiles")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetMergeConflictsInput"))

(smithy/sdk/shapes:define-output get-merge-conflicts-output common-lisp:nil
                                 ((mergeable :target-type is-mergeable
                                   :required common-lisp:t :member-name
                                   "mergeable")
                                  (destination-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "destinationCommitId")
                                  (source-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "sourceCommitId")
                                  (base-commit-id :target-type object-id
                                   :member-name "baseCommitId")
                                  (conflict-metadata-list :target-type
                                   conflict-metadata-list :required
                                   common-lisp:t :member-name
                                   "conflictMetadataList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetMergeConflictsOutput"))

(smithy/sdk/shapes:define-input get-merge-options-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy"))
                                (:shape-name "GetMergeOptionsInput"))

(smithy/sdk/shapes:define-output get-merge-options-output common-lisp:nil
                                 ((merge-options :target-type merge-options
                                   :required common-lisp:t :member-name
                                   "mergeOptions")
                                  (source-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "sourceCommitId")
                                  (destination-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "destinationCommitId")
                                  (base-commit-id :target-type object-id
                                   :required common-lisp:t :member-name
                                   "baseCommitId"))
                                 (:shape-name "GetMergeOptionsOutput"))

(smithy/sdk/shapes:define-input get-pull-request-approval-states-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (revision-id :target-type revision-id
                                  :required common-lisp:t :member-name
                                  "revisionId"))
                                (:shape-name
                                 "GetPullRequestApprovalStatesInput"))

(smithy/sdk/shapes:define-output get-pull-request-approval-states-output
                                 common-lisp:nil
                                 ((approvals :target-type approval-list
                                   :member-name "approvals"))
                                 (:shape-name
                                  "GetPullRequestApprovalStatesOutput"))

(smithy/sdk/shapes:define-input get-pull-request-input common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId"))
                                (:shape-name "GetPullRequestInput"))

(smithy/sdk/shapes:define-output get-pull-request-output common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :required common-lisp:t :member-name
                                   "pullRequest"))
                                 (:shape-name "GetPullRequestOutput"))

(smithy/sdk/shapes:define-input get-pull-request-override-state-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (revision-id :target-type revision-id
                                  :required common-lisp:t :member-name
                                  "revisionId"))
                                (:shape-name
                                 "GetPullRequestOverrideStateInput"))

(smithy/sdk/shapes:define-output get-pull-request-override-state-output
                                 common-lisp:nil
                                 ((overridden :target-type overridden
                                   :member-name "overridden")
                                  (overrider :target-type arn :member-name
                                   "overrider"))
                                 (:shape-name
                                  "GetPullRequestOverrideStateOutput"))

(smithy/sdk/shapes:define-input get-repository-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "GetRepositoryInput"))

(smithy/sdk/shapes:define-output get-repository-output common-lisp:nil
                                 ((repository-metadata :target-type
                                   repository-metadata :member-name
                                   "repositoryMetadata"))
                                 (:shape-name "GetRepositoryOutput"))

(smithy/sdk/shapes:define-input get-repository-triggers-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "GetRepositoryTriggersInput"))

(smithy/sdk/shapes:define-output get-repository-triggers-output common-lisp:nil
                                 ((configuration-id :target-type
                                   repository-triggers-configuration-id
                                   :member-name "configurationId")
                                  (triggers :target-type
                                   repository-triggers-list :member-name
                                   "triggers"))
                                 (:shape-name "GetRepositoryTriggersOutput"))

(smithy/sdk/shapes:define-type hunk-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotency-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "IdempotencyParameterMismatchException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-actor-arn-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidActorArnException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-approval-rule-content-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidApprovalRuleContentException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-approval-rule-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidApprovalRuleNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 invalid-approval-rule-template-content-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidApprovalRuleTemplateContentException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 invalid-approval-rule-template-description-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidApprovalRuleTemplateDescriptionException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-approval-rule-template-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidApprovalRuleTemplateNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-approval-state-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidApprovalStateException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-author-arn-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidAuthorArnException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-blob-id-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidBlobIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-branch-name-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidBranchNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-client-request-token-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidClientRequestTokenException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-comment-id-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidCommentIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-commit-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidCommitException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-commit-id-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidCommitIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-conflict-detail-level-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidConflictDetailLevelException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-conflict-resolution-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidConflictResolutionException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-conflict-resolution-strategy-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidConflictResolutionStrategyException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-continuation-token-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidContinuationTokenException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-deletion-parameter-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDeletionParameterException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-description-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidDescriptionException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-destination-commit-specifier-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDestinationCommitSpecifierException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-email-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidEmailException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-file-location-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidFileLocationException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-file-mode-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidFileModeException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-file-position-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidFilePositionException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-max-conflict-files-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidMaxConflictFilesException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-max-merge-hunks-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidMaxMergeHunksException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-max-results-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidMaxResultsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-merge-option-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidMergeOptionException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-order-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidOrderException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-override-status-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidOverrideStatusException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-parent-commit-id-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidParentCommitIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-path-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidPathException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-pull-request-event-type-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidPullRequestEventTypeException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-pull-request-id-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidPullRequestIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-pull-request-status-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidPullRequestStatusException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-pull-request-status-update-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidPullRequestStatusUpdateException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-reaction-user-arn-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidReactionUserArnException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-reaction-value-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidReactionValueException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-reference-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidReferenceNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-relative-file-version-enum-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRelativeFileVersionEnumException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-replacement-content-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidReplacementContentException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-replacement-type-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidReplacementTypeException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-repository-description-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRepositoryDescriptionException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-repository-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidRepositoryNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 invalid-repository-trigger-branch-name-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidRepositoryTriggerBranchNameException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 invalid-repository-trigger-custom-data-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidRepositoryTriggerCustomDataException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 invalid-repository-trigger-destination-arn-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "InvalidRepositoryTriggerDestinationArnException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-repository-trigger-events-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRepositoryTriggerEventsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-repository-trigger-name-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRepositoryTriggerNameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-repository-trigger-region-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRepositoryTriggerRegionException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-resource-arn-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidResourceArnException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-revision-id-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidRevisionIdException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-rule-content-sha256exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidRuleContentSha256Exception")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-sort-by-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidSortByException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-source-commit-specifier-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidSourceCommitSpecifierException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-system-tag-usage-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidSystemTagUsageException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-tag-keys-list-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTagKeysListException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-tags-map-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTagsMapException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-target-branch-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTargetBranchException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-target-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTargetException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-targets-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTargetsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error invalid-title-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "InvalidTitleException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure is-binary-file common-lisp:nil
                                    ((source :target-type capital-boolean
                                      :member-name "source")
                                     (destination :target-type capital-boolean
                                      :member-name "destination")
                                     (base :target-type capital-boolean
                                      :member-name "base"))
                                    (:shape-name "IsBinaryFile"))

(smithy/sdk/shapes:define-type is-comment-deleted
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-content-conflict
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-file-mode-conflict
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-hunk-conflict smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-mergeable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-merged smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-move smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-object-type-conflict
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type keep-empty-folders
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-modified-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type line-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-approval-rule-templates-input
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListApprovalRuleTemplatesInput"))

(smithy/sdk/shapes:define-output list-approval-rule-templates-output
                                 common-lisp:nil
                                 ((approval-rule-template-names :target-type
                                   approval-rule-template-name-list
                                   :member-name "approvalRuleTemplateNames")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListApprovalRuleTemplatesOutput"))

(smithy/sdk/shapes:define-input
 list-associated-approval-rule-templates-for-repository-input common-lisp:nil
 ((repository-name :target-type repository-name :required common-lisp:t
   :member-name "repositoryName")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListAssociatedApprovalRuleTemplatesForRepositoryInput"))

(smithy/sdk/shapes:define-output
 list-associated-approval-rule-templates-for-repository-output common-lisp:nil
 ((approval-rule-template-names :target-type approval-rule-template-name-list
   :member-name "approvalRuleTemplateNames")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListAssociatedApprovalRuleTemplatesForRepositoryOutput"))

(smithy/sdk/shapes:define-input list-branches-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBranchesInput"))

(smithy/sdk/shapes:define-output list-branches-output common-lisp:nil
                                 ((branches :target-type branch-name-list
                                   :member-name "branches")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBranchesOutput"))

(smithy/sdk/shapes:define-input list-file-commit-history-request
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (commit-specifier :target-type commit-name
                                  :member-name "commitSpecifier")
                                 (file-path :target-type path :required
                                  common-lisp:t :member-name "filePath")
                                 (max-results :target-type limit :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListFileCommitHistoryRequest"))

(smithy/sdk/shapes:define-output list-file-commit-history-response
                                 common-lisp:nil
                                 ((revision-dag :target-type revision-dag
                                   :required common-lisp:t :member-name
                                   "revisionDag")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFileCommitHistoryResponse"))

(smithy/sdk/shapes:define-input list-pull-requests-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (author-arn :target-type arn :member-name
                                  "authorArn")
                                 (pull-request-status :target-type
                                  pull-request-status-enum :member-name
                                  "pullRequestStatus")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListPullRequestsInput"))

(smithy/sdk/shapes:define-output list-pull-requests-output common-lisp:nil
                                 ((pull-request-ids :target-type
                                   pull-request-id-list :required common-lisp:t
                                   :member-name "pullRequestIds")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPullRequestsOutput"))

(smithy/sdk/shapes:define-input
 list-repositories-for-approval-rule-template-input common-lisp:nil
 ((approval-rule-template-name :target-type approval-rule-template-name
   :required common-lisp:t :member-name "approvalRuleTemplateName")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListRepositoriesForApprovalRuleTemplateInput"))

(smithy/sdk/shapes:define-output
 list-repositories-for-approval-rule-template-output common-lisp:nil
 ((repository-names :target-type repository-name-list :member-name
   "repositoryNames")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListRepositoriesForApprovalRuleTemplateOutput"))

(smithy/sdk/shapes:define-input list-repositories-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (sort-by :target-type sort-by-enum
                                  :member-name "sortBy")
                                 (order :target-type order-enum :member-name
                                  "order"))
                                (:shape-name "ListRepositoriesInput"))

(smithy/sdk/shapes:define-output list-repositories-output common-lisp:nil
                                 ((repositories :target-type
                                   repository-name-id-pair-list :member-name
                                   "repositories")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRepositoriesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tags-map :member-name
                                   "tags")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure location common-lisp:nil
                                    ((file-path :target-type path :member-name
                                      "filePath")
                                     (file-position :target-type position
                                      :member-name "filePosition")
                                     (relative-file-version :target-type
                                      relative-file-version-enum :member-name
                                      "relativeFileVersion"))
                                    (:shape-name "Location"))

(smithy/sdk/shapes:define-error manual-merge-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ManualMergeRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error maximum-branches-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumBranchesExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 maximum-conflict-resolution-entries-exceeded-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "MaximumConflictResolutionEntriesExceededException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-file-content-to-load-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumFileContentToLoadExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-file-entries-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumFileEntriesExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-items-to-compare-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumItemsToCompareExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-number-of-approvals-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumNumberOfApprovalsExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-open-pull-requests-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumOpenPullRequestsExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-repository-names-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumRepositoryNamesExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error maximum-repository-triggers-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MaximumRepositoryTriggersExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 maximum-rule-templates-associated-with-repository-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "MaximumRuleTemplatesAssociatedWithRepositoryException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-input merge-branches-by-fast-forward-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (target-branch :target-type branch-name
                                  :member-name "targetBranch"))
                                (:shape-name "MergeBranchesByFastForwardInput"))

(smithy/sdk/shapes:define-output merge-branches-by-fast-forward-output
                                 common-lisp:nil
                                 ((commit-id :target-type object-id
                                   :member-name "commitId")
                                  (tree-id :target-type object-id :member-name
                                   "treeId"))
                                 (:shape-name
                                  "MergeBranchesByFastForwardOutput"))

(smithy/sdk/shapes:define-input merge-branches-by-squash-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (target-branch :target-type branch-name
                                  :member-name "targetBranch")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (author-name :target-type name :member-name
                                  "authorName")
                                 (email :target-type email :member-name
                                  "email")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (conflict-resolution :target-type
                                  conflict-resolution :member-name
                                  "conflictResolution"))
                                (:shape-name "MergeBranchesBySquashInput"))

(smithy/sdk/shapes:define-output merge-branches-by-squash-output
                                 common-lisp:nil
                                 ((commit-id :target-type object-id
                                   :member-name "commitId")
                                  (tree-id :target-type object-id :member-name
                                   "treeId"))
                                 (:shape-name "MergeBranchesBySquashOutput"))

(smithy/sdk/shapes:define-input merge-branches-by-three-way-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "sourceCommitSpecifier")
                                 (destination-commit-specifier :target-type
                                  commit-name :required common-lisp:t
                                  :member-name "destinationCommitSpecifier")
                                 (target-branch :target-type branch-name
                                  :member-name "targetBranch")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (author-name :target-type name :member-name
                                  "authorName")
                                 (email :target-type email :member-name
                                  "email")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (conflict-resolution :target-type
                                  conflict-resolution :member-name
                                  "conflictResolution"))
                                (:shape-name "MergeBranchesByThreeWayInput"))

(smithy/sdk/shapes:define-output merge-branches-by-three-way-output
                                 common-lisp:nil
                                 ((commit-id :target-type object-id
                                   :member-name "commitId")
                                  (tree-id :target-type object-id :member-name
                                   "treeId"))
                                 (:shape-name "MergeBranchesByThreeWayOutput"))

(smithy/sdk/shapes:define-structure merge-hunk common-lisp:nil
                                    ((is-conflict :target-type is-hunk-conflict
                                      :member-name "isConflict")
                                     (source :target-type merge-hunk-detail
                                      :member-name "source")
                                     (destination :target-type
                                      merge-hunk-detail :member-name
                                      "destination")
                                     (base :target-type merge-hunk-detail
                                      :member-name "base"))
                                    (:shape-name "MergeHunk"))

(smithy/sdk/shapes:define-structure merge-hunk-detail common-lisp:nil
                                    ((start-line :target-type line-number
                                      :member-name "startLine")
                                     (end-line :target-type line-number
                                      :member-name "endLine")
                                     (hunk-content :target-type hunk-content
                                      :member-name "hunkContent"))
                                    (:shape-name "MergeHunkDetail"))

(smithy/sdk/shapes:define-list merge-hunks :member merge-hunk)

(smithy/sdk/shapes:define-structure merge-metadata common-lisp:nil
                                    ((is-merged :target-type is-merged
                                      :member-name "isMerged")
                                     (merged-by :target-type arn :member-name
                                      "mergedBy")
                                     (merge-commit-id :target-type commit-id
                                      :member-name "mergeCommitId")
                                     (merge-option :target-type
                                      merge-option-type-enum :member-name
                                      "mergeOption"))
                                    (:shape-name "MergeMetadata"))

(smithy/sdk/shapes:define-structure merge-operations common-lisp:nil
                                    ((source :target-type change-type-enum
                                      :member-name "source")
                                     (destination :target-type change-type-enum
                                      :member-name "destination"))
                                    (:shape-name "MergeOperations"))

(smithy/sdk/shapes:define-error merge-option-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "MergeOptionRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-enum merge-option-type-enum
    common-lisp:nil
  (:fast-forward-merge "FAST_FORWARD_MERGE")
  (:squash-merge "SQUASH_MERGE")
  (:three-way-merge "THREE_WAY_MERGE"))

(smithy/sdk/shapes:define-list merge-options :member merge-option-type-enum)

(smithy/sdk/shapes:define-input merge-pull-request-by-fast-forward-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-id :target-type object-id
                                  :member-name "sourceCommitId"))
                                (:shape-name
                                 "MergePullRequestByFastForwardInput"))

(smithy/sdk/shapes:define-output merge-pull-request-by-fast-forward-output
                                 common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :member-name "pullRequest"))
                                 (:shape-name
                                  "MergePullRequestByFastForwardOutput"))

(smithy/sdk/shapes:define-input merge-pull-request-by-squash-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-id :target-type object-id
                                  :member-name "sourceCommitId")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (author-name :target-type name :member-name
                                  "authorName")
                                 (email :target-type email :member-name
                                  "email")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (conflict-resolution :target-type
                                  conflict-resolution :member-name
                                  "conflictResolution"))
                                (:shape-name "MergePullRequestBySquashInput"))

(smithy/sdk/shapes:define-output merge-pull-request-by-squash-output
                                 common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :member-name "pullRequest"))
                                 (:shape-name "MergePullRequestBySquashOutput"))

(smithy/sdk/shapes:define-input merge-pull-request-by-three-way-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (source-commit-id :target-type object-id
                                  :member-name "sourceCommitId")
                                 (conflict-detail-level :target-type
                                  conflict-detail-level-type-enum :member-name
                                  "conflictDetailLevel")
                                 (conflict-resolution-strategy :target-type
                                  conflict-resolution-strategy-type-enum
                                  :member-name "conflictResolutionStrategy")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (author-name :target-type name :member-name
                                  "authorName")
                                 (email :target-type email :member-name
                                  "email")
                                 (keep-empty-folders :target-type
                                  keep-empty-folders :member-name
                                  "keepEmptyFolders")
                                 (conflict-resolution :target-type
                                  conflict-resolution :member-name
                                  "conflictResolution"))
                                (:shape-name "MergePullRequestByThreeWayInput"))

(smithy/sdk/shapes:define-output merge-pull-request-by-three-way-output
                                 common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :member-name "pullRequest"))
                                 (:shape-name
                                  "MergePullRequestByThreeWayOutput"))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error multiple-conflict-resolution-entries-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MultipleConflictResolutionEntriesException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error multiple-repositories-in-pull-request-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "MultipleRepositoriesInPullRequestException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error name-length-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "NameLengthExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-change-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "NoChangeException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type number-of-conflicts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error number-of-rule-templates-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "NumberOfRuleTemplatesExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error number-of-rules-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "NumberOfRulesExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type object-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum object-type-enum
    common-lisp:nil
  (:file "FILE")
  (:directory "DIRECTORY")
  (:git-link "GIT_LINK")
  (:symbolic-link "SYMBOLIC_LINK"))

(smithy/sdk/shapes:define-structure object-types common-lisp:nil
                                    ((source :target-type object-type-enum
                                      :member-name "source")
                                     (destination :target-type object-type-enum
                                      :member-name "destination")
                                     (base :target-type object-type-enum
                                      :member-name "base"))
                                    (:shape-name "ObjectTypes"))

(smithy/sdk/shapes:define-error operation-not-allowed-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "OperationNotAllowedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-enum order-enum
    common-lisp:nil
  (:ascending "ascending")
  (:descending "descending"))

(smithy/sdk/shapes:define-structure origin-approval-rule-template
                                    common-lisp:nil
                                    ((approval-rule-template-id :target-type
                                      approval-rule-template-id :member-name
                                      "approvalRuleTemplateId")
                                     (approval-rule-template-name :target-type
                                      approval-rule-template-name :member-name
                                      "approvalRuleTemplateName"))
                                    (:shape-name "OriginApprovalRuleTemplate"))

(smithy/sdk/shapes:define-type overridden smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error override-already-set-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "OverrideAlreadySetException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-input override-pull-request-approval-rules-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (revision-id :target-type revision-id
                                  :required common-lisp:t :member-name
                                  "revisionId")
                                 (override-status :target-type override-status
                                  :required common-lisp:t :member-name
                                  "overrideStatus"))
                                (:shape-name
                                 "OverridePullRequestApprovalRulesInput"))

(smithy/sdk/shapes:define-enum override-status
    common-lisp:nil
  (:override "OVERRIDE")
  (:revoke "REVOKE"))

(smithy/sdk/shapes:define-error override-status-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "OverrideStatusRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error parent-commit-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ParentCommitDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error parent-commit-id-outdated-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ParentCommitIdOutdatedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error parent-commit-id-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ParentCommitIdRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list parent-list :member object-id)

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error path-does-not-exist-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "PathDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error path-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "PathRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type position smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input post-comment-for-compared-commit-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (before-commit-id :target-type commit-id
                                  :member-name "beforeCommitId")
                                 (after-commit-id :target-type commit-id
                                  :required common-lisp:t :member-name
                                  "afterCommitId")
                                 (location :target-type location :member-name
                                  "location")
                                 (content :target-type content :required
                                  common-lisp:t :member-name "content")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken"))
                                (:shape-name
                                 "PostCommentForComparedCommitInput"))

(smithy/sdk/shapes:define-output post-comment-for-compared-commit-output
                                 common-lisp:nil
                                 ((repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (before-commit-id :target-type commit-id
                                   :member-name "beforeCommitId")
                                  (after-commit-id :target-type commit-id
                                   :member-name "afterCommitId")
                                  (before-blob-id :target-type object-id
                                   :member-name "beforeBlobId")
                                  (after-blob-id :target-type object-id
                                   :member-name "afterBlobId")
                                  (location :target-type location :member-name
                                   "location")
                                  (comment :target-type comment :member-name
                                   "comment"))
                                 (:shape-name
                                  "PostCommentForComparedCommitOutput"))

(smithy/sdk/shapes:define-input post-comment-for-pull-request-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (before-commit-id :target-type commit-id
                                  :required common-lisp:t :member-name
                                  "beforeCommitId")
                                 (after-commit-id :target-type commit-id
                                  :required common-lisp:t :member-name
                                  "afterCommitId")
                                 (location :target-type location :member-name
                                  "location")
                                 (content :target-type content :required
                                  common-lisp:t :member-name "content")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken"))
                                (:shape-name "PostCommentForPullRequestInput"))

(smithy/sdk/shapes:define-output post-comment-for-pull-request-output
                                 common-lisp:nil
                                 ((repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (pull-request-id :target-type pull-request-id
                                   :member-name "pullRequestId")
                                  (before-commit-id :target-type commit-id
                                   :member-name "beforeCommitId")
                                  (after-commit-id :target-type commit-id
                                   :member-name "afterCommitId")
                                  (before-blob-id :target-type object-id
                                   :member-name "beforeBlobId")
                                  (after-blob-id :target-type object-id
                                   :member-name "afterBlobId")
                                  (location :target-type location :member-name
                                   "location")
                                  (comment :target-type comment :member-name
                                   "comment"))
                                 (:shape-name
                                  "PostCommentForPullRequestOutput"))

(smithy/sdk/shapes:define-input post-comment-reply-input common-lisp:nil
                                ((in-reply-to :target-type comment-id :required
                                  common-lisp:t :member-name "inReplyTo")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "clientRequestToken")
                                 (content :target-type content :required
                                  common-lisp:t :member-name "content"))
                                (:shape-name "PostCommentReplyInput"))

(smithy/sdk/shapes:define-output post-comment-reply-output common-lisp:nil
                                 ((comment :target-type comment :member-name
                                   "comment"))
                                 (:shape-name "PostCommentReplyOutput"))

(smithy/sdk/shapes:define-structure pull-request common-lisp:nil
                                    ((pull-request-id :target-type
                                      pull-request-id :member-name
                                      "pullRequestId")
                                     (title :target-type title :member-name
                                      "title")
                                     (description :target-type description
                                      :member-name "description")
                                     (last-activity-date :target-type
                                      last-modified-date :member-name
                                      "lastActivityDate")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (pull-request-status :target-type
                                      pull-request-status-enum :member-name
                                      "pullRequestStatus")
                                     (author-arn :target-type arn :member-name
                                      "authorArn")
                                     (pull-request-targets :target-type
                                      pull-request-target-list :member-name
                                      "pullRequestTargets")
                                     (client-request-token :target-type
                                      client-request-token :member-name
                                      "clientRequestToken")
                                     (revision-id :target-type revision-id
                                      :member-name "revisionId")
                                     (approval-rules :target-type
                                      approval-rules-list :member-name
                                      "approvalRules"))
                                    (:shape-name "PullRequest"))

(smithy/sdk/shapes:define-error pull-request-already-closed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PullRequestAlreadyClosedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 pull-request-approval-rules-not-satisfied-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "PullRequestApprovalRulesNotSatisfiedException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 pull-request-cannot-be-approved-by-author-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "PullRequestCannotBeApprovedByAuthorException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure pull-request-created-event-metadata
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (source-commit-id :target-type commit-id
                                      :member-name "sourceCommitId")
                                     (destination-commit-id :target-type
                                      commit-id :member-name
                                      "destinationCommitId")
                                     (merge-base :target-type commit-id
                                      :member-name "mergeBase"))
                                    (:shape-name
                                     "PullRequestCreatedEventMetadata"))

(smithy/sdk/shapes:define-error pull-request-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PullRequestDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure pull-request-event common-lisp:nil
                                    ((pull-request-id :target-type
                                      pull-request-id :member-name
                                      "pullRequestId")
                                     (event-date :target-type event-date
                                      :member-name "eventDate")
                                     (pull-request-event-type :target-type
                                      pull-request-event-type :member-name
                                      "pullRequestEventType")
                                     (actor-arn :target-type arn :member-name
                                      "actorArn")
                                     (pull-request-created-event-metadata
                                      :target-type
                                      pull-request-created-event-metadata
                                      :member-name
                                      "pullRequestCreatedEventMetadata")
                                     (pull-request-status-changed-event-metadata
                                      :target-type
                                      pull-request-status-changed-event-metadata
                                      :member-name
                                      "pullRequestStatusChangedEventMetadata")
                                     (pull-request-source-reference-updated-event-metadata
                                      :target-type
                                      pull-request-source-reference-updated-event-metadata
                                      :member-name
                                      "pullRequestSourceReferenceUpdatedEventMetadata")
                                     (pull-request-merged-state-changed-event-metadata
                                      :target-type
                                      pull-request-merged-state-changed-event-metadata
                                      :member-name
                                      "pullRequestMergedStateChangedEventMetadata")
                                     (approval-rule-event-metadata :target-type
                                      approval-rule-event-metadata :member-name
                                      "approvalRuleEventMetadata")
                                     (approval-state-changed-event-metadata
                                      :target-type
                                      approval-state-changed-event-metadata
                                      :member-name
                                      "approvalStateChangedEventMetadata")
                                     (approval-rule-overridden-event-metadata
                                      :target-type
                                      approval-rule-overridden-event-metadata
                                      :member-name
                                      "approvalRuleOverriddenEventMetadata"))
                                    (:shape-name "PullRequestEvent"))

(smithy/sdk/shapes:define-list pull-request-event-list :member
                               pull-request-event)

(smithy/sdk/shapes:define-enum pull-request-event-type
    common-lisp:nil
  (:pull-request-created "PULL_REQUEST_CREATED")
  (:pull-request-status-changed "PULL_REQUEST_STATUS_CHANGED")
  (:pull-request-source-reference-updated
   "PULL_REQUEST_SOURCE_REFERENCE_UPDATED")
  (:pull-request-merge-state-changed "PULL_REQUEST_MERGE_STATE_CHANGED")
  (:pull-request-approval-rule-created "PULL_REQUEST_APPROVAL_RULE_CREATED")
  (:pull-request-approval-rule-updated "PULL_REQUEST_APPROVAL_RULE_UPDATED")
  (:pull-request-approval-rule-deleted "PULL_REQUEST_APPROVAL_RULE_DELETED")
  (:pull-request-approval-rule-overridden
   "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN")
  (:pull-request-approval-state-changed "PULL_REQUEST_APPROVAL_STATE_CHANGED"))

(smithy/sdk/shapes:define-type pull-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pull-request-id-list :member pull-request-id)

(smithy/sdk/shapes:define-error pull-request-id-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "PullRequestIdRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure
 pull-request-merged-state-changed-event-metadata common-lisp:nil
 ((repository-name :target-type repository-name :member-name "repositoryName")
  (destination-reference :target-type reference-name :member-name
   "destinationReference")
  (merge-metadata :target-type merge-metadata :member-name "mergeMetadata"))
 (:shape-name "PullRequestMergedStateChangedEventMetadata"))

(smithy/sdk/shapes:define-structure
 pull-request-source-reference-updated-event-metadata common-lisp:nil
 ((repository-name :target-type repository-name :member-name "repositoryName")
  (before-commit-id :target-type commit-id :member-name "beforeCommitId")
  (after-commit-id :target-type commit-id :member-name "afterCommitId")
  (merge-base :target-type commit-id :member-name "mergeBase"))
 (:shape-name "PullRequestSourceReferenceUpdatedEventMetadata"))

(smithy/sdk/shapes:define-structure pull-request-status-changed-event-metadata
                                    common-lisp:nil
                                    ((pull-request-status :target-type
                                      pull-request-status-enum :member-name
                                      "pullRequestStatus"))
                                    (:shape-name
                                     "PullRequestStatusChangedEventMetadata"))

(smithy/sdk/shapes:define-enum pull-request-status-enum
    common-lisp:nil
  (:open "OPEN")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-error pull-request-status-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "PullRequestStatusRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure pull-request-target common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (source-reference :target-type
                                      reference-name :member-name
                                      "sourceReference")
                                     (destination-reference :target-type
                                      reference-name :member-name
                                      "destinationReference")
                                     (destination-commit :target-type commit-id
                                      :member-name "destinationCommit")
                                     (source-commit :target-type commit-id
                                      :member-name "sourceCommit")
                                     (merge-base :target-type commit-id
                                      :member-name "mergeBase")
                                     (merge-metadata :target-type
                                      merge-metadata :member-name
                                      "mergeMetadata"))
                                    (:shape-name "PullRequestTarget"))

(smithy/sdk/shapes:define-list pull-request-target-list :member
                               pull-request-target)

(smithy/sdk/shapes:define-input put-comment-reaction-input common-lisp:nil
                                ((comment-id :target-type comment-id :required
                                  common-lisp:t :member-name "commentId")
                                 (reaction-value :target-type reaction-value
                                  :required common-lisp:t :member-name
                                  "reactionValue"))
                                (:shape-name "PutCommentReactionInput"))

(smithy/sdk/shapes:define-list put-file-entries :member put-file-entry)

(smithy/sdk/shapes:define-structure put-file-entry common-lisp:nil
                                    ((file-path :target-type path :required
                                      common-lisp:t :member-name "filePath")
                                     (file-mode :target-type
                                      file-mode-type-enum :member-name
                                      "fileMode")
                                     (file-content :target-type file-content
                                      :member-name "fileContent")
                                     (source-file :target-type
                                      source-file-specifier :member-name
                                      "sourceFile"))
                                    (:shape-name "PutFileEntry"))

(smithy/sdk/shapes:define-error put-file-entry-conflict-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "PutFileEntryConflictException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-input put-file-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName")
                                 (file-content :target-type file-content
                                  :required common-lisp:t :member-name
                                  "fileContent")
                                 (file-path :target-type path :required
                                  common-lisp:t :member-name "filePath")
                                 (file-mode :target-type file-mode-type-enum
                                  :member-name "fileMode")
                                 (parent-commit-id :target-type commit-id
                                  :member-name "parentCommitId")
                                 (commit-message :target-type message
                                  :member-name "commitMessage")
                                 (name :target-type name :member-name "name")
                                 (email :target-type email :member-name
                                  "email"))
                                (:shape-name "PutFileInput"))

(smithy/sdk/shapes:define-output put-file-output common-lisp:nil
                                 ((commit-id :target-type object-id :required
                                   common-lisp:t :member-name "commitId")
                                  (blob-id :target-type object-id :required
                                   common-lisp:t :member-name "blobId")
                                  (tree-id :target-type object-id :required
                                   common-lisp:t :member-name "treeId"))
                                 (:shape-name "PutFileOutput"))

(smithy/sdk/shapes:define-input put-repository-triggers-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (triggers :target-type
                                  repository-triggers-list :required
                                  common-lisp:t :member-name "triggers"))
                                (:shape-name "PutRepositoryTriggersInput"))

(smithy/sdk/shapes:define-output put-repository-triggers-output common-lisp:nil
                                 ((configuration-id :target-type
                                   repository-triggers-configuration-id
                                   :member-name "configurationId"))
                                 (:shape-name "PutRepositoryTriggersOutput"))

(smithy/sdk/shapes:define-map reaction-counts-map :key reaction-value :value
                              count)

(smithy/sdk/shapes:define-type reaction-emoji smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reaction-for-comment common-lisp:nil
                                    ((reaction :target-type
                                      reaction-value-formats :member-name
                                      "reaction")
                                     (reaction-users :target-type
                                      reaction-users-list :member-name
                                      "reactionUsers")
                                     (reactions-from-deleted-users-count
                                      :target-type count :member-name
                                      "reactionsFromDeletedUsersCount"))
                                    (:shape-name "ReactionForComment"))

(smithy/sdk/shapes:define-error reaction-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ReactionLimitExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type reaction-short-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reaction-unicode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list reaction-users-list :member arn)

(smithy/sdk/shapes:define-type reaction-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reaction-value-formats common-lisp:nil
                                    ((emoji :target-type reaction-emoji
                                      :member-name "emoji")
                                     (short-code :target-type
                                      reaction-short-code :member-name
                                      "shortCode")
                                     (unicode :target-type reaction-unicode
                                      :member-name "unicode"))
                                    (:shape-name "ReactionValueFormats"))

(smithy/sdk/shapes:define-error reaction-value-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ReactionValueRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list reactions-for-comment-list :member
                               reaction-for-comment)

(smithy/sdk/shapes:define-error reference-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ReferenceDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type reference-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error reference-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ReferenceNameRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error reference-type-not-supported-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ReferenceTypeNotSupportedException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-enum relative-file-version-enum
    common-lisp:nil
  (:before "BEFORE")
  (:after "AFTER"))

(smithy/sdk/shapes:define-list replace-content-entries :member
                               replace-content-entry)

(smithy/sdk/shapes:define-structure replace-content-entry common-lisp:nil
                                    ((file-path :target-type path :required
                                      common-lisp:t :member-name "filePath")
                                     (replacement-type :target-type
                                      replacement-type-enum :required
                                      common-lisp:t :member-name
                                      "replacementType")
                                     (content :target-type file-content
                                      :member-name "content")
                                     (file-mode :target-type
                                      file-mode-type-enum :member-name
                                      "fileMode"))
                                    (:shape-name "ReplaceContentEntry"))

(smithy/sdk/shapes:define-error replacement-content-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ReplacementContentRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-enum replacement-type-enum
    common-lisp:nil
  (:keep-base "KEEP_BASE")
  (:keep-source "KEEP_SOURCE")
  (:keep-destination "KEEP_DESTINATION")
  (:use-new-content "USE_NEW_CONTENT"))

(smithy/sdk/shapes:define-error replacement-type-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "ReplacementTypeRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type repository-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error repository-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RepositoryDoesNotExistException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type repository-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error repository-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "RepositoryLimitExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure repository-metadata common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (repository-id :target-type repository-id
                                      :member-name "repositoryId")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (repository-description :target-type
                                      repository-description :member-name
                                      "repositoryDescription")
                                     (default-branch :target-type branch-name
                                      :member-name "defaultBranch")
                                     (last-modified-date :target-type
                                      last-modified-date :member-name
                                      "lastModifiedDate")
                                     (creation-date :target-type creation-date
                                      :member-name "creationDate")
                                     (clone-url-http :target-type
                                      clone-url-http :member-name
                                      "cloneUrlHttp")
                                     (clone-url-ssh :target-type clone-url-ssh
                                      :member-name "cloneUrlSsh")
                                     (arn :target-type arn :member-name "Arn")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name "RepositoryMetadata"))

(smithy/sdk/shapes:define-list repository-metadata-list :member
                               repository-metadata)

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error repository-name-exists-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RepositoryNameExistsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure repository-name-id-pair common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (repository-id :target-type repository-id
                                      :member-name "repositoryId"))
                                    (:shape-name "RepositoryNameIdPair"))

(smithy/sdk/shapes:define-list repository-name-id-pair-list :member
                               repository-name-id-pair)

(smithy/sdk/shapes:define-list repository-name-list :member repository-name)

(smithy/sdk/shapes:define-error repository-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RepositoryNameRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error repository-names-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "RepositoryNamesRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error
 repository-not-associated-with-pull-request-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "RepositoryNotAssociatedWithPullRequestException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-list repository-not-found-list :member
                               repository-name)

(smithy/sdk/shapes:define-structure repository-trigger common-lisp:nil
                                    ((name :target-type repository-trigger-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (destination-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "destinationArn")
                                     (custom-data :target-type
                                      repository-trigger-custom-data
                                      :member-name "customData")
                                     (branches :target-type branch-name-list
                                      :member-name "branches")
                                     (events :target-type
                                      repository-trigger-event-list :required
                                      common-lisp:t :member-name "events"))
                                    (:shape-name "RepositoryTrigger"))

(smithy/sdk/shapes:define-error
 repository-trigger-branch-name-list-required-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "RepositoryTriggerBranchNameListRequiredException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-type repository-trigger-custom-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 repository-trigger-destination-arn-required-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "RepositoryTriggerDestinationArnRequiredException")
 (:error-code 400) (:base-class codecommit-error))

(smithy/sdk/shapes:define-enum repository-trigger-event-enum
    common-lisp:nil
  (:all "all")
  (:update-reference "updateReference")
  (:create-reference "createReference")
  (:delete-reference "deleteReference"))

(smithy/sdk/shapes:define-list repository-trigger-event-list :member
                               repository-trigger-event-enum)

(smithy/sdk/shapes:define-error
 repository-trigger-events-list-required-exception common-lisp:nil
 ((message :target-type message :member-name "message"))
 (:shape-name "RepositoryTriggerEventsListRequiredException") (:error-code 400)
 (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure repository-trigger-execution-failure
                                    common-lisp:nil
                                    ((trigger :target-type
                                      repository-trigger-name :member-name
                                      "trigger")
                                     (failure-message :target-type
                                      repository-trigger-execution-failure-message
                                      :member-name "failureMessage"))
                                    (:shape-name
                                     "RepositoryTriggerExecutionFailure"))

(smithy/sdk/shapes:define-list repository-trigger-execution-failure-list
                               :member repository-trigger-execution-failure)

(smithy/sdk/shapes:define-type repository-trigger-execution-failure-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-trigger-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-trigger-name-list :member
                               repository-trigger-name)

(smithy/sdk/shapes:define-error repository-trigger-name-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "RepositoryTriggerNameRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type repository-triggers-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-triggers-list :member
                               repository-trigger)

(smithy/sdk/shapes:define-error repository-triggers-list-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "RepositoryTriggersListRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-arn-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "ResourceArnRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error restricted-source-file-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RestrictedSourceFileException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list revision-children :member revision-id)

(smithy/sdk/shapes:define-list revision-dag :member file-version)

(smithy/sdk/shapes:define-type revision-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error revision-id-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RevisionIdRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error revision-not-current-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "RevisionNotCurrentException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type rule-content-sha256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error same-file-content-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "SameFileContentException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error same-path-request-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "SamePathRequestException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-list set-file-mode-entries :member
                               set-file-mode-entry)

(smithy/sdk/shapes:define-structure set-file-mode-entry common-lisp:nil
                                    ((file-path :target-type path :required
                                      common-lisp:t :member-name "filePath")
                                     (file-mode :target-type
                                      file-mode-type-enum :required
                                      common-lisp:t :member-name "fileMode"))
                                    (:shape-name "SetFileModeEntry"))

(smithy/sdk/shapes:define-enum sort-by-enum
    common-lisp:nil
  (:repository-name "repositoryName")
  (:modified-date "lastModifiedDate"))

(smithy/sdk/shapes:define-error source-and-destination-are-same-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "SourceAndDestinationAreSameException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error source-file-or-content-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "SourceFileOrContentRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure source-file-specifier common-lisp:nil
                                    ((file-path :target-type path :required
                                      common-lisp:t :member-name "filePath")
                                     (is-move :target-type is-move :member-name
                                      "isMove"))
                                    (:shape-name "SourceFileSpecifier"))

(smithy/sdk/shapes:define-structure sub-module common-lisp:nil
                                    ((commit-id :target-type object-id
                                      :member-name "commitId")
                                     (absolute-path :target-type path
                                      :member-name "absolutePath")
                                     (relative-path :target-type path
                                      :member-name "relativePath"))
                                    (:shape-name "SubModule"))

(smithy/sdk/shapes:define-list sub-module-list :member sub-module)

(smithy/sdk/shapes:define-structure symbolic-link common-lisp:nil
                                    ((blob-id :target-type object-id
                                      :member-name "blobId")
                                     (absolute-path :target-type path
                                      :member-name "absolutePath")
                                     (relative-path :target-type path
                                      :member-name "relativePath")
                                     (file-mode :target-type
                                      file-mode-type-enum :member-name
                                      "fileMode"))
                                    (:shape-name "SymbolicLink"))

(smithy/sdk/shapes:define-list symbolic-link-list :member symbolic-link)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys-list :member tag-key)

(smithy/sdk/shapes:define-error tag-keys-list-required-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TagKeysListRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error tag-policy-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TagPolicyException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error tags-map-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TagsMapRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (source-reference :target-type
                                      reference-name :required common-lisp:t
                                      :member-name "sourceReference")
                                     (destination-reference :target-type
                                      reference-name :member-name
                                      "destinationReference"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-list target-list :member target)

(smithy/sdk/shapes:define-error target-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TargetRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error targets-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TargetsRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-input test-repository-triggers-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (triggers :target-type
                                  repository-triggers-list :required
                                  common-lisp:t :member-name "triggers"))
                                (:shape-name "TestRepositoryTriggersInput"))

(smithy/sdk/shapes:define-output test-repository-triggers-output
                                 common-lisp:nil
                                 ((successful-executions :target-type
                                   repository-trigger-name-list :member-name
                                   "successfulExecutions")
                                  (failed-executions :target-type
                                   repository-trigger-execution-failure-list
                                   :member-name "failedExecutions"))
                                 (:shape-name "TestRepositoryTriggersOutput"))

(smithy/sdk/shapes:define-error tip-of-source-reference-is-different-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name
                                 "TipOfSourceReferenceIsDifferentException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error tips-divergence-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TipsDivergenceExceededException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error title-required-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TitleRequiredException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class codecommit-error))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-keys-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-input update-approval-rule-template-content-input
                                common-lisp:nil
                                ((approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateName")
                                 (new-rule-content :target-type
                                  approval-rule-template-content :required
                                  common-lisp:t :member-name "newRuleContent")
                                 (existing-rule-content-sha256 :target-type
                                  rule-content-sha256 :member-name
                                  "existingRuleContentSha256"))
                                (:shape-name
                                 "UpdateApprovalRuleTemplateContentInput"))

(smithy/sdk/shapes:define-output update-approval-rule-template-content-output
                                 common-lisp:nil
                                 ((approval-rule-template :target-type
                                   approval-rule-template :required
                                   common-lisp:t :member-name
                                   "approvalRuleTemplate"))
                                 (:shape-name
                                  "UpdateApprovalRuleTemplateContentOutput"))

(smithy/sdk/shapes:define-input update-approval-rule-template-description-input
                                common-lisp:nil
                                ((approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateName")
                                 (approval-rule-template-description
                                  :target-type
                                  approval-rule-template-description :required
                                  common-lisp:t :member-name
                                  "approvalRuleTemplateDescription"))
                                (:shape-name
                                 "UpdateApprovalRuleTemplateDescriptionInput"))

(smithy/sdk/shapes:define-output
 update-approval-rule-template-description-output common-lisp:nil
 ((approval-rule-template :target-type approval-rule-template :required
   common-lisp:t :member-name "approvalRuleTemplate"))
 (:shape-name "UpdateApprovalRuleTemplateDescriptionOutput"))

(smithy/sdk/shapes:define-input update-approval-rule-template-name-input
                                common-lisp:nil
                                ((old-approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "oldApprovalRuleTemplateName")
                                 (new-approval-rule-template-name :target-type
                                  approval-rule-template-name :required
                                  common-lisp:t :member-name
                                  "newApprovalRuleTemplateName"))
                                (:shape-name
                                 "UpdateApprovalRuleTemplateNameInput"))

(smithy/sdk/shapes:define-output update-approval-rule-template-name-output
                                 common-lisp:nil
                                 ((approval-rule-template :target-type
                                   approval-rule-template :required
                                   common-lisp:t :member-name
                                   "approvalRuleTemplate"))
                                 (:shape-name
                                  "UpdateApprovalRuleTemplateNameOutput"))

(smithy/sdk/shapes:define-input update-comment-input common-lisp:nil
                                ((comment-id :target-type comment-id :required
                                  common-lisp:t :member-name "commentId")
                                 (content :target-type content :required
                                  common-lisp:t :member-name "content"))
                                (:shape-name "UpdateCommentInput"))

(smithy/sdk/shapes:define-output update-comment-output common-lisp:nil
                                 ((comment :target-type comment :member-name
                                   "comment"))
                                 (:shape-name "UpdateCommentOutput"))

(smithy/sdk/shapes:define-input update-default-branch-input common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (default-branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "defaultBranchName"))
                                (:shape-name "UpdateDefaultBranchInput"))

(smithy/sdk/shapes:define-input update-pull-request-approval-rule-content-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (approval-rule-name :target-type
                                  approval-rule-name :required common-lisp:t
                                  :member-name "approvalRuleName")
                                 (existing-rule-content-sha256 :target-type
                                  rule-content-sha256 :member-name
                                  "existingRuleContentSha256")
                                 (new-rule-content :target-type
                                  approval-rule-content :required common-lisp:t
                                  :member-name "newRuleContent"))
                                (:shape-name
                                 "UpdatePullRequestApprovalRuleContentInput"))

(smithy/sdk/shapes:define-output
 update-pull-request-approval-rule-content-output common-lisp:nil
 ((approval-rule :target-type approval-rule :required common-lisp:t
   :member-name "approvalRule"))
 (:shape-name "UpdatePullRequestApprovalRuleContentOutput"))

(smithy/sdk/shapes:define-input update-pull-request-approval-state-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (revision-id :target-type revision-id
                                  :required common-lisp:t :member-name
                                  "revisionId")
                                 (approval-state :target-type approval-state
                                  :required common-lisp:t :member-name
                                  "approvalState"))
                                (:shape-name
                                 "UpdatePullRequestApprovalStateInput"))

(smithy/sdk/shapes:define-input update-pull-request-description-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (description :target-type description
                                  :required common-lisp:t :member-name
                                  "description"))
                                (:shape-name
                                 "UpdatePullRequestDescriptionInput"))

(smithy/sdk/shapes:define-output update-pull-request-description-output
                                 common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :required common-lisp:t :member-name
                                   "pullRequest"))
                                 (:shape-name
                                  "UpdatePullRequestDescriptionOutput"))

(smithy/sdk/shapes:define-input update-pull-request-status-input
                                common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (pull-request-status :target-type
                                  pull-request-status-enum :required
                                  common-lisp:t :member-name
                                  "pullRequestStatus"))
                                (:shape-name "UpdatePullRequestStatusInput"))

(smithy/sdk/shapes:define-output update-pull-request-status-output
                                 common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :required common-lisp:t :member-name
                                   "pullRequest"))
                                 (:shape-name "UpdatePullRequestStatusOutput"))

(smithy/sdk/shapes:define-input update-pull-request-title-input common-lisp:nil
                                ((pull-request-id :target-type pull-request-id
                                  :required common-lisp:t :member-name
                                  "pullRequestId")
                                 (title :target-type title :required
                                  common-lisp:t :member-name "title"))
                                (:shape-name "UpdatePullRequestTitleInput"))

(smithy/sdk/shapes:define-output update-pull-request-title-output
                                 common-lisp:nil
                                 ((pull-request :target-type pull-request
                                   :required common-lisp:t :member-name
                                   "pullRequest"))
                                 (:shape-name "UpdatePullRequestTitleOutput"))

(smithy/sdk/shapes:define-input update-repository-description-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (repository-description :target-type
                                  repository-description :member-name
                                  "repositoryDescription"))
                                (:shape-name
                                 "UpdateRepositoryDescriptionInput"))

(smithy/sdk/shapes:define-input update-repository-encryption-key-input
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (kms-key-id :target-type kms-key-id :required
                                  common-lisp:t :member-name "kmsKeyId"))
                                (:shape-name
                                 "UpdateRepositoryEncryptionKeyInput"))

(smithy/sdk/shapes:define-output update-repository-encryption-key-output
                                 common-lisp:nil
                                 ((repository-id :target-type repository-id
                                   :member-name "repositoryId")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "kmsKeyId")
                                  (original-kms-key-id :target-type kms-key-id
                                   :member-name "originalKmsKeyId"))
                                 (:shape-name
                                  "UpdateRepositoryEncryptionKeyOutput"))

(smithy/sdk/shapes:define-input update-repository-name-input common-lisp:nil
                                ((old-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "oldName")
                                 (new-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "newName"))
                                (:shape-name "UpdateRepositoryNameInput"))

(smithy/sdk/shapes:define-structure user-info common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (email :target-type email :member-name
                                      "email")
                                     (date :target-type date :member-name
                                      "date"))
                                    (:shape-name "UserInfo"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/operation:define-operation
 associate-approval-rule-template-with-repository :shape-name
 "AssociateApprovalRuleTemplateWithRepository" :input
 associate-approval-rule-template-with-repository-input :output
 common-lisp:null :errors
 (approval-rule-template-does-not-exist-exception
  approval-rule-template-name-required-exception
  encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-approval-rule-template-name-exception
  invalid-repository-name-exception
  maximum-rule-templates-associated-with-repository-exception
  repository-does-not-exist-exception repository-name-required-exception))

(smithy/sdk/operation:define-operation
 batch-associate-approval-rule-template-with-repositories :shape-name
 "BatchAssociateApprovalRuleTemplateWithRepositories" :input
 batch-associate-approval-rule-template-with-repositories-input :output
 batch-associate-approval-rule-template-with-repositories-output :errors
 (approval-rule-template-does-not-exist-exception
  approval-rule-template-name-required-exception
  encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-approval-rule-template-name-exception
  maximum-repository-names-exceeded-exception
  repository-names-required-exception))

(smithy/sdk/operation:define-operation batch-describe-merge-conflicts
                                       :shape-name
                                       "BatchDescribeMergeConflicts" :input
                                       batch-describe-merge-conflicts-input
                                       :output
                                       batch-describe-merge-conflicts-output
                                       :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-continuation-token-exception
                                        invalid-max-conflict-files-exception
                                        invalid-max-merge-hunks-exception
                                        invalid-merge-option-exception
                                        invalid-repository-name-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        merge-option-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation
 batch-disassociate-approval-rule-template-from-repositories :shape-name
 "BatchDisassociateApprovalRuleTemplateFromRepositories" :input
 batch-disassociate-approval-rule-template-from-repositories-input :output
 batch-disassociate-approval-rule-template-from-repositories-output :errors
 (approval-rule-template-does-not-exist-exception
  approval-rule-template-name-required-exception
  encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-approval-rule-template-name-exception
  maximum-repository-names-exceeded-exception
  repository-names-required-exception))

(smithy/sdk/operation:define-operation batch-get-commits :shape-name
                                       "BatchGetCommits" :input
                                       batch-get-commits-input :output
                                       batch-get-commits-output :errors
                                       (commit-ids-limit-exceeded-exception
                                        commit-ids-list-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation batch-get-repositories :shape-name
                                       "BatchGetRepositories" :input
                                       batch-get-repositories-input :output
                                       batch-get-repositories-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        maximum-repository-names-exceeded-exception
                                        repository-names-required-exception))

(smithy/sdk/operation:define-operation create-approval-rule-template
                                       :shape-name "CreateApprovalRuleTemplate"
                                       :input
                                       create-approval-rule-template-input
                                       :output
                                       create-approval-rule-template-output
                                       :errors
                                       (approval-rule-template-content-required-exception
                                        approval-rule-template-name-already-exists-exception
                                        approval-rule-template-name-required-exception
                                        invalid-approval-rule-template-content-exception
                                        invalid-approval-rule-template-description-exception
                                        invalid-approval-rule-template-name-exception
                                        number-of-rule-templates-exceeded-exception))

(smithy/sdk/operation:define-operation create-branch :shape-name "CreateBranch"
                                       :input create-branch-input :output
                                       common-lisp:null :errors
                                       (branch-name-exists-exception
                                        branch-name-required-exception
                                        commit-does-not-exist-exception
                                        commit-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-branch-name-exception
                                        invalid-commit-id-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation create-commit :shape-name "CreateCommit"
                                       :input create-commit-input :output
                                       create-commit-output :errors
                                       (branch-does-not-exist-exception
                                        branch-name-is-tag-name-exception
                                        branch-name-required-exception
                                        commit-message-length-exceeded-exception
                                        directory-name-conflicts-with-file-name-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-and-source-file-specified-exception
                                        file-content-size-limit-exceeded-exception
                                        file-does-not-exist-exception
                                        file-entry-required-exception
                                        file-mode-required-exception
                                        file-name-conflicts-with-directory-name-exception
                                        file-path-conflicts-with-submodule-path-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-branch-name-exception
                                        invalid-deletion-parameter-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-parent-commit-id-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        maximum-file-entries-exceeded-exception
                                        name-length-exceeded-exception
                                        no-change-exception
                                        parent-commit-does-not-exist-exception
                                        parent-commit-id-outdated-exception
                                        parent-commit-id-required-exception
                                        path-required-exception
                                        put-file-entry-conflict-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        restricted-source-file-exception
                                        same-path-request-exception
                                        source-file-or-content-required-exception))

(smithy/sdk/operation:define-operation create-pull-request :shape-name
                                       "CreatePullRequest" :input
                                       create-pull-request-input :output
                                       create-pull-request-output :errors
                                       (client-request-token-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        idempotency-parameter-mismatch-exception
                                        invalid-client-request-token-exception
                                        invalid-description-exception
                                        invalid-reference-name-exception
                                        invalid-repository-name-exception
                                        invalid-target-exception
                                        invalid-targets-exception
                                        invalid-title-exception
                                        maximum-open-pull-requests-exceeded-exception
                                        multiple-repositories-in-pull-request-exception
                                        reference-does-not-exist-exception
                                        reference-name-required-exception
                                        reference-type-not-supported-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        source-and-destination-are-same-exception
                                        target-required-exception
                                        targets-required-exception
                                        title-required-exception))

(smithy/sdk/operation:define-operation create-pull-request-approval-rule
                                       :shape-name
                                       "CreatePullRequestApprovalRule" :input
                                       create-pull-request-approval-rule-input
                                       :output
                                       create-pull-request-approval-rule-output
                                       :errors
                                       (approval-rule-content-required-exception
                                        approval-rule-name-already-exists-exception
                                        approval-rule-name-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-approval-rule-content-exception
                                        invalid-approval-rule-name-exception
                                        invalid-pull-request-id-exception
                                        number-of-rules-exceeded-exception
                                        pull-request-already-closed-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception))

(smithy/sdk/operation:define-operation create-repository :shape-name
                                       "CreateRepository" :input
                                       create-repository-input :output
                                       create-repository-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-invalid-id-exception
                                        encryption-key-invalid-usage-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-description-exception
                                        invalid-repository-name-exception
                                        invalid-system-tag-usage-exception
                                        invalid-tags-map-exception
                                        operation-not-allowed-exception
                                        repository-limit-exceeded-exception
                                        repository-name-exists-exception
                                        repository-name-required-exception
                                        tag-policy-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-unreferenced-merge-commit
                                       :shape-name
                                       "CreateUnreferencedMergeCommit" :input
                                       create-unreferenced-merge-commit-input
                                       :output
                                       create-unreferenced-merge-commit-output
                                       :errors
                                       (commit-does-not-exist-exception
                                        commit-message-length-exceeded-exception
                                        commit-required-exception
                                        concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-size-limit-exceeded-exception
                                        file-mode-required-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-merge-option-exception
                                        invalid-path-exception
                                        invalid-replacement-content-exception
                                        invalid-replacement-type-exception
                                        invalid-repository-name-exception
                                        manual-merge-required-exception
                                        maximum-conflict-resolution-entries-exceeded-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        merge-option-required-exception
                                        multiple-conflict-resolution-entries-exception
                                        name-length-exceeded-exception
                                        path-required-exception
                                        replacement-content-required-exception
                                        replacement-type-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation delete-approval-rule-template
                                       :shape-name "DeleteApprovalRuleTemplate"
                                       :input
                                       delete-approval-rule-template-input
                                       :output
                                       delete-approval-rule-template-output
                                       :errors
                                       (approval-rule-template-in-use-exception
                                        approval-rule-template-name-required-exception
                                        invalid-approval-rule-template-name-exception))

(smithy/sdk/operation:define-operation delete-branch :shape-name "DeleteBranch"
                                       :input delete-branch-input :output
                                       delete-branch-output :errors
                                       (branch-name-required-exception
                                        default-branch-cannot-be-deleted-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-branch-name-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation delete-comment-content :shape-name
                                       "DeleteCommentContent" :input
                                       delete-comment-content-input :output
                                       delete-comment-content-output :errors
                                       (comment-deleted-exception
                                        comment-does-not-exist-exception
                                        comment-id-required-exception
                                        invalid-comment-id-exception))

(smithy/sdk/operation:define-operation delete-file :shape-name "DeleteFile"
                                       :input delete-file-input :output
                                       delete-file-output :errors
                                       (branch-does-not-exist-exception
                                        branch-name-is-tag-name-exception
                                        branch-name-required-exception
                                        commit-message-length-exceeded-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-does-not-exist-exception
                                        invalid-branch-name-exception
                                        invalid-email-exception
                                        invalid-parent-commit-id-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        name-length-exceeded-exception
                                        parent-commit-does-not-exist-exception
                                        parent-commit-id-outdated-exception
                                        parent-commit-id-required-exception
                                        path-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation delete-pull-request-approval-rule
                                       :shape-name
                                       "DeletePullRequestApprovalRule" :input
                                       delete-pull-request-approval-rule-input
                                       :output
                                       delete-pull-request-approval-rule-output
                                       :errors
                                       (approval-rule-name-required-exception
                                        cannot-delete-approval-rule-from-template-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-approval-rule-name-exception
                                        invalid-pull-request-id-exception
                                        pull-request-already-closed-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception))

(smithy/sdk/operation:define-operation delete-repository :shape-name
                                       "DeleteRepository" :input
                                       delete-repository-input :output
                                       delete-repository-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation describe-merge-conflicts :shape-name
                                       "DescribeMergeConflicts" :input
                                       describe-merge-conflicts-input :output
                                       describe-merge-conflicts-output :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-does-not-exist-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-continuation-token-exception
                                        invalid-max-merge-hunks-exception
                                        invalid-merge-option-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        merge-option-required-exception
                                        path-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation describe-pull-request-events :shape-name
                                       "DescribePullRequestEvents" :input
                                       describe-pull-request-events-input
                                       :output
                                       describe-pull-request-events-output
                                       :errors
                                       (actor-does-not-exist-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-actor-arn-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-pull-request-event-type-exception
                                        invalid-pull-request-id-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception))

(smithy/sdk/operation:define-operation
 disassociate-approval-rule-template-from-repository :shape-name
 "DisassociateApprovalRuleTemplateFromRepository" :input
 disassociate-approval-rule-template-from-repository-input :output
 common-lisp:null :errors
 (approval-rule-template-does-not-exist-exception
  approval-rule-template-name-required-exception
  encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-approval-rule-template-name-exception
  invalid-repository-name-exception repository-does-not-exist-exception
  repository-name-required-exception))

(smithy/sdk/operation:define-operation evaluate-pull-request-approval-rules
                                       :shape-name
                                       "EvaluatePullRequestApprovalRules"
                                       :input
                                       evaluate-pull-request-approval-rules-input
                                       :output
                                       evaluate-pull-request-approval-rules-output
                                       :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-pull-request-id-exception
                                        invalid-revision-id-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        revision-id-required-exception
                                        revision-not-current-exception))

(smithy/sdk/operation:define-operation get-approval-rule-template :shape-name
                                       "GetApprovalRuleTemplate" :input
                                       get-approval-rule-template-input :output
                                       get-approval-rule-template-output
                                       :errors
                                       (approval-rule-template-does-not-exist-exception
                                        approval-rule-template-name-required-exception
                                        invalid-approval-rule-template-name-exception))

(smithy/sdk/operation:define-operation get-blob :shape-name "GetBlob" :input
                                       get-blob-input :output get-blob-output
                                       :errors
                                       (blob-id-does-not-exist-exception
                                        blob-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-too-large-exception
                                        invalid-blob-id-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-branch :shape-name "GetBranch"
                                       :input get-branch-input :output
                                       get-branch-output :errors
                                       (branch-does-not-exist-exception
                                        branch-name-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-branch-name-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-comment :shape-name "GetComment"
                                       :input get-comment-input :output
                                       get-comment-output :errors
                                       (comment-deleted-exception
                                        comment-does-not-exist-exception
                                        comment-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-comment-id-exception))

(smithy/sdk/operation:define-operation get-comment-reactions :shape-name
                                       "GetCommentReactions" :input
                                       get-comment-reactions-input :output
                                       get-comment-reactions-output :errors
                                       (comment-deleted-exception
                                        comment-does-not-exist-exception
                                        comment-id-required-exception
                                        invalid-comment-id-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-reaction-user-arn-exception))

(smithy/sdk/operation:define-operation get-comments-for-compared-commit
                                       :shape-name
                                       "GetCommentsForComparedCommit" :input
                                       get-comments-for-compared-commit-input
                                       :output
                                       get-comments-for-compared-commit-output
                                       :errors
                                       (commit-does-not-exist-exception
                                        commit-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-id-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-comments-for-pull-request
                                       :shape-name "GetCommentsForPullRequest"
                                       :input
                                       get-comments-for-pull-request-input
                                       :output
                                       get-comments-for-pull-request-output
                                       :errors
                                       (commit-does-not-exist-exception
                                        commit-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-id-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-pull-request-id-exception
                                        invalid-repository-name-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-not-associated-with-pull-request-exception))

(smithy/sdk/operation:define-operation get-commit :shape-name "GetCommit"
                                       :input get-commit-input :output
                                       get-commit-output :errors
                                       (commit-id-does-not-exist-exception
                                        commit-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-id-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-differences :shape-name
                                       "GetDifferences" :input
                                       get-differences-input :output
                                       get-differences-output :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-exception
                                        invalid-commit-id-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        path-does-not-exist-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-file :shape-name "GetFile" :input
                                       get-file-input :output get-file-output
                                       :errors
                                       (commit-does-not-exist-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-does-not-exist-exception
                                        file-too-large-exception
                                        invalid-commit-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        path-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-folder :shape-name "GetFolder"
                                       :input get-folder-input :output
                                       get-folder-output :errors
                                       (commit-does-not-exist-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        folder-does-not-exist-exception
                                        invalid-commit-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        path-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-merge-commit :shape-name
                                       "GetMergeCommit" :input
                                       get-merge-commit-input :output
                                       get-merge-commit-output :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-merge-conflicts :shape-name
                                       "GetMergeConflicts" :input
                                       get-merge-conflicts-input :output
                                       get-merge-conflicts-output :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-continuation-token-exception
                                        invalid-destination-commit-specifier-exception
                                        invalid-max-conflict-files-exception
                                        invalid-merge-option-exception
                                        invalid-repository-name-exception
                                        invalid-source-commit-specifier-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        merge-option-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation get-merge-options :shape-name
                                       "GetMergeOptions" :input
                                       get-merge-options-input :output
                                       get-merge-options-output :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-repository-name-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation get-pull-request :shape-name
                                       "GetPullRequest" :input
                                       get-pull-request-input :output
                                       get-pull-request-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-pull-request-id-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception))

(smithy/sdk/operation:define-operation get-pull-request-approval-states
                                       :shape-name
                                       "GetPullRequestApprovalStates" :input
                                       get-pull-request-approval-states-input
                                       :output
                                       get-pull-request-approval-states-output
                                       :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-pull-request-id-exception
                                        invalid-revision-id-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        revision-id-required-exception))

(smithy/sdk/operation:define-operation get-pull-request-override-state
                                       :shape-name
                                       "GetPullRequestOverrideState" :input
                                       get-pull-request-override-state-input
                                       :output
                                       get-pull-request-override-state-output
                                       :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-pull-request-id-exception
                                        invalid-revision-id-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        revision-id-required-exception))

(smithy/sdk/operation:define-operation get-repository :shape-name
                                       "GetRepository" :input
                                       get-repository-input :output
                                       get-repository-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation get-repository-triggers :shape-name
                                       "GetRepositoryTriggers" :input
                                       get-repository-triggers-input :output
                                       get-repository-triggers-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation list-approval-rule-templates :shape-name
                                       "ListApprovalRuleTemplates" :input
                                       list-approval-rule-templates-input
                                       :output
                                       list-approval-rule-templates-output
                                       :errors
                                       (invalid-continuation-token-exception
                                        invalid-max-results-exception))

(smithy/sdk/operation:define-operation
 list-associated-approval-rule-templates-for-repository :shape-name
 "ListAssociatedApprovalRuleTemplatesForRepository" :input
 list-associated-approval-rule-templates-for-repository-input :output
 list-associated-approval-rule-templates-for-repository-output :errors
 (encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-continuation-token-exception invalid-max-results-exception
  invalid-repository-name-exception repository-does-not-exist-exception
  repository-name-required-exception))

(smithy/sdk/operation:define-operation list-branches :shape-name "ListBranches"
                                       :input list-branches-input :output
                                       list-branches-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-continuation-token-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation list-file-commit-history :shape-name
                                       "ListFileCommitHistory" :input
                                       list-file-commit-history-request :output
                                       list-file-commit-history-response
                                       :errors
                                       (commit-does-not-exist-exception
                                        commit-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation list-pull-requests :shape-name
                                       "ListPullRequests" :input
                                       list-pull-requests-input :output
                                       list-pull-requests-output :errors
                                       (author-does-not-exist-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-author-arn-exception
                                        invalid-continuation-token-exception
                                        invalid-max-results-exception
                                        invalid-pull-request-status-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation list-repositories :shape-name
                                       "ListRepositories" :input
                                       list-repositories-input :output
                                       list-repositories-output :errors
                                       (invalid-continuation-token-exception
                                        invalid-order-exception
                                        invalid-sort-by-exception))

(smithy/sdk/operation:define-operation
 list-repositories-for-approval-rule-template :shape-name
 "ListRepositoriesForApprovalRuleTemplate" :input
 list-repositories-for-approval-rule-template-input :output
 list-repositories-for-approval-rule-template-output :errors
 (approval-rule-template-does-not-exist-exception
  approval-rule-template-name-required-exception
  encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-approval-rule-template-name-exception
  invalid-continuation-token-exception invalid-max-results-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (invalid-repository-name-exception
                                        invalid-resource-arn-exception
                                        repository-does-not-exist-exception
                                        resource-arn-required-exception))

(smithy/sdk/operation:define-operation merge-branches-by-fast-forward
                                       :shape-name "MergeBranchesByFastForward"
                                       :input
                                       merge-branches-by-fast-forward-input
                                       :output
                                       merge-branches-by-fast-forward-output
                                       :errors
                                       (branch-does-not-exist-exception
                                        branch-name-is-tag-name-exception
                                        branch-name-required-exception
                                        commit-does-not-exist-exception
                                        commit-required-exception
                                        concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-branch-name-exception
                                        invalid-commit-exception
                                        invalid-repository-name-exception
                                        invalid-target-branch-exception
                                        manual-merge-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation merge-branches-by-squash :shape-name
                                       "MergeBranchesBySquash" :input
                                       merge-branches-by-squash-input :output
                                       merge-branches-by-squash-output :errors
                                       (branch-does-not-exist-exception
                                        branch-name-is-tag-name-exception
                                        branch-name-required-exception
                                        commit-does-not-exist-exception
                                        commit-message-length-exceeded-exception
                                        commit-required-exception
                                        concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-size-limit-exceeded-exception
                                        file-mode-required-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-branch-name-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-path-exception
                                        invalid-replacement-content-exception
                                        invalid-replacement-type-exception
                                        invalid-repository-name-exception
                                        invalid-target-branch-exception
                                        manual-merge-required-exception
                                        maximum-conflict-resolution-entries-exceeded-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        multiple-conflict-resolution-entries-exception
                                        name-length-exceeded-exception
                                        path-required-exception
                                        replacement-content-required-exception
                                        replacement-type-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation merge-branches-by-three-way :shape-name
                                       "MergeBranchesByThreeWay" :input
                                       merge-branches-by-three-way-input
                                       :output
                                       merge-branches-by-three-way-output
                                       :errors
                                       (branch-does-not-exist-exception
                                        branch-name-is-tag-name-exception
                                        branch-name-required-exception
                                        commit-does-not-exist-exception
                                        commit-message-length-exceeded-exception
                                        commit-required-exception
                                        concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-size-limit-exceeded-exception
                                        file-mode-required-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-branch-name-exception
                                        invalid-commit-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-path-exception
                                        invalid-replacement-content-exception
                                        invalid-replacement-type-exception
                                        invalid-repository-name-exception
                                        invalid-target-branch-exception
                                        manual-merge-required-exception
                                        maximum-conflict-resolution-entries-exceeded-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        multiple-conflict-resolution-entries-exception
                                        name-length-exceeded-exception
                                        path-required-exception
                                        replacement-content-required-exception
                                        replacement-type-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation merge-pull-request-by-fast-forward
                                       :shape-name
                                       "MergePullRequestByFastForward" :input
                                       merge-pull-request-by-fast-forward-input
                                       :output
                                       merge-pull-request-by-fast-forward-output
                                       :errors
                                       (concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-commit-id-exception
                                        invalid-pull-request-id-exception
                                        invalid-repository-name-exception
                                        manual-merge-required-exception
                                        pull-request-already-closed-exception
                                        pull-request-approval-rules-not-satisfied-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        reference-does-not-exist-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-not-associated-with-pull-request-exception
                                        tip-of-source-reference-is-different-exception))

(smithy/sdk/operation:define-operation merge-pull-request-by-squash :shape-name
                                       "MergePullRequestBySquash" :input
                                       merge-pull-request-by-squash-input
                                       :output
                                       merge-pull-request-by-squash-output
                                       :errors
                                       (commit-message-length-exceeded-exception
                                        concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-size-limit-exceeded-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-commit-id-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-path-exception
                                        invalid-pull-request-id-exception
                                        invalid-replacement-content-exception
                                        invalid-replacement-type-exception
                                        invalid-repository-name-exception
                                        manual-merge-required-exception
                                        maximum-conflict-resolution-entries-exceeded-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        multiple-conflict-resolution-entries-exception
                                        name-length-exceeded-exception
                                        path-required-exception
                                        pull-request-already-closed-exception
                                        pull-request-approval-rules-not-satisfied-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        replacement-content-required-exception
                                        replacement-type-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-not-associated-with-pull-request-exception
                                        tip-of-source-reference-is-different-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation merge-pull-request-by-three-way
                                       :shape-name "MergePullRequestByThreeWay"
                                       :input
                                       merge-pull-request-by-three-way-input
                                       :output
                                       merge-pull-request-by-three-way-output
                                       :errors
                                       (commit-message-length-exceeded-exception
                                        concurrent-reference-update-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-size-limit-exceeded-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-commit-id-exception
                                        invalid-conflict-detail-level-exception
                                        invalid-conflict-resolution-exception
                                        invalid-conflict-resolution-strategy-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-path-exception
                                        invalid-pull-request-id-exception
                                        invalid-replacement-content-exception
                                        invalid-replacement-type-exception
                                        invalid-repository-name-exception
                                        manual-merge-required-exception
                                        maximum-conflict-resolution-entries-exceeded-exception
                                        maximum-file-content-to-load-exceeded-exception
                                        maximum-items-to-compare-exceeded-exception
                                        multiple-conflict-resolution-entries-exception
                                        name-length-exceeded-exception
                                        path-required-exception
                                        pull-request-already-closed-exception
                                        pull-request-approval-rules-not-satisfied-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        replacement-content-required-exception
                                        replacement-type-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-not-associated-with-pull-request-exception
                                        tip-of-source-reference-is-different-exception
                                        tips-divergence-exceeded-exception))

(smithy/sdk/operation:define-operation override-pull-request-approval-rules
                                       :shape-name
                                       "OverridePullRequestApprovalRules"
                                       :input
                                       override-pull-request-approval-rules-input
                                       :output common-lisp:null :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-override-status-exception
                                        invalid-pull-request-id-exception
                                        invalid-revision-id-exception
                                        override-already-set-exception
                                        override-status-required-exception
                                        pull-request-already-closed-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        revision-id-required-exception
                                        revision-not-current-exception))

(smithy/sdk/operation:define-operation post-comment-for-compared-commit
                                       :shape-name
                                       "PostCommentForComparedCommit" :input
                                       post-comment-for-compared-commit-input
                                       :output
                                       post-comment-for-compared-commit-output
                                       :errors
                                       (before-commit-id-and-after-commit-id-are-same-exception
                                        client-request-token-required-exception
                                        comment-content-required-exception
                                        comment-content-size-limit-exceeded-exception
                                        commit-does-not-exist-exception
                                        commit-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        idempotency-parameter-mismatch-exception
                                        invalid-client-request-token-exception
                                        invalid-commit-id-exception
                                        invalid-file-location-exception
                                        invalid-file-position-exception
                                        invalid-path-exception
                                        invalid-relative-file-version-enum-exception
                                        invalid-repository-name-exception
                                        path-does-not-exist-exception
                                        path-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation post-comment-for-pull-request
                                       :shape-name "PostCommentForPullRequest"
                                       :input
                                       post-comment-for-pull-request-input
                                       :output
                                       post-comment-for-pull-request-output
                                       :errors
                                       (before-commit-id-and-after-commit-id-are-same-exception
                                        client-request-token-required-exception
                                        comment-content-required-exception
                                        comment-content-size-limit-exceeded-exception
                                        commit-does-not-exist-exception
                                        commit-id-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        idempotency-parameter-mismatch-exception
                                        invalid-client-request-token-exception
                                        invalid-commit-id-exception
                                        invalid-file-location-exception
                                        invalid-file-position-exception
                                        invalid-path-exception
                                        invalid-pull-request-id-exception
                                        invalid-relative-file-version-enum-exception
                                        invalid-repository-name-exception
                                        path-does-not-exist-exception
                                        path-required-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-not-associated-with-pull-request-exception))

(smithy/sdk/operation:define-operation post-comment-reply :shape-name
                                       "PostCommentReply" :input
                                       post-comment-reply-input :output
                                       post-comment-reply-output :errors
                                       (client-request-token-required-exception
                                        comment-content-required-exception
                                        comment-content-size-limit-exceeded-exception
                                        comment-does-not-exist-exception
                                        comment-id-required-exception
                                        idempotency-parameter-mismatch-exception
                                        invalid-client-request-token-exception
                                        invalid-comment-id-exception))

(smithy/sdk/operation:define-operation put-comment-reaction :shape-name
                                       "PutCommentReaction" :input
                                       put-comment-reaction-input :output
                                       common-lisp:null :errors
                                       (comment-deleted-exception
                                        comment-does-not-exist-exception
                                        comment-id-required-exception
                                        invalid-comment-id-exception
                                        invalid-reaction-value-exception
                                        reaction-limit-exceeded-exception
                                        reaction-value-required-exception))

(smithy/sdk/operation:define-operation put-file :shape-name "PutFile" :input
                                       put-file-input :output put-file-output
                                       :errors
                                       (branch-does-not-exist-exception
                                        branch-name-is-tag-name-exception
                                        branch-name-required-exception
                                        commit-message-length-exceeded-exception
                                        directory-name-conflicts-with-file-name-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        file-content-required-exception
                                        file-content-size-limit-exceeded-exception
                                        file-name-conflicts-with-directory-name-exception
                                        file-path-conflicts-with-submodule-path-exception
                                        folder-content-size-limit-exceeded-exception
                                        invalid-branch-name-exception
                                        invalid-deletion-parameter-exception
                                        invalid-email-exception
                                        invalid-file-mode-exception
                                        invalid-parent-commit-id-exception
                                        invalid-path-exception
                                        invalid-repository-name-exception
                                        name-length-exceeded-exception
                                        parent-commit-does-not-exist-exception
                                        parent-commit-id-outdated-exception
                                        parent-commit-id-required-exception
                                        path-required-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        same-file-content-exception))

(smithy/sdk/operation:define-operation put-repository-triggers :shape-name
                                       "PutRepositoryTriggers" :input
                                       put-repository-triggers-input :output
                                       put-repository-triggers-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        invalid-repository-trigger-branch-name-exception
                                        invalid-repository-trigger-custom-data-exception
                                        invalid-repository-trigger-destination-arn-exception
                                        invalid-repository-trigger-events-exception
                                        invalid-repository-trigger-name-exception
                                        invalid-repository-trigger-region-exception
                                        maximum-branches-exceeded-exception
                                        maximum-repository-triggers-exceeded-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-trigger-branch-name-list-required-exception
                                        repository-trigger-destination-arn-required-exception
                                        repository-trigger-events-list-required-exception
                                        repository-trigger-name-required-exception
                                        repository-triggers-list-required-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (invalid-repository-name-exception
                                        invalid-resource-arn-exception
                                        invalid-system-tag-usage-exception
                                        invalid-tags-map-exception
                                        repository-does-not-exist-exception
                                        resource-arn-required-exception
                                        tag-policy-exception
                                        tags-map-required-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation test-repository-triggers :shape-name
                                       "TestRepositoryTriggers" :input
                                       test-repository-triggers-input :output
                                       test-repository-triggers-output :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        invalid-repository-trigger-branch-name-exception
                                        invalid-repository-trigger-custom-data-exception
                                        invalid-repository-trigger-destination-arn-exception
                                        invalid-repository-trigger-events-exception
                                        invalid-repository-trigger-name-exception
                                        invalid-repository-trigger-region-exception
                                        maximum-branches-exceeded-exception
                                        maximum-repository-triggers-exceeded-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception
                                        repository-trigger-branch-name-list-required-exception
                                        repository-trigger-destination-arn-required-exception
                                        repository-trigger-events-list-required-exception
                                        repository-trigger-name-required-exception
                                        repository-triggers-list-required-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (invalid-repository-name-exception
                                        invalid-resource-arn-exception
                                        invalid-system-tag-usage-exception
                                        invalid-tag-keys-list-exception
                                        repository-does-not-exist-exception
                                        resource-arn-required-exception
                                        tag-keys-list-required-exception
                                        tag-policy-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation update-approval-rule-template-content
                                       :shape-name
                                       "UpdateApprovalRuleTemplateContent"
                                       :input
                                       update-approval-rule-template-content-input
                                       :output
                                       update-approval-rule-template-content-output
                                       :errors
                                       (approval-rule-template-content-required-exception
                                        approval-rule-template-does-not-exist-exception
                                        approval-rule-template-name-required-exception
                                        invalid-approval-rule-template-content-exception
                                        invalid-approval-rule-template-name-exception
                                        invalid-rule-content-sha256exception))

(smithy/sdk/operation:define-operation
 update-approval-rule-template-description :shape-name
 "UpdateApprovalRuleTemplateDescription" :input
 update-approval-rule-template-description-input :output
 update-approval-rule-template-description-output :errors
 (approval-rule-template-does-not-exist-exception
  approval-rule-template-name-required-exception
  invalid-approval-rule-template-description-exception
  invalid-approval-rule-template-name-exception))

(smithy/sdk/operation:define-operation update-approval-rule-template-name
                                       :shape-name
                                       "UpdateApprovalRuleTemplateName" :input
                                       update-approval-rule-template-name-input
                                       :output
                                       update-approval-rule-template-name-output
                                       :errors
                                       (approval-rule-template-does-not-exist-exception
                                        approval-rule-template-name-already-exists-exception
                                        approval-rule-template-name-required-exception
                                        invalid-approval-rule-template-name-exception))

(smithy/sdk/operation:define-operation update-comment :shape-name
                                       "UpdateComment" :input
                                       update-comment-input :output
                                       update-comment-output :errors
                                       (comment-content-required-exception
                                        comment-content-size-limit-exceeded-exception
                                        comment-deleted-exception
                                        comment-does-not-exist-exception
                                        comment-id-required-exception
                                        comment-not-created-by-caller-exception
                                        invalid-comment-id-exception))

(smithy/sdk/operation:define-operation update-default-branch :shape-name
                                       "UpdateDefaultBranch" :input
                                       update-default-branch-input :output
                                       common-lisp:null :errors
                                       (branch-does-not-exist-exception
                                        branch-name-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-branch-name-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation
 update-pull-request-approval-rule-content :shape-name
 "UpdatePullRequestApprovalRuleContent" :input
 update-pull-request-approval-rule-content-input :output
 update-pull-request-approval-rule-content-output :errors
 (approval-rule-content-required-exception
  approval-rule-does-not-exist-exception approval-rule-name-required-exception
  cannot-modify-approval-rule-from-template-exception
  encryption-integrity-checks-failed-exception
  encryption-key-access-denied-exception encryption-key-disabled-exception
  encryption-key-not-found-exception encryption-key-unavailable-exception
  invalid-approval-rule-content-exception invalid-approval-rule-name-exception
  invalid-pull-request-id-exception invalid-rule-content-sha256exception
  pull-request-already-closed-exception pull-request-does-not-exist-exception
  pull-request-id-required-exception))

(smithy/sdk/operation:define-operation update-pull-request-approval-state
                                       :shape-name
                                       "UpdatePullRequestApprovalState" :input
                                       update-pull-request-approval-state-input
                                       :output common-lisp:null :errors
                                       (approval-state-required-exception
                                        encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-approval-state-exception
                                        invalid-pull-request-id-exception
                                        invalid-revision-id-exception
                                        maximum-number-of-approvals-exceeded-exception
                                        pull-request-already-closed-exception
                                        pull-request-cannot-be-approved-by-author-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        revision-id-required-exception
                                        revision-not-current-exception))

(smithy/sdk/operation:define-operation update-pull-request-description
                                       :shape-name
                                       "UpdatePullRequestDescription" :input
                                       update-pull-request-description-input
                                       :output
                                       update-pull-request-description-output
                                       :errors
                                       (invalid-description-exception
                                        invalid-pull-request-id-exception
                                        pull-request-already-closed-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception))

(smithy/sdk/operation:define-operation update-pull-request-status :shape-name
                                       "UpdatePullRequestStatus" :input
                                       update-pull-request-status-input :output
                                       update-pull-request-status-output
                                       :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-pull-request-id-exception
                                        invalid-pull-request-status-exception
                                        invalid-pull-request-status-update-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        pull-request-status-required-exception))

(smithy/sdk/operation:define-operation update-pull-request-title :shape-name
                                       "UpdatePullRequestTitle" :input
                                       update-pull-request-title-input :output
                                       update-pull-request-title-output :errors
                                       (invalid-pull-request-id-exception
                                        invalid-title-exception
                                        pull-request-already-closed-exception
                                        pull-request-does-not-exist-exception
                                        pull-request-id-required-exception
                                        title-required-exception))

(smithy/sdk/operation:define-operation update-repository-description
                                       :shape-name
                                       "UpdateRepositoryDescription" :input
                                       update-repository-description-input
                                       :output common-lisp:null :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-not-found-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-description-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation update-repository-encryption-key
                                       :shape-name
                                       "UpdateRepositoryEncryptionKey" :input
                                       update-repository-encryption-key-input
                                       :output
                                       update-repository-encryption-key-output
                                       :errors
                                       (encryption-integrity-checks-failed-exception
                                        encryption-key-access-denied-exception
                                        encryption-key-disabled-exception
                                        encryption-key-invalid-id-exception
                                        encryption-key-invalid-usage-exception
                                        encryption-key-not-found-exception
                                        encryption-key-required-exception
                                        encryption-key-unavailable-exception
                                        invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-required-exception))

(smithy/sdk/operation:define-operation update-repository-name :shape-name
                                       "UpdateRepositoryName" :input
                                       update-repository-name-input :output
                                       common-lisp:null :errors
                                       (invalid-repository-name-exception
                                        repository-does-not-exist-exception
                                        repository-name-exists-exception
                                        repository-name-required-exception))
