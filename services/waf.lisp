(uiop/package:define-package #:pira/waf (:use)
                             (:export #:awswaf-20150824 #:action
                              #:activated-rule #:activated-rules
                              #:byte-match-set #:byte-match-set-summaries
                              #:byte-match-set-summary #:byte-match-set-update
                              #:byte-match-set-updates
                              #:byte-match-target-string #:byte-match-tuple
                              #:byte-match-tuples #:change-action
                              #:change-token #:change-token-status
                              #:comparison-operator #:country
                              #:create-byte-match-set #:create-geo-match-set
                              #:create-ipset #:create-rate-based-rule
                              #:create-regex-match-set
                              #:create-regex-pattern-set #:create-rule
                              #:create-rule-group #:create-size-constraint-set
                              #:create-sql-injection-match-set #:create-web-acl
                              #:create-web-aclmigration-stack
                              #:create-xss-match-set #:delete-byte-match-set
                              #:delete-geo-match-set #:delete-ipset
                              #:delete-logging-configuration
                              #:delete-permission-policy
                              #:delete-rate-based-rule #:delete-regex-match-set
                              #:delete-regex-pattern-set #:delete-rule
                              #:delete-rule-group #:delete-size-constraint-set
                              #:delete-sql-injection-match-set #:delete-web-acl
                              #:delete-xss-match-set #:error-reason
                              #:excluded-rule #:excluded-rules #:field-to-match
                              #:geo-match-constraint
                              #:geo-match-constraint-type
                              #:geo-match-constraint-value
                              #:geo-match-constraints #:geo-match-set
                              #:geo-match-set-summaries #:geo-match-set-summary
                              #:geo-match-set-update #:geo-match-set-updates
                              #:get-byte-match-set #:get-change-token
                              #:get-change-token-status #:get-geo-match-set
                              #:get-ipset #:get-logging-configuration
                              #:get-permission-policy #:get-rate-based-rule
                              #:get-rate-based-rule-managed-keys
                              #:get-regex-match-set #:get-regex-pattern-set
                              #:get-rule #:get-rule-group
                              #:get-sampled-requests
                              #:get-sampled-requests-max-items
                              #:get-size-constraint-set
                              #:get-sql-injection-match-set #:get-web-acl
                              #:get-xss-match-set #:httpheader #:httpheaders
                              #:httpmethod #:httprequest #:httpversion
                              #:header-name #:header-value #:ipset
                              #:ipset-descriptor #:ipset-descriptor-type
                              #:ipset-descriptor-value #:ipset-descriptors
                              #:ipset-summaries #:ipset-summary #:ipset-update
                              #:ipset-updates #:ipstring
                              #:ignore-unsupported-type
                              #:list-activated-rules-in-rule-group
                              #:list-byte-match-sets #:list-geo-match-sets
                              #:list-ipsets #:list-logging-configurations
                              #:list-rate-based-rules #:list-regex-match-sets
                              #:list-regex-pattern-sets #:list-rule-groups
                              #:list-rules #:list-size-constraint-sets
                              #:list-sql-injection-match-sets
                              #:list-subscribed-rule-groups
                              #:list-tags-for-resource #:list-web-acls
                              #:list-xss-match-sets #:log-destination-configs
                              #:logging-configuration #:logging-configurations
                              #:managed-key #:managed-keys #:match-field-data
                              #:match-field-type #:metric-name
                              #:migration-error-type #:negated #:next-marker
                              #:pagination-limit #:parameter-exception-field
                              #:parameter-exception-parameter
                              #:parameter-exception-reason #:policy-string
                              #:population-size #:positional-constraint
                              #:predicate #:predicate-type #:predicates
                              #:put-logging-configuration
                              #:put-permission-policy #:rate-based-rule
                              #:rate-key #:rate-limit #:redacted-fields
                              #:regex-match-set #:regex-match-set-summaries
                              #:regex-match-set-summary
                              #:regex-match-set-update
                              #:regex-match-set-updates #:regex-match-tuple
                              #:regex-match-tuples #:regex-pattern-set
                              #:regex-pattern-set-summaries
                              #:regex-pattern-set-summary
                              #:regex-pattern-set-update
                              #:regex-pattern-set-updates
                              #:regex-pattern-string #:regex-pattern-strings
                              #:resource-arn #:resource-id #:resource-name
                              #:rule #:rule-group #:rule-group-summaries
                              #:rule-group-summary #:rule-group-update
                              #:rule-group-updates #:rule-priority
                              #:rule-summaries #:rule-summary #:rule-update
                              #:rule-updates #:s3bucket-name #:s3object-url
                              #:sample-weight #:sampled-httprequest
                              #:sampled-httprequests #:size #:size-constraint
                              #:size-constraint-set
                              #:size-constraint-set-summaries
                              #:size-constraint-set-summary
                              #:size-constraint-set-update
                              #:size-constraint-set-updates #:size-constraints
                              #:sql-injection-match-set
                              #:sql-injection-match-set-summaries
                              #:sql-injection-match-set-summary
                              #:sql-injection-match-set-update
                              #:sql-injection-match-set-updates
                              #:sql-injection-match-tuple
                              #:sql-injection-match-tuples
                              #:subscribed-rule-group-summaries
                              #:subscribed-rule-group-summary #:tag
                              #:tag-info-for-resource #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:text-transformation #:time-window #:timestamp
                              #:uristring #:untag-resource
                              #:update-byte-match-set #:update-geo-match-set
                              #:update-ipset #:update-rate-based-rule
                              #:update-regex-match-set
                              #:update-regex-pattern-set #:update-rule
                              #:update-rule-group #:update-size-constraint-set
                              #:update-sql-injection-match-set #:update-web-acl
                              #:update-xss-match-set #:wafbad-request-exception
                              #:wafdisallowed-name-exception
                              #:wafentity-migration-exception
                              #:wafinternal-error-exception
                              #:wafinvalid-account-exception
                              #:wafinvalid-operation-exception
                              #:wafinvalid-parameter-exception
                              #:wafinvalid-permission-policy-exception
                              #:wafinvalid-regex-pattern-exception
                              #:waflimits-exceeded-exception
                              #:wafnon-empty-entity-exception
                              #:wafnonexistent-container-exception
                              #:wafnonexistent-item-exception
                              #:wafreferenced-item-exception
                              #:wafservice-linked-role-error-exception
                              #:wafstale-data-exception
                              #:wafsubscription-not-found-exception
                              #:waftag-operation-exception
                              #:waftag-operation-internal-error-exception
                              #:waf-action #:waf-action-type
                              #:waf-override-action #:waf-override-action-type
                              #:waf-rule-type #:web-acl #:web-aclsummaries
                              #:web-aclsummary #:web-aclupdate #:web-aclupdates
                              #:xss-match-set #:xss-match-set-summaries
                              #:xss-match-set-summary #:xss-match-set-update
                              #:xss-match-set-updates #:xss-match-tuple
                              #:xss-match-tuples #:error-message #:waf-error))
(common-lisp:in-package #:pira/waf)

(common-lisp:define-condition waf-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awswaf-20150824 :shape-name
                                   "AWSWAF_20150824" :version "2015-08-24"
                                   :title "AWS WAF" :operations
                                   '(create-byte-match-set create-geo-match-set
                                     create-ipset create-rate-based-rule
                                     create-regex-match-set
                                     create-regex-pattern-set create-rule
                                     create-rule-group
                                     create-size-constraint-set
                                     create-sql-injection-match-set
                                     create-web-acl
                                     create-web-aclmigration-stack
                                     create-xss-match-set delete-byte-match-set
                                     delete-geo-match-set delete-ipset
                                     delete-logging-configuration
                                     delete-permission-policy
                                     delete-rate-based-rule
                                     delete-regex-match-set
                                     delete-regex-pattern-set delete-rule
                                     delete-rule-group
                                     delete-size-constraint-set
                                     delete-sql-injection-match-set
                                     delete-web-acl delete-xss-match-set
                                     get-byte-match-set get-change-token
                                     get-change-token-status get-geo-match-set
                                     get-ipset get-logging-configuration
                                     get-permission-policy get-rate-based-rule
                                     get-rate-based-rule-managed-keys
                                     get-regex-match-set get-regex-pattern-set
                                     get-rule get-rule-group
                                     get-sampled-requests
                                     get-size-constraint-set
                                     get-sql-injection-match-set get-web-acl
                                     get-xss-match-set
                                     list-activated-rules-in-rule-group
                                     list-byte-match-sets list-geo-match-sets
                                     list-ipsets list-logging-configurations
                                     list-rate-based-rules
                                     list-regex-match-sets
                                     list-regex-pattern-sets list-rule-groups
                                     list-rules list-size-constraint-sets
                                     list-sql-injection-match-sets
                                     list-subscribed-rule-groups
                                     list-tags-for-resource list-web-acls
                                     list-xss-match-sets
                                     put-logging-configuration
                                     put-permission-policy tag-resource
                                     untag-resource update-byte-match-set
                                     update-geo-match-set update-ipset
                                     update-rate-based-rule
                                     update-regex-match-set
                                     update-regex-pattern-set update-rule
                                     update-rule-group
                                     update-size-constraint-set
                                     update-sql-injection-match-set
                                     update-web-acl update-xss-match-set)
                                   :xml-namespace
                                   '(:uri
                                     "http://waf.amazonaws.com/doc/2015-08-24/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "WAF")
                                      ("arnNamespace" . "waf")
                                      ("cloudFormationName" . "WAF")
                                      ("cloudTrailEventSource"
                                       . "waf.amazonaws.com")
                                      ("endpointPrefix" . "waf"))
                                     ("aws.auth#sigv4" ("name" . "waf"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure activated-rule common-lisp:nil
                                    ((priority :target-type rule-priority
                                      :required common-lisp:t :member-name
                                      "Priority")
                                     (rule-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleId")
                                     (action :target-type waf-action
                                      :member-name "Action")
                                     (override-action :target-type
                                      waf-override-action :member-name
                                      "OverrideAction")
                                     (type :target-type waf-rule-type
                                      :member-name "Type")
                                     (excluded-rules :target-type
                                      excluded-rules :member-name
                                      "ExcludedRules"))
                                    (:shape-name "ActivatedRule"))

(smithy/sdk/shapes:define-list activated-rules :member activated-rule)

(smithy/sdk/shapes:define-structure byte-match-set common-lisp:nil
                                    ((byte-match-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "ByteMatchSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (byte-match-tuples :target-type
                                      byte-match-tuples :required common-lisp:t
                                      :member-name "ByteMatchTuples"))
                                    (:shape-name "ByteMatchSet"))

(smithy/sdk/shapes:define-list byte-match-set-summaries :member
                               byte-match-set-summary)

(smithy/sdk/shapes:define-structure byte-match-set-summary common-lisp:nil
                                    ((byte-match-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "ByteMatchSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "ByteMatchSetSummary"))

(smithy/sdk/shapes:define-structure byte-match-set-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (byte-match-tuple :target-type
                                      byte-match-tuple :required common-lisp:t
                                      :member-name "ByteMatchTuple"))
                                    (:shape-name "ByteMatchSetUpdate"))

(smithy/sdk/shapes:define-list byte-match-set-updates :member
                               byte-match-set-update)

(smithy/sdk/shapes:define-type byte-match-target-string
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure byte-match-tuple common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (target-string :target-type
                                      byte-match-target-string :required
                                      common-lisp:t :member-name
                                      "TargetString")
                                     (text-transformation :target-type
                                      text-transformation :required
                                      common-lisp:t :member-name
                                      "TextTransformation")
                                     (positional-constraint :target-type
                                      positional-constraint :required
                                      common-lisp:t :member-name
                                      "PositionalConstraint"))
                                    (:shape-name "ByteMatchTuple"))

(smithy/sdk/shapes:define-list byte-match-tuples :member byte-match-tuple)

(smithy/sdk/shapes:define-enum change-action
    common-lisp:nil
  (:insert "INSERT")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-type change-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum change-token-status
    common-lisp:nil
  (:provisioned "PROVISIONED")
  (:pending "PENDING")
  (:insync "INSYNC"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:eq "EQ")
  (:ne "NE")
  (:le "LE")
  (:lt "LT")
  (:ge "GE")
  (:gt "GT"))

(smithy/sdk/shapes:define-type country smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-byte-match-set-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateByteMatchSetRequest"))

(smithy/sdk/shapes:define-output create-byte-match-set-response common-lisp:nil
                                 ((byte-match-set :target-type byte-match-set
                                   :member-name "ByteMatchSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateByteMatchSetResponse"))

(smithy/sdk/shapes:define-input create-geo-match-set-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateGeoMatchSetRequest"))

(smithy/sdk/shapes:define-output create-geo-match-set-response common-lisp:nil
                                 ((geo-match-set :target-type geo-match-set
                                   :member-name "GeoMatchSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateGeoMatchSetResponse"))

(smithy/sdk/shapes:define-input create-ipset-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateIPSetRequest"))

(smithy/sdk/shapes:define-output create-ipset-response common-lisp:nil
                                 ((ipset :target-type ipset :member-name
                                   "IPSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateIPSetResponse"))

(smithy/sdk/shapes:define-input create-rate-based-rule-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (rate-key :target-type rate-key :required
                                  common-lisp:t :member-name "RateKey")
                                 (rate-limit :target-type rate-limit :required
                                  common-lisp:t :member-name "RateLimit")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRateBasedRuleRequest"))

(smithy/sdk/shapes:define-output create-rate-based-rule-response
                                 common-lisp:nil
                                 ((rule :target-type rate-based-rule
                                   :member-name "Rule")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateRateBasedRuleResponse"))

(smithy/sdk/shapes:define-input create-regex-match-set-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateRegexMatchSetRequest"))

(smithy/sdk/shapes:define-output create-regex-match-set-response
                                 common-lisp:nil
                                 ((regex-match-set :target-type regex-match-set
                                   :member-name "RegexMatchSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateRegexMatchSetResponse"))

(smithy/sdk/shapes:define-input create-regex-pattern-set-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output create-regex-pattern-set-response
                                 common-lisp:nil
                                 ((regex-pattern-set :target-type
                                   regex-pattern-set :member-name
                                   "RegexPatternSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input create-rule-group-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRuleGroupRequest"))

(smithy/sdk/shapes:define-output create-rule-group-response common-lisp:nil
                                 ((rule-group :target-type rule-group
                                   :member-name "RuleGroup")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateRuleGroupResponse"))

(smithy/sdk/shapes:define-input create-rule-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRuleRequest"))

(smithy/sdk/shapes:define-output create-rule-response common-lisp:nil
                                 ((rule :target-type rule :member-name "Rule")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateRuleResponse"))

(smithy/sdk/shapes:define-input create-size-constraint-set-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateSizeConstraintSetRequest"))

(smithy/sdk/shapes:define-output create-size-constraint-set-response
                                 common-lisp:nil
                                 ((size-constraint-set :target-type
                                   size-constraint-set :member-name
                                   "SizeConstraintSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name
                                  "CreateSizeConstraintSetResponse"))

(smithy/sdk/shapes:define-input create-sql-injection-match-set-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name
                                 "CreateSqlInjectionMatchSetRequest"))

(smithy/sdk/shapes:define-output create-sql-injection-match-set-response
                                 common-lisp:nil
                                 ((sql-injection-match-set :target-type
                                   sql-injection-match-set :member-name
                                   "SqlInjectionMatchSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name
                                  "CreateSqlInjectionMatchSetResponse"))

(smithy/sdk/shapes:define-input create-web-aclmigration-stack-request
                                common-lisp:nil
                                ((web-aclid :target-type resource-id :required
                                  common-lisp:t :member-name "WebACLId")
                                 (s3bucket-name :target-type s3bucket-name
                                  :required common-lisp:t :member-name
                                  "S3BucketName")
                                 (ignore-unsupported-type :target-type
                                  ignore-unsupported-type :required
                                  common-lisp:t :member-name
                                  "IgnoreUnsupportedType"))
                                (:shape-name
                                 "CreateWebACLMigrationStackRequest"))

(smithy/sdk/shapes:define-output create-web-aclmigration-stack-response
                                 common-lisp:nil
                                 ((s3object-url :target-type s3object-url
                                   :required common-lisp:t :member-name
                                   "S3ObjectUrl"))
                                 (:shape-name
                                  "CreateWebACLMigrationStackResponse"))

(smithy/sdk/shapes:define-input create-web-aclrequest common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "MetricName")
                                 (default-action :target-type waf-action
                                  :required common-lisp:t :member-name
                                  "DefaultAction")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateWebACLRequest"))

(smithy/sdk/shapes:define-output create-web-aclresponse common-lisp:nil
                                 ((web-acl :target-type web-acl :member-name
                                   "WebACL")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateWebACLResponse"))

(smithy/sdk/shapes:define-input create-xss-match-set-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "CreateXssMatchSetRequest"))

(smithy/sdk/shapes:define-output create-xss-match-set-response common-lisp:nil
                                 ((xss-match-set :target-type xss-match-set
                                   :member-name "XssMatchSet")
                                  (change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "CreateXssMatchSetResponse"))

(smithy/sdk/shapes:define-input delete-byte-match-set-request common-lisp:nil
                                ((byte-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ByteMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteByteMatchSetRequest"))

(smithy/sdk/shapes:define-output delete-byte-match-set-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteByteMatchSetResponse"))

(smithy/sdk/shapes:define-input delete-geo-match-set-request common-lisp:nil
                                ((geo-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "GeoMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteGeoMatchSetRequest"))

(smithy/sdk/shapes:define-output delete-geo-match-set-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteGeoMatchSetResponse"))

(smithy/sdk/shapes:define-input delete-ipset-request common-lisp:nil
                                ((ipset-id :target-type resource-id :required
                                  common-lisp:t :member-name "IPSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteIPSetRequest"))

(smithy/sdk/shapes:define-output delete-ipset-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteIPSetResponse"))

(smithy/sdk/shapes:define-input delete-logging-configuration-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name
                                 "DeleteLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-logging-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-permission-policy-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DeletePermissionPolicyRequest"))

(smithy/sdk/shapes:define-output delete-permission-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeletePermissionPolicyResponse"))

(smithy/sdk/shapes:define-input delete-rate-based-rule-request common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteRateBasedRuleRequest"))

(smithy/sdk/shapes:define-output delete-rate-based-rule-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteRateBasedRuleResponse"))

(smithy/sdk/shapes:define-input delete-regex-match-set-request common-lisp:nil
                                ((regex-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RegexMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteRegexMatchSetRequest"))

(smithy/sdk/shapes:define-output delete-regex-match-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteRegexMatchSetResponse"))

(smithy/sdk/shapes:define-input delete-regex-pattern-set-request
                                common-lisp:nil
                                ((regex-pattern-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RegexPatternSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output delete-regex-pattern-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input delete-rule-group-request common-lisp:nil
                                ((rule-group-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RuleGroupId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteRuleGroupRequest"))

(smithy/sdk/shapes:define-output delete-rule-group-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteRuleGroupResponse"))

(smithy/sdk/shapes:define-input delete-rule-request common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteRuleRequest"))

(smithy/sdk/shapes:define-output delete-rule-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteRuleResponse"))

(smithy/sdk/shapes:define-input delete-size-constraint-set-request
                                common-lisp:nil
                                ((size-constraint-set-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "SizeConstraintSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteSizeConstraintSetRequest"))

(smithy/sdk/shapes:define-output delete-size-constraint-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name
                                  "DeleteSizeConstraintSetResponse"))

(smithy/sdk/shapes:define-input delete-sql-injection-match-set-request
                                common-lisp:nil
                                ((sql-injection-match-set-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "SqlInjectionMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name
                                 "DeleteSqlInjectionMatchSetRequest"))

(smithy/sdk/shapes:define-output delete-sql-injection-match-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name
                                  "DeleteSqlInjectionMatchSetResponse"))

(smithy/sdk/shapes:define-input delete-web-aclrequest common-lisp:nil
                                ((web-aclid :target-type resource-id :required
                                  common-lisp:t :member-name "WebACLId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteWebACLRequest"))

(smithy/sdk/shapes:define-output delete-web-aclresponse common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteWebACLResponse"))

(smithy/sdk/shapes:define-input delete-xss-match-set-request common-lisp:nil
                                ((xss-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "XssMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "DeleteXssMatchSetRequest"))

(smithy/sdk/shapes:define-output delete-xss-match-set-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "DeleteXssMatchSetResponse"))

(smithy/sdk/shapes:define-type error-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure excluded-rule common-lisp:nil
                                    ((rule-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleId"))
                                    (:shape-name "ExcludedRule"))

(smithy/sdk/shapes:define-list excluded-rules :member excluded-rule)

(smithy/sdk/shapes:define-structure field-to-match common-lisp:nil
                                    ((type :target-type match-field-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (data :target-type match-field-data
                                      :member-name "Data"))
                                    (:shape-name "FieldToMatch"))

(smithy/sdk/shapes:define-structure geo-match-constraint common-lisp:nil
                                    ((type :target-type
                                      geo-match-constraint-type :required
                                      common-lisp:t :member-name "Type")
                                     (value :target-type
                                      geo-match-constraint-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "GeoMatchConstraint"))

(smithy/sdk/shapes:define-enum geo-match-constraint-type
    common-lisp:nil
  (:country "Country"))

(smithy/sdk/shapes:define-enum geo-match-constraint-value
    common-lisp:nil
  (:af "AF")
  (:ax "AX")
  (:al "AL")
  (:dz "DZ")
  (:as "AS")
  (:ad "AD")
  (:ao "AO")
  (:ai "AI")
  (:aq "AQ")
  (:ag "AG")
  (:ar "AR")
  (:am "AM")
  (:aw "AW")
  (:au "AU")
  (:at "AT")
  (:az "AZ")
  (:bs "BS")
  (:bh "BH")
  (:bd "BD")
  (:bb "BB")
  (:by "BY")
  (:be "BE")
  (:bz "BZ")
  (:bj "BJ")
  (:bm "BM")
  (:bt "BT")
  (:bo "BO")
  (:bq "BQ")
  (:ba "BA")
  (:bw "BW")
  (:bv "BV")
  (:br "BR")
  (:io "IO")
  (:bn "BN")
  (:bg "BG")
  (:bf "BF")
  (:bi "BI")
  (:kh "KH")
  (:cm "CM")
  (:ca "CA")
  (:cv "CV")
  (:ky "KY")
  (:cf "CF")
  (:td "TD")
  (:cl "CL")
  (:cn "CN")
  (:cx "CX")
  (:cc "CC")
  (:co "CO")
  (:km "KM")
  (:cg "CG")
  (:cd "CD")
  (:ck "CK")
  (:cr "CR")
  (:ci "CI")
  (:hr "HR")
  (:cu "CU")
  (:cw "CW")
  (:cy "CY")
  (:cz "CZ")
  (:dk "DK")
  (:dj "DJ")
  (:dm "DM")
  (:do "DO")
  (:ec "EC")
  (:eg "EG")
  (:sv "SV")
  (:gq "GQ")
  (:er "ER")
  (:ee "EE")
  (:et "ET")
  (:fk "FK")
  (:fo "FO")
  (:fj "FJ")
  (:fi "FI")
  (:fr "FR")
  (:gf "GF")
  (:pf "PF")
  (:tf "TF")
  (:ga "GA")
  (:gm "GM")
  (:ge "GE")
  (:de "DE")
  (:gh "GH")
  (:gi "GI")
  (:gr "GR")
  (:gl "GL")
  (:gd "GD")
  (:gp "GP")
  (:gu "GU")
  (:gt "GT")
  (:gg "GG")
  (:gn "GN")
  (:gw "GW")
  (:gy "GY")
  (:ht "HT")
  (:hm "HM")
  (:va "VA")
  (:hn "HN")
  (:hk "HK")
  (:hu "HU")
  (:is "IS")
  (:in "IN")
  (:id "ID")
  (:ir "IR")
  (:iq "IQ")
  (:ie "IE")
  (:im "IM")
  (:il "IL")
  (:it "IT")
  (:jm "JM")
  (:jp "JP")
  (:je "JE")
  (:jo "JO")
  (:kz "KZ")
  (:ke "KE")
  (:ki "KI")
  (:kp "KP")
  (:kr "KR")
  (:kw "KW")
  (:kg "KG")
  (:la "LA")
  (:lv "LV")
  (:lb "LB")
  (:ls "LS")
  (:lr "LR")
  (:ly "LY")
  (:li "LI")
  (:lt "LT")
  (:lu "LU")
  (:mo "MO")
  (:mk "MK")
  (:mg "MG")
  (:mw "MW")
  (:my "MY")
  (:mv "MV")
  (:ml "ML")
  (:mt "MT")
  (:mh "MH")
  (:mq "MQ")
  (:mr "MR")
  (:mu "MU")
  (:yt "YT")
  (:mx "MX")
  (:fm "FM")
  (:md "MD")
  (:mc "MC")
  (:mn "MN")
  (:me "ME")
  (:ms "MS")
  (:ma "MA")
  (:mz "MZ")
  (:mm "MM")
  (:na "NA")
  (:nr "NR")
  (:np "NP")
  (:nl "NL")
  (:nc "NC")
  (:nz "NZ")
  (:ni "NI")
  (:ne "NE")
  (:ng "NG")
  (:nu "NU")
  (:nf "NF")
  (:mp "MP")
  (:no "NO")
  (:om "OM")
  (:pk "PK")
  (:pw "PW")
  (:ps "PS")
  (:pa "PA")
  (:pg "PG")
  (:py "PY")
  (:pe "PE")
  (:ph "PH")
  (:pn "PN")
  (:pl "PL")
  (:pt "PT")
  (:pr "PR")
  (:qa "QA")
  (:re "RE")
  (:ro "RO")
  (:ru "RU")
  (:rw "RW")
  (:bl "BL")
  (:sh "SH")
  (:kn "KN")
  (:lc "LC")
  (:mf "MF")
  (:pm "PM")
  (:vc "VC")
  (:ws "WS")
  (:sm "SM")
  (:st "ST")
  (:sa "SA")
  (:sn "SN")
  (:rs "RS")
  (:sc "SC")
  (:sl "SL")
  (:sg "SG")
  (:sx "SX")
  (:sk "SK")
  (:si "SI")
  (:sb "SB")
  (:so "SO")
  (:za "ZA")
  (:gs "GS")
  (:ss "SS")
  (:es "ES")
  (:lk "LK")
  (:sd "SD")
  (:sr "SR")
  (:sj "SJ")
  (:sz "SZ")
  (:se "SE")
  (:ch "CH")
  (:sy "SY")
  (:tw "TW")
  (:tj "TJ")
  (:tz "TZ")
  (:th "TH")
  (:tl "TL")
  (:tg "TG")
  (:tk "TK")
  (:to "TO")
  (:tt "TT")
  (:tn "TN")
  (:tr "TR")
  (:tm "TM")
  (:tc "TC")
  (:tv "TV")
  (:ug "UG")
  (:ua "UA")
  (:ae "AE")
  (:gb "GB")
  (:us "US")
  (:um "UM")
  (:uy "UY")
  (:uz "UZ")
  (:vu "VU")
  (:ve "VE")
  (:vn "VN")
  (:vg "VG")
  (:vi "VI")
  (:wf "WF")
  (:eh "EH")
  (:ye "YE")
  (:zm "ZM")
  (:zw "ZW"))

(smithy/sdk/shapes:define-list geo-match-constraints :member
                               geo-match-constraint)

(smithy/sdk/shapes:define-structure geo-match-set common-lisp:nil
                                    ((geo-match-set-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GeoMatchSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (geo-match-constraints :target-type
                                      geo-match-constraints :required
                                      common-lisp:t :member-name
                                      "GeoMatchConstraints"))
                                    (:shape-name "GeoMatchSet"))

(smithy/sdk/shapes:define-list geo-match-set-summaries :member
                               geo-match-set-summary)

(smithy/sdk/shapes:define-structure geo-match-set-summary common-lisp:nil
                                    ((geo-match-set-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "GeoMatchSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "GeoMatchSetSummary"))

(smithy/sdk/shapes:define-structure geo-match-set-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (geo-match-constraint :target-type
                                      geo-match-constraint :required
                                      common-lisp:t :member-name
                                      "GeoMatchConstraint"))
                                    (:shape-name "GeoMatchSetUpdate"))

(smithy/sdk/shapes:define-list geo-match-set-updates :member
                               geo-match-set-update)

(smithy/sdk/shapes:define-input get-byte-match-set-request common-lisp:nil
                                ((byte-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ByteMatchSetId"))
                                (:shape-name "GetByteMatchSetRequest"))

(smithy/sdk/shapes:define-output get-byte-match-set-response common-lisp:nil
                                 ((byte-match-set :target-type byte-match-set
                                   :member-name "ByteMatchSet"))
                                 (:shape-name "GetByteMatchSetResponse"))

(smithy/sdk/shapes:define-input get-change-token-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetChangeTokenRequest"))

(smithy/sdk/shapes:define-output get-change-token-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "GetChangeTokenResponse"))

(smithy/sdk/shapes:define-input get-change-token-status-request common-lisp:nil
                                ((change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "GetChangeTokenStatusRequest"))

(smithy/sdk/shapes:define-output get-change-token-status-response
                                 common-lisp:nil
                                 ((change-token-status :target-type
                                   change-token-status :member-name
                                   "ChangeTokenStatus"))
                                 (:shape-name "GetChangeTokenStatusResponse"))

(smithy/sdk/shapes:define-input get-geo-match-set-request common-lisp:nil
                                ((geo-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "GeoMatchSetId"))
                                (:shape-name "GetGeoMatchSetRequest"))

(smithy/sdk/shapes:define-output get-geo-match-set-response common-lisp:nil
                                 ((geo-match-set :target-type geo-match-set
                                   :member-name "GeoMatchSet"))
                                 (:shape-name "GetGeoMatchSetResponse"))

(smithy/sdk/shapes:define-input get-ipset-request common-lisp:nil
                                ((ipset-id :target-type resource-id :required
                                  common-lisp:t :member-name "IPSetId"))
                                (:shape-name "GetIPSetRequest"))

(smithy/sdk/shapes:define-output get-ipset-response common-lisp:nil
                                 ((ipset :target-type ipset :member-name
                                   "IPSet"))
                                 (:shape-name "GetIPSetResponse"))

(smithy/sdk/shapes:define-input get-logging-configuration-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output get-logging-configuration-response
                                 common-lisp:nil
                                 ((logging-configuration :target-type
                                   logging-configuration :member-name
                                   "LoggingConfiguration"))
                                 (:shape-name
                                  "GetLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-permission-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetPermissionPolicyRequest"))

(smithy/sdk/shapes:define-output get-permission-policy-response common-lisp:nil
                                 ((policy :target-type policy-string
                                   :member-name "Policy"))
                                 (:shape-name "GetPermissionPolicyResponse"))

(smithy/sdk/shapes:define-input get-rate-based-rule-managed-keys-request
                                common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker"))
                                (:shape-name
                                 "GetRateBasedRuleManagedKeysRequest"))

(smithy/sdk/shapes:define-output get-rate-based-rule-managed-keys-response
                                 common-lisp:nil
                                 ((managed-keys :target-type managed-keys
                                   :member-name "ManagedKeys")
                                  (next-marker :target-type next-marker
                                   :member-name "NextMarker"))
                                 (:shape-name
                                  "GetRateBasedRuleManagedKeysResponse"))

(smithy/sdk/shapes:define-input get-rate-based-rule-request common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId"))
                                (:shape-name "GetRateBasedRuleRequest"))

(smithy/sdk/shapes:define-output get-rate-based-rule-response common-lisp:nil
                                 ((rule :target-type rate-based-rule
                                   :member-name "Rule"))
                                 (:shape-name "GetRateBasedRuleResponse"))

(smithy/sdk/shapes:define-input get-regex-match-set-request common-lisp:nil
                                ((regex-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RegexMatchSetId"))
                                (:shape-name "GetRegexMatchSetRequest"))

(smithy/sdk/shapes:define-output get-regex-match-set-response common-lisp:nil
                                 ((regex-match-set :target-type regex-match-set
                                   :member-name "RegexMatchSet"))
                                 (:shape-name "GetRegexMatchSetResponse"))

(smithy/sdk/shapes:define-input get-regex-pattern-set-request common-lisp:nil
                                ((regex-pattern-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RegexPatternSetId"))
                                (:shape-name "GetRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output get-regex-pattern-set-response common-lisp:nil
                                 ((regex-pattern-set :target-type
                                   regex-pattern-set :member-name
                                   "RegexPatternSet"))
                                 (:shape-name "GetRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input get-rule-group-request common-lisp:nil
                                ((rule-group-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RuleGroupId"))
                                (:shape-name "GetRuleGroupRequest"))

(smithy/sdk/shapes:define-output get-rule-group-response common-lisp:nil
                                 ((rule-group :target-type rule-group
                                   :member-name "RuleGroup"))
                                 (:shape-name "GetRuleGroupResponse"))

(smithy/sdk/shapes:define-input get-rule-request common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId"))
                                (:shape-name "GetRuleRequest"))

(smithy/sdk/shapes:define-output get-rule-response common-lisp:nil
                                 ((rule :target-type rule :member-name "Rule"))
                                 (:shape-name "GetRuleResponse"))

(smithy/sdk/shapes:define-type get-sampled-requests-max-items
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input get-sampled-requests-request common-lisp:nil
                                ((web-acl-id :target-type resource-id :required
                                  common-lisp:t :member-name "WebAclId")
                                 (rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId")
                                 (time-window :target-type time-window
                                  :required common-lisp:t :member-name
                                  "TimeWindow")
                                 (max-items :target-type
                                  get-sampled-requests-max-items :required
                                  common-lisp:t :member-name "MaxItems"))
                                (:shape-name "GetSampledRequestsRequest"))

(smithy/sdk/shapes:define-output get-sampled-requests-response common-lisp:nil
                                 ((sampled-requests :target-type
                                   sampled-httprequests :member-name
                                   "SampledRequests")
                                  (population-size :target-type population-size
                                   :member-name "PopulationSize")
                                  (time-window :target-type time-window
                                   :member-name "TimeWindow"))
                                 (:shape-name "GetSampledRequestsResponse"))

(smithy/sdk/shapes:define-input get-size-constraint-set-request common-lisp:nil
                                ((size-constraint-set-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "SizeConstraintSetId"))
                                (:shape-name "GetSizeConstraintSetRequest"))

(smithy/sdk/shapes:define-output get-size-constraint-set-response
                                 common-lisp:nil
                                 ((size-constraint-set :target-type
                                   size-constraint-set :member-name
                                   "SizeConstraintSet"))
                                 (:shape-name "GetSizeConstraintSetResponse"))

(smithy/sdk/shapes:define-input get-sql-injection-match-set-request
                                common-lisp:nil
                                ((sql-injection-match-set-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "SqlInjectionMatchSetId"))
                                (:shape-name "GetSqlInjectionMatchSetRequest"))

(smithy/sdk/shapes:define-output get-sql-injection-match-set-response
                                 common-lisp:nil
                                 ((sql-injection-match-set :target-type
                                   sql-injection-match-set :member-name
                                   "SqlInjectionMatchSet"))
                                 (:shape-name
                                  "GetSqlInjectionMatchSetResponse"))

(smithy/sdk/shapes:define-input get-web-aclrequest common-lisp:nil
                                ((web-aclid :target-type resource-id :required
                                  common-lisp:t :member-name "WebACLId"))
                                (:shape-name "GetWebACLRequest"))

(smithy/sdk/shapes:define-output get-web-aclresponse common-lisp:nil
                                 ((web-acl :target-type web-acl :member-name
                                   "WebACL"))
                                 (:shape-name "GetWebACLResponse"))

(smithy/sdk/shapes:define-input get-xss-match-set-request common-lisp:nil
                                ((xss-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "XssMatchSetId"))
                                (:shape-name "GetXssMatchSetRequest"))

(smithy/sdk/shapes:define-output get-xss-match-set-response common-lisp:nil
                                 ((xss-match-set :target-type xss-match-set
                                   :member-name "XssMatchSet"))
                                 (:shape-name "GetXssMatchSetResponse"))

(smithy/sdk/shapes:define-structure httpheader common-lisp:nil
                                    ((name :target-type header-name
                                      :member-name "Name")
                                     (value :target-type header-value
                                      :member-name "Value"))
                                    (:shape-name "HTTPHeader"))

(smithy/sdk/shapes:define-list httpheaders :member httpheader)

(smithy/sdk/shapes:define-type httpmethod smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure httprequest common-lisp:nil
                                    ((client-ip :target-type ipstring
                                      :member-name "ClientIP")
                                     (country :target-type country :member-name
                                      "Country")
                                     (uri :target-type uristring :member-name
                                      "URI")
                                     (method :target-type httpmethod
                                      :member-name "Method")
                                     (httpversion :target-type httpversion
                                      :member-name "HTTPVersion")
                                     (headers :target-type httpheaders
                                      :member-name "Headers"))
                                    (:shape-name "HTTPRequest"))

(smithy/sdk/shapes:define-type httpversion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ipset common-lisp:nil
                                    ((ipset-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "IPSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (ipset-descriptors :target-type
                                      ipset-descriptors :required common-lisp:t
                                      :member-name "IPSetDescriptors"))
                                    (:shape-name "IPSet"))

(smithy/sdk/shapes:define-structure ipset-descriptor common-lisp:nil
                                    ((type :target-type ipset-descriptor-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type ipset-descriptor-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "IPSetDescriptor"))

(smithy/sdk/shapes:define-enum ipset-descriptor-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:ipv6 "IPV6"))

(smithy/sdk/shapes:define-type ipset-descriptor-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ipset-descriptors :member ipset-descriptor)

(smithy/sdk/shapes:define-list ipset-summaries :member ipset-summary)

(smithy/sdk/shapes:define-structure ipset-summary common-lisp:nil
                                    ((ipset-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "IPSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "IPSetSummary"))

(smithy/sdk/shapes:define-structure ipset-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (ipset-descriptor :target-type
                                      ipset-descriptor :required common-lisp:t
                                      :member-name "IPSetDescriptor"))
                                    (:shape-name "IPSetUpdate"))

(smithy/sdk/shapes:define-list ipset-updates :member ipset-update)

(smithy/sdk/shapes:define-type ipstring smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ignore-unsupported-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input list-activated-rules-in-rule-group-request
                                common-lisp:nil
                                ((rule-group-id :target-type resource-id
                                  :member-name "RuleGroupId")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name
                                 "ListActivatedRulesInRuleGroupRequest"))

(smithy/sdk/shapes:define-output list-activated-rules-in-rule-group-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (activated-rules :target-type activated-rules
                                   :member-name "ActivatedRules"))
                                 (:shape-name
                                  "ListActivatedRulesInRuleGroupResponse"))

(smithy/sdk/shapes:define-input list-byte-match-sets-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListByteMatchSetsRequest"))

(smithy/sdk/shapes:define-output list-byte-match-sets-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (byte-match-sets :target-type
                                   byte-match-set-summaries :member-name
                                   "ByteMatchSets"))
                                 (:shape-name "ListByteMatchSetsResponse"))

(smithy/sdk/shapes:define-input list-geo-match-sets-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListGeoMatchSetsRequest"))

(smithy/sdk/shapes:define-output list-geo-match-sets-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (geo-match-sets :target-type
                                   geo-match-set-summaries :member-name
                                   "GeoMatchSets"))
                                 (:shape-name "ListGeoMatchSetsResponse"))

(smithy/sdk/shapes:define-input list-ipsets-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListIPSetsRequest"))

(smithy/sdk/shapes:define-output list-ipsets-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (ipsets :target-type ipset-summaries
                                   :member-name "IPSets"))
                                 (:shape-name "ListIPSetsResponse"))

(smithy/sdk/shapes:define-input list-logging-configurations-request
                                common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name
                                 "ListLoggingConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-logging-configurations-response
                                 common-lisp:nil
                                 ((logging-configurations :target-type
                                   logging-configurations :member-name
                                   "LoggingConfigurations")
                                  (next-marker :target-type next-marker
                                   :member-name "NextMarker"))
                                 (:shape-name
                                  "ListLoggingConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-rate-based-rules-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRateBasedRulesRequest"))

(smithy/sdk/shapes:define-output list-rate-based-rules-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (rules :target-type rule-summaries
                                   :member-name "Rules"))
                                 (:shape-name "ListRateBasedRulesResponse"))

(smithy/sdk/shapes:define-input list-regex-match-sets-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRegexMatchSetsRequest"))

(smithy/sdk/shapes:define-output list-regex-match-sets-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (regex-match-sets :target-type
                                   regex-match-set-summaries :member-name
                                   "RegexMatchSets"))
                                 (:shape-name "ListRegexMatchSetsResponse"))

(smithy/sdk/shapes:define-input list-regex-pattern-sets-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRegexPatternSetsRequest"))

(smithy/sdk/shapes:define-output list-regex-pattern-sets-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (regex-pattern-sets :target-type
                                   regex-pattern-set-summaries :member-name
                                   "RegexPatternSets"))
                                 (:shape-name "ListRegexPatternSetsResponse"))

(smithy/sdk/shapes:define-input list-rule-groups-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRuleGroupsRequest"))

(smithy/sdk/shapes:define-output list-rule-groups-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (rule-groups :target-type
                                   rule-group-summaries :member-name
                                   "RuleGroups"))
                                 (:shape-name "ListRuleGroupsResponse"))

(smithy/sdk/shapes:define-input list-rules-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRulesRequest"))

(smithy/sdk/shapes:define-output list-rules-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (rules :target-type rule-summaries
                                   :member-name "Rules"))
                                 (:shape-name "ListRulesResponse"))

(smithy/sdk/shapes:define-input list-size-constraint-sets-request
                                common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListSizeConstraintSetsRequest"))

(smithy/sdk/shapes:define-output list-size-constraint-sets-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (size-constraint-sets :target-type
                                   size-constraint-set-summaries :member-name
                                   "SizeConstraintSets"))
                                 (:shape-name "ListSizeConstraintSetsResponse"))

(smithy/sdk/shapes:define-input list-sql-injection-match-sets-request
                                common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name
                                 "ListSqlInjectionMatchSetsRequest"))

(smithy/sdk/shapes:define-output list-sql-injection-match-sets-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (sql-injection-match-sets :target-type
                                   sql-injection-match-set-summaries
                                   :member-name "SqlInjectionMatchSets"))
                                 (:shape-name
                                  "ListSqlInjectionMatchSetsResponse"))

(smithy/sdk/shapes:define-input list-subscribed-rule-groups-request
                                common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListSubscribedRuleGroupsRequest"))

(smithy/sdk/shapes:define-output list-subscribed-rule-groups-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (rule-groups :target-type
                                   subscribed-rule-group-summaries :member-name
                                   "RuleGroups"))
                                 (:shape-name
                                  "ListSubscribedRuleGroupsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (tag-info-for-resource :target-type
                                   tag-info-for-resource :member-name
                                   "TagInfoForResource"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-web-acls-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListWebACLsRequest"))

(smithy/sdk/shapes:define-output list-web-acls-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (web-acls :target-type web-aclsummaries
                                   :member-name "WebACLs"))
                                 (:shape-name "ListWebACLsResponse"))

(smithy/sdk/shapes:define-input list-xss-match-sets-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListXssMatchSetsRequest"))

(smithy/sdk/shapes:define-output list-xss-match-sets-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (xss-match-sets :target-type
                                   xss-match-set-summaries :member-name
                                   "XssMatchSets"))
                                 (:shape-name "ListXssMatchSetsResponse"))

(smithy/sdk/shapes:define-list log-destination-configs :member resource-arn)

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (log-destination-configs :target-type
                                      log-destination-configs :required
                                      common-lisp:t :member-name
                                      "LogDestinationConfigs")
                                     (redacted-fields :target-type
                                      redacted-fields :member-name
                                      "RedactedFields"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-list logging-configurations :member
                               logging-configuration)

(smithy/sdk/shapes:define-type managed-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list managed-keys :member managed-key)

(smithy/sdk/shapes:define-type match-field-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum match-field-type
    common-lisp:nil
  (:uri "URI")
  (:query-string "QUERY_STRING")
  (:header "HEADER")
  (:method "METHOD")
  (:body "BODY")
  (:single-query-arg "SINGLE_QUERY_ARG")
  (:all-query-args "ALL_QUERY_ARGS"))

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum migration-error-type
    common-lisp:nil
  (:entity-not-supported "ENTITY_NOT_SUPPORTED")
  (:entity-not-found "ENTITY_NOT_FOUND")
  (:s3-bucket-no-permission "S3_BUCKET_NO_PERMISSION")
  (:s3-bucket-not-accessible "S3_BUCKET_NOT_ACCESSIBLE")
  (:s3-bucket-not-found "S3_BUCKET_NOT_FOUND")
  (:s3-bucket-invalid-region "S3_BUCKET_INVALID_REGION")
  (:s3-internal-error "S3_INTERNAL_ERROR"))

(smithy/sdk/shapes:define-type negated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type next-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum parameter-exception-field
    common-lisp:nil
  (:change-action "CHANGE_ACTION")
  (:waf-action "WAF_ACTION")
  (:waf-override-action "WAF_OVERRIDE_ACTION")
  (:predicate-type "PREDICATE_TYPE")
  (:ipset-type "IPSET_TYPE")
  (:byte-match-field-type "BYTE_MATCH_FIELD_TYPE")
  (:sql-injection-match-field-type "SQL_INJECTION_MATCH_FIELD_TYPE")
  (:byte-match-text-transformation "BYTE_MATCH_TEXT_TRANSFORMATION")
  (:byte-match-positional-constraint "BYTE_MATCH_POSITIONAL_CONSTRAINT")
  (:size-constraint-comparison-operator "SIZE_CONSTRAINT_COMPARISON_OPERATOR")
  (:geo-match-location-type "GEO_MATCH_LOCATION_TYPE")
  (:geo-match-location-value "GEO_MATCH_LOCATION_VALUE")
  (:rate-key "RATE_KEY")
  (:rule-type "RULE_TYPE")
  (:next-marker "NEXT_MARKER")
  (:resource-arn "RESOURCE_ARN")
  (:tags "TAGS")
  (:tag-keys "TAG_KEYS"))

(smithy/sdk/shapes:define-type parameter-exception-parameter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parameter-exception-reason
    common-lisp:nil
  (:invalid-option "INVALID_OPTION")
  (:illegal-combination "ILLEGAL_COMBINATION")
  (:illegal-argument "ILLEGAL_ARGUMENT")
  (:invalid-tag-key "INVALID_TAG_KEY"))

(smithy/sdk/shapes:define-type policy-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type population-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum positional-constraint
    common-lisp:nil
  (:exactly "EXACTLY")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS")
  (:contains-word "CONTAINS_WORD"))

(smithy/sdk/shapes:define-structure predicate common-lisp:nil
                                    ((negated :target-type negated :required
                                      common-lisp:t :member-name "Negated")
                                     (type :target-type predicate-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (data-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "DataId"))
                                    (:shape-name "Predicate"))

(smithy/sdk/shapes:define-enum predicate-type
    common-lisp:nil
  (:ip-match "IPMatch")
  (:byte-match "ByteMatch")
  (:sql-injection-match "SqlInjectionMatch")
  (:geo-match "GeoMatch")
  (:size-constraint "SizeConstraint")
  (:xss-match "XssMatch")
  (:regex-match "RegexMatch"))

(smithy/sdk/shapes:define-list predicates :member predicate)

(smithy/sdk/shapes:define-input put-logging-configuration-request
                                common-lisp:nil
                                ((logging-configuration :target-type
                                  logging-configuration :required common-lisp:t
                                  :member-name "LoggingConfiguration"))
                                (:shape-name "PutLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output put-logging-configuration-response
                                 common-lisp:nil
                                 ((logging-configuration :target-type
                                   logging-configuration :member-name
                                   "LoggingConfiguration"))
                                 (:shape-name
                                  "PutLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input put-permission-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy :target-type policy-string :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutPermissionPolicyRequest"))

(smithy/sdk/shapes:define-output put-permission-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutPermissionPolicyResponse"))

(smithy/sdk/shapes:define-structure rate-based-rule common-lisp:nil
                                    ((rule-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (match-predicates :target-type predicates
                                      :required common-lisp:t :member-name
                                      "MatchPredicates")
                                     (rate-key :target-type rate-key :required
                                      common-lisp:t :member-name "RateKey")
                                     (rate-limit :target-type rate-limit
                                      :required common-lisp:t :member-name
                                      "RateLimit"))
                                    (:shape-name "RateBasedRule"))

(smithy/sdk/shapes:define-enum rate-key
    common-lisp:nil
  (:ip "IP"))

(smithy/sdk/shapes:define-type rate-limit smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list redacted-fields :member field-to-match)

(smithy/sdk/shapes:define-structure regex-match-set common-lisp:nil
                                    ((regex-match-set-id :target-type
                                      resource-id :member-name
                                      "RegexMatchSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (regex-match-tuples :target-type
                                      regex-match-tuples :member-name
                                      "RegexMatchTuples"))
                                    (:shape-name "RegexMatchSet"))

(smithy/sdk/shapes:define-list regex-match-set-summaries :member
                               regex-match-set-summary)

(smithy/sdk/shapes:define-structure regex-match-set-summary common-lisp:nil
                                    ((regex-match-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "RegexMatchSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "RegexMatchSetSummary"))

(smithy/sdk/shapes:define-structure regex-match-set-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (regex-match-tuple :target-type
                                      regex-match-tuple :required common-lisp:t
                                      :member-name "RegexMatchTuple"))
                                    (:shape-name "RegexMatchSetUpdate"))

(smithy/sdk/shapes:define-list regex-match-set-updates :member
                               regex-match-set-update)

(smithy/sdk/shapes:define-structure regex-match-tuple common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformation :target-type
                                      text-transformation :required
                                      common-lisp:t :member-name
                                      "TextTransformation")
                                     (regex-pattern-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "RegexPatternSetId"))
                                    (:shape-name "RegexMatchTuple"))

(smithy/sdk/shapes:define-list regex-match-tuples :member regex-match-tuple)

(smithy/sdk/shapes:define-structure regex-pattern-set common-lisp:nil
                                    ((regex-pattern-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "RegexPatternSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (regex-pattern-strings :target-type
                                      regex-pattern-strings :required
                                      common-lisp:t :member-name
                                      "RegexPatternStrings"))
                                    (:shape-name "RegexPatternSet"))

(smithy/sdk/shapes:define-list regex-pattern-set-summaries :member
                               regex-pattern-set-summary)

(smithy/sdk/shapes:define-structure regex-pattern-set-summary common-lisp:nil
                                    ((regex-pattern-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "RegexPatternSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "RegexPatternSetSummary"))

(smithy/sdk/shapes:define-structure regex-pattern-set-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (regex-pattern-string :target-type
                                      regex-pattern-string :required
                                      common-lisp:t :member-name
                                      "RegexPatternString"))
                                    (:shape-name "RegexPatternSetUpdate"))

(smithy/sdk/shapes:define-list regex-pattern-set-updates :member
                               regex-pattern-set-update)

(smithy/sdk/shapes:define-type regex-pattern-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list regex-pattern-strings :member
                               regex-pattern-string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((rule-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (predicates :target-type predicates
                                      :required common-lisp:t :member-name
                                      "Predicates"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-structure rule-group common-lisp:nil
                                    ((rule-group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleGroupId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName"))
                                    (:shape-name "RuleGroup"))

(smithy/sdk/shapes:define-list rule-group-summaries :member rule-group-summary)

(smithy/sdk/shapes:define-structure rule-group-summary common-lisp:nil
                                    ((rule-group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleGroupId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "RuleGroupSummary"))

(smithy/sdk/shapes:define-structure rule-group-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (activated-rule :target-type
                                      activated-rule :required common-lisp:t
                                      :member-name "ActivatedRule"))
                                    (:shape-name "RuleGroupUpdate"))

(smithy/sdk/shapes:define-list rule-group-updates :member rule-group-update)

(smithy/sdk/shapes:define-type rule-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list rule-summaries :member rule-summary)

(smithy/sdk/shapes:define-structure rule-summary common-lisp:nil
                                    ((rule-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "RuleSummary"))

(smithy/sdk/shapes:define-structure rule-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (predicate :target-type predicate
                                      :required common-lisp:t :member-name
                                      "Predicate"))
                                    (:shape-name "RuleUpdate"))

(smithy/sdk/shapes:define-list rule-updates :member rule-update)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sample-weight smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure sampled-httprequest common-lisp:nil
                                    ((request :target-type httprequest
                                      :required common-lisp:t :member-name
                                      "Request")
                                     (weight :target-type sample-weight
                                      :required common-lisp:t :member-name
                                      "Weight")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (action :target-type action :member-name
                                      "Action")
                                     (rule-within-rule-group :target-type
                                      resource-id :member-name
                                      "RuleWithinRuleGroup"))
                                    (:shape-name "SampledHTTPRequest"))

(smithy/sdk/shapes:define-list sampled-httprequests :member sampled-httprequest)

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure size-constraint common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformation :target-type
                                      text-transformation :required
                                      common-lisp:t :member-name
                                      "TextTransformation")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (size :target-type size :required
                                      common-lisp:t :member-name "Size"))
                                    (:shape-name "SizeConstraint"))

(smithy/sdk/shapes:define-structure size-constraint-set common-lisp:nil
                                    ((size-constraint-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "SizeConstraintSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (size-constraints :target-type
                                      size-constraints :required common-lisp:t
                                      :member-name "SizeConstraints"))
                                    (:shape-name "SizeConstraintSet"))

(smithy/sdk/shapes:define-list size-constraint-set-summaries :member
                               size-constraint-set-summary)

(smithy/sdk/shapes:define-structure size-constraint-set-summary common-lisp:nil
                                    ((size-constraint-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "SizeConstraintSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "SizeConstraintSetSummary"))

(smithy/sdk/shapes:define-structure size-constraint-set-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (size-constraint :target-type
                                      size-constraint :required common-lisp:t
                                      :member-name "SizeConstraint"))
                                    (:shape-name "SizeConstraintSetUpdate"))

(smithy/sdk/shapes:define-list size-constraint-set-updates :member
                               size-constraint-set-update)

(smithy/sdk/shapes:define-list size-constraints :member size-constraint)

(smithy/sdk/shapes:define-structure sql-injection-match-set common-lisp:nil
                                    ((sql-injection-match-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "SqlInjectionMatchSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (sql-injection-match-tuples :target-type
                                      sql-injection-match-tuples :required
                                      common-lisp:t :member-name
                                      "SqlInjectionMatchTuples"))
                                    (:shape-name "SqlInjectionMatchSet"))

(smithy/sdk/shapes:define-list sql-injection-match-set-summaries :member
                               sql-injection-match-set-summary)

(smithy/sdk/shapes:define-structure sql-injection-match-set-summary
                                    common-lisp:nil
                                    ((sql-injection-match-set-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "SqlInjectionMatchSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "SqlInjectionMatchSetSummary"))

(smithy/sdk/shapes:define-structure sql-injection-match-set-update
                                    common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (sql-injection-match-tuple :target-type
                                      sql-injection-match-tuple :required
                                      common-lisp:t :member-name
                                      "SqlInjectionMatchTuple"))
                                    (:shape-name "SqlInjectionMatchSetUpdate"))

(smithy/sdk/shapes:define-list sql-injection-match-set-updates :member
                               sql-injection-match-set-update)

(smithy/sdk/shapes:define-structure sql-injection-match-tuple common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformation :target-type
                                      text-transformation :required
                                      common-lisp:t :member-name
                                      "TextTransformation"))
                                    (:shape-name "SqlInjectionMatchTuple"))

(smithy/sdk/shapes:define-list sql-injection-match-tuples :member
                               sql-injection-match-tuple)

(smithy/sdk/shapes:define-list subscribed-rule-group-summaries :member
                               subscribed-rule-group-summary)

(smithy/sdk/shapes:define-structure subscribed-rule-group-summary
                                    common-lisp:nil
                                    ((rule-group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleGroupId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName"))
                                    (:shape-name "SubscribedRuleGroupSummary"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-info-for-resource common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "TagInfoForResource"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum text-transformation
    common-lisp:nil
  (:none "NONE")
  (:compress-white-space "COMPRESS_WHITE_SPACE")
  (:html-entity-decode "HTML_ENTITY_DECODE")
  (:lowercase "LOWERCASE")
  (:cmd-line "CMD_LINE")
  (:url-decode "URL_DECODE"))

(smithy/sdk/shapes:define-structure time-window common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "EndTime"))
                                    (:shape-name "TimeWindow"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type uristring smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-byte-match-set-request common-lisp:nil
                                ((byte-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ByteMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type byte-match-set-updates
                                  :required common-lisp:t :member-name
                                  "Updates"))
                                (:shape-name "UpdateByteMatchSetRequest"))

(smithy/sdk/shapes:define-output update-byte-match-set-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateByteMatchSetResponse"))

(smithy/sdk/shapes:define-input update-geo-match-set-request common-lisp:nil
                                ((geo-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "GeoMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type geo-match-set-updates
                                  :required common-lisp:t :member-name
                                  "Updates"))
                                (:shape-name "UpdateGeoMatchSetRequest"))

(smithy/sdk/shapes:define-output update-geo-match-set-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateGeoMatchSetResponse"))

(smithy/sdk/shapes:define-input update-ipset-request common-lisp:nil
                                ((ipset-id :target-type resource-id :required
                                  common-lisp:t :member-name "IPSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type ipset-updates :required
                                  common-lisp:t :member-name "Updates"))
                                (:shape-name "UpdateIPSetRequest"))

(smithy/sdk/shapes:define-output update-ipset-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateIPSetResponse"))

(smithy/sdk/shapes:define-input update-rate-based-rule-request common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type rule-updates :required
                                  common-lisp:t :member-name "Updates")
                                 (rate-limit :target-type rate-limit :required
                                  common-lisp:t :member-name "RateLimit"))
                                (:shape-name "UpdateRateBasedRuleRequest"))

(smithy/sdk/shapes:define-output update-rate-based-rule-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateRateBasedRuleResponse"))

(smithy/sdk/shapes:define-input update-regex-match-set-request common-lisp:nil
                                ((regex-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RegexMatchSetId")
                                 (updates :target-type regex-match-set-updates
                                  :required common-lisp:t :member-name
                                  "Updates")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "UpdateRegexMatchSetRequest"))

(smithy/sdk/shapes:define-output update-regex-match-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateRegexMatchSetResponse"))

(smithy/sdk/shapes:define-input update-regex-pattern-set-request
                                common-lisp:nil
                                ((regex-pattern-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RegexPatternSetId")
                                 (updates :target-type
                                  regex-pattern-set-updates :required
                                  common-lisp:t :member-name "Updates")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "UpdateRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output update-regex-pattern-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input update-rule-group-request common-lisp:nil
                                ((rule-group-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "RuleGroupId")
                                 (updates :target-type rule-group-updates
                                  :required common-lisp:t :member-name
                                  "Updates")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken"))
                                (:shape-name "UpdateRuleGroupRequest"))

(smithy/sdk/shapes:define-output update-rule-group-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateRuleGroupResponse"))

(smithy/sdk/shapes:define-input update-rule-request common-lisp:nil
                                ((rule-id :target-type resource-id :required
                                  common-lisp:t :member-name "RuleId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type rule-updates :required
                                  common-lisp:t :member-name "Updates"))
                                (:shape-name "UpdateRuleRequest"))

(smithy/sdk/shapes:define-output update-rule-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateRuleResponse"))

(smithy/sdk/shapes:define-input update-size-constraint-set-request
                                common-lisp:nil
                                ((size-constraint-set-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "SizeConstraintSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type
                                  size-constraint-set-updates :required
                                  common-lisp:t :member-name "Updates"))
                                (:shape-name "UpdateSizeConstraintSetRequest"))

(smithy/sdk/shapes:define-output update-size-constraint-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name
                                  "UpdateSizeConstraintSetResponse"))

(smithy/sdk/shapes:define-input update-sql-injection-match-set-request
                                common-lisp:nil
                                ((sql-injection-match-set-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "SqlInjectionMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type
                                  sql-injection-match-set-updates :required
                                  common-lisp:t :member-name "Updates"))
                                (:shape-name
                                 "UpdateSqlInjectionMatchSetRequest"))

(smithy/sdk/shapes:define-output update-sql-injection-match-set-response
                                 common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name
                                  "UpdateSqlInjectionMatchSetResponse"))

(smithy/sdk/shapes:define-input update-web-aclrequest common-lisp:nil
                                ((web-aclid :target-type resource-id :required
                                  common-lisp:t :member-name "WebACLId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type web-aclupdates
                                  :member-name "Updates")
                                 (default-action :target-type waf-action
                                  :member-name "DefaultAction"))
                                (:shape-name "UpdateWebACLRequest"))

(smithy/sdk/shapes:define-output update-web-aclresponse common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateWebACLResponse"))

(smithy/sdk/shapes:define-input update-xss-match-set-request common-lisp:nil
                                ((xss-match-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "XssMatchSetId")
                                 (change-token :target-type change-token
                                  :required common-lisp:t :member-name
                                  "ChangeToken")
                                 (updates :target-type xss-match-set-updates
                                  :required common-lisp:t :member-name
                                  "Updates"))
                                (:shape-name "UpdateXssMatchSetRequest"))

(smithy/sdk/shapes:define-output update-xss-match-set-response common-lisp:nil
                                 ((change-token :target-type change-token
                                   :member-name "ChangeToken"))
                                 (:shape-name "UpdateXssMatchSetResponse"))

(smithy/sdk/shapes:define-error wafbad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFBadRequestException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafdisallowed-name-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFDisallowedNameException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafentity-migration-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (migration-error-type :target-type
                                  migration-error-type :member-name
                                  "MigrationErrorType")
                                 (migration-error-reason :target-type
                                  error-reason :member-name
                                  "MigrationErrorReason"))
                                (:shape-name "WAFEntityMigrationException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafinternal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFInternalErrorException")
                                (:error-code 500) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafinvalid-account-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "WAFInvalidAccountException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafinvalid-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFInvalidOperationException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafinvalid-parameter-exception common-lisp:nil
                                ((field :target-type parameter-exception-field
                                  :member-name "field")
                                 (parameter :target-type
                                  parameter-exception-parameter :member-name
                                  "parameter")
                                 (reason :target-type
                                  parameter-exception-reason :member-name
                                  "reason"))
                                (:shape-name "WAFInvalidParameterException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafinvalid-permission-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WAFInvalidPermissionPolicyException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafinvalid-regex-pattern-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFInvalidRegexPatternException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error waflimits-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFLimitsExceededException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafnon-empty-entity-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFNonEmptyEntityException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafnonexistent-container-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WAFNonexistentContainerException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafnonexistent-item-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFNonexistentItemException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafreferenced-item-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFReferencedItemException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafservice-linked-role-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WAFServiceLinkedRoleErrorException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafstale-data-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFStaleDataException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error wafsubscription-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WAFSubscriptionNotFoundException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error waftag-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "WAFTagOperationException")
                                (:error-code 400) (:base-class waf-error))

(smithy/sdk/shapes:define-error waftag-operation-internal-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WAFTagOperationInternalErrorException")
                                (:error-code 500) (:base-class waf-error))

(smithy/sdk/shapes:define-structure waf-action common-lisp:nil
                                    ((type :target-type waf-action-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "WafAction"))

(smithy/sdk/shapes:define-enum waf-action-type
    common-lisp:nil
  (:block "BLOCK")
  (:allow "ALLOW")
  (:count "COUNT"))

(smithy/sdk/shapes:define-structure waf-override-action common-lisp:nil
                                    ((type :target-type
                                      waf-override-action-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "WafOverrideAction"))

(smithy/sdk/shapes:define-enum waf-override-action-type
    common-lisp:nil
  (:none "NONE")
  (:count "COUNT"))

(smithy/sdk/shapes:define-enum waf-rule-type
    common-lisp:nil
  (:regular "REGULAR")
  (:rate-based "RATE_BASED")
  (:group "GROUP"))

(smithy/sdk/shapes:define-structure web-acl common-lisp:nil
                                    ((web-aclid :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "WebACLId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (default-action :target-type waf-action
                                      :required common-lisp:t :member-name
                                      "DefaultAction")
                                     (rules :target-type activated-rules
                                      :required common-lisp:t :member-name
                                      "Rules")
                                     (web-aclarn :target-type resource-arn
                                      :member-name "WebACLArn"))
                                    (:shape-name "WebACL"))

(smithy/sdk/shapes:define-list web-aclsummaries :member web-aclsummary)

(smithy/sdk/shapes:define-structure web-aclsummary common-lisp:nil
                                    ((web-aclid :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "WebACLId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "WebACLSummary"))

(smithy/sdk/shapes:define-structure web-aclupdate common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (activated-rule :target-type
                                      activated-rule :required common-lisp:t
                                      :member-name "ActivatedRule"))
                                    (:shape-name "WebACLUpdate"))

(smithy/sdk/shapes:define-list web-aclupdates :member web-aclupdate)

(smithy/sdk/shapes:define-structure xss-match-set common-lisp:nil
                                    ((xss-match-set-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "XssMatchSetId")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (xss-match-tuples :target-type
                                      xss-match-tuples :required common-lisp:t
                                      :member-name "XssMatchTuples"))
                                    (:shape-name "XssMatchSet"))

(smithy/sdk/shapes:define-list xss-match-set-summaries :member
                               xss-match-set-summary)

(smithy/sdk/shapes:define-structure xss-match-set-summary common-lisp:nil
                                    ((xss-match-set-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "XssMatchSetId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "XssMatchSetSummary"))

(smithy/sdk/shapes:define-structure xss-match-set-update common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (xss-match-tuple :target-type
                                      xss-match-tuple :required common-lisp:t
                                      :member-name "XssMatchTuple"))
                                    (:shape-name "XssMatchSetUpdate"))

(smithy/sdk/shapes:define-list xss-match-set-updates :member
                               xss-match-set-update)

(smithy/sdk/shapes:define-structure xss-match-tuple common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformation :target-type
                                      text-transformation :required
                                      common-lisp:t :member-name
                                      "TextTransformation"))
                                    (:shape-name "XssMatchTuple"))

(smithy/sdk/shapes:define-list xss-match-tuples :member xss-match-tuple)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-byte-match-set :shape-name
                                       "CreateByteMatchSet" :input
                                       create-byte-match-set-request :output
                                       create-byte-match-set-response :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-geo-match-set :shape-name
                                       "CreateGeoMatchSet" :input
                                       create-geo-match-set-request :output
                                       create-geo-match-set-response :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-ipset :shape-name "CreateIPSet"
                                       :input create-ipset-request :output
                                       create-ipset-response :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-rate-based-rule :shape-name
                                       "CreateRateBasedRule" :input
                                       create-rate-based-rule-request :output
                                       create-rate-based-rule-response :errors
                                       (wafbad-request-exception
                                        wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation create-regex-match-set :shape-name
                                       "CreateRegexMatchSet" :input
                                       create-regex-match-set-request :output
                                       create-regex-match-set-response :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-regex-pattern-set :shape-name
                                       "CreateRegexPatternSet" :input
                                       create-regex-pattern-set-request :output
                                       create-regex-pattern-set-response
                                       :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-rule :shape-name "CreateRule"
                                       :input create-rule-request :output
                                       create-rule-response :errors
                                       (wafbad-request-exception
                                        wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation create-rule-group :shape-name
                                       "CreateRuleGroup" :input
                                       create-rule-group-request :output
                                       create-rule-group-response :errors
                                       (wafbad-request-exception
                                        wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation create-size-constraint-set :shape-name
                                       "CreateSizeConstraintSet" :input
                                       create-size-constraint-set-request
                                       :output
                                       create-size-constraint-set-response
                                       :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-sql-injection-match-set
                                       :shape-name "CreateSqlInjectionMatchSet"
                                       :input
                                       create-sql-injection-match-set-request
                                       :output
                                       create-sql-injection-match-set-response
                                       :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation create-web-acl :shape-name
                                       "CreateWebACL" :input
                                       create-web-aclrequest :output
                                       create-web-aclresponse :errors
                                       (wafbad-request-exception
                                        wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation create-web-aclmigration-stack
                                       :shape-name "CreateWebACLMigrationStack"
                                       :input
                                       create-web-aclmigration-stack-request
                                       :output
                                       create-web-aclmigration-stack-response
                                       :errors
                                       (wafentity-migration-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation create-xss-match-set :shape-name
                                       "CreateXssMatchSet" :input
                                       create-xss-match-set-request :output
                                       create-xss-match-set-response :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-byte-match-set :shape-name
                                       "DeleteByteMatchSet" :input
                                       delete-byte-match-set-request :output
                                       delete-byte-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-geo-match-set :shape-name
                                       "DeleteGeoMatchSet" :input
                                       delete-geo-match-set-request :output
                                       delete-geo-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-ipset :shape-name "DeleteIPSet"
                                       :input delete-ipset-request :output
                                       delete-ipset-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-logging-configuration :shape-name
                                       "DeleteLoggingConfiguration" :input
                                       delete-logging-configuration-request
                                       :output
                                       delete-logging-configuration-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-permission-policy :shape-name
                                       "DeletePermissionPolicy" :input
                                       delete-permission-policy-request :output
                                       delete-permission-policy-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-rate-based-rule :shape-name
                                       "DeleteRateBasedRule" :input
                                       delete-rate-based-rule-request :output
                                       delete-rate-based-rule-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-regex-match-set :shape-name
                                       "DeleteRegexMatchSet" :input
                                       delete-regex-match-set-request :output
                                       delete-regex-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-regex-pattern-set :shape-name
                                       "DeleteRegexPatternSet" :input
                                       delete-regex-pattern-set-request :output
                                       delete-regex-pattern-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-request :output
                                       delete-rule-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-rule-group :shape-name
                                       "DeleteRuleGroup" :input
                                       delete-rule-group-request :output
                                       delete-rule-group-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-size-constraint-set :shape-name
                                       "DeleteSizeConstraintSet" :input
                                       delete-size-constraint-set-request
                                       :output
                                       delete-size-constraint-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-sql-injection-match-set
                                       :shape-name "DeleteSqlInjectionMatchSet"
                                       :input
                                       delete-sql-injection-match-set-request
                                       :output
                                       delete-sql-injection-match-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation delete-web-acl :shape-name
                                       "DeleteWebACL" :input
                                       delete-web-aclrequest :output
                                       delete-web-aclresponse :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-xss-match-set :shape-name
                                       "DeleteXssMatchSet" :input
                                       delete-xss-match-set-request :output
                                       delete-xss-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnon-empty-entity-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation get-byte-match-set :shape-name
                                       "GetByteMatchSet" :input
                                       get-byte-match-set-request :output
                                       get-byte-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-change-token :shape-name
                                       "GetChangeToken" :input
                                       get-change-token-request :output
                                       get-change-token-response :errors
                                       (wafinternal-error-exception))

(smithy/sdk/operation:define-operation get-change-token-status :shape-name
                                       "GetChangeTokenStatus" :input
                                       get-change-token-status-request :output
                                       get-change-token-status-response :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-geo-match-set :shape-name
                                       "GetGeoMatchSet" :input
                                       get-geo-match-set-request :output
                                       get-geo-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-ipset :shape-name "GetIPSet" :input
                                       get-ipset-request :output
                                       get-ipset-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-logging-configuration :shape-name
                                       "GetLoggingConfiguration" :input
                                       get-logging-configuration-request
                                       :output
                                       get-logging-configuration-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-permission-policy :shape-name
                                       "GetPermissionPolicy" :input
                                       get-permission-policy-request :output
                                       get-permission-policy-response :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-rate-based-rule :shape-name
                                       "GetRateBasedRule" :input
                                       get-rate-based-rule-request :output
                                       get-rate-based-rule-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-rate-based-rule-managed-keys
                                       :shape-name
                                       "GetRateBasedRuleManagedKeys" :input
                                       get-rate-based-rule-managed-keys-request
                                       :output
                                       get-rate-based-rule-managed-keys-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-regex-match-set :shape-name
                                       "GetRegexMatchSet" :input
                                       get-regex-match-set-request :output
                                       get-regex-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-regex-pattern-set :shape-name
                                       "GetRegexPatternSet" :input
                                       get-regex-pattern-set-request :output
                                       get-regex-pattern-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-rule :shape-name "GetRule" :input
                                       get-rule-request :output
                                       get-rule-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-rule-group :shape-name
                                       "GetRuleGroup" :input
                                       get-rule-group-request :output
                                       get-rule-group-response :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-sampled-requests :shape-name
                                       "GetSampledRequests" :input
                                       get-sampled-requests-request :output
                                       get-sampled-requests-response :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-size-constraint-set :shape-name
                                       "GetSizeConstraintSet" :input
                                       get-size-constraint-set-request :output
                                       get-size-constraint-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-sql-injection-match-set :shape-name
                                       "GetSqlInjectionMatchSet" :input
                                       get-sql-injection-match-set-request
                                       :output
                                       get-sql-injection-match-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-web-acl :shape-name "GetWebACL"
                                       :input get-web-aclrequest :output
                                       get-web-aclresponse :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-xss-match-set :shape-name
                                       "GetXssMatchSet" :input
                                       get-xss-match-set-request :output
                                       get-xss-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation list-activated-rules-in-rule-group
                                       :shape-name
                                       "ListActivatedRulesInRuleGroup" :input
                                       list-activated-rules-in-rule-group-request
                                       :output
                                       list-activated-rules-in-rule-group-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation list-byte-match-sets :shape-name
                                       "ListByteMatchSets" :input
                                       list-byte-match-sets-request :output
                                       list-byte-match-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-geo-match-sets :shape-name
                                       "ListGeoMatchSets" :input
                                       list-geo-match-sets-request :output
                                       list-geo-match-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-ipsets :shape-name "ListIPSets"
                                       :input list-ipsets-request :output
                                       list-ipsets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-logging-configurations :shape-name
                                       "ListLoggingConfigurations" :input
                                       list-logging-configurations-request
                                       :output
                                       list-logging-configurations-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation list-rate-based-rules :shape-name
                                       "ListRateBasedRules" :input
                                       list-rate-based-rules-request :output
                                       list-rate-based-rules-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-regex-match-sets :shape-name
                                       "ListRegexMatchSets" :input
                                       list-regex-match-sets-request :output
                                       list-regex-match-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-regex-pattern-sets :shape-name
                                       "ListRegexPatternSets" :input
                                       list-regex-pattern-sets-request :output
                                       list-regex-pattern-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-rule-groups :shape-name
                                       "ListRuleGroups" :input
                                       list-rule-groups-request :output
                                       list-rule-groups-response :errors
                                       (wafinternal-error-exception))

(smithy/sdk/operation:define-operation list-rules :shape-name "ListRules"
                                       :input list-rules-request :output
                                       list-rules-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-size-constraint-sets :shape-name
                                       "ListSizeConstraintSets" :input
                                       list-size-constraint-sets-request
                                       :output
                                       list-size-constraint-sets-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-sql-injection-match-sets
                                       :shape-name "ListSqlInjectionMatchSets"
                                       :input
                                       list-sql-injection-match-sets-request
                                       :output
                                       list-sql-injection-match-sets-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-subscribed-rule-groups :shape-name
                                       "ListSubscribedRuleGroups" :input
                                       list-subscribed-rule-groups-request
                                       :output
                                       list-subscribed-rule-groups-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (wafbad-request-exception
                                        wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation list-web-acls :shape-name "ListWebACLs"
                                       :input list-web-acls-request :output
                                       list-web-acls-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation list-xss-match-sets :shape-name
                                       "ListXssMatchSets" :input
                                       list-xss-match-sets-request :output
                                       list-xss-match-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception))

(smithy/sdk/operation:define-operation put-logging-configuration :shape-name
                                       "PutLoggingConfiguration" :input
                                       put-logging-configuration-request
                                       :output
                                       put-logging-configuration-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafnonexistent-item-exception
                                        wafservice-linked-role-error-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation put-permission-policy :shape-name
                                       "PutPermissionPolicy" :input
                                       put-permission-policy-request :output
                                       put-permission-policy-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-permission-policy-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (wafbad-request-exception
                                        wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (wafbad-request-exception
                                        wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation update-byte-match-set :shape-name
                                       "UpdateByteMatchSet" :input
                                       update-byte-match-set-request :output
                                       update-byte-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-geo-match-set :shape-name
                                       "UpdateGeoMatchSet" :input
                                       update-geo-match-set-request :output
                                       update-geo-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-ipset :shape-name "UpdateIPSet"
                                       :input update-ipset-request :output
                                       update-ipset-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-rate-based-rule :shape-name
                                       "UpdateRateBasedRule" :input
                                       update-rate-based-rule-request :output
                                       update-rate-based-rule-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-regex-match-set :shape-name
                                       "UpdateRegexMatchSet" :input
                                       update-regex-match-set-request :output
                                       update-regex-match-set-response :errors
                                       (wafdisallowed-name-exception
                                        wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-regex-pattern-set :shape-name
                                       "UpdateRegexPatternSet" :input
                                       update-regex-pattern-set-request :output
                                       update-regex-pattern-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-regex-pattern-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-rule :shape-name "UpdateRule"
                                       :input update-rule-request :output
                                       update-rule-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-rule-group :shape-name
                                       "UpdateRuleGroup" :input
                                       update-rule-group-request :output
                                       update-rule-group-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-size-constraint-set :shape-name
                                       "UpdateSizeConstraintSet" :input
                                       update-size-constraint-set-request
                                       :output
                                       update-size-constraint-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-sql-injection-match-set
                                       :shape-name "UpdateSqlInjectionMatchSet"
                                       :input
                                       update-sql-injection-match-set-request
                                       :output
                                       update-sql-injection-match-set-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))

(smithy/sdk/operation:define-operation update-web-acl :shape-name
                                       "UpdateWebACL" :input
                                       update-web-aclrequest :output
                                       update-web-aclresponse :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafreferenced-item-exception
                                        wafstale-data-exception
                                        wafsubscription-not-found-exception))

(smithy/sdk/operation:define-operation update-xss-match-set :shape-name
                                       "UpdateXssMatchSet" :input
                                       update-xss-match-set-request :output
                                       update-xss-match-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-account-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-container-exception
                                        wafnonexistent-item-exception
                                        wafstale-data-exception))
