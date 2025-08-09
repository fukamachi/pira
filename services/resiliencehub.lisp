(uiop/package:define-package #:pira/resiliencehub (:use)
                             (:export #:accept-grouping-recommendation-entries
                              #:accept-grouping-recommendation-entry
                              #:accept-resource-grouping-recommendations
                              #:add-draft-app-version-resource-mappings
                              #:add-draft-app-version-resource-mappings-request
                              #:add-draft-app-version-resource-mappings-response
                              #:additional-info-map
                              #:additional-info-value-list #:alarm
                              #:alarm-recommendation
                              #:alarm-recommendation-list
                              #:alarm-reference-id-list #:alarm-type #:app
                              #:app-assessment #:app-assessment-schedule-type
                              #:app-assessment-summary
                              #:app-assessment-summary-list
                              #:app-compliance-status-type #:app-component
                              #:app-component-compliance #:app-component-list
                              #:app-component-name-list #:app-drift-status-type
                              #:app-input-source #:app-input-source-list
                              #:app-status-type #:app-summary
                              #:app-summary-list #:app-template-body
                              #:app-version-list #:app-version-summary #:arn
                              #:arn-list #:assessment-compliance
                              #:assessment-invoker
                              #:assessment-risk-recommendation
                              #:assessment-risk-recommendation-list
                              #:assessment-status #:assessment-status-list
                              #:assessment-summary #:aws-region
                              #:aws-resilience-hub
                              #:batch-update-recommendation-status
                              #:batch-update-recommendation-status-failed-entries
                              #:batch-update-recommendation-status-failed-entry
                              #:batch-update-recommendation-status-successful-entries
                              #:batch-update-recommendation-status-successful-entry
                              #:boolean-optional #:client-token
                              #:compliance-drift #:compliance-drift-list
                              #:compliance-status #:component-compliances-list
                              #:component-recommendation
                              #:component-recommendation-list #:condition
                              #:condition-list #:condition-operator-type
                              #:config-recommendation
                              #:config-recommendation-list
                              #:config-recommendation-optimization-type #:cost
                              #:cost-frequency #:create-app
                              #:create-app-request #:create-app-response
                              #:create-app-version-app-component
                              #:create-app-version-app-component-request
                              #:create-app-version-app-component-response
                              #:create-app-version-resource
                              #:create-app-version-resource-request
                              #:create-app-version-resource-response
                              #:create-recommendation-template
                              #:create-recommendation-template-request
                              #:create-recommendation-template-response
                              #:create-resiliency-policy
                              #:create-resiliency-policy-request
                              #:create-resiliency-policy-response
                              #:currency-code #:customer-id
                              #:data-location-constraint #:delete-app
                              #:delete-app-assessment
                              #:delete-app-assessment-request
                              #:delete-app-assessment-response
                              #:delete-app-input-source
                              #:delete-app-input-source-request
                              #:delete-app-input-source-response
                              #:delete-app-request #:delete-app-response
                              #:delete-app-version-app-component
                              #:delete-app-version-app-component-request
                              #:delete-app-version-app-component-response
                              #:delete-app-version-resource
                              #:delete-app-version-resource-request
                              #:delete-app-version-resource-response
                              #:delete-recommendation-template
                              #:delete-recommendation-template-request
                              #:delete-recommendation-template-response
                              #:delete-resiliency-policy
                              #:delete-resiliency-policy-request
                              #:delete-resiliency-policy-response
                              #:describe-app #:describe-app-assessment
                              #:describe-app-assessment-request
                              #:describe-app-assessment-response
                              #:describe-app-request #:describe-app-response
                              #:describe-app-version
                              #:describe-app-version-app-component
                              #:describe-app-version-app-component-request
                              #:describe-app-version-app-component-response
                              #:describe-app-version-request
                              #:describe-app-version-resource
                              #:describe-app-version-resource-request
                              #:describe-app-version-resource-response
                              #:describe-app-version-resources-resolution-status
                              #:describe-app-version-resources-resolution-status-request
                              #:describe-app-version-resources-resolution-status-response
                              #:describe-app-version-response
                              #:describe-app-version-template
                              #:describe-app-version-template-request
                              #:describe-app-version-template-response
                              #:describe-draft-app-version-resources-import-status
                              #:describe-draft-app-version-resources-import-status-request
                              #:describe-draft-app-version-resources-import-status-response
                              #:describe-metrics-export
                              #:describe-resiliency-policy
                              #:describe-resiliency-policy-request
                              #:describe-resiliency-policy-response
                              #:describe-resource-grouping-recommendation-task
                              #:difference-type #:disruption-compliance
                              #:disruption-policy #:disruption-resiliency-score
                              #:disruption-type #:document-name #:double
                              #:drift-status #:drift-type #:eks-namespace
                              #:eks-namespace-list #:eks-source
                              #:eks-source-cluster-namespace #:eks-source-list
                              #:entity-description #:entity-id #:entity-name
                              #:entity-name255 #:entity-name-list
                              #:entity-version #:error-detail
                              #:error-detail-list #:error-message
                              #:estimated-cost-tier #:event-subscription
                              #:event-subscription-list #:event-type
                              #:exclude-recommendation-reason #:experiment
                              #:failed-grouping-recommendation-entries
                              #:failed-grouping-recommendation-entry
                              #:failure-policy #:field #:field-aggregation-type
                              #:field-list #:grouping-app-component
                              #:grouping-recommendation
                              #:grouping-recommendation-confidence-level
                              #:grouping-recommendation-list
                              #:grouping-recommendation-rejection-reason
                              #:grouping-recommendation-status-type
                              #:grouping-resource #:grouping-resource-list
                              #:ha-architecture #:iam-role-arn
                              #:iam-role-arn-list #:iam-role-name
                              #:import-resources-to-draft-app-version
                              #:import-resources-to-draft-app-version-request
                              #:import-resources-to-draft-app-version-response
                              #:integer #:integer-optional
                              #:list-alarm-recommendations
                              #:list-alarm-recommendations-request
                              #:list-alarm-recommendations-response
                              #:list-app-assessment-compliance-drifts
                              #:list-app-assessment-resource-drifts
                              #:list-app-assessments
                              #:list-app-assessments-request
                              #:list-app-assessments-response
                              #:list-app-component-compliances
                              #:list-app-component-compliances-request
                              #:list-app-component-compliances-response
                              #:list-app-component-recommendations
                              #:list-app-component-recommendations-request
                              #:list-app-component-recommendations-response
                              #:list-app-input-sources
                              #:list-app-input-sources-request
                              #:list-app-input-sources-response
                              #:list-app-version-app-components
                              #:list-app-version-app-components-request
                              #:list-app-version-app-components-response
                              #:list-app-version-resource-mappings
                              #:list-app-version-resource-mappings-request
                              #:list-app-version-resource-mappings-response
                              #:list-app-version-resources
                              #:list-app-version-resources-request
                              #:list-app-version-resources-response
                              #:list-app-versions #:list-app-versions-request
                              #:list-app-versions-response #:list-apps
                              #:list-apps-request #:list-apps-response
                              #:list-metrics #:list-recommendation-templates
                              #:list-recommendation-templates-request
                              #:list-recommendation-templates-response
                              #:list-resiliency-policies
                              #:list-resiliency-policies-request
                              #:list-resiliency-policies-response
                              #:list-resource-grouping-recommendations
                              #:list-sop-recommendations
                              #:list-sop-recommendations-request
                              #:list-sop-recommendations-response
                              #:list-suggested-resiliency-policies
                              #:list-suggested-resiliency-policies-request
                              #:list-suggested-resiliency-policies-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-test-recommendations
                              #:list-test-recommendations-request
                              #:list-test-recommendations-response
                              #:list-unsupported-app-version-resources
                              #:list-unsupported-app-version-resources-request
                              #:list-unsupported-app-version-resources-response
                              #:logical-resource-id #:long #:long-optional
                              #:max-results #:metrics-export-status-type
                              #:next-token #:permission-model
                              #:permission-model-type
                              #:physical-identifier-type #:physical-resource
                              #:physical-resource-id #:physical-resource-list
                              #:publish-app-version
                              #:publish-app-version-request
                              #:publish-app-version-response
                              #:put-draft-app-version-template
                              #:put-draft-app-version-template-request
                              #:put-draft-app-version-template-response
                              #:recommendation-compliance
                              #:recommendation-compliance-status
                              #:recommendation-disruption-compliance
                              #:recommendation-id-list #:recommendation-item
                              #:recommendation-item-list
                              #:recommendation-status #:recommendation-template
                              #:recommendation-template-list
                              #:recommendation-template-status
                              #:recommendation-template-status-list
                              #:reject-grouping-recommendation-entries
                              #:reject-grouping-recommendation-entry
                              #:reject-resource-grouping-recommendations
                              #:remove-draft-app-version-resource-mappings
                              #:remove-draft-app-version-resource-mappings-request
                              #:remove-draft-app-version-resource-mappings-response
                              #:render-recommendation-type
                              #:render-recommendation-type-list
                              #:resiliency-policies #:resiliency-policy
                              #:resiliency-policy-tier #:resiliency-score
                              #:resiliency-score-type
                              #:resolve-app-version-resources
                              #:resolve-app-version-resources-request
                              #:resolve-app-version-resources-response
                              #:resource-drift #:resource-drift-list
                              #:resource-error #:resource-error-list
                              #:resource-errors-details #:resource-id
                              #:resource-identifier
                              #:resource-import-status-type
                              #:resource-import-strategy-type
                              #:resource-mapping #:resource-mapping-list
                              #:resource-mapping-type
                              #:resource-resolution-status-type
                              #:resource-source-type #:resource-type
                              #:resources-grouping-rec-gen-status-type
                              #:retry-after-seconds #:row #:row-list
                              #:s3location #:s3url
                              #:scoring-component-resiliency-score
                              #:scoring-component-resiliency-scores #:seconds
                              #:sop-recommendation #:sop-recommendation-list
                              #:sop-service-type #:sort #:sort-list
                              #:spec-reference-id #:start-app-assessment
                              #:start-app-assessment-request
                              #:start-app-assessment-response
                              #:start-metrics-export
                              #:start-resource-grouping-recommendation-task
                              #:string1024 #:string128without-whitespace
                              #:string2048 #:string255 #:string255list
                              #:string500 #:suggested-changes-list #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:template-format #:terraform-source
                              #:terraform-source-list #:test-recommendation
                              #:test-recommendation-list #:test-risk
                              #:test-type #:time-stamp #:unsupported-resource
                              #:unsupported-resource-list #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-app
                              #:update-app-request #:update-app-response
                              #:update-app-version
                              #:update-app-version-app-component
                              #:update-app-version-app-component-request
                              #:update-app-version-app-component-response
                              #:update-app-version-request
                              #:update-app-version-resource
                              #:update-app-version-resource-request
                              #:update-app-version-resource-response
                              #:update-app-version-response
                              #:update-recommendation-status-item
                              #:update-recommendation-status-request-entries
                              #:update-recommendation-status-request-entry
                              #:update-resiliency-policy
                              #:update-resiliency-policy-request
                              #:update-resiliency-policy-response #:uuid))
(common-lisp:in-package #:pira/resiliencehub)

(smithy/sdk/service:define-service aws-resilience-hub :shape-name
                                   "AwsResilienceHub" :version "2020-04-30"
                                   :title "AWS Resilience Hub" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "resiliencehub")
                                      ("arnNamespace" . "resiliencehub")
                                      ("cloudFormationName" . "Resiliencehub")
                                      ("endpointPrefix" . "resiliencehub"))
                                     ("aws.auth#sigv4"
                                      ("name" . "resiliencehub"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-list accept-grouping-recommendation-entries :member
                               accept-grouping-recommendation-entry)

(smithy/sdk/shapes:define-structure accept-grouping-recommendation-entry
                                    common-lisp:nil
                                    ((grouping-recommendation-id :target-type
                                      string255 :required common-lisp:t
                                      :member-name "groupingRecommendationId"))
                                    (:shape-name
                                     "AcceptGroupingRecommendationEntry"))

(smithy/sdk/shapes:define-input
 accept-resource-grouping-recommendations-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (entries :target-type accept-grouping-recommendation-entries :required
   common-lisp:t :member-name "entries"))
 (:shape-name "AcceptResourceGroupingRecommendationsRequest"))

(smithy/sdk/shapes:define-output
 accept-resource-grouping-recommendations-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (failed-entries :target-type failed-grouping-recommendation-entries :required
   common-lisp:t :member-name "failedEntries"))
 (:shape-name "AcceptResourceGroupingRecommendationsResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure
 add-draft-app-version-resource-mappings-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (resource-mappings :target-type resource-mapping-list :required common-lisp:t
   :member-name "resourceMappings"))
 (:shape-name "AddDraftAppVersionResourceMappingsRequest"))

(smithy/sdk/shapes:define-structure
 add-draft-app-version-resource-mappings-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (app-version :target-type entity-version :required common-lisp:t :member-name
   "appVersion")
  (resource-mappings :target-type resource-mapping-list :required common-lisp:t
   :member-name "resourceMappings"))
 (:shape-name "AddDraftAppVersionResourceMappingsResponse"))

(smithy/sdk/shapes:define-map additional-info-map :key
                              string128without-whitespace :value
                              additional-info-value-list)

(smithy/sdk/shapes:define-list additional-info-value-list :member string1024)

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((alarm-arn :target-type arn :member-name
                                      "alarmArn")
                                     (source :target-type string255
                                      :member-name "source"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-structure alarm-recommendation common-lisp:nil
                                    ((recommendation-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "recommendationId")
                                     (reference-id :target-type
                                      spec-reference-id :required common-lisp:t
                                      :member-name "referenceId")
                                     (name :target-type string500 :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (type :target-type alarm-type :required
                                      common-lisp:t :member-name "type")
                                     (app-component-name :target-type entity-id
                                      :member-name "appComponentName")
                                     (items :target-type
                                      recommendation-item-list :member-name
                                      "items")
                                     (prerequisite :target-type string500
                                      :member-name "prerequisite")
                                     (app-component-names :target-type
                                      app-component-name-list :member-name
                                      "appComponentNames")
                                     (recommendation-status :target-type
                                      recommendation-status :member-name
                                      "recommendationStatus"))
                                    (:shape-name "AlarmRecommendation"))

(smithy/sdk/shapes:define-list alarm-recommendation-list :member
                               alarm-recommendation)

(smithy/sdk/shapes:define-list alarm-reference-id-list :member string500)

(smithy/sdk/shapes:define-enum alarm-type
    common-lisp:nil
  (:metric "Metric")
  (:composite "Composite")
  (:canary "Canary")
  (:logs "Logs")
  (:event "Event"))

(smithy/sdk/shapes:define-structure app common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (policy-arn :target-type arn :member-name
                                      "policyArn")
                                     (creation-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (status :target-type app-status-type
                                      :member-name "status")
                                     (compliance-status :target-type
                                      app-compliance-status-type :member-name
                                      "complianceStatus")
                                     (last-app-compliance-evaluation-time
                                      :target-type time-stamp :member-name
                                      "lastAppComplianceEvaluationTime")
                                     (resiliency-score :target-type double
                                      :member-name "resiliencyScore")
                                     (last-resiliency-score-evaluation-time
                                      :target-type time-stamp :member-name
                                      "lastResiliencyScoreEvaluationTime")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (assessment-schedule :target-type
                                      app-assessment-schedule-type :member-name
                                      "assessmentSchedule")
                                     (permission-model :target-type
                                      permission-model :member-name
                                      "permissionModel")
                                     (event-subscriptions :target-type
                                      event-subscription-list :member-name
                                      "eventSubscriptions")
                                     (drift-status :target-type
                                      app-drift-status-type :member-name
                                      "driftStatus")
                                     (last-drift-evaluation-time :target-type
                                      time-stamp :member-name
                                      "lastDriftEvaluationTime")
                                     (rto-in-secs :target-type integer-optional
                                      :member-name "rtoInSecs")
                                     (rpo-in-secs :target-type integer-optional
                                      :member-name "rpoInSecs")
                                     (aws-application-arn :target-type arn
                                      :member-name "awsApplicationArn"))
                                    (:shape-name "App"))

(smithy/sdk/shapes:define-structure app-assessment common-lisp:nil
                                    ((app-arn :target-type arn :member-name
                                      "appArn")
                                     (app-version :target-type entity-version
                                      :member-name "appVersion")
                                     (invoker :target-type assessment-invoker
                                      :required common-lisp:t :member-name
                                      "invoker")
                                     (cost :target-type cost :member-name
                                      "cost")
                                     (resiliency-score :target-type
                                      resiliency-score :member-name
                                      "resiliencyScore")
                                     (compliance :target-type
                                      assessment-compliance :member-name
                                      "compliance")
                                     (compliance-status :target-type
                                      compliance-status :member-name
                                      "complianceStatus")
                                     (assessment-status :target-type
                                      assessment-status :required common-lisp:t
                                      :member-name "assessmentStatus")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (end-time :target-type time-stamp
                                      :member-name "endTime")
                                     (message :target-type string500
                                      :member-name "message")
                                     (assessment-name :target-type entity-name
                                      :member-name "assessmentName")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (policy :target-type resiliency-policy
                                      :member-name "policy")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (resource-errors-details :target-type
                                      resource-errors-details :member-name
                                      "resourceErrorsDetails")
                                     (version-name :target-type entity-version
                                      :member-name "versionName")
                                     (drift-status :target-type drift-status
                                      :member-name "driftStatus")
                                     (summary :target-type assessment-summary
                                      :member-name "summary"))
                                    (:shape-name "AppAssessment"))

(smithy/sdk/shapes:define-enum app-assessment-schedule-type
    common-lisp:nil
  (:disabled "Disabled")
  (:daily "Daily"))

(smithy/sdk/shapes:define-structure app-assessment-summary common-lisp:nil
                                    ((app-arn :target-type arn :member-name
                                      "appArn")
                                     (app-version :target-type entity-version
                                      :member-name "appVersion")
                                     (assessment-status :target-type
                                      assessment-status :required common-lisp:t
                                      :member-name "assessmentStatus")
                                     (invoker :target-type assessment-invoker
                                      :member-name "invoker")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (end-time :target-type time-stamp
                                      :member-name "endTime")
                                     (message :target-type string500
                                      :member-name "message")
                                     (assessment-name :target-type entity-name
                                      :member-name "assessmentName")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (compliance-status :target-type
                                      compliance-status :member-name
                                      "complianceStatus")
                                     (cost :target-type cost :member-name
                                      "cost")
                                     (resiliency-score :target-type double
                                      :member-name "resiliencyScore")
                                     (version-name :target-type entity-version
                                      :member-name "versionName")
                                     (drift-status :target-type drift-status
                                      :member-name "driftStatus"))
                                    (:shape-name "AppAssessmentSummary"))

(smithy/sdk/shapes:define-list app-assessment-summary-list :member
                               app-assessment-summary)

(smithy/sdk/shapes:define-enum app-compliance-status-type
    common-lisp:nil
  (:policy-breached "PolicyBreached")
  (:policy-met "PolicyMet")
  (:not-assessed "NotAssessed")
  (:changes-detected "ChangesDetected")
  (:not-applicable "NotApplicable")
  (:missing-policy "MissingPolicy"))

(smithy/sdk/shapes:define-structure app-component common-lisp:nil
                                    ((name :target-type entity-name255
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type string255 :required
                                      common-lisp:t :member-name "type")
                                     (id :target-type entity-name255
                                      :member-name "id")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo"))
                                    (:shape-name "AppComponent"))

(smithy/sdk/shapes:define-structure app-component-compliance common-lisp:nil
                                    ((cost :target-type cost :member-name
                                      "cost")
                                     (app-component-name :target-type entity-id
                                      :member-name "appComponentName")
                                     (compliance :target-type
                                      assessment-compliance :member-name
                                      "compliance")
                                     (message :target-type string500
                                      :member-name "message")
                                     (status :target-type compliance-status
                                      :member-name "status")
                                     (resiliency-score :target-type
                                      resiliency-score :member-name
                                      "resiliencyScore"))
                                    (:shape-name "AppComponentCompliance"))

(smithy/sdk/shapes:define-list app-component-list :member app-component)

(smithy/sdk/shapes:define-list app-component-name-list :member string255)

(smithy/sdk/shapes:define-enum app-drift-status-type
    common-lisp:nil
  (:not-checked "NotChecked")
  (:not-detected "NotDetected")
  (:detected "Detected"))

(smithy/sdk/shapes:define-structure app-input-source common-lisp:nil
                                    ((source-name :target-type string255
                                      :member-name "sourceName")
                                     (import-type :target-type
                                      resource-mapping-type :required
                                      common-lisp:t :member-name "importType")
                                     (source-arn :target-type arn :member-name
                                      "sourceArn")
                                     (terraform-source :target-type
                                      terraform-source :member-name
                                      "terraformSource")
                                     (resource-count :target-type integer
                                      :member-name "resourceCount")
                                     (eks-source-cluster-namespace :target-type
                                      eks-source-cluster-namespace :member-name
                                      "eksSourceClusterNamespace"))
                                    (:shape-name "AppInputSource"))

(smithy/sdk/shapes:define-list app-input-source-list :member app-input-source)

(smithy/sdk/shapes:define-enum app-status-type
    common-lisp:nil
  (:active "Active")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-structure app-summary common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (creation-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (compliance-status :target-type
                                      app-compliance-status-type :member-name
                                      "complianceStatus")
                                     (resiliency-score :target-type double
                                      :member-name "resiliencyScore")
                                     (assessment-schedule :target-type
                                      app-assessment-schedule-type :member-name
                                      "assessmentSchedule")
                                     (status :target-type app-status-type
                                      :member-name "status")
                                     (drift-status :target-type
                                      app-drift-status-type :member-name
                                      "driftStatus")
                                     (last-app-compliance-evaluation-time
                                      :target-type time-stamp :member-name
                                      "lastAppComplianceEvaluationTime")
                                     (rto-in-secs :target-type integer-optional
                                      :member-name "rtoInSecs")
                                     (rpo-in-secs :target-type integer-optional
                                      :member-name "rpoInSecs")
                                     (aws-application-arn :target-type arn
                                      :member-name "awsApplicationArn"))
                                    (:shape-name "AppSummary"))

(smithy/sdk/shapes:define-list app-summary-list :member app-summary)

(smithy/sdk/shapes:define-type app-template-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list app-version-list :member app-version-summary)

(smithy/sdk/shapes:define-structure app-version-summary common-lisp:nil
                                    ((app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (identifier :target-type long-optional
                                      :member-name "identifier")
                                     (creation-time :target-type time-stamp
                                      :member-name "creationTime")
                                     (version-name :target-type entity-version
                                      :member-name "versionName"))
                                    (:shape-name "AppVersionSummary"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-map assessment-compliance :key disruption-type :value
                              disruption-compliance)

(smithy/sdk/shapes:define-enum assessment-invoker
    common-lisp:nil
  (:user "User")
  (:system "System"))

(smithy/sdk/shapes:define-structure assessment-risk-recommendation
                                    common-lisp:nil
                                    ((risk :target-type string255 :member-name
                                      "risk")
                                     (recommendation :target-type string255
                                      :member-name "recommendation")
                                     (app-components :target-type
                                      app-component-name-list :member-name
                                      "appComponents"))
                                    (:shape-name
                                     "AssessmentRiskRecommendation"))

(smithy/sdk/shapes:define-list assessment-risk-recommendation-list :member
                               assessment-risk-recommendation)

(smithy/sdk/shapes:define-enum assessment-status
    common-lisp:nil
  (:pending "Pending")
  (:inprogress "InProgress")
  (:failed "Failed")
  (:success "Success"))

(smithy/sdk/shapes:define-list assessment-status-list :member assessment-status)

(smithy/sdk/shapes:define-structure assessment-summary common-lisp:nil
                                    ((summary :target-type string500
                                      :member-name "summary")
                                     (risk-recommendations :target-type
                                      assessment-risk-recommendation-list
                                      :member-name "riskRecommendations"))
                                    (:shape-name "AssessmentSummary"))

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 batch-update-recommendation-status-failed-entries :member
 batch-update-recommendation-status-failed-entry)

(smithy/sdk/shapes:define-structure
 batch-update-recommendation-status-failed-entry common-lisp:nil
 ((entry-id :target-type string255 :required common-lisp:t :member-name
   "entryId")
  (error-message :target-type error-message :required common-lisp:t
   :member-name "errorMessage"))
 (:shape-name "BatchUpdateRecommendationStatusFailedEntry"))

(smithy/sdk/shapes:define-input batch-update-recommendation-status-request
                                common-lisp:nil
                                ((app-arn :target-type arn :required
                                  common-lisp:t :member-name "appArn")
                                 (request-entries :target-type
                                  update-recommendation-status-request-entries
                                  :required common-lisp:t :member-name
                                  "requestEntries"))
                                (:shape-name
                                 "BatchUpdateRecommendationStatusRequest"))

(smithy/sdk/shapes:define-output batch-update-recommendation-status-response
                                 common-lisp:nil
                                 ((app-arn :target-type arn :required
                                   common-lisp:t :member-name "appArn")
                                  (successful-entries :target-type
                                   batch-update-recommendation-status-successful-entries
                                   :required common-lisp:t :member-name
                                   "successfulEntries")
                                  (failed-entries :target-type
                                   batch-update-recommendation-status-failed-entries
                                   :required common-lisp:t :member-name
                                   "failedEntries"))
                                 (:shape-name
                                  "BatchUpdateRecommendationStatusResponse"))

(smithy/sdk/shapes:define-list
 batch-update-recommendation-status-successful-entries :member
 batch-update-recommendation-status-successful-entry)

(smithy/sdk/shapes:define-structure
 batch-update-recommendation-status-successful-entry common-lisp:nil
 ((entry-id :target-type string255 :required common-lisp:t :member-name
   "entryId")
  (reference-id :target-type spec-reference-id :required common-lisp:t
   :member-name "referenceId")
  (item :target-type update-recommendation-status-item :member-name "item")
  (excluded :target-type boolean-optional :required common-lisp:t :member-name
   "excluded")
  (app-component-id :target-type entity-name255 :member-name "appComponentId")
  (exclude-reason :target-type exclude-recommendation-reason :member-name
   "excludeReason"))
 (:shape-name "BatchUpdateRecommendationStatusSuccessfulEntry"))

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compliance-drift common-lisp:nil
                                    ((entity-id :target-type string255
                                      :member-name "entityId")
                                     (entity-type :target-type string255
                                      :member-name "entityType")
                                     (drift-type :target-type drift-type
                                      :member-name "driftType")
                                     (app-id :target-type string255
                                      :member-name "appId")
                                     (app-version :target-type string255
                                      :member-name "appVersion")
                                     (expected-reference-id :target-type
                                      string255 :member-name
                                      "expectedReferenceId")
                                     (expected-value :target-type
                                      assessment-compliance :member-name
                                      "expectedValue")
                                     (actual-reference-id :target-type
                                      string255 :member-name
                                      "actualReferenceId")
                                     (actual-value :target-type
                                      assessment-compliance :member-name
                                      "actualValue")
                                     (diff-type :target-type difference-type
                                      :member-name "diffType"))
                                    (:shape-name "ComplianceDrift"))

(smithy/sdk/shapes:define-list compliance-drift-list :member compliance-drift)

(smithy/sdk/shapes:define-enum compliance-status
    common-lisp:nil
  (:policy-breached "PolicyBreached")
  (:policy-met "PolicyMet")
  (:not-applicable "NotApplicable")
  (:missing-policy "MissingPolicy"))

(smithy/sdk/shapes:define-list component-compliances-list :member
                               app-component-compliance)

(smithy/sdk/shapes:define-structure component-recommendation common-lisp:nil
                                    ((app-component-name :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "appComponentName")
                                     (recommendation-status :target-type
                                      recommendation-compliance-status
                                      :required common-lisp:t :member-name
                                      "recommendationStatus")
                                     (config-recommendations :target-type
                                      config-recommendation-list :required
                                      common-lisp:t :member-name
                                      "configRecommendations"))
                                    (:shape-name "ComponentRecommendation"))

(smithy/sdk/shapes:define-list component-recommendation-list :member
                               component-recommendation)

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((field :target-type string255 :required
                                      common-lisp:t :member-name "field")
                                     (operator :target-type
                                      condition-operator-type :required
                                      common-lisp:t :member-name "operator")
                                     (value :target-type string255 :member-name
                                      "value"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-list condition-list :member condition)

(smithy/sdk/shapes:define-enum condition-operator-type
    common-lisp:nil
  (:equals "Equals")
  (:not-equals "NotEquals")
  (:greater-then "GreaterThen")
  (:greater-or-equals "GreaterOrEquals")
  (:less-then "LessThen")
  (:less-or-equals "LessOrEquals"))

(smithy/sdk/shapes:define-structure config-recommendation common-lisp:nil
                                    ((cost :target-type cost :member-name
                                      "cost")
                                     (app-component-name :target-type entity-id
                                      :member-name "appComponentName")
                                     (compliance :target-type
                                      assessment-compliance :member-name
                                      "compliance")
                                     (recommendation-compliance :target-type
                                      recommendation-compliance :member-name
                                      "recommendationCompliance")
                                     (optimization-type :target-type
                                      config-recommendation-optimization-type
                                      :required common-lisp:t :member-name
                                      "optimizationType")
                                     (name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (suggested-changes :target-type
                                      suggested-changes-list :member-name
                                      "suggestedChanges")
                                     (ha-architecture :target-type
                                      ha-architecture :member-name
                                      "haArchitecture")
                                     (reference-id :target-type
                                      spec-reference-id :required common-lisp:t
                                      :member-name "referenceId"))
                                    (:shape-name "ConfigRecommendation"))

(smithy/sdk/shapes:define-list config-recommendation-list :member
                               config-recommendation)

(smithy/sdk/shapes:define-enum config-recommendation-optimization-type
    common-lisp:nil
  (:least-cost "LeastCost")
  (:least-change "LeastChange")
  (:best-az-recovery "BestAZRecovery")
  (:least-errors "LeastErrors")
  (:best-attainable "BestAttainable")
  (:best-region-recovery "BestRegionRecovery"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure cost common-lisp:nil
                                    ((amount :target-type double :required
                                      common-lisp:t :member-name "amount")
                                     (currency :target-type currency-code
                                      :required common-lisp:t :member-name
                                      "currency")
                                     (frequency :target-type cost-frequency
                                      :required common-lisp:t :member-name
                                      "frequency"))
                                    (:shape-name "Cost"))

(smithy/sdk/shapes:define-enum cost-frequency
    common-lisp:nil
  (:hourly "Hourly")
  (:daily "Daily")
  (:monthly "Monthly")
  (:yearly "Yearly"))

(smithy/sdk/shapes:define-structure create-app-request common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (policy-arn :target-type arn :member-name
                                      "policyArn")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (assessment-schedule :target-type
                                      app-assessment-schedule-type :member-name
                                      "assessmentSchedule")
                                     (permission-model :target-type
                                      permission-model :member-name
                                      "permissionModel")
                                     (event-subscriptions :target-type
                                      event-subscription-list :member-name
                                      "eventSubscriptions")
                                     (aws-application-arn :target-type arn
                                      :member-name "awsApplicationArn"))
                                    (:shape-name "CreateAppRequest"))

(smithy/sdk/shapes:define-structure create-app-response common-lisp:nil
                                    ((app :target-type app :required
                                      common-lisp:t :member-name "app"))
                                    (:shape-name "CreateAppResponse"))

(smithy/sdk/shapes:define-structure create-app-version-app-component-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (id :target-type string255 :member-name
                                      "id")
                                     (name :target-type string255 :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type string255 :required
                                      common-lisp:t :member-name "type")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "CreateAppVersionAppComponentRequest"))

(smithy/sdk/shapes:define-structure create-app-version-app-component-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (app-component :target-type app-component
                                      :member-name "appComponent"))
                                    (:shape-name
                                     "CreateAppVersionAppComponentResponse"))

(smithy/sdk/shapes:define-structure create-app-version-resource-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (resource-name :target-type entity-name
                                      :member-name "resourceName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      string2048 :required common-lisp:t
                                      :member-name "physicalResourceId")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (aws-account-id :target-type customer-id
                                      :member-name "awsAccountId")
                                     (resource-type :target-type string255
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (app-components :target-type
                                      app-component-name-list :required
                                      common-lisp:t :member-name
                                      "appComponents")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "CreateAppVersionResourceRequest"))

(smithy/sdk/shapes:define-structure create-app-version-resource-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (physical-resource :target-type
                                      physical-resource :member-name
                                      "physicalResource"))
                                    (:shape-name
                                     "CreateAppVersionResourceResponse"))

(smithy/sdk/shapes:define-structure create-recommendation-template-request
                                    common-lisp:nil
                                    ((recommendation-ids :target-type
                                      recommendation-id-list :member-name
                                      "recommendationIds")
                                     (format :target-type template-format
                                      :member-name "format")
                                     (recommendation-types :target-type
                                      render-recommendation-type-list
                                      :member-name "recommendationTypes")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (bucket-name :target-type entity-name
                                      :member-name "bucketName"))
                                    (:shape-name
                                     "CreateRecommendationTemplateRequest"))

(smithy/sdk/shapes:define-structure create-recommendation-template-response
                                    common-lisp:nil
                                    ((recommendation-template :target-type
                                      recommendation-template :member-name
                                      "recommendationTemplate"))
                                    (:shape-name
                                     "CreateRecommendationTemplateResponse"))

(smithy/sdk/shapes:define-structure create-resiliency-policy-request
                                    common-lisp:nil
                                    ((policy-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "policyName")
                                     (policy-description :target-type
                                      entity-description :member-name
                                      "policyDescription")
                                     (data-location-constraint :target-type
                                      data-location-constraint :member-name
                                      "dataLocationConstraint")
                                     (tier :target-type resiliency-policy-tier
                                      :required common-lisp:t :member-name
                                      "tier")
                                     (policy :target-type disruption-policy
                                      :required common-lisp:t :member-name
                                      "policy")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateResiliencyPolicyRequest"))

(smithy/sdk/shapes:define-structure create-resiliency-policy-response
                                    common-lisp:nil
                                    ((policy :target-type resiliency-policy
                                      :required common-lisp:t :member-name
                                      "policy"))
                                    (:shape-name
                                     "CreateResiliencyPolicyResponse"))

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type customer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-location-constraint
    common-lisp:nil
  (:any-location "AnyLocation")
  (:same-continent "SameContinent")
  (:same-country "SameCountry"))

(smithy/sdk/shapes:define-structure delete-app-assessment-request
                                    common-lisp:nil
                                    ((assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteAppAssessmentRequest"))

(smithy/sdk/shapes:define-structure delete-app-assessment-response
                                    common-lisp:nil
                                    ((assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (assessment-status :target-type
                                      assessment-status :required common-lisp:t
                                      :member-name "assessmentStatus"))
                                    (:shape-name "DeleteAppAssessmentResponse"))

(smithy/sdk/shapes:define-structure delete-app-input-source-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (source-arn :target-type arn :member-name
                                      "sourceArn")
                                     (terraform-source :target-type
                                      terraform-source :member-name
                                      "terraformSource")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (eks-source-cluster-namespace :target-type
                                      eks-source-cluster-namespace :member-name
                                      "eksSourceClusterNamespace"))
                                    (:shape-name "DeleteAppInputSourceRequest"))

(smithy/sdk/shapes:define-structure delete-app-input-source-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :member-name
                                      "appArn")
                                     (app-input-source :target-type
                                      app-input-source :member-name
                                      "appInputSource"))
                                    (:shape-name
                                     "DeleteAppInputSourceResponse"))

(smithy/sdk/shapes:define-structure delete-app-request common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (force-delete :target-type
                                      boolean-optional :member-name
                                      "forceDelete")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteAppRequest"))

(smithy/sdk/shapes:define-structure delete-app-response common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn"))
                                    (:shape-name "DeleteAppResponse"))

(smithy/sdk/shapes:define-structure delete-app-version-app-component-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (id :target-type string255 :required
                                      common-lisp:t :member-name "id")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "DeleteAppVersionAppComponentRequest"))

(smithy/sdk/shapes:define-structure delete-app-version-app-component-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (app-component :target-type app-component
                                      :member-name "appComponent"))
                                    (:shape-name
                                     "DeleteAppVersionAppComponentResponse"))

(smithy/sdk/shapes:define-structure delete-app-version-resource-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (resource-name :target-type entity-name
                                      :member-name "resourceName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      string2048 :member-name
                                      "physicalResourceId")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (aws-account-id :target-type customer-id
                                      :member-name "awsAccountId")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "DeleteAppVersionResourceRequest"))

(smithy/sdk/shapes:define-structure delete-app-version-resource-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (physical-resource :target-type
                                      physical-resource :member-name
                                      "physicalResource"))
                                    (:shape-name
                                     "DeleteAppVersionResourceResponse"))

(smithy/sdk/shapes:define-structure delete-recommendation-template-request
                                    common-lisp:nil
                                    ((recommendation-template-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "recommendationTemplateArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "DeleteRecommendationTemplateRequest"))

(smithy/sdk/shapes:define-structure delete-recommendation-template-response
                                    common-lisp:nil
                                    ((recommendation-template-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "recommendationTemplateArn")
                                     (status :target-type
                                      recommendation-template-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "DeleteRecommendationTemplateResponse"))

(smithy/sdk/shapes:define-structure delete-resiliency-policy-request
                                    common-lisp:nil
                                    ((policy-arn :target-type arn :required
                                      common-lisp:t :member-name "policyArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "DeleteResiliencyPolicyRequest"))

(smithy/sdk/shapes:define-structure delete-resiliency-policy-response
                                    common-lisp:nil
                                    ((policy-arn :target-type arn :required
                                      common-lisp:t :member-name "policyArn"))
                                    (:shape-name
                                     "DeleteResiliencyPolicyResponse"))

(smithy/sdk/shapes:define-structure describe-app-assessment-request
                                    common-lisp:nil
                                    ((assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn"))
                                    (:shape-name
                                     "DescribeAppAssessmentRequest"))

(smithy/sdk/shapes:define-structure describe-app-assessment-response
                                    common-lisp:nil
                                    ((assessment :target-type app-assessment
                                      :required common-lisp:t :member-name
                                      "assessment"))
                                    (:shape-name
                                     "DescribeAppAssessmentResponse"))

(smithy/sdk/shapes:define-structure describe-app-request common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn"))
                                    (:shape-name "DescribeAppRequest"))

(smithy/sdk/shapes:define-structure describe-app-response common-lisp:nil
                                    ((app :target-type app :required
                                      common-lisp:t :member-name "app"))
                                    (:shape-name "DescribeAppResponse"))

(smithy/sdk/shapes:define-structure describe-app-version-app-component-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (id :target-type string255 :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name
                                     "DescribeAppVersionAppComponentRequest"))

(smithy/sdk/shapes:define-structure describe-app-version-app-component-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (app-component :target-type app-component
                                      :member-name "appComponent"))
                                    (:shape-name
                                     "DescribeAppVersionAppComponentResponse"))

(smithy/sdk/shapes:define-structure describe-app-version-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion"))
                                    (:shape-name "DescribeAppVersionRequest"))

(smithy/sdk/shapes:define-structure describe-app-version-resource-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (resource-name :target-type entity-name
                                      :member-name "resourceName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      string2048 :member-name
                                      "physicalResourceId")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (aws-account-id :target-type customer-id
                                      :member-name "awsAccountId"))
                                    (:shape-name
                                     "DescribeAppVersionResourceRequest"))

(smithy/sdk/shapes:define-structure describe-app-version-resource-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (physical-resource :target-type
                                      physical-resource :member-name
                                      "physicalResource"))
                                    (:shape-name
                                     "DescribeAppVersionResourceResponse"))

(smithy/sdk/shapes:define-structure
 describe-app-version-resources-resolution-status-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (app-version :target-type entity-version :required common-lisp:t :member-name
   "appVersion")
  (resolution-id :target-type string255 :member-name "resolutionId"))
 (:shape-name "DescribeAppVersionResourcesResolutionStatusRequest"))

(smithy/sdk/shapes:define-structure
 describe-app-version-resources-resolution-status-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (app-version :target-type entity-version :required common-lisp:t :member-name
   "appVersion")
  (resolution-id :target-type string255 :required common-lisp:t :member-name
   "resolutionId")
  (status :target-type resource-resolution-status-type :required common-lisp:t
   :member-name "status")
  (error-message :target-type string500 :member-name "errorMessage"))
 (:shape-name "DescribeAppVersionResourcesResolutionStatusResponse"))

(smithy/sdk/shapes:define-structure describe-app-version-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo"))
                                    (:shape-name "DescribeAppVersionResponse"))

(smithy/sdk/shapes:define-structure describe-app-version-template-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion"))
                                    (:shape-name
                                     "DescribeAppVersionTemplateRequest"))

(smithy/sdk/shapes:define-structure describe-app-version-template-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (app-template-body :target-type
                                      app-template-body :required common-lisp:t
                                      :member-name "appTemplateBody"))
                                    (:shape-name
                                     "DescribeAppVersionTemplateResponse"))

(smithy/sdk/shapes:define-structure
 describe-draft-app-version-resources-import-status-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn"))
 (:shape-name "DescribeDraftAppVersionResourcesImportStatusRequest"))

(smithy/sdk/shapes:define-structure
 describe-draft-app-version-resources-import-status-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (app-version :target-type entity-version :required common-lisp:t :member-name
   "appVersion")
  (status :target-type resource-import-status-type :required common-lisp:t
   :member-name "status")
  (status-change-time :target-type time-stamp :required common-lisp:t
   :member-name "statusChangeTime")
  (error-message :target-type string500 :member-name "errorMessage")
  (error-details :target-type error-detail-list :member-name "errorDetails"))
 (:shape-name "DescribeDraftAppVersionResourcesImportStatusResponse"))

(smithy/sdk/shapes:define-input describe-metrics-export-request common-lisp:nil
                                ((metrics-export-id :target-type string255
                                  :required common-lisp:t :member-name
                                  "metricsExportId"))
                                (:shape-name "DescribeMetricsExportRequest"))

(smithy/sdk/shapes:define-output describe-metrics-export-response
                                 common-lisp:nil
                                 ((metrics-export-id :target-type string255
                                   :required common-lisp:t :member-name
                                   "metricsExportId")
                                  (status :target-type
                                   metrics-export-status-type :required
                                   common-lisp:t :member-name "status")
                                  (export-location :target-type s3location
                                   :member-name "exportLocation")
                                  (error-message :target-type string500
                                   :member-name "errorMessage"))
                                 (:shape-name "DescribeMetricsExportResponse"))

(smithy/sdk/shapes:define-structure describe-resiliency-policy-request
                                    common-lisp:nil
                                    ((policy-arn :target-type arn :required
                                      common-lisp:t :member-name "policyArn"))
                                    (:shape-name
                                     "DescribeResiliencyPolicyRequest"))

(smithy/sdk/shapes:define-structure describe-resiliency-policy-response
                                    common-lisp:nil
                                    ((policy :target-type resiliency-policy
                                      :required common-lisp:t :member-name
                                      "policy"))
                                    (:shape-name
                                     "DescribeResiliencyPolicyResponse"))

(smithy/sdk/shapes:define-input
 describe-resource-grouping-recommendation-task-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (grouping-id :target-type string255 :member-name "groupingId"))
 (:shape-name "DescribeResourceGroupingRecommendationTaskRequest"))

(smithy/sdk/shapes:define-output
 describe-resource-grouping-recommendation-task-response common-lisp:nil
 ((grouping-id :target-type string255 :required common-lisp:t :member-name
   "groupingId")
  (status :target-type resources-grouping-rec-gen-status-type :required
   common-lisp:t :member-name "status")
  (error-message :target-type string500 :member-name "errorMessage"))
 (:shape-name "DescribeResourceGroupingRecommendationTaskResponse"))

(smithy/sdk/shapes:define-enum difference-type
    common-lisp:nil
  (:not-equal "NotEqual")
  (:added "Added")
  (:removed "Removed"))

(smithy/sdk/shapes:define-structure disruption-compliance common-lisp:nil
                                    ((achievable-rto-in-secs :target-type
                                      seconds :member-name
                                      "achievableRtoInSecs")
                                     (current-rto-in-secs :target-type seconds
                                      :member-name "currentRtoInSecs")
                                     (rto-reference-id :target-type string500
                                      :member-name "rtoReferenceId")
                                     (rto-description :target-type string500
                                      :member-name "rtoDescription")
                                     (current-rpo-in-secs :target-type seconds
                                      :member-name "currentRpoInSecs")
                                     (rpo-reference-id :target-type string500
                                      :member-name "rpoReferenceId")
                                     (rpo-description :target-type string500
                                      :member-name "rpoDescription")
                                     (compliance-status :target-type
                                      compliance-status :required common-lisp:t
                                      :member-name "complianceStatus")
                                     (achievable-rpo-in-secs :target-type
                                      seconds :member-name
                                      "achievableRpoInSecs")
                                     (message :target-type string500
                                      :member-name "message"))
                                    (:shape-name "DisruptionCompliance"))

(smithy/sdk/shapes:define-map disruption-policy :key disruption-type :value
                              failure-policy)

(smithy/sdk/shapes:define-map disruption-resiliency-score :key disruption-type
                              :value double)

(smithy/sdk/shapes:define-enum disruption-type
    common-lisp:nil
  (:software "Software")
  (:hardware "Hardware")
  (:az "AZ")
  (:region "Region"))

(smithy/sdk/shapes:define-type document-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum drift-status
    common-lisp:nil
  (:not-checked "NotChecked")
  (:not-detected "NotDetected")
  (:detected "Detected"))

(smithy/sdk/shapes:define-enum drift-type
    common-lisp:nil
  (:application-compliance "ApplicationCompliance")
  (:app-component-resiliency-compliance-status
   "AppComponentResiliencyComplianceStatus"))

(smithy/sdk/shapes:define-type eks-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list eks-namespace-list :member eks-namespace)

(smithy/sdk/shapes:define-structure eks-source common-lisp:nil
                                    ((eks-cluster-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "eksClusterArn")
                                     (namespaces :target-type
                                      eks-namespace-list :required
                                      common-lisp:t :member-name "namespaces"))
                                    (:shape-name "EksSource"))

(smithy/sdk/shapes:define-structure eks-source-cluster-namespace
                                    common-lisp:nil
                                    ((eks-cluster-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "eksClusterArn")
                                     (namespace :target-type eks-namespace
                                      :required common-lisp:t :member-name
                                      "namespace"))
                                    (:shape-name "EksSourceClusterNamespace"))

(smithy/sdk/shapes:define-list eks-source-list :member eks-source)

(smithy/sdk/shapes:define-type entity-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-name-list :member entity-name)

(smithy/sdk/shapes:define-type entity-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-list error-detail-list :member error-detail)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum estimated-cost-tier
    common-lisp:nil
  (:l1 "L1")
  (:l2 "L2")
  (:l3 "L3")
  (:l4 "L4"))

(smithy/sdk/shapes:define-structure event-subscription common-lisp:nil
                                    ((name :target-type string255 :required
                                      common-lisp:t :member-name "name")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "eventType")
                                     (sns-topic-arn :target-type arn
                                      :member-name "snsTopicArn"))
                                    (:shape-name "EventSubscription"))

(smithy/sdk/shapes:define-list event-subscription-list :member
                               event-subscription)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:scheduled-assessment-failure "ScheduledAssessmentFailure")
  (:drift-detected "DriftDetected"))

(smithy/sdk/shapes:define-enum exclude-recommendation-reason
    common-lisp:nil
  (:already-implemented "AlreadyImplemented")
  (:not-relevant "NotRelevant")
  (:complexity-of-implementation "ComplexityOfImplementation"))

(smithy/sdk/shapes:define-structure experiment common-lisp:nil
                                    ((experiment-arn :target-type string255
                                      :member-name "experimentArn")
                                     (experiment-template-id :target-type
                                      string255 :member-name
                                      "experimentTemplateId"))
                                    (:shape-name "Experiment"))

(smithy/sdk/shapes:define-list failed-grouping-recommendation-entries :member
                               failed-grouping-recommendation-entry)

(smithy/sdk/shapes:define-structure failed-grouping-recommendation-entry
                                    common-lisp:nil
                                    ((grouping-recommendation-id :target-type
                                      string255 :required common-lisp:t
                                      :member-name "groupingRecommendationId")
                                     (error-message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name
                                     "FailedGroupingRecommendationEntry"))

(smithy/sdk/shapes:define-structure failure-policy common-lisp:nil
                                    ((rto-in-secs :target-type seconds
                                      :required common-lisp:t :member-name
                                      "rtoInSecs")
                                     (rpo-in-secs :target-type seconds
                                      :required common-lisp:t :member-name
                                      "rpoInSecs"))
                                    (:shape-name "FailurePolicy"))

(smithy/sdk/shapes:define-structure field common-lisp:nil
                                    ((name :target-type string255 :required
                                      common-lisp:t :member-name "name")
                                     (aggregation :target-type
                                      field-aggregation-type :member-name
                                      "aggregation"))
                                    (:shape-name "Field"))

(smithy/sdk/shapes:define-enum field-aggregation-type
    common-lisp:nil
  (:min "Min")
  (:max "Max")
  (:sum "Sum")
  (:avg "Avg")
  (:count "Count"))

(smithy/sdk/shapes:define-list field-list :member field)

(smithy/sdk/shapes:define-structure grouping-app-component common-lisp:nil
                                    ((app-component-id :target-type
                                      entity-name255 :required common-lisp:t
                                      :member-name "appComponentId")
                                     (app-component-type :target-type string255
                                      :required common-lisp:t :member-name
                                      "appComponentType")
                                     (app-component-name :target-type
                                      entity-name255 :required common-lisp:t
                                      :member-name "appComponentName"))
                                    (:shape-name "GroupingAppComponent"))

(smithy/sdk/shapes:define-structure grouping-recommendation common-lisp:nil
                                    ((grouping-recommendation-id :target-type
                                      string255 :required common-lisp:t
                                      :member-name "groupingRecommendationId")
                                     (grouping-app-component :target-type
                                      grouping-app-component :required
                                      common-lisp:t :member-name
                                      "groupingAppComponent")
                                     (resources :target-type
                                      grouping-resource-list :required
                                      common-lisp:t :member-name "resources")
                                     (score :target-type double :required
                                      common-lisp:t :member-name "score")
                                     (recommendation-reasons :target-type
                                      string255list :required common-lisp:t
                                      :member-name "recommendationReasons")
                                     (status :target-type
                                      grouping-recommendation-status-type
                                      :required common-lisp:t :member-name
                                      "status")
                                     (confidence-level :target-type
                                      grouping-recommendation-confidence-level
                                      :required common-lisp:t :member-name
                                      "confidenceLevel")
                                     (creation-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (rejection-reason :target-type
                                      grouping-recommendation-rejection-reason
                                      :member-name "rejectionReason"))
                                    (:shape-name "GroupingRecommendation"))

(smithy/sdk/shapes:define-enum grouping-recommendation-confidence-level
    common-lisp:nil
  (:high "High")
  (:medium "Medium"))

(smithy/sdk/shapes:define-list grouping-recommendation-list :member
                               grouping-recommendation)

(smithy/sdk/shapes:define-enum grouping-recommendation-rejection-reason
    common-lisp:nil
  (:distinct-business-purpose "DistinctBusinessPurpose")
  (:separate-data-concern "SeparateDataConcern")
  (:distinct-user-group-handling "DistinctUserGroupHandling")
  (:other "Other"))

(smithy/sdk/shapes:define-enum grouping-recommendation-status-type
    common-lisp:nil
  (:accepted "Accepted")
  (:rejected "Rejected")
  (:pending-decision "PendingDecision"))

(smithy/sdk/shapes:define-structure grouping-resource common-lisp:nil
                                    ((resource-name :target-type string255
                                      :required common-lisp:t :member-name
                                      "resourceName")
                                     (resource-type :target-type string255
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (physical-resource-id :target-type
                                      physical-resource-id :required
                                      common-lisp:t :member-name
                                      "physicalResourceId")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "logicalResourceId")
                                     (source-app-component-ids :target-type
                                      string255list :required common-lisp:t
                                      :member-name "sourceAppComponentIds"))
                                    (:shape-name "GroupingResource"))

(smithy/sdk/shapes:define-list grouping-resource-list :member grouping-resource)

(smithy/sdk/shapes:define-enum ha-architecture
    common-lisp:nil
  (:multi-site "MultiSite")
  (:warm-standby "WarmStandby")
  (:pilot-light "PilotLight")
  (:backup-and-restore "BackupAndRestore")
  (:no-recovery-plan "NoRecoveryPlan"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list iam-role-arn-list :member iam-role-arn)

(smithy/sdk/shapes:define-type iam-role-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 import-resources-to-draft-app-version-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (source-arns :target-type arn-list :member-name "sourceArns")
  (terraform-sources :target-type terraform-source-list :member-name
   "terraformSources")
  (import-strategy :target-type resource-import-strategy-type :member-name
   "importStrategy")
  (eks-sources :target-type eks-source-list :member-name "eksSources"))
 (:shape-name "ImportResourcesToDraftAppVersionRequest"))

(smithy/sdk/shapes:define-structure
 import-resources-to-draft-app-version-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (app-version :target-type entity-version :required common-lisp:t :member-name
   "appVersion")
  (source-arns :target-type arn-list :member-name "sourceArns")
  (status :target-type resource-import-status-type :required common-lisp:t
   :member-name "status")
  (terraform-sources :target-type terraform-source-list :member-name
   "terraformSources")
  (eks-sources :target-type eks-source-list :member-name "eksSources"))
 (:shape-name "ImportResourcesToDraftAppVersionResponse"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure list-alarm-recommendations-request
                                    common-lisp:nil
                                    ((assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAlarmRecommendationsRequest"))

(smithy/sdk/shapes:define-structure list-alarm-recommendations-response
                                    common-lisp:nil
                                    ((alarm-recommendations :target-type
                                      alarm-recommendation-list :required
                                      common-lisp:t :member-name
                                      "alarmRecommendations")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAlarmRecommendationsResponse"))

(smithy/sdk/shapes:define-input list-app-assessment-compliance-drifts-request
                                common-lisp:nil
                                ((assessment-arn :target-type arn :required
                                  common-lisp:t :member-name "assessmentArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListAppAssessmentComplianceDriftsRequest"))

(smithy/sdk/shapes:define-output list-app-assessment-compliance-drifts-response
                                 common-lisp:nil
                                 ((compliance-drifts :target-type
                                   compliance-drift-list :required
                                   common-lisp:t :member-name
                                   "complianceDrifts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAppAssessmentComplianceDriftsResponse"))

(smithy/sdk/shapes:define-input list-app-assessment-resource-drifts-request
                                common-lisp:nil
                                ((assessment-arn :target-type arn :required
                                  common-lisp:t :member-name "assessmentArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListAppAssessmentResourceDriftsRequest"))

(smithy/sdk/shapes:define-output list-app-assessment-resource-drifts-response
                                 common-lisp:nil
                                 ((resource-drifts :target-type
                                   resource-drift-list :required common-lisp:t
                                   :member-name "resourceDrifts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAppAssessmentResourceDriftsResponse"))

(smithy/sdk/shapes:define-structure list-app-assessments-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :member-name
                                      "appArn" :http-query "appArn")
                                     (assessment-name :target-type entity-name
                                      :member-name "assessmentName" :http-query
                                      "assessmentName")
                                     (assessment-status :target-type
                                      assessment-status-list :member-name
                                      "assessmentStatus" :http-query
                                      "assessmentStatus")
                                     (compliance-status :target-type
                                      compliance-status :member-name
                                      "complianceStatus" :http-query
                                      "complianceStatus")
                                     (invoker :target-type assessment-invoker
                                      :member-name "invoker" :http-query
                                      "invoker")
                                     (reverse-order :target-type
                                      boolean-optional :member-name
                                      "reverseOrder" :http-query
                                      "reverseOrder")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListAppAssessmentsRequest"))

(smithy/sdk/shapes:define-structure list-app-assessments-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (assessment-summaries :target-type
                                      app-assessment-summary-list :required
                                      common-lisp:t :member-name
                                      "assessmentSummaries"))
                                    (:shape-name "ListAppAssessmentsResponse"))

(smithy/sdk/shapes:define-structure list-app-component-compliances-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn"))
                                    (:shape-name
                                     "ListAppComponentCompliancesRequest"))

(smithy/sdk/shapes:define-structure list-app-component-compliances-response
                                    common-lisp:nil
                                    ((component-compliances :target-type
                                      component-compliances-list :required
                                      common-lisp:t :member-name
                                      "componentCompliances")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAppComponentCompliancesResponse"))

(smithy/sdk/shapes:define-structure list-app-component-recommendations-request
                                    common-lisp:nil
                                    ((assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAppComponentRecommendationsRequest"))

(smithy/sdk/shapes:define-structure list-app-component-recommendations-response
                                    common-lisp:nil
                                    ((component-recommendations :target-type
                                      component-recommendation-list :required
                                      common-lisp:t :member-name
                                      "componentRecommendations")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAppComponentRecommendationsResponse"))

(smithy/sdk/shapes:define-structure list-app-input-sources-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListAppInputSourcesRequest"))

(smithy/sdk/shapes:define-structure list-app-input-sources-response
                                    common-lisp:nil
                                    ((app-input-sources :target-type
                                      app-input-source-list :required
                                      common-lisp:t :member-name
                                      "appInputSources")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListAppInputSourcesResponse"))

(smithy/sdk/shapes:define-structure list-app-version-app-components-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAppVersionAppComponentsRequest"))

(smithy/sdk/shapes:define-structure list-app-version-app-components-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (app-components :target-type
                                      app-component-list :member-name
                                      "appComponents")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAppVersionAppComponentsResponse"))

(smithy/sdk/shapes:define-structure list-app-version-resource-mappings-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAppVersionResourceMappingsRequest"))

(smithy/sdk/shapes:define-structure list-app-version-resource-mappings-response
                                    common-lisp:nil
                                    ((resource-mappings :target-type
                                      resource-mapping-list :required
                                      common-lisp:t :member-name
                                      "resourceMappings")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAppVersionResourceMappingsResponse"))

(smithy/sdk/shapes:define-structure list-app-version-resources-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (resolution-id :target-type string255
                                      :member-name "resolutionId")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListAppVersionResourcesRequest"))

(smithy/sdk/shapes:define-structure list-app-version-resources-response
                                    common-lisp:nil
                                    ((physical-resources :target-type
                                      physical-resource-list :required
                                      common-lisp:t :member-name
                                      "physicalResources")
                                     (resolution-id :target-type string255
                                      :required common-lisp:t :member-name
                                      "resolutionId")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAppVersionResourcesResponse"))

(smithy/sdk/shapes:define-structure list-app-versions-request common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (end-time :target-type time-stamp
                                      :member-name "endTime"))
                                    (:shape-name "ListAppVersionsRequest"))

(smithy/sdk/shapes:define-structure list-app-versions-response common-lisp:nil
                                    ((app-versions :target-type
                                      app-version-list :required common-lisp:t
                                      :member-name "appVersions")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListAppVersionsResponse"))

(smithy/sdk/shapes:define-structure list-apps-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (name :target-type entity-name
                                      :member-name "name" :http-query "name")
                                     (app-arn :target-type arn :member-name
                                      "appArn" :http-query "appArn")
                                     (from-last-assessment-time :target-type
                                      time-stamp :member-name
                                      "fromLastAssessmentTime" :http-query
                                      "fromLastAssessmentTime")
                                     (to-last-assessment-time :target-type
                                      time-stamp :member-name
                                      "toLastAssessmentTime" :http-query
                                      "toLastAssessmentTime")
                                     (reverse-order :target-type
                                      boolean-optional :member-name
                                      "reverseOrder" :http-query
                                      "reverseOrder")
                                     (aws-application-arn :target-type arn
                                      :member-name "awsApplicationArn"
                                      :http-query "awsApplicationArn"))
                                    (:shape-name "ListAppsRequest"))

(smithy/sdk/shapes:define-structure list-apps-response common-lisp:nil
                                    ((app-summaries :target-type
                                      app-summary-list :required common-lisp:t
                                      :member-name "appSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListAppsResponse"))

(smithy/sdk/shapes:define-input list-metrics-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (fields :target-type field-list :member-name
                                  "fields")
                                 (data-source :target-type string255
                                  :member-name "dataSource")
                                 (conditions :target-type condition-list
                                  :member-name "conditions")
                                 (sorts :target-type sort-list :member-name
                                  "sorts"))
                                (:shape-name "ListMetricsRequest"))

(smithy/sdk/shapes:define-output list-metrics-response common-lisp:nil
                                 ((rows :target-type row-list :required
                                   common-lisp:t :member-name "rows")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMetricsResponse"))

(smithy/sdk/shapes:define-structure list-recommendation-templates-request
                                    common-lisp:nil
                                    ((assessment-arn :target-type arn
                                      :member-name "assessmentArn" :http-query
                                      "assessmentArn")
                                     (reverse-order :target-type
                                      boolean-optional :member-name
                                      "reverseOrder" :http-query
                                      "reverseOrder")
                                     (status :target-type
                                      recommendation-template-status-list
                                      :member-name "status" :http-query
                                      "status")
                                     (recommendation-template-arn :target-type
                                      arn :member-name
                                      "recommendationTemplateArn" :http-query
                                      "recommendationTemplateArn")
                                     (name :target-type entity-name
                                      :member-name "name" :http-query "name")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListRecommendationTemplatesRequest"))

(smithy/sdk/shapes:define-structure list-recommendation-templates-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (recommendation-templates :target-type
                                      recommendation-template-list :member-name
                                      "recommendationTemplates"))
                                    (:shape-name
                                     "ListRecommendationTemplatesResponse"))

(smithy/sdk/shapes:define-structure list-resiliency-policies-request
                                    common-lisp:nil
                                    ((policy-name :target-type entity-name
                                      :member-name "policyName" :http-query
                                      "policyName")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListResiliencyPoliciesRequest"))

(smithy/sdk/shapes:define-structure list-resiliency-policies-response
                                    common-lisp:nil
                                    ((resiliency-policies :target-type
                                      resiliency-policies :required
                                      common-lisp:t :member-name
                                      "resiliencyPolicies")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListResiliencyPoliciesResponse"))

(smithy/sdk/shapes:define-input list-resource-grouping-recommendations-request
                                common-lisp:nil
                                ((app-arn :target-type arn :member-name
                                  "appArn" :http-query "appArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListResourceGroupingRecommendationsRequest"))

(smithy/sdk/shapes:define-output
 list-resource-grouping-recommendations-response common-lisp:nil
 ((grouping-recommendations :target-type grouping-recommendation-list :required
   common-lisp:t :member-name "groupingRecommendations")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListResourceGroupingRecommendationsResponse"))

(smithy/sdk/shapes:define-structure list-sop-recommendations-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn"))
                                    (:shape-name
                                     "ListSopRecommendationsRequest"))

(smithy/sdk/shapes:define-structure list-sop-recommendations-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (sop-recommendations :target-type
                                      sop-recommendation-list :required
                                      common-lisp:t :member-name
                                      "sopRecommendations"))
                                    (:shape-name
                                     "ListSopRecommendationsResponse"))

(smithy/sdk/shapes:define-structure list-suggested-resiliency-policies-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListSuggestedResiliencyPoliciesRequest"))

(smithy/sdk/shapes:define-structure list-suggested-resiliency-policies-response
                                    common-lisp:nil
                                    ((resiliency-policies :target-type
                                      resiliency-policies :required
                                      common-lisp:t :member-name
                                      "resiliencyPolicies")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSuggestedResiliencyPoliciesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-test-recommendations-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn"))
                                    (:shape-name
                                     "ListTestRecommendationsRequest"))

(smithy/sdk/shapes:define-structure list-test-recommendations-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (test-recommendations :target-type
                                      test-recommendation-list :required
                                      common-lisp:t :member-name
                                      "testRecommendations"))
                                    (:shape-name
                                     "ListTestRecommendationsResponse"))

(smithy/sdk/shapes:define-structure
 list-unsupported-app-version-resources-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (app-version :target-type entity-version :required common-lisp:t :member-name
   "appVersion")
  (resolution-id :target-type string255 :member-name "resolutionId")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListUnsupportedAppVersionResourcesRequest"))

(smithy/sdk/shapes:define-structure
 list-unsupported-app-version-resources-response common-lisp:nil
 ((unsupported-resources :target-type unsupported-resource-list :required
   common-lisp:t :member-name "unsupportedResources")
  (resolution-id :target-type string255 :required common-lisp:t :member-name
   "resolutionId")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListUnsupportedAppVersionResourcesResponse"))

(smithy/sdk/shapes:define-structure logical-resource-id common-lisp:nil
                                    ((identifier :target-type string255
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (logical-stack-name :target-type string255
                                      :member-name "logicalStackName")
                                     (resource-group-name :target-type
                                      entity-name :member-name
                                      "resourceGroupName")
                                     (terraform-source-name :target-type
                                      string255 :member-name
                                      "terraformSourceName")
                                     (eks-source-name :target-type string255
                                      :member-name "eksSourceName"))
                                    (:shape-name "LogicalResourceId"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-optional smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metrics-export-status-type
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:success "Success"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-model common-lisp:nil
                                    ((type :target-type permission-model-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (invoker-role-name :target-type
                                      iam-role-name :member-name
                                      "invokerRoleName")
                                     (cross-account-role-arns :target-type
                                      iam-role-arn-list :member-name
                                      "crossAccountRoleArns"))
                                    (:shape-name "PermissionModel"))

(smithy/sdk/shapes:define-enum permission-model-type
    common-lisp:nil
  (:legacy-iam-user "LegacyIAMUser")
  (:role-based "RoleBased"))

(smithy/sdk/shapes:define-enum physical-identifier-type
    common-lisp:nil
  (:arn "Arn")
  (:native "Native"))

(smithy/sdk/shapes:define-structure physical-resource common-lisp:nil
                                    ((resource-name :target-type entity-name
                                      :member-name "resourceName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :required
                                      common-lisp:t :member-name
                                      "physicalResourceId")
                                     (resource-type :target-type string255
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (app-components :target-type
                                      app-component-list :member-name
                                      "appComponents")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo")
                                     (excluded :target-type boolean-optional
                                      :member-name "excluded")
                                     (source-type :target-type
                                      resource-source-type :member-name
                                      "sourceType")
                                     (parent-resource-name :target-type
                                      entity-name :member-name
                                      "parentResourceName"))
                                    (:shape-name "PhysicalResource"))

(smithy/sdk/shapes:define-structure physical-resource-id common-lisp:nil
                                    ((identifier :target-type string255
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (type :target-type
                                      physical-identifier-type :required
                                      common-lisp:t :member-name "type")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (aws-account-id :target-type customer-id
                                      :member-name "awsAccountId"))
                                    (:shape-name "PhysicalResourceId"))

(smithy/sdk/shapes:define-list physical-resource-list :member physical-resource)

(smithy/sdk/shapes:define-structure publish-app-version-request common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (version-name :target-type entity-version
                                      :member-name "versionName"))
                                    (:shape-name "PublishAppVersionRequest"))

(smithy/sdk/shapes:define-structure publish-app-version-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :member-name "appVersion")
                                     (identifier :target-type long-optional
                                      :member-name "identifier")
                                     (version-name :target-type entity-version
                                      :member-name "versionName"))
                                    (:shape-name "PublishAppVersionResponse"))

(smithy/sdk/shapes:define-structure put-draft-app-version-template-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-template-body :target-type
                                      app-template-body :required common-lisp:t
                                      :member-name "appTemplateBody"))
                                    (:shape-name
                                     "PutDraftAppVersionTemplateRequest"))

(smithy/sdk/shapes:define-structure put-draft-app-version-template-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :member-name
                                      "appArn")
                                     (app-version :target-type entity-version
                                      :member-name "appVersion"))
                                    (:shape-name
                                     "PutDraftAppVersionTemplateResponse"))

(smithy/sdk/shapes:define-map recommendation-compliance :key disruption-type
                              :value recommendation-disruption-compliance)

(smithy/sdk/shapes:define-enum recommendation-compliance-status
    common-lisp:nil
  (:breached-unattainable "BreachedUnattainable")
  (:breached-can-meet "BreachedCanMeet")
  (:met-can-improve "MetCanImprove")
  (:missing-policy "MissingPolicy"))

(smithy/sdk/shapes:define-structure recommendation-disruption-compliance
                                    common-lisp:nil
                                    ((expected-compliance-status :target-type
                                      compliance-status :required common-lisp:t
                                      :member-name "expectedComplianceStatus")
                                     (expected-rto-in-secs :target-type seconds
                                      :member-name "expectedRtoInSecs")
                                     (expected-rto-description :target-type
                                      string500 :member-name
                                      "expectedRtoDescription")
                                     (expected-rpo-in-secs :target-type seconds
                                      :member-name "expectedRpoInSecs")
                                     (expected-rpo-description :target-type
                                      string500 :member-name
                                      "expectedRpoDescription"))
                                    (:shape-name
                                     "RecommendationDisruptionCompliance"))

(smithy/sdk/shapes:define-list recommendation-id-list :member uuid)

(smithy/sdk/shapes:define-structure recommendation-item common-lisp:nil
                                    ((resource-id :target-type string500
                                      :member-name "resourceId")
                                     (target-account-id :target-type
                                      customer-id :member-name
                                      "targetAccountId")
                                     (target-region :target-type aws-region
                                      :member-name "targetRegion")
                                     (already-implemented :target-type
                                      boolean-optional :member-name
                                      "alreadyImplemented")
                                     (excluded :target-type boolean-optional
                                      :member-name "excluded")
                                     (exclude-reason :target-type
                                      exclude-recommendation-reason
                                      :member-name "excludeReason")
                                     (latest-discovered-experiment :target-type
                                      experiment :member-name
                                      "latestDiscoveredExperiment")
                                     (discovered-alarm :target-type alarm
                                      :member-name "discoveredAlarm"))
                                    (:shape-name "RecommendationItem"))

(smithy/sdk/shapes:define-list recommendation-item-list :member
                               recommendation-item)

(smithy/sdk/shapes:define-enum recommendation-status
    common-lisp:nil
  (:implemented "Implemented")
  (:inactive "Inactive")
  (:not-implemented "NotImplemented")
  (:excluded "Excluded"))

(smithy/sdk/shapes:define-structure recommendation-template common-lisp:nil
                                    ((templates-location :target-type
                                      s3location :member-name
                                      "templatesLocation")
                                     (assessment-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "assessmentArn")
                                     (app-arn :target-type arn :member-name
                                      "appArn")
                                     (recommendation-ids :target-type
                                      recommendation-id-list :member-name
                                      "recommendationIds")
                                     (recommendation-types :target-type
                                      render-recommendation-type-list :required
                                      common-lisp:t :member-name
                                      "recommendationTypes")
                                     (format :target-type template-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (recommendation-template-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "recommendationTemplateArn")
                                     (message :target-type string500
                                      :member-name "message")
                                     (status :target-type
                                      recommendation-template-status :required
                                      common-lisp:t :member-name "status")
                                     (name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (end-time :target-type time-stamp
                                      :member-name "endTime")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (needs-replacements :target-type
                                      boolean-optional :member-name
                                      "needsReplacements"))
                                    (:shape-name "RecommendationTemplate"))

(smithy/sdk/shapes:define-list recommendation-template-list :member
                               recommendation-template)

(smithy/sdk/shapes:define-enum recommendation-template-status
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:success "Success"))

(smithy/sdk/shapes:define-list recommendation-template-status-list :member
                               recommendation-template-status)

(smithy/sdk/shapes:define-list reject-grouping-recommendation-entries :member
                               reject-grouping-recommendation-entry)

(smithy/sdk/shapes:define-structure reject-grouping-recommendation-entry
                                    common-lisp:nil
                                    ((grouping-recommendation-id :target-type
                                      string255 :required common-lisp:t
                                      :member-name "groupingRecommendationId")
                                     (rejection-reason :target-type
                                      grouping-recommendation-rejection-reason
                                      :member-name "rejectionReason"))
                                    (:shape-name
                                     "RejectGroupingRecommendationEntry"))

(smithy/sdk/shapes:define-input
 reject-resource-grouping-recommendations-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (entries :target-type reject-grouping-recommendation-entries :required
   common-lisp:t :member-name "entries"))
 (:shape-name "RejectResourceGroupingRecommendationsRequest"))

(smithy/sdk/shapes:define-output
 reject-resource-grouping-recommendations-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (failed-entries :target-type failed-grouping-recommendation-entries :required
   common-lisp:t :member-name "failedEntries"))
 (:shape-name "RejectResourceGroupingRecommendationsResponse"))

(smithy/sdk/shapes:define-structure
 remove-draft-app-version-resource-mappings-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (resource-names :target-type entity-name-list :member-name "resourceNames")
  (logical-stack-names :target-type string255list :member-name
   "logicalStackNames")
  (app-registry-app-names :target-type entity-name-list :member-name
   "appRegistryAppNames")
  (resource-group-names :target-type entity-name-list :member-name
   "resourceGroupNames")
  (terraform-source-names :target-type string255list :member-name
   "terraformSourceNames")
  (eks-source-names :target-type string255list :member-name "eksSourceNames"))
 (:shape-name "RemoveDraftAppVersionResourceMappingsRequest"))

(smithy/sdk/shapes:define-structure
 remove-draft-app-version-resource-mappings-response common-lisp:nil
 ((app-arn :target-type arn :member-name "appArn")
  (app-version :target-type entity-version :member-name "appVersion"))
 (:shape-name "RemoveDraftAppVersionResourceMappingsResponse"))

(smithy/sdk/shapes:define-enum render-recommendation-type
    common-lisp:nil
  (:alarm "Alarm")
  (:sop "Sop")
  (:test "Test"))

(smithy/sdk/shapes:define-list render-recommendation-type-list :member
                               render-recommendation-type)

(smithy/sdk/shapes:define-list resiliency-policies :member resiliency-policy)

(smithy/sdk/shapes:define-structure resiliency-policy common-lisp:nil
                                    ((policy-arn :target-type arn :member-name
                                      "policyArn")
                                     (policy-name :target-type entity-name
                                      :member-name "policyName")
                                     (policy-description :target-type
                                      entity-description :member-name
                                      "policyDescription")
                                     (data-location-constraint :target-type
                                      data-location-constraint :member-name
                                      "dataLocationConstraint")
                                     (tier :target-type resiliency-policy-tier
                                      :member-name "tier")
                                     (estimated-cost-tier :target-type
                                      estimated-cost-tier :member-name
                                      "estimatedCostTier")
                                     (policy :target-type disruption-policy
                                      :member-name "policy")
                                     (creation-time :target-type time-stamp
                                      :member-name "creationTime")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ResiliencyPolicy"))

(smithy/sdk/shapes:define-enum resiliency-policy-tier
    common-lisp:nil
  (:mission-critical "MissionCritical")
  (:critical "Critical")
  (:important "Important")
  (:core-services "CoreServices")
  (:non-critical "NonCritical")
  (:not-applicable "NotApplicable"))

(smithy/sdk/shapes:define-structure resiliency-score common-lisp:nil
                                    ((score :target-type double :required
                                      common-lisp:t :member-name "score")
                                     (disruption-score :target-type
                                      disruption-resiliency-score :required
                                      common-lisp:t :member-name
                                      "disruptionScore")
                                     (component-score :target-type
                                      scoring-component-resiliency-scores
                                      :member-name "componentScore"))
                                    (:shape-name "ResiliencyScore"))

(smithy/sdk/shapes:define-enum resiliency-score-type
    common-lisp:nil
  (:compliance "Compliance")
  (:test "Test")
  (:alarm "Alarm")
  (:sop "Sop"))

(smithy/sdk/shapes:define-structure resolve-app-version-resources-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion"))
                                    (:shape-name
                                     "ResolveAppVersionResourcesRequest"))

(smithy/sdk/shapes:define-structure resolve-app-version-resources-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (resolution-id :target-type string255
                                      :required common-lisp:t :member-name
                                      "resolutionId")
                                     (status :target-type
                                      resource-resolution-status-type :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "ResolveAppVersionResourcesResponse"))

(smithy/sdk/shapes:define-structure resource-drift common-lisp:nil
                                    ((app-arn :target-type arn :member-name
                                      "appArn")
                                     (app-version :target-type entity-version
                                      :member-name "appVersion")
                                     (reference-id :target-type entity-id
                                      :member-name "referenceId")
                                     (resource-identifier :target-type
                                      resource-identifier :member-name
                                      "resourceIdentifier")
                                     (diff-type :target-type difference-type
                                      :member-name "diffType"))
                                    (:shape-name "ResourceDrift"))

(smithy/sdk/shapes:define-list resource-drift-list :member resource-drift)

(smithy/sdk/shapes:define-structure resource-error common-lisp:nil
                                    ((logical-resource-id :target-type
                                      string255 :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      string255 :member-name
                                      "physicalResourceId")
                                     (reason :target-type error-message
                                      :member-name "reason"))
                                    (:shape-name "ResourceError"))

(smithy/sdk/shapes:define-list resource-error-list :member resource-error)

(smithy/sdk/shapes:define-structure resource-errors-details common-lisp:nil
                                    ((resource-errors :target-type
                                      resource-error-list :member-name
                                      "resourceErrors")
                                     (has-more-errors :target-type
                                      boolean-optional :member-name
                                      "hasMoreErrors"))
                                    (:shape-name "ResourceErrorsDetails"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-identifier common-lisp:nil
                                    ((logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "logicalResourceId")
                                     (resource-type :target-type string255
                                      :member-name "resourceType"))
                                    (:shape-name "ResourceIdentifier"))

(smithy/sdk/shapes:define-enum resource-import-status-type
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:success "Success"))

(smithy/sdk/shapes:define-enum resource-import-strategy-type
    common-lisp:nil
  (:add-only "AddOnly")
  (:replace-all "ReplaceAll"))

(smithy/sdk/shapes:define-structure resource-mapping common-lisp:nil
                                    ((resource-name :target-type entity-name
                                      :member-name "resourceName")
                                     (logical-stack-name :target-type string255
                                      :member-name "logicalStackName")
                                     (app-registry-app-name :target-type
                                      entity-name :member-name
                                      "appRegistryAppName")
                                     (resource-group-name :target-type
                                      entity-name :member-name
                                      "resourceGroupName")
                                     (mapping-type :target-type
                                      resource-mapping-type :required
                                      common-lisp:t :member-name "mappingType")
                                     (physical-resource-id :target-type
                                      physical-resource-id :required
                                      common-lisp:t :member-name
                                      "physicalResourceId")
                                     (terraform-source-name :target-type
                                      string255 :member-name
                                      "terraformSourceName")
                                     (eks-source-name :target-type string255
                                      :member-name "eksSourceName"))
                                    (:shape-name "ResourceMapping"))

(smithy/sdk/shapes:define-list resource-mapping-list :member resource-mapping)

(smithy/sdk/shapes:define-enum resource-mapping-type
    common-lisp:nil
  (:cfn-stack "CfnStack")
  (:resource "Resource")
  (:app-registry-app "AppRegistryApp")
  (:resource-group "ResourceGroup")
  (:terraform "Terraform")
  (:eks "EKS"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-resolution-status-type
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:success "Success"))

(smithy/sdk/shapes:define-enum resource-source-type
    common-lisp:nil
  (:app-template "AppTemplate")
  (:discovered "Discovered"))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resources-grouping-rec-gen-status-type
    common-lisp:nil
  (:pending "Pending")
  (:in-progress "InProgress")
  (:failed "Failed")
  (:success "Success"))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list row :member string255)

(smithy/sdk/shapes:define-list row-list :member row)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type string500
                                      :member-name "bucket")
                                     (prefix :target-type string500
                                      :member-name "prefix"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scoring-component-resiliency-score
                                    common-lisp:nil
                                    ((score :target-type double :member-name
                                      "score")
                                     (possible-score :target-type double
                                      :member-name "possibleScore")
                                     (outstanding-count :target-type long
                                      :member-name "outstandingCount")
                                     (excluded-count :target-type long
                                      :member-name "excludedCount"))
                                    (:shape-name
                                     "ScoringComponentResiliencyScore"))

(smithy/sdk/shapes:define-map scoring-component-resiliency-scores :key
                              resiliency-score-type :value
                              scoring-component-resiliency-score)

(smithy/sdk/shapes:define-type seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure sop-recommendation common-lisp:nil
                                    ((service-type :target-type
                                      sop-service-type :required common-lisp:t
                                      :member-name "serviceType")
                                     (app-component-name :target-type entity-id
                                      :member-name "appComponentName")
                                     (description :target-type string500
                                      :member-name "description")
                                     (recommendation-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "recommendationId")
                                     (name :target-type document-name
                                      :member-name "name")
                                     (items :target-type
                                      recommendation-item-list :member-name
                                      "items")
                                     (reference-id :target-type
                                      spec-reference-id :required common-lisp:t
                                      :member-name "referenceId")
                                     (prerequisite :target-type string500
                                      :member-name "prerequisite")
                                     (recommendation-status :target-type
                                      recommendation-status :member-name
                                      "recommendationStatus"))
                                    (:shape-name "SopRecommendation"))

(smithy/sdk/shapes:define-list sop-recommendation-list :member
                               sop-recommendation)

(smithy/sdk/shapes:define-enum sop-service-type
    common-lisp:nil
  (:ssm "SSM"))

(smithy/sdk/shapes:define-structure sort common-lisp:nil
                                    ((field :target-type string255 :required
                                      common-lisp:t :member-name "field")
                                     (ascending :target-type boolean-optional
                                      :member-name "ascending"))
                                    (:shape-name "Sort"))

(smithy/sdk/shapes:define-list sort-list :member sort)

(smithy/sdk/shapes:define-type spec-reference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-app-assessment-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (assessment-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "assessmentName")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "StartAppAssessmentRequest"))

(smithy/sdk/shapes:define-structure start-app-assessment-response
                                    common-lisp:nil
                                    ((assessment :target-type app-assessment
                                      :required common-lisp:t :member-name
                                      "assessment"))
                                    (:shape-name "StartAppAssessmentResponse"))

(smithy/sdk/shapes:define-input start-metrics-export-request common-lisp:nil
                                ((bucket-name :target-type entity-name
                                  :member-name "bucketName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "StartMetricsExportRequest"))

(smithy/sdk/shapes:define-output start-metrics-export-response common-lisp:nil
                                 ((metrics-export-id :target-type string255
                                   :required common-lisp:t :member-name
                                   "metricsExportId")
                                  (status :target-type
                                   metrics-export-status-type :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "StartMetricsExportResponse"))

(smithy/sdk/shapes:define-input
 start-resource-grouping-recommendation-task-request common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn"))
 (:shape-name "StartResourceGroupingRecommendationTaskRequest"))

(smithy/sdk/shapes:define-output
 start-resource-grouping-recommendation-task-response common-lisp:nil
 ((app-arn :target-type arn :required common-lisp:t :member-name "appArn")
  (grouping-id :target-type string255 :required common-lisp:t :member-name
   "groupingId")
  (status :target-type resources-grouping-rec-gen-status-type :required
   common-lisp:t :member-name "status")
  (error-message :target-type string500 :member-name "errorMessage"))
 (:shape-name "StartResourceGroupingRecommendationTaskResponse"))

(smithy/sdk/shapes:define-type string1024 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string128without-whitespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string255list :member string255)

(smithy/sdk/shapes:define-type string500 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list suggested-changes-list :member
                               entity-description)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum template-format
    common-lisp:nil
  (:cfn-yaml "CfnYaml")
  (:cfn-json "CfnJson"))

(smithy/sdk/shapes:define-structure terraform-source common-lisp:nil
                                    ((s3state-file-url :target-type s3url
                                      :required common-lisp:t :member-name
                                      "s3StateFileUrl"))
                                    (:shape-name "TerraformSource"))

(smithy/sdk/shapes:define-list terraform-source-list :member terraform-source)

(smithy/sdk/shapes:define-structure test-recommendation common-lisp:nil
                                    ((recommendation-id :target-type uuid
                                      :member-name "recommendationId")
                                     (reference-id :target-type
                                      spec-reference-id :required common-lisp:t
                                      :member-name "referenceId")
                                     (app-component-id :target-type
                                      entity-name255 :member-name
                                      "appComponentId")
                                     (app-component-name :target-type entity-id
                                      :member-name "appComponentName")
                                     (name :target-type document-name
                                      :member-name "name")
                                     (intent :target-type entity-description
                                      :member-name "intent")
                                     (risk :target-type test-risk :member-name
                                      "risk")
                                     (type :target-type test-type :member-name
                                      "type")
                                     (description :target-type string500
                                      :member-name "description")
                                     (items :target-type
                                      recommendation-item-list :member-name
                                      "items")
                                     (prerequisite :target-type string500
                                      :member-name "prerequisite")
                                     (depends-on-alarms :target-type
                                      alarm-reference-id-list :member-name
                                      "dependsOnAlarms")
                                     (recommendation-status :target-type
                                      recommendation-status :member-name
                                      "recommendationStatus"))
                                    (:shape-name "TestRecommendation"))

(smithy/sdk/shapes:define-list test-recommendation-list :member
                               test-recommendation)

(smithy/sdk/shapes:define-enum test-risk
    common-lisp:nil
  (:small "Small")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-enum test-type
    common-lisp:nil
  (:software "Software")
  (:hardware "Hardware")
  (:az "AZ")
  (:region "Region"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure unsupported-resource common-lisp:nil
                                    ((logical-resource-id :target-type
                                      logical-resource-id :required
                                      common-lisp:t :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :required
                                      common-lisp:t :member-name
                                      "physicalResourceId")
                                     (resource-type :target-type string255
                                      :required common-lisp:t :member-name
                                      "resourceType")
                                     (unsupported-resource-status :target-type
                                      string255 :member-name
                                      "unsupportedResourceStatus"))
                                    (:shape-name "UnsupportedResource"))

(smithy/sdk/shapes:define-list unsupported-resource-list :member
                               unsupported-resource)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-app-request common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (policy-arn :target-type arn :member-name
                                      "policyArn")
                                     (clear-resiliency-policy-arn :target-type
                                      boolean-optional :member-name
                                      "clearResiliencyPolicyArn")
                                     (assessment-schedule :target-type
                                      app-assessment-schedule-type :member-name
                                      "assessmentSchedule")
                                     (permission-model :target-type
                                      permission-model :member-name
                                      "permissionModel")
                                     (event-subscriptions :target-type
                                      event-subscription-list :member-name
                                      "eventSubscriptions"))
                                    (:shape-name "UpdateAppRequest"))

(smithy/sdk/shapes:define-structure update-app-response common-lisp:nil
                                    ((app :target-type app :required
                                      common-lisp:t :member-name "app"))
                                    (:shape-name "UpdateAppResponse"))

(smithy/sdk/shapes:define-structure update-app-version-app-component-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (id :target-type string255 :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type string255 :member-name
                                      "name")
                                     (type :target-type string255 :member-name
                                      "type")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo"))
                                    (:shape-name
                                     "UpdateAppVersionAppComponentRequest"))

(smithy/sdk/shapes:define-structure update-app-version-app-component-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (app-component :target-type app-component
                                      :member-name "appComponent"))
                                    (:shape-name
                                     "UpdateAppVersionAppComponentResponse"))

(smithy/sdk/shapes:define-structure update-app-version-request common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo"))
                                    (:shape-name "UpdateAppVersionRequest"))

(smithy/sdk/shapes:define-structure update-app-version-resource-request
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (resource-name :target-type entity-name
                                      :member-name "resourceName")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "logicalResourceId")
                                     (physical-resource-id :target-type
                                      string2048 :member-name
                                      "physicalResourceId")
                                     (aws-region :target-type aws-region
                                      :member-name "awsRegion")
                                     (aws-account-id :target-type customer-id
                                      :member-name "awsAccountId")
                                     (resource-type :target-type string255
                                      :member-name "resourceType")
                                     (app-components :target-type
                                      app-component-name-list :member-name
                                      "appComponents")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo")
                                     (excluded :target-type boolean-optional
                                      :member-name "excluded"))
                                    (:shape-name
                                     "UpdateAppVersionResourceRequest"))

(smithy/sdk/shapes:define-structure update-app-version-resource-response
                                    common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (physical-resource :target-type
                                      physical-resource :member-name
                                      "physicalResource"))
                                    (:shape-name
                                     "UpdateAppVersionResourceResponse"))

(smithy/sdk/shapes:define-structure update-app-version-response common-lisp:nil
                                    ((app-arn :target-type arn :required
                                      common-lisp:t :member-name "appArn")
                                     (app-version :target-type entity-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo"))
                                    (:shape-name "UpdateAppVersionResponse"))

(smithy/sdk/shapes:define-structure update-recommendation-status-item
                                    common-lisp:nil
                                    ((resource-id :target-type string500
                                      :member-name "resourceId")
                                     (target-account-id :target-type
                                      customer-id :member-name
                                      "targetAccountId")
                                     (target-region :target-type aws-region
                                      :member-name "targetRegion"))
                                    (:shape-name
                                     "UpdateRecommendationStatusItem"))

(smithy/sdk/shapes:define-list update-recommendation-status-request-entries
                               :member
                               update-recommendation-status-request-entry)

(smithy/sdk/shapes:define-structure update-recommendation-status-request-entry
                                    common-lisp:nil
                                    ((entry-id :target-type string255 :required
                                      common-lisp:t :member-name "entryId")
                                     (reference-id :target-type
                                      spec-reference-id :required common-lisp:t
                                      :member-name "referenceId")
                                     (item :target-type
                                      update-recommendation-status-item
                                      :member-name "item")
                                     (excluded :target-type boolean-optional
                                      :required common-lisp:t :member-name
                                      "excluded")
                                     (app-component-id :target-type
                                      entity-name255 :member-name
                                      "appComponentId")
                                     (exclude-reason :target-type
                                      exclude-recommendation-reason
                                      :member-name "excludeReason"))
                                    (:shape-name
                                     "UpdateRecommendationStatusRequestEntry"))

(smithy/sdk/shapes:define-structure update-resiliency-policy-request
                                    common-lisp:nil
                                    ((policy-arn :target-type arn :required
                                      common-lisp:t :member-name "policyArn")
                                     (policy-name :target-type entity-name
                                      :member-name "policyName")
                                     (policy-description :target-type
                                      entity-description :member-name
                                      "policyDescription")
                                     (data-location-constraint :target-type
                                      data-location-constraint :member-name
                                      "dataLocationConstraint")
                                     (tier :target-type resiliency-policy-tier
                                      :member-name "tier")
                                     (policy :target-type disruption-policy
                                      :member-name "policy"))
                                    (:shape-name
                                     "UpdateResiliencyPolicyRequest"))

(smithy/sdk/shapes:define-structure update-resiliency-policy-response
                                    common-lisp:nil
                                    ((policy :target-type resiliency-policy
                                      :required common-lisp:t :member-name
                                      "policy"))
                                    (:shape-name
                                     "UpdateResiliencyPolicyResponse"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string500 :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation accept-resource-grouping-recommendations
                                       :shape-name
                                       "AcceptResourceGroupingRecommendations"
                                       :input
                                       accept-resource-grouping-recommendations-request
                                       :output
                                       accept-resource-grouping-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/accept-resource-grouping-recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation add-draft-app-version-resource-mappings
                                       :shape-name
                                       "AddDraftAppVersionResourceMappings"
                                       :input
                                       add-draft-app-version-resource-mappings-request
                                       :output
                                       add-draft-app-version-resource-mappings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/add-draft-app-version-resource-mappings"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-update-recommendation-status
                                       :shape-name
                                       "BatchUpdateRecommendationStatus" :input
                                       batch-update-recommendation-status-request
                                       :output
                                       batch-update-recommendation-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/batch-update-recommendation-status"
                                       :code 200)

(smithy/sdk/operation:define-operation create-app :shape-name "CreateApp"
                                       :input create-app-request :output
                                       create-app-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/create-app" :code
                                       200)

(smithy/sdk/operation:define-operation create-app-version-app-component
                                       :shape-name
                                       "CreateAppVersionAppComponent" :input
                                       create-app-version-app-component-request
                                       :output
                                       create-app-version-app-component-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-app-version-app-component"
                                       :code 200)

(smithy/sdk/operation:define-operation create-app-version-resource :shape-name
                                       "CreateAppVersionResource" :input
                                       create-app-version-resource-request
                                       :output
                                       create-app-version-resource-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-app-version-resource" :code 200)

(smithy/sdk/operation:define-operation create-recommendation-template
                                       :shape-name
                                       "CreateRecommendationTemplate" :input
                                       create-recommendation-template-request
                                       :output
                                       create-recommendation-template-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-recommendation-template" :code
                                       200)

(smithy/sdk/operation:define-operation create-resiliency-policy :shape-name
                                       "CreateResiliencyPolicy" :input
                                       create-resiliency-policy-request :output
                                       create-resiliency-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-resiliency-policy" :code 200)

(smithy/sdk/operation:define-operation delete-app :shape-name "DeleteApp"
                                       :input delete-app-request :output
                                       delete-app-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/delete-app" :code
                                       200)

(smithy/sdk/operation:define-operation delete-app-assessment :shape-name
                                       "DeleteAppAssessment" :input
                                       delete-app-assessment-request :output
                                       delete-app-assessment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-app-assessment" :code 200)

(smithy/sdk/operation:define-operation delete-app-input-source :shape-name
                                       "DeleteAppInputSource" :input
                                       delete-app-input-source-request :output
                                       delete-app-input-source-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-app-input-source" :code 200)

(smithy/sdk/operation:define-operation delete-app-version-app-component
                                       :shape-name
                                       "DeleteAppVersionAppComponent" :input
                                       delete-app-version-app-component-request
                                       :output
                                       delete-app-version-app-component-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-app-version-app-component"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-app-version-resource :shape-name
                                       "DeleteAppVersionResource" :input
                                       delete-app-version-resource-request
                                       :output
                                       delete-app-version-resource-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-app-version-resource" :code 200)

(smithy/sdk/operation:define-operation delete-recommendation-template
                                       :shape-name
                                       "DeleteRecommendationTemplate" :input
                                       delete-recommendation-template-request
                                       :output
                                       delete-recommendation-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-recommendation-template" :code
                                       200)

(smithy/sdk/operation:define-operation delete-resiliency-policy :shape-name
                                       "DeleteResiliencyPolicy" :input
                                       delete-resiliency-policy-request :output
                                       delete-resiliency-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-resiliency-policy" :code 200)

(smithy/sdk/operation:define-operation describe-app :shape-name "DescribeApp"
                                       :input describe-app-request :output
                                       describe-app-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/describe-app"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-app-assessment :shape-name
                                       "DescribeAppAssessment" :input
                                       describe-app-assessment-request :output
                                       describe-app-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-app-assessment" :code 200)

(smithy/sdk/operation:define-operation describe-app-version :shape-name
                                       "DescribeAppVersion" :input
                                       describe-app-version-request :output
                                       describe-app-version-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-app-version" :code 200)

(smithy/sdk/operation:define-operation describe-app-version-app-component
                                       :shape-name
                                       "DescribeAppVersionAppComponent" :input
                                       describe-app-version-app-component-request
                                       :output
                                       describe-app-version-app-component-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-app-version-app-component"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-app-version-resource
                                       :shape-name "DescribeAppVersionResource"
                                       :input
                                       describe-app-version-resource-request
                                       :output
                                       describe-app-version-resource-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-app-version-resource" :code
                                       200)

(smithy/sdk/operation:define-operation
 describe-app-version-resources-resolution-status :shape-name
 "DescribeAppVersionResourcesResolutionStatus" :input
 describe-app-version-resources-resolution-status-request :output
 describe-app-version-resources-resolution-status-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/describe-app-version-resources-resolution-status" :code
 200)

(smithy/sdk/operation:define-operation describe-app-version-template
                                       :shape-name "DescribeAppVersionTemplate"
                                       :input
                                       describe-app-version-template-request
                                       :output
                                       describe-app-version-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-app-version-template" :code
                                       200)

(smithy/sdk/operation:define-operation
 describe-draft-app-version-resources-import-status :shape-name
 "DescribeDraftAppVersionResourcesImportStatus" :input
 describe-draft-app-version-resources-import-status-request :output
 describe-draft-app-version-resources-import-status-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/describe-draft-app-version-resources-import-status"
 :code 200)

(smithy/sdk/operation:define-operation describe-metrics-export :shape-name
                                       "DescribeMetricsExport" :input
                                       describe-metrics-export-request :output
                                       describe-metrics-export-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-metrics-export" :code 200)

(smithy/sdk/operation:define-operation describe-resiliency-policy :shape-name
                                       "DescribeResiliencyPolicy" :input
                                       describe-resiliency-policy-request
                                       :output
                                       describe-resiliency-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-resiliency-policy" :code 200)

(smithy/sdk/operation:define-operation
 describe-resource-grouping-recommendation-task :shape-name
 "DescribeResourceGroupingRecommendationTask" :input
 describe-resource-grouping-recommendation-task-request :output
 describe-resource-grouping-recommendation-task-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/describe-resource-grouping-recommendation-task" :code
 200)

(smithy/sdk/operation:define-operation import-resources-to-draft-app-version
                                       :shape-name
                                       "ImportResourcesToDraftAppVersion"
                                       :input
                                       import-resources-to-draft-app-version-request
                                       :output
                                       import-resources-to-draft-app-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/import-resources-to-draft-app-version"
                                       :code 200)

(smithy/sdk/operation:define-operation list-alarm-recommendations :shape-name
                                       "ListAlarmRecommendations" :input
                                       list-alarm-recommendations-request
                                       :output
                                       list-alarm-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-alarm-recommendations" :code 200)

(smithy/sdk/operation:define-operation list-app-assessment-compliance-drifts
                                       :shape-name
                                       "ListAppAssessmentComplianceDrifts"
                                       :input
                                       list-app-assessment-compliance-drifts-request
                                       :output
                                       list-app-assessment-compliance-drifts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-assessment-compliance-drifts"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-assessment-resource-drifts
                                       :shape-name
                                       "ListAppAssessmentResourceDrifts" :input
                                       list-app-assessment-resource-drifts-request
                                       :output
                                       list-app-assessment-resource-drifts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-assessment-resource-drifts"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-assessments :shape-name
                                       "ListAppAssessments" :input
                                       list-app-assessments-request :output
                                       list-app-assessments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-app-assessments" :code 200)

(smithy/sdk/operation:define-operation list-app-component-compliances
                                       :shape-name
                                       "ListAppComponentCompliances" :input
                                       list-app-component-compliances-request
                                       :output
                                       list-app-component-compliances-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-component-compliances" :code
                                       200)

(smithy/sdk/operation:define-operation list-app-component-recommendations
                                       :shape-name
                                       "ListAppComponentRecommendations" :input
                                       list-app-component-recommendations-request
                                       :output
                                       list-app-component-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-component-recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-input-sources :shape-name
                                       "ListAppInputSources" :input
                                       list-app-input-sources-request :output
                                       list-app-input-sources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-input-sources" :code 200)

(smithy/sdk/operation:define-operation list-app-version-app-components
                                       :shape-name
                                       "ListAppVersionAppComponents" :input
                                       list-app-version-app-components-request
                                       :output
                                       list-app-version-app-components-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-version-app-components" :code
                                       200)

(smithy/sdk/operation:define-operation list-app-version-resource-mappings
                                       :shape-name
                                       "ListAppVersionResourceMappings" :input
                                       list-app-version-resource-mappings-request
                                       :output
                                       list-app-version-resource-mappings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-version-resource-mappings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-app-version-resources :shape-name
                                       "ListAppVersionResources" :input
                                       list-app-version-resources-request
                                       :output
                                       list-app-version-resources-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-app-version-resources" :code 200)

(smithy/sdk/operation:define-operation list-app-versions :shape-name
                                       "ListAppVersions" :input
                                       list-app-versions-request :output
                                       list-app-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-app-versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-apps :shape-name "ListApps" :input
                                       list-apps-request :output
                                       list-apps-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/list-apps" :code
                                       200)

(smithy/sdk/operation:define-operation list-metrics :shape-name "ListMetrics"
                                       :input list-metrics-request :output
                                       list-metrics-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recommendation-templates
                                       :shape-name
                                       "ListRecommendationTemplates" :input
                                       list-recommendation-templates-request
                                       :output
                                       list-recommendation-templates-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-recommendation-templates" :code
                                       200)

(smithy/sdk/operation:define-operation list-resiliency-policies :shape-name
                                       "ListResiliencyPolicies" :input
                                       list-resiliency-policies-request :output
                                       list-resiliency-policies-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-resiliency-policies" :code 200)

(smithy/sdk/operation:define-operation list-resource-grouping-recommendations
                                       :shape-name
                                       "ListResourceGroupingRecommendations"
                                       :input
                                       list-resource-grouping-recommendations-request
                                       :output
                                       list-resource-grouping-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-resource-grouping-recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-sop-recommendations :shape-name
                                       "ListSopRecommendations" :input
                                       list-sop-recommendations-request :output
                                       list-sop-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-sop-recommendations" :code 200)

(smithy/sdk/operation:define-operation list-suggested-resiliency-policies
                                       :shape-name
                                       "ListSuggestedResiliencyPolicies" :input
                                       list-suggested-resiliency-policies-request
                                       :output
                                       list-suggested-resiliency-policies-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-suggested-resiliency-policies"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-test-recommendations :shape-name
                                       "ListTestRecommendations" :input
                                       list-test-recommendations-request
                                       :output
                                       list-test-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-test-recommendations" :code 200)

(smithy/sdk/operation:define-operation list-unsupported-app-version-resources
                                       :shape-name
                                       "ListUnsupportedAppVersionResources"
                                       :input
                                       list-unsupported-app-version-resources-request
                                       :output
                                       list-unsupported-app-version-resources-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-unsupported-app-version-resources"
                                       :code 200)

(smithy/sdk/operation:define-operation publish-app-version :shape-name
                                       "PublishAppVersion" :input
                                       publish-app-version-request :output
                                       publish-app-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/publish-app-version" :code 200)

(smithy/sdk/operation:define-operation put-draft-app-version-template
                                       :shape-name "PutDraftAppVersionTemplate"
                                       :input
                                       put-draft-app-version-template-request
                                       :output
                                       put-draft-app-version-template-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/put-draft-app-version-template" :code
                                       200)

(smithy/sdk/operation:define-operation reject-resource-grouping-recommendations
                                       :shape-name
                                       "RejectResourceGroupingRecommendations"
                                       :input
                                       reject-resource-grouping-recommendations-request
                                       :output
                                       reject-resource-grouping-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/reject-resource-grouping-recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 remove-draft-app-version-resource-mappings :shape-name
 "RemoveDraftAppVersionResourceMappings" :input
 remove-draft-app-version-resource-mappings-request :output
 remove-draft-app-version-resource-mappings-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/remove-draft-app-version-resource-mappings" :code 200)

(smithy/sdk/operation:define-operation resolve-app-version-resources
                                       :shape-name "ResolveAppVersionResources"
                                       :input
                                       resolve-app-version-resources-request
                                       :output
                                       resolve-app-version-resources-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/resolve-app-version-resources" :code
                                       200)

(smithy/sdk/operation:define-operation start-app-assessment :shape-name
                                       "StartAppAssessment" :input
                                       start-app-assessment-request :output
                                       start-app-assessment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/start-app-assessment" :code 200)

(smithy/sdk/operation:define-operation start-metrics-export :shape-name
                                       "StartMetricsExport" :input
                                       start-metrics-export-request :output
                                       start-metrics-export-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/start-metrics-export" :code 200)

(smithy/sdk/operation:define-operation
 start-resource-grouping-recommendation-task :shape-name
 "StartResourceGroupingRecommendationTask" :input
 start-resource-grouping-recommendation-task-request :output
 start-resource-grouping-recommendation-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/start-resource-grouping-recommendation-task" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-app :shape-name "UpdateApp"
                                       :input update-app-request :output
                                       update-app-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/update-app" :code
                                       200)

(smithy/sdk/operation:define-operation update-app-version :shape-name
                                       "UpdateAppVersion" :input
                                       update-app-version-request :output
                                       update-app-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-app-version" :code 200)

(smithy/sdk/operation:define-operation update-app-version-app-component
                                       :shape-name
                                       "UpdateAppVersionAppComponent" :input
                                       update-app-version-app-component-request
                                       :output
                                       update-app-version-app-component-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-app-version-app-component"
                                       :code 200)

(smithy/sdk/operation:define-operation update-app-version-resource :shape-name
                                       "UpdateAppVersionResource" :input
                                       update-app-version-resource-request
                                       :output
                                       update-app-version-resource-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-app-version-resource" :code 200)

(smithy/sdk/operation:define-operation update-resiliency-policy :shape-name
                                       "UpdateResiliencyPolicy" :input
                                       update-resiliency-policy-request :output
                                       update-resiliency-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-resiliency-policy" :code 200)
