(uiop/package:define-package #:pira/rbin (:use)
                             (:export #:amazon-recycle-bin
                              #:conflict-exception-reason #:create-rule
                              #:delete-rule #:description #:error-message
                              #:exclude-resource-tags #:get-rule #:list-rules
                              #:list-tags-for-resource #:lock-configuration
                              #:lock-rule #:lock-state #:max-results
                              #:next-token
                              #:resource-not-found-exception-reason
                              #:resource-tag #:resource-tag-key
                              #:resource-tag-value #:resource-tags
                              #:resource-type #:retention-period
                              #:retention-period-unit #:retention-period-value
                              #:rule-arn #:rule-identifier #:rule-status
                              #:rule-summary #:rule-summary-list
                              #:service-quota-exceeded-exception-reason #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:time-stamp
                              #:unlock-delay #:unlock-delay-unit
                              #:unlock-delay-value #:unlock-rule
                              #:untag-resource #:update-rule
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/rbin)

(smithy/sdk/service:define-service amazon-recycle-bin :shape-name
                                   "AmazonRecycleBin" :version "2021-06-15"
                                   :title "Amazon Recycle Bin" :traits
                                   '(("aws.api#service" ("sdkId" . "rbin")
                                      ("arnNamespace" . "rbin")
                                      ("cloudFormationName" . "Rbin")
                                      ("cloudTrailEventSource"
                                       . "rbin.amazonaws.com")
                                      ("endpointPrefix" . "rbin"))
                                     ("aws.auth#sigv4" ("name" . "rbin"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type conflict-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conflict-exception-reason
    common-lisp:nil
  (:invalid-rule-state "INVALID_RULE_STATE"))

(smithy/sdk/shapes:define-input create-rule-request common-lisp:nil
                                ((retention-period :target-type
                                  retention-period :required common-lisp:t
                                  :member-name "RetentionPeriod")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-tags :target-type resource-tags
                                  :member-name "ResourceTags")
                                 (lock-configuration :target-type
                                  lock-configuration :member-name
                                  "LockConfiguration")
                                 (exclude-resource-tags :target-type
                                  exclude-resource-tags :member-name
                                  "ExcludeResourceTags"))
                                (:shape-name "CreateRuleRequest"))

(smithy/sdk/shapes:define-output create-rule-response common-lisp:nil
                                 ((identifier :target-type rule-identifier
                                   :member-name "Identifier")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (description :target-type description
                                   :member-name "Description")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (resource-tags :target-type resource-tags
                                   :member-name "ResourceTags")
                                  (status :target-type rule-status :member-name
                                   "Status")
                                  (lock-configuration :target-type
                                   lock-configuration :member-name
                                   "LockConfiguration")
                                  (lock-state :target-type lock-state
                                   :member-name "LockState")
                                  (rule-arn :target-type rule-arn :member-name
                                   "RuleArn")
                                  (exclude-resource-tags :target-type
                                   exclude-resource-tags :member-name
                                   "ExcludeResourceTags"))
                                 (:shape-name "CreateRuleResponse"))

(smithy/sdk/shapes:define-input delete-rule-request common-lisp:nil
                                ((identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteRuleRequest"))

(smithy/sdk/shapes:define-output delete-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRuleResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exclude-resource-tags :member resource-tag)

(smithy/sdk/shapes:define-input get-rule-request common-lisp:nil
                                ((identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "GetRuleRequest"))

(smithy/sdk/shapes:define-output get-rule-response common-lisp:nil
                                 ((identifier :target-type rule-identifier
                                   :member-name "Identifier")
                                  (description :target-type description
                                   :member-name "Description")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (resource-tags :target-type resource-tags
                                   :member-name "ResourceTags")
                                  (status :target-type rule-status :member-name
                                   "Status")
                                  (lock-configuration :target-type
                                   lock-configuration :member-name
                                   "LockConfiguration")
                                  (lock-state :target-type lock-state
                                   :member-name "LockState")
                                  (lock-end-time :target-type time-stamp
                                   :member-name "LockEndTime")
                                  (rule-arn :target-type rule-arn :member-name
                                   "RuleArn")
                                  (exclude-resource-tags :target-type
                                   exclude-resource-tags :member-name
                                   "ExcludeResourceTags"))
                                 (:shape-name "GetRuleResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-rules-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (resource-tags :target-type resource-tags
                                  :member-name "ResourceTags")
                                 (lock-state :target-type lock-state
                                  :member-name "LockState")
                                 (exclude-resource-tags :target-type
                                  exclude-resource-tags :member-name
                                  "ExcludeResourceTags"))
                                (:shape-name "ListRulesRequest"))

(smithy/sdk/shapes:define-output list-rules-response common-lisp:nil
                                 ((rules :target-type rule-summary-list
                                   :member-name "Rules")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRulesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type rule-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure lock-configuration common-lisp:nil
                                    ((unlock-delay :target-type unlock-delay
                                      :required common-lisp:t :member-name
                                      "UnlockDelay"))
                                    (:shape-name "LockConfiguration"))

(smithy/sdk/shapes:define-input lock-rule-request common-lisp:nil
                                ((identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (lock-configuration :target-type
                                  lock-configuration :required common-lisp:t
                                  :member-name "LockConfiguration"))
                                (:shape-name "LockRuleRequest"))

(smithy/sdk/shapes:define-output lock-rule-response common-lisp:nil
                                 ((identifier :target-type rule-identifier
                                   :member-name "Identifier")
                                  (description :target-type description
                                   :member-name "Description")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (resource-tags :target-type resource-tags
                                   :member-name "ResourceTags")
                                  (status :target-type rule-status :member-name
                                   "Status")
                                  (lock-configuration :target-type
                                   lock-configuration :member-name
                                   "LockConfiguration")
                                  (lock-state :target-type lock-state
                                   :member-name "LockState")
                                  (rule-arn :target-type rule-arn :member-name
                                   "RuleArn")
                                  (exclude-resource-tags :target-type
                                   exclude-resource-tags :member-name
                                   "ExcludeResourceTags"))
                                 (:shape-name "LockRuleResponse"))

(smithy/sdk/shapes:define-enum lock-state
    common-lisp:nil
  (:locked "locked")
  (:pending-unlock "pending_unlock")
  (:unlocked "unlocked"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  resource-not-found-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-not-found-exception-reason
    common-lisp:nil
  (:rule-not-found "RULE_NOT_FOUND"))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((resource-tag-key :target-type
                                      resource-tag-key :required common-lisp:t
                                      :member-name "ResourceTagKey")
                                     (resource-tag-value :target-type
                                      resource-tag-value :member-name
                                      "ResourceTagValue"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tags :member resource-tag)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:ebs-snapshot "EBS_SNAPSHOT")
  (:ec2-image "EC2_IMAGE"))

(smithy/sdk/shapes:define-structure retention-period common-lisp:nil
                                    ((retention-period-value :target-type
                                      retention-period-value :required
                                      common-lisp:t :member-name
                                      "RetentionPeriodValue")
                                     (retention-period-unit :target-type
                                      retention-period-unit :required
                                      common-lisp:t :member-name
                                      "RetentionPeriodUnit"))
                                    (:shape-name "RetentionPeriod"))

(smithy/sdk/shapes:define-enum retention-period-unit
    common-lisp:nil
  (:days "DAYS"))

(smithy/sdk/shapes:define-type retention-period-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-status
    common-lisp:nil
  (:pending "pending")
  (:available "available"))

(smithy/sdk/shapes:define-structure rule-summary common-lisp:nil
                                    ((identifier :target-type rule-identifier
                                      :member-name "Identifier")
                                     (description :target-type description
                                      :member-name "Description")
                                     (retention-period :target-type
                                      retention-period :member-name
                                      "RetentionPeriod")
                                     (lock-state :target-type lock-state
                                      :member-name "LockState")
                                     (rule-arn :target-type rule-arn
                                      :member-name "RuleArn"))
                                    (:shape-name "RuleSummary"))

(smithy/sdk/shapes:define-list rule-summary-list :member rule-summary)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  service-quota-exceeded-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum service-quota-exceeded-exception-reason
    common-lisp:nil
  (:service-quota-exceeded "SERVICE_QUOTA_EXCEEDED"))

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
                                ((resource-arn :target-type rule-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure unlock-delay common-lisp:nil
                                    ((unlock-delay-value :target-type
                                      unlock-delay-value :required
                                      common-lisp:t :member-name
                                      "UnlockDelayValue")
                                     (unlock-delay-unit :target-type
                                      unlock-delay-unit :required common-lisp:t
                                      :member-name "UnlockDelayUnit"))
                                    (:shape-name "UnlockDelay"))

(smithy/sdk/shapes:define-enum unlock-delay-unit
    common-lisp:nil
  (:days "DAYS"))

(smithy/sdk/shapes:define-type unlock-delay-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input unlock-rule-request common-lisp:nil
                                ((identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "UnlockRuleRequest"))

(smithy/sdk/shapes:define-output unlock-rule-response common-lisp:nil
                                 ((identifier :target-type rule-identifier
                                   :member-name "Identifier")
                                  (description :target-type description
                                   :member-name "Description")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (resource-tags :target-type resource-tags
                                   :member-name "ResourceTags")
                                  (status :target-type rule-status :member-name
                                   "Status")
                                  (lock-configuration :target-type
                                   lock-configuration :member-name
                                   "LockConfiguration")
                                  (lock-state :target-type lock-state
                                   :member-name "LockState")
                                  (lock-end-time :target-type time-stamp
                                   :member-name "LockEndTime")
                                  (rule-arn :target-type rule-arn :member-name
                                   "RuleArn")
                                  (exclude-resource-tags :target-type
                                   exclude-resource-tags :member-name
                                   "ExcludeResourceTags"))
                                 (:shape-name "UnlockRuleResponse"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type rule-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-rule-request common-lisp:nil
                                ((identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "RetentionPeriod")
                                 (description :target-type description
                                  :member-name "Description")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-tags :target-type resource-tags
                                  :member-name "ResourceTags")
                                 (exclude-resource-tags :target-type
                                  exclude-resource-tags :member-name
                                  "ExcludeResourceTags"))
                                (:shape-name "UpdateRuleRequest"))

(smithy/sdk/shapes:define-output update-rule-response common-lisp:nil
                                 ((identifier :target-type rule-identifier
                                   :member-name "Identifier")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (description :target-type description
                                   :member-name "Description")
                                  (resource-type :target-type resource-type
                                   :member-name "ResourceType")
                                  (resource-tags :target-type resource-tags
                                   :member-name "ResourceTags")
                                  (status :target-type rule-status :member-name
                                   "Status")
                                  (lock-state :target-type lock-state
                                   :member-name "LockState")
                                  (lock-end-time :target-type time-stamp
                                   :member-name "LockEndTime")
                                  (rule-arn :target-type rule-arn :member-name
                                   "RuleArn")
                                  (exclude-resource-tags :target-type
                                   exclude-resource-tags :member-name
                                   "ExcludeResourceTags"))
                                 (:shape-name "UpdateRuleResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:invalid-page-token "INVALID_PAGE_TOKEN")
  (:invalid-parameter-value "INVALID_PARAMETER_VALUE"))

(smithy/sdk/operation:define-operation create-rule :shape-name "CreateRule"
                                       :input create-rule-request :output
                                       create-rule-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/rules" :code 201)

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-request :output
                                       delete-rule-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/rules/{Identifier}" :code 204)

(smithy/sdk/operation:define-operation get-rule :shape-name "GetRule" :input
                                       get-rule-request :output
                                       get-rule-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/rules/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-rules :shape-name "ListRules"
                                       :input list-rules-request :output
                                       list-rules-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-rules" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation lock-rule :shape-name "LockRule" :input
                                       lock-rule-request :output
                                       lock-rule-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/rules/{Identifier}/lock" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 201)

(smithy/sdk/operation:define-operation unlock-rule :shape-name "UnlockRule"
                                       :input unlock-rule-request :output
                                       unlock-rule-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/rules/{Identifier}/unlock" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-rule :shape-name "UpdateRule"
                                       :input update-rule-request :output
                                       update-rule-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/rules/{Identifier}" :code 200)
