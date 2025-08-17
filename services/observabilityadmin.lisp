(uiop/package:define-package #:pira/observabilityadmin (:use)
                             (:export #:account-identifier
                              #:account-identifiers #:create-telemetry-rule
                              #:create-telemetry-rule-for-organization
                              #:delete-telemetry-rule
                              #:delete-telemetry-rule-for-organization
                              #:destination-type #:failure-reason
                              #:get-telemetry-evaluation-status
                              #:get-telemetry-evaluation-status-for-organization
                              #:get-telemetry-rule
                              #:get-telemetry-rule-for-organization
                              #:list-resource-telemetry
                              #:list-resource-telemetry-for-organization
                              #:list-resource-telemetry-for-organization-max-results
                              #:list-resource-telemetry-max-results
                              #:list-tags-for-resource #:list-telemetry-rules
                              #:list-telemetry-rules-for-organization
                              #:list-telemetry-rules-for-organization-max-results
                              #:list-telemetry-rules-max-results #:next-token
                              #:observability-admin
                              #:organization-unit-identifier
                              #:organization-unit-identifiers #:resource-arn
                              #:resource-identifier
                              #:resource-identifier-prefix #:resource-type
                              #:resource-types #:retention-period-in-days
                              #:rule-identifier #:rule-name
                              #:start-telemetry-evaluation
                              #:start-telemetry-evaluation-for-organization
                              #:status #:stop-telemetry-evaluation
                              #:stop-telemetry-evaluation-for-organization
                              #:tag-key #:tag-key-list #:tag-map-input
                              #:tag-map-output #:tag-resource #:tag-value
                              #:telemetry-configuration
                              #:telemetry-configuration-state
                              #:telemetry-configurations
                              #:telemetry-destination-configuration
                              #:telemetry-rule #:telemetry-rule-summaries
                              #:telemetry-rule-summary #:telemetry-state
                              #:telemetry-type #:untag-resource
                              #:update-telemetry-rule
                              #:update-telemetry-rule-for-organization
                              #:vpcflow-log-parameters))
(common-lisp:in-package #:pira/observabilityadmin)

(smithy/sdk/service:define-service observability-admin :shape-name
                                   "ObservabilityAdmin" :version "2018-05-10"
                                   :title
                                   "CloudWatch Observability Admin Service"
                                   :operations
                                   '(create-telemetry-rule
                                     create-telemetry-rule-for-organization
                                     delete-telemetry-rule
                                     delete-telemetry-rule-for-organization
                                     get-telemetry-evaluation-status
                                     get-telemetry-evaluation-status-for-organization
                                     get-telemetry-rule
                                     get-telemetry-rule-for-organization
                                     list-resource-telemetry
                                     list-resource-telemetry-for-organization
                                     list-tags-for-resource
                                     list-telemetry-rules
                                     list-telemetry-rules-for-organization
                                     start-telemetry-evaluation
                                     start-telemetry-evaluation-for-organization
                                     stop-telemetry-evaluation
                                     stop-telemetry-evaluation-for-organization
                                     tag-resource untag-resource
                                     update-telemetry-rule
                                     update-telemetry-rule-for-organization)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ObservabilityAdmin")
                                      ("arnNamespace" . "observabilityadmin"))
                                     ("aws.auth#sigv4"
                                      ("name" . "observabilityadmin"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type account-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-identifiers :member account-identifier)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-telemetry-rule-for-organization-input
                                common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "RuleName")
                                 (rule :target-type telemetry-rule :required
                                  common-lisp:t :member-name "Rule")
                                 (tags :target-type tag-map-input :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateTelemetryRuleForOrganizationInput"))

(smithy/sdk/shapes:define-output create-telemetry-rule-for-organization-output
                                 common-lisp:nil
                                 ((rule-arn :target-type resource-arn
                                   :member-name "RuleArn"))
                                 (:shape-name
                                  "CreateTelemetryRuleForOrganizationOutput"))

(smithy/sdk/shapes:define-input create-telemetry-rule-input common-lisp:nil
                                ((rule-name :target-type rule-name :required
                                  common-lisp:t :member-name "RuleName")
                                 (rule :target-type telemetry-rule :required
                                  common-lisp:t :member-name "Rule")
                                 (tags :target-type tag-map-input :member-name
                                  "Tags"))
                                (:shape-name "CreateTelemetryRuleInput"))

(smithy/sdk/shapes:define-output create-telemetry-rule-output common-lisp:nil
                                 ((rule-arn :target-type resource-arn
                                   :member-name "RuleArn"))
                                 (:shape-name "CreateTelemetryRuleOutput"))

(smithy/sdk/shapes:define-input delete-telemetry-rule-for-organization-input
                                common-lisp:nil
                                ((rule-identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "RuleIdentifier"))
                                (:shape-name
                                 "DeleteTelemetryRuleForOrganizationInput"))

(smithy/sdk/shapes:define-input delete-telemetry-rule-input common-lisp:nil
                                ((rule-identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "RuleIdentifier"))
                                (:shape-name "DeleteTelemetryRuleInput"))

(smithy/sdk/shapes:define-enum destination-type
    common-lisp:nil
  (:cloudwatch-logs "cloud-watch-logs"))

(smithy/sdk/shapes:define-type failure-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output
 get-telemetry-evaluation-status-for-organization-output common-lisp:nil
 ((status :target-type status :member-name "Status")
  (failure-reason :target-type failure-reason :member-name "FailureReason"))
 (:shape-name "GetTelemetryEvaluationStatusForOrganizationOutput"))

(smithy/sdk/shapes:define-output get-telemetry-evaluation-status-output
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "Status")
                                  (failure-reason :target-type failure-reason
                                   :member-name "FailureReason"))
                                 (:shape-name
                                  "GetTelemetryEvaluationStatusOutput"))

(smithy/sdk/shapes:define-input get-telemetry-rule-for-organization-input
                                common-lisp:nil
                                ((rule-identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "RuleIdentifier"))
                                (:shape-name
                                 "GetTelemetryRuleForOrganizationInput"))

(smithy/sdk/shapes:define-output get-telemetry-rule-for-organization-output
                                 common-lisp:nil
                                 ((rule-name :target-type rule-name
                                   :member-name "RuleName")
                                  (rule-arn :target-type resource-arn
                                   :member-name "RuleArn")
                                  (created-time-stamp :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "CreatedTimeStamp")
                                  (last-update-time-stamp :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "LastUpdateTimeStamp")
                                  (telemetry-rule :target-type telemetry-rule
                                   :member-name "TelemetryRule"))
                                 (:shape-name
                                  "GetTelemetryRuleForOrganizationOutput"))

(smithy/sdk/shapes:define-input get-telemetry-rule-input common-lisp:nil
                                ((rule-identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "RuleIdentifier"))
                                (:shape-name "GetTelemetryRuleInput"))

(smithy/sdk/shapes:define-output get-telemetry-rule-output common-lisp:nil
                                 ((rule-name :target-type rule-name
                                   :member-name "RuleName")
                                  (rule-arn :target-type resource-arn
                                   :member-name "RuleArn")
                                  (created-time-stamp :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "CreatedTimeStamp")
                                  (last-update-time-stamp :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "LastUpdateTimeStamp")
                                  (telemetry-rule :target-type telemetry-rule
                                   :member-name "TelemetryRule"))
                                 (:shape-name "GetTelemetryRuleOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-resource-telemetry-for-organization-input
                                common-lisp:nil
                                ((account-identifiers :target-type
                                  account-identifiers :member-name
                                  "AccountIdentifiers")
                                 (resource-identifier-prefix :target-type
                                  resource-identifier-prefix :member-name
                                  "ResourceIdentifierPrefix")
                                 (resource-types :target-type resource-types
                                  :member-name "ResourceTypes")
                                 (telemetry-configuration-state :target-type
                                  telemetry-configuration-state :member-name
                                  "TelemetryConfigurationState")
                                 (resource-tags :target-type tag-map-input
                                  :member-name "ResourceTags")
                                 (max-results :target-type
                                  list-resource-telemetry-for-organization-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListResourceTelemetryForOrganizationInput"))

(smithy/sdk/shapes:define-type
 list-resource-telemetry-for-organization-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output
 list-resource-telemetry-for-organization-output common-lisp:nil
 ((telemetry-configurations :target-type telemetry-configurations :member-name
   "TelemetryConfigurations")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListResourceTelemetryForOrganizationOutput"))

(smithy/sdk/shapes:define-input list-resource-telemetry-input common-lisp:nil
                                ((resource-identifier-prefix :target-type
                                  resource-identifier-prefix :member-name
                                  "ResourceIdentifierPrefix")
                                 (resource-types :target-type resource-types
                                  :member-name "ResourceTypes")
                                 (telemetry-configuration-state :target-type
                                  telemetry-configuration-state :member-name
                                  "TelemetryConfigurationState")
                                 (resource-tags :target-type tag-map-input
                                  :member-name "ResourceTags")
                                 (max-results :target-type
                                  list-resource-telemetry-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListResourceTelemetryInput"))

(smithy/sdk/shapes:define-type list-resource-telemetry-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-resource-telemetry-output common-lisp:nil
                                 ((telemetry-configurations :target-type
                                   telemetry-configurations :member-name
                                   "TelemetryConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceTelemetryOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map-output :required
                                   common-lisp:t :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-telemetry-rules-for-organization-input
                                common-lisp:nil
                                ((rule-name-prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "RuleNamePrefix")
                                 (source-account-ids :target-type
                                  account-identifiers :member-name
                                  "SourceAccountIds")
                                 (source-organization-unit-ids :target-type
                                  organization-unit-identifiers :member-name
                                  "SourceOrganizationUnitIds")
                                 (max-results :target-type
                                  list-telemetry-rules-for-organization-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListTelemetryRulesForOrganizationInput"))

(smithy/sdk/shapes:define-type
 list-telemetry-rules-for-organization-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-telemetry-rules-for-organization-output
                                 common-lisp:nil
                                 ((telemetry-rule-summaries :target-type
                                   telemetry-rule-summaries :member-name
                                   "TelemetryRuleSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListTelemetryRulesForOrganizationOutput"))

(smithy/sdk/shapes:define-input list-telemetry-rules-input common-lisp:nil
                                ((rule-name-prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "RuleNamePrefix")
                                 (max-results :target-type
                                  list-telemetry-rules-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTelemetryRulesInput"))

(smithy/sdk/shapes:define-type list-telemetry-rules-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-telemetry-rules-output common-lisp:nil
                                 ((telemetry-rule-summaries :target-type
                                   telemetry-rule-summaries :member-name
                                   "TelemetryRuleSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTelemetryRulesOutput"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-unit-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organization-unit-identifiers :member
                               organization-unit-identifier)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:aws-ec2-instance "AWS::EC2::Instance")
  (:aws-ec2-vpc "AWS::EC2::VPC")
  (:aws-lamdba-function "AWS::Lambda::Function"))

(smithy/sdk/shapes:define-list resource-types :member resource-type)

(smithy/sdk/shapes:define-type retention-period-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rule-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (amzn-error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "amznErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:starting "STARTING")
  (:failed-start "FAILED_START")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:failed-stop "FAILED_STOP")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map-input :key tag-key :value tag-value)

(smithy/sdk/shapes:define-map tag-map-output :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-map-input :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure telemetry-configuration common-lisp:nil
                                    ((account-identifier :target-type
                                      account-identifier :member-name
                                      "AccountIdentifier")
                                     (telemetry-configuration-state
                                      :target-type
                                      telemetry-configuration-state
                                      :member-name
                                      "TelemetryConfigurationState")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-identifier :target-type
                                      resource-identifier :member-name
                                      "ResourceIdentifier")
                                     (resource-tags :target-type tag-map-output
                                      :member-name "ResourceTags")
                                     (last-update-time-stamp :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "LastUpdateTimeStamp"))
                                    (:shape-name "TelemetryConfiguration"))

(smithy/sdk/shapes:define-map telemetry-configuration-state :key telemetry-type
                              :value telemetry-state)

(smithy/sdk/shapes:define-list telemetry-configurations :member
                               telemetry-configuration)

(smithy/sdk/shapes:define-structure telemetry-destination-configuration
                                    common-lisp:nil
                                    ((destination-type :target-type
                                      destination-type :member-name
                                      "DestinationType")
                                     (destination-pattern :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DestinationPattern")
                                     (retention-in-days :target-type
                                      retention-period-in-days :member-name
                                      "RetentionInDays")
                                     (vpcflow-log-parameters :target-type
                                      vpcflow-log-parameters :member-name
                                      "VPCFlowLogParameters"))
                                    (:shape-name
                                     "TelemetryDestinationConfiguration"))

(smithy/sdk/shapes:define-structure telemetry-rule common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (telemetry-type :target-type
                                      telemetry-type :required common-lisp:t
                                      :member-name "TelemetryType")
                                     (destination-configuration :target-type
                                      telemetry-destination-configuration
                                      :member-name "DestinationConfiguration")
                                     (scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Scope")
                                     (selection-criteria :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SelectionCriteria"))
                                    (:shape-name "TelemetryRule"))

(smithy/sdk/shapes:define-list telemetry-rule-summaries :member
                               telemetry-rule-summary)

(smithy/sdk/shapes:define-structure telemetry-rule-summary common-lisp:nil
                                    ((rule-name :target-type rule-name
                                      :member-name "RuleName")
                                     (rule-arn :target-type resource-arn
                                      :member-name "RuleArn")
                                     (created-time-stamp :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "CreatedTimeStamp")
                                     (last-update-time-stamp :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "LastUpdateTimeStamp")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (telemetry-type :target-type
                                      telemetry-type :member-name
                                      "TelemetryType"))
                                    (:shape-name "TelemetryRuleSummary"))

(smithy/sdk/shapes:define-enum telemetry-state
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled")
  (:not-applicable "NotApplicable"))

(smithy/sdk/shapes:define-enum telemetry-type
    common-lisp:nil
  (:logs "Logs")
  (:metrics "Metrics")
  (:traces "Traces"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-input update-telemetry-rule-for-organization-input
                                common-lisp:nil
                                ((rule-identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "RuleIdentifier")
                                 (rule :target-type telemetry-rule :required
                                  common-lisp:t :member-name "Rule"))
                                (:shape-name
                                 "UpdateTelemetryRuleForOrganizationInput"))

(smithy/sdk/shapes:define-output update-telemetry-rule-for-organization-output
                                 common-lisp:nil
                                 ((rule-arn :target-type resource-arn
                                   :member-name "RuleArn"))
                                 (:shape-name
                                  "UpdateTelemetryRuleForOrganizationOutput"))

(smithy/sdk/shapes:define-input update-telemetry-rule-input common-lisp:nil
                                ((rule-identifier :target-type rule-identifier
                                  :required common-lisp:t :member-name
                                  "RuleIdentifier")
                                 (rule :target-type telemetry-rule :required
                                  common-lisp:t :member-name "Rule"))
                                (:shape-name "UpdateTelemetryRuleInput"))

(smithy/sdk/shapes:define-output update-telemetry-rule-output common-lisp:nil
                                 ((rule-arn :target-type resource-arn
                                   :member-name "RuleArn"))
                                 (:shape-name "UpdateTelemetryRuleOutput"))

(smithy/sdk/shapes:define-structure vpcflow-log-parameters common-lisp:nil
                                    ((log-format :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LogFormat")
                                     (traffic-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TrafficType")
                                     (max-aggregation-interval :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxAggregationInterval"))
                                    (:shape-name "VPCFlowLogParameters"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-telemetry-rule :shape-name
                                       "CreateTelemetryRule" :input
                                       create-telemetry-rule-input :output
                                       create-telemetry-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateTelemetryRule")

(smithy/sdk/operation:define-operation create-telemetry-rule-for-organization
                                       :shape-name
                                       "CreateTelemetryRuleForOrganization"
                                       :input
                                       create-telemetry-rule-for-organization-input
                                       :output
                                       create-telemetry-rule-for-organization-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/CreateTelemetryRuleForOrganization")

(smithy/sdk/operation:define-operation delete-telemetry-rule :shape-name
                                       "DeleteTelemetryRule" :input
                                       delete-telemetry-rule-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteTelemetryRule")

(smithy/sdk/operation:define-operation delete-telemetry-rule-for-organization
                                       :shape-name
                                       "DeleteTelemetryRuleForOrganization"
                                       :input
                                       delete-telemetry-rule-for-organization-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteTelemetryRuleForOrganization")

(smithy/sdk/operation:define-operation get-telemetry-evaluation-status
                                       :shape-name
                                       "GetTelemetryEvaluationStatus" :input
                                       common-lisp:null :output
                                       get-telemetry-evaluation-status-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/GetTelemetryEvaluationStatus")

(smithy/sdk/operation:define-operation
 get-telemetry-evaluation-status-for-organization :shape-name
 "GetTelemetryEvaluationStatusForOrganization" :input common-lisp:null :output
 get-telemetry-evaluation-status-for-organization-output :errors
 (access-denied-exception internal-server-exception too-many-requests-exception
  validation-exception)
 :method "POST" :uri "/GetTelemetryEvaluationStatusForOrganization")

(smithy/sdk/operation:define-operation get-telemetry-rule :shape-name
                                       "GetTelemetryRule" :input
                                       get-telemetry-rule-input :output
                                       get-telemetry-rule-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetTelemetryRule")

(smithy/sdk/operation:define-operation get-telemetry-rule-for-organization
                                       :shape-name
                                       "GetTelemetryRuleForOrganization" :input
                                       get-telemetry-rule-for-organization-input
                                       :output
                                       get-telemetry-rule-for-organization-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetTelemetryRuleForOrganization")

(smithy/sdk/operation:define-operation list-resource-telemetry :shape-name
                                       "ListResourceTelemetry" :input
                                       list-resource-telemetry-input :output
                                       list-resource-telemetry-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListResourceTelemetry")

(smithy/sdk/operation:define-operation list-resource-telemetry-for-organization
                                       :shape-name
                                       "ListResourceTelemetryForOrganization"
                                       :input
                                       list-resource-telemetry-for-organization-input
                                       :output
                                       list-resource-telemetry-for-organization-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListResourceTelemetryForOrganization")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTagsForResource")

(smithy/sdk/operation:define-operation list-telemetry-rules :shape-name
                                       "ListTelemetryRules" :input
                                       list-telemetry-rules-input :output
                                       list-telemetry-rules-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTelemetryRules")

(smithy/sdk/operation:define-operation list-telemetry-rules-for-organization
                                       :shape-name
                                       "ListTelemetryRulesForOrganization"
                                       :input
                                       list-telemetry-rules-for-organization-input
                                       :output
                                       list-telemetry-rules-for-organization-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTelemetryRulesForOrganization")

(smithy/sdk/operation:define-operation start-telemetry-evaluation :shape-name
                                       "StartTelemetryEvaluation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StartTelemetryEvaluation")

(smithy/sdk/operation:define-operation
 start-telemetry-evaluation-for-organization :shape-name
 "StartTelemetryEvaluationForOrganization" :input common-lisp:null :output
 common-lisp:null :errors
 (access-denied-exception internal-server-exception too-many-requests-exception
  validation-exception)
 :method "POST" :uri "/StartTelemetryEvaluationForOrganization")

(smithy/sdk/operation:define-operation stop-telemetry-evaluation :shape-name
                                       "StopTelemetryEvaluation" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/StopTelemetryEvaluation")

(smithy/sdk/operation:define-operation
 stop-telemetry-evaluation-for-organization :shape-name
 "StopTelemetryEvaluationForOrganization" :input common-lisp:null :output
 common-lisp:null :errors
 (access-denied-exception internal-server-exception too-many-requests-exception
  validation-exception)
 :method "POST" :uri "/StopTelemetryEvaluationForOrganization")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/TagResource")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/UntagResource")

(smithy/sdk/operation:define-operation update-telemetry-rule :shape-name
                                       "UpdateTelemetryRule" :input
                                       update-telemetry-rule-input :output
                                       update-telemetry-rule-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateTelemetryRule")

(smithy/sdk/operation:define-operation update-telemetry-rule-for-organization
                                       :shape-name
                                       "UpdateTelemetryRuleForOrganization"
                                       :input
                                       update-telemetry-rule-for-organization-input
                                       :output
                                       update-telemetry-rule-for-organization-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateTelemetryRuleForOrganization")
