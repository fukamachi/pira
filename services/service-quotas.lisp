(uiop/package:define-package #:pira/service-quotas (:use)
                             (:export #:awsservice-access-not-enabled-exception
                              #:access-denied-exception #:amazon-resource-name
                              #:applied-level-enum
                              #:associate-service-quota-template
                              #:associate-service-quota-template-request
                              #:associate-service-quota-template-response
                              #:aws-region #:create-support-case
                              #:create-support-case-request
                              #:create-support-case-response
                              #:customer-service-engagement-id #:date-time
                              #:delete-service-quota-increase-request-from-template
                              #:delete-service-quota-increase-request-from-template-request
                              #:delete-service-quota-increase-request-from-template-response
                              #:dependency-access-denied-exception
                              #:disassociate-service-quota-template
                              #:disassociate-service-quota-template-request
                              #:disassociate-service-quota-template-response
                              #:error-code #:error-message #:error-reason
                              #:exception-message
                              #:get-awsdefault-service-quota
                              #:get-awsdefault-service-quota-request
                              #:get-awsdefault-service-quota-response
                              #:get-association-for-service-quota-template
                              #:get-association-for-service-quota-template-request
                              #:get-association-for-service-quota-template-response
                              #:get-requested-service-quota-change
                              #:get-requested-service-quota-change-request
                              #:get-requested-service-quota-change-response
                              #:get-service-quota
                              #:get-service-quota-increase-request-from-template
                              #:get-service-quota-increase-request-from-template-request
                              #:get-service-quota-increase-request-from-template-response
                              #:get-service-quota-request
                              #:get-service-quota-response #:global-quota
                              #:illegal-argument-exception #:input-tag-keys
                              #:input-tags #:invalid-pagination-token-exception
                              #:invalid-resource-state-exception
                              #:list-awsdefault-service-quotas
                              #:list-awsdefault-service-quotas-request
                              #:list-awsdefault-service-quotas-response
                              #:list-requested-service-quota-change-history
                              #:list-requested-service-quota-change-history-by-quota
                              #:list-requested-service-quota-change-history-by-quota-request
                              #:list-requested-service-quota-change-history-by-quota-response
                              #:list-requested-service-quota-change-history-request
                              #:list-requested-service-quota-change-history-response
                              #:list-service-quota-increase-requests-in-template
                              #:list-service-quota-increase-requests-in-template-request
                              #:list-service-quota-increase-requests-in-template-response
                              #:list-service-quotas
                              #:list-service-quotas-request
                              #:list-service-quotas-response #:list-services
                              #:list-services-request #:list-services-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:metric-dimension-name #:metric-dimension-value
                              #:metric-dimensions-map-definition #:metric-info
                              #:next-token
                              #:no-available-organization-exception
                              #:no-such-resource-exception
                              #:organization-not-in-all-features-mode-exception
                              #:output-tags #:period-unit #:period-value
                              #:put-service-quota-increase-request-into-template
                              #:put-service-quota-increase-request-into-template-request
                              #:put-service-quota-increase-request-into-template-response
                              #:quota-adjustable #:quota-arn #:quota-code
                              #:quota-context-id #:quota-context-info
                              #:quota-context-scope #:quota-context-scope-type
                              #:quota-description #:quota-exceeded-exception
                              #:quota-metric-name #:quota-metric-namespace
                              #:quota-name #:quota-period #:quota-unit
                              #:quota-value #:request-id
                              #:request-service-quota-increase
                              #:request-service-quota-increase-request
                              #:request-service-quota-increase-response
                              #:request-status #:requested-service-quota-change
                              #:requested-service-quota-change-history-list-definition
                              #:requester #:resource-already-exists-exception
                              #:service-code #:service-exception #:service-info
                              #:service-info-list-definition #:service-name
                              #:service-quota
                              #:service-quota-increase-request-in-template
                              #:service-quota-increase-request-in-template-list
                              #:service-quota-list-definition
                              #:service-quota-template-association-status
                              #:service-quota-template-not-in-use-exception
                              #:service-quotas-v20190624 #:statistic
                              #:support-case-allowed #:tag #:tag-key
                              #:tag-policy-violation-exception #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value
                              #:templates-not-available-in-region-exception
                              #:too-many-requests-exception
                              #:too-many-tags-exception #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response))
(common-lisp:in-package #:pira/service-quotas)

(smithy/sdk/service:define-service service-quotas-v20190624 :shape-name
                                   "ServiceQuotasV20190624" :version
                                   "2019-06-24" :title "Service Quotas" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Service Quotas")
                                      ("arnNamespace" . "servicequotas")
                                      ("cloudFormationName" . "ServiceQuotas")
                                      ("cloudTrailEventSource"
                                       . "servicequotas.amazonaws.com")
                                      ("endpointPrefix" . "servicequotas"))
                                     ("aws.auth#sigv4"
                                      ("name" . "servicequotas"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error awsservice-access-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AWSServiceAccessNotEnabledException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum applied-level-enum
    common-lisp:nil
  (:account "ACCOUNT")
  (:resource "RESOURCE")
  (:all "ALL"))

(smithy/sdk/shapes:define-input associate-service-quota-template-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "AssociateServiceQuotaTemplateRequest"))

(smithy/sdk/shapes:define-output associate-service-quota-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateServiceQuotaTemplateResponse"))

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-support-case-request common-lisp:nil
                                ((request-id :target-type request-id :required
                                  common-lisp:t :member-name "RequestId"))
                                (:shape-name "CreateSupportCaseRequest"))

(smithy/sdk/shapes:define-output create-support-case-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateSupportCaseResponse"))

(smithy/sdk/shapes:define-type customer-service-engagement-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input
 delete-service-quota-increase-request-from-template-request common-lisp:nil
 ((service-code :target-type service-code :required common-lisp:t :member-name
   "ServiceCode")
  (quota-code :target-type quota-code :required common-lisp:t :member-name
   "QuotaCode")
  (aws-region :target-type aws-region :required common-lisp:t :member-name
   "AwsRegion"))
 (:shape-name "DeleteServiceQuotaIncreaseRequestFromTemplateRequest"))

(smithy/sdk/shapes:define-output
 delete-service-quota-increase-request-from-template-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteServiceQuotaIncreaseRequestFromTemplateResponse"))

(smithy/sdk/shapes:define-error dependency-access-denied-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DependencyAccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input disassociate-service-quota-template-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisassociateServiceQuotaTemplateRequest"))

(smithy/sdk/shapes:define-output disassociate-service-quota-template-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateServiceQuotaTemplateResponse"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:dependency-access-denied-error "DEPENDENCY_ACCESS_DENIED_ERROR")
  (:dependency-throttling-error "DEPENDENCY_THROTTLING_ERROR")
  (:dependency-service-error "DEPENDENCY_SERVICE_ERROR")
  (:service-quota-not-available-error "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-reason common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorReason"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-awsdefault-service-quota-request
                                common-lisp:nil
                                ((service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "QuotaCode"))
                                (:shape-name
                                 "GetAWSDefaultServiceQuotaRequest"))

(smithy/sdk/shapes:define-output get-awsdefault-service-quota-response
                                 common-lisp:nil
                                 ((quota :target-type service-quota
                                   :member-name "Quota"))
                                 (:shape-name
                                  "GetAWSDefaultServiceQuotaResponse"))

(smithy/sdk/shapes:define-input
 get-association-for-service-quota-template-request common-lisp:nil
 common-lisp:nil (:shape-name "GetAssociationForServiceQuotaTemplateRequest"))

(smithy/sdk/shapes:define-output
 get-association-for-service-quota-template-response common-lisp:nil
 ((service-quota-template-association-status :target-type
   service-quota-template-association-status :member-name
   "ServiceQuotaTemplateAssociationStatus"))
 (:shape-name "GetAssociationForServiceQuotaTemplateResponse"))

(smithy/sdk/shapes:define-input get-requested-service-quota-change-request
                                common-lisp:nil
                                ((request-id :target-type request-id :required
                                  common-lisp:t :member-name "RequestId"))
                                (:shape-name
                                 "GetRequestedServiceQuotaChangeRequest"))

(smithy/sdk/shapes:define-output get-requested-service-quota-change-response
                                 common-lisp:nil
                                 ((requested-quota :target-type
                                   requested-service-quota-change :member-name
                                   "RequestedQuota"))
                                 (:shape-name
                                  "GetRequestedServiceQuotaChangeResponse"))

(smithy/sdk/shapes:define-input
 get-service-quota-increase-request-from-template-request common-lisp:nil
 ((service-code :target-type service-code :required common-lisp:t :member-name
   "ServiceCode")
  (quota-code :target-type quota-code :required common-lisp:t :member-name
   "QuotaCode")
  (aws-region :target-type aws-region :required common-lisp:t :member-name
   "AwsRegion"))
 (:shape-name "GetServiceQuotaIncreaseRequestFromTemplateRequest"))

(smithy/sdk/shapes:define-output
 get-service-quota-increase-request-from-template-response common-lisp:nil
 ((service-quota-increase-request-in-template :target-type
   service-quota-increase-request-in-template :member-name
   "ServiceQuotaIncreaseRequestInTemplate"))
 (:shape-name "GetServiceQuotaIncreaseRequestFromTemplateResponse"))

(smithy/sdk/shapes:define-input get-service-quota-request common-lisp:nil
                                ((service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "QuotaCode")
                                 (context-id :target-type quota-context-id
                                  :member-name "ContextId"))
                                (:shape-name "GetServiceQuotaRequest"))

(smithy/sdk/shapes:define-output get-service-quota-response common-lisp:nil
                                 ((quota :target-type service-quota
                                   :member-name "Quota"))
                                 (:shape-name "GetServiceQuotaResponse"))

(smithy/sdk/shapes:define-type global-quota smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error illegal-argument-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "IllegalArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list input-tag-keys :member tag-key)

(smithy/sdk/shapes:define-list input-tags :member tag)

(smithy/sdk/shapes:define-error invalid-pagination-token-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidPaginationTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-state-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidResourceStateException")
                                (:error-code 405))

(smithy/sdk/shapes:define-input list-awsdefault-service-quotas-request
                                common-lisp:nil
                                ((service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListAWSDefaultServiceQuotasRequest"))

(smithy/sdk/shapes:define-output list-awsdefault-service-quotas-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (quotas :target-type
                                   service-quota-list-definition :member-name
                                   "Quotas"))
                                 (:shape-name
                                  "ListAWSDefaultServiceQuotasResponse"))

(smithy/sdk/shapes:define-input
 list-requested-service-quota-change-history-by-quota-request common-lisp:nil
 ((service-code :target-type service-code :required common-lisp:t :member-name
   "ServiceCode")
  (quota-code :target-type quota-code :required common-lisp:t :member-name
   "QuotaCode")
  (status :target-type request-status :member-name "Status")
  (next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults")
  (quota-requested-at-level :target-type applied-level-enum :member-name
   "QuotaRequestedAtLevel"))
 (:shape-name "ListRequestedServiceQuotaChangeHistoryByQuotaRequest"))

(smithy/sdk/shapes:define-output
 list-requested-service-quota-change-history-by-quota-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (requested-quotas :target-type
   requested-service-quota-change-history-list-definition :member-name
   "RequestedQuotas"))
 (:shape-name "ListRequestedServiceQuotaChangeHistoryByQuotaResponse"))

(smithy/sdk/shapes:define-input
 list-requested-service-quota-change-history-request common-lisp:nil
 ((service-code :target-type service-code :member-name "ServiceCode")
  (status :target-type request-status :member-name "Status")
  (next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults")
  (quota-requested-at-level :target-type applied-level-enum :member-name
   "QuotaRequestedAtLevel"))
 (:shape-name "ListRequestedServiceQuotaChangeHistoryRequest"))

(smithy/sdk/shapes:define-output
 list-requested-service-quota-change-history-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (requested-quotas :target-type
   requested-service-quota-change-history-list-definition :member-name
   "RequestedQuotas"))
 (:shape-name "ListRequestedServiceQuotaChangeHistoryResponse"))

(smithy/sdk/shapes:define-input
 list-service-quota-increase-requests-in-template-request common-lisp:nil
 ((service-code :target-type service-code :member-name "ServiceCode")
  (aws-region :target-type aws-region :member-name "AwsRegion")
  (next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults"))
 (:shape-name "ListServiceQuotaIncreaseRequestsInTemplateRequest"))

(smithy/sdk/shapes:define-output
 list-service-quota-increase-requests-in-template-response common-lisp:nil
 ((service-quota-increase-request-in-template-list :target-type
   service-quota-increase-request-in-template-list :member-name
   "ServiceQuotaIncreaseRequestInTemplateList")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListServiceQuotaIncreaseRequestsInTemplateResponse"))

(smithy/sdk/shapes:define-input list-service-quotas-request common-lisp:nil
                                ((service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (quota-code :target-type quota-code
                                  :member-name "QuotaCode")
                                 (quota-applied-at-level :target-type
                                  applied-level-enum :member-name
                                  "QuotaAppliedAtLevel"))
                                (:shape-name "ListServiceQuotasRequest"))

(smithy/sdk/shapes:define-output list-service-quotas-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (quotas :target-type
                                   service-quota-list-definition :member-name
                                   "Quotas"))
                                 (:shape-name "ListServiceQuotasResponse"))

(smithy/sdk/shapes:define-input list-services-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListServicesRequest"))

(smithy/sdk/shapes:define-output list-services-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (services :target-type
                                   service-info-list-definition :member-name
                                   "Services"))
                                 (:shape-name "ListServicesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type output-tags :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metric-dimension-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map metric-dimensions-map-definition :key
                              metric-dimension-name :value
                              metric-dimension-value)

(smithy/sdk/shapes:define-structure metric-info common-lisp:nil
                                    ((metric-namespace :target-type
                                      quota-metric-namespace :member-name
                                      "MetricNamespace")
                                     (metric-name :target-type
                                      quota-metric-name :member-name
                                      "MetricName")
                                     (metric-dimensions :target-type
                                      metric-dimensions-map-definition
                                      :member-name "MetricDimensions")
                                     (metric-statistic-recommendation
                                      :target-type statistic :member-name
                                      "MetricStatisticRecommendation"))
                                    (:shape-name "MetricInfo"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-available-organization-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "NoAvailableOrganizationException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error no-such-resource-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "NoSuchResourceException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error organization-not-in-all-features-mode-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OrganizationNotInAllFeaturesModeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list output-tags :member tag)

(smithy/sdk/shapes:define-enum period-unit
    common-lisp:nil
  (:microsecond "MICROSECOND")
  (:millisecond "MILLISECOND")
  (:second "SECOND")
  (:minute "MINUTE")
  (:hour "HOUR")
  (:day "DAY")
  (:week "WEEK"))

(smithy/sdk/shapes:define-type period-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input
 put-service-quota-increase-request-into-template-request common-lisp:nil
 ((quota-code :target-type quota-code :required common-lisp:t :member-name
   "QuotaCode")
  (service-code :target-type service-code :required common-lisp:t :member-name
   "ServiceCode")
  (aws-region :target-type aws-region :required common-lisp:t :member-name
   "AwsRegion")
  (desired-value :target-type quota-value :required common-lisp:t :member-name
   "DesiredValue"))
 (:shape-name "PutServiceQuotaIncreaseRequestIntoTemplateRequest"))

(smithy/sdk/shapes:define-output
 put-service-quota-increase-request-into-template-response common-lisp:nil
 ((service-quota-increase-request-in-template :target-type
   service-quota-increase-request-in-template :member-name
   "ServiceQuotaIncreaseRequestInTemplate"))
 (:shape-name "PutServiceQuotaIncreaseRequestIntoTemplateResponse"))

(smithy/sdk/shapes:define-type quota-adjustable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type quota-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-context-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quota-context-info common-lisp:nil
                                    ((context-scope :target-type
                                      quota-context-scope :member-name
                                      "ContextScope")
                                     (context-scope-type :target-type
                                      quota-context-scope-type :member-name
                                      "ContextScopeType")
                                     (context-id :target-type quota-context-id
                                      :member-name "ContextId"))
                                    (:shape-name "QuotaContextInfo"))

(smithy/sdk/shapes:define-enum quota-context-scope
    common-lisp:nil
  (:resource "RESOURCE")
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-type quota-context-scope-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error quota-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "QuotaExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type quota-metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-metric-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure quota-period common-lisp:nil
                                    ((period-value :target-type period-value
                                      :member-name "PeriodValue")
                                     (period-unit :target-type period-unit
                                      :member-name "PeriodUnit"))
                                    (:shape-name "QuotaPeriod"))

(smithy/sdk/shapes:define-type quota-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input request-service-quota-increase-request
                                common-lisp:nil
                                ((service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "QuotaCode")
                                 (desired-value :target-type quota-value
                                  :required common-lisp:t :member-name
                                  "DesiredValue")
                                 (context-id :target-type quota-context-id
                                  :member-name "ContextId")
                                 (support-case-allowed :target-type
                                  support-case-allowed :member-name
                                  "SupportCaseAllowed"))
                                (:shape-name
                                 "RequestServiceQuotaIncreaseRequest"))

(smithy/sdk/shapes:define-output request-service-quota-increase-response
                                 common-lisp:nil
                                 ((requested-quota :target-type
                                   requested-service-quota-change :member-name
                                   "RequestedQuota"))
                                 (:shape-name
                                  "RequestServiceQuotaIncreaseResponse"))

(smithy/sdk/shapes:define-enum request-status
    common-lisp:nil
  (:pending "PENDING")
  (:case-opened "CASE_OPENED")
  (:approved "APPROVED")
  (:denied "DENIED")
  (:case-closed "CASE_CLOSED")
  (:not-approved "NOT_APPROVED")
  (:invalid-request "INVALID_REQUEST"))

(smithy/sdk/shapes:define-structure requested-service-quota-change
                                    common-lisp:nil
                                    ((id :target-type request-id :member-name
                                      "Id")
                                     (case-id :target-type
                                      customer-service-engagement-id
                                      :member-name "CaseId")
                                     (service-code :target-type service-code
                                      :member-name "ServiceCode")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (quota-code :target-type quota-code
                                      :member-name "QuotaCode")
                                     (quota-name :target-type quota-name
                                      :member-name "QuotaName")
                                     (desired-value :target-type quota-value
                                      :member-name "DesiredValue")
                                     (status :target-type request-status
                                      :member-name "Status")
                                     (created :target-type date-time
                                      :member-name "Created")
                                     (last-updated :target-type date-time
                                      :member-name "LastUpdated")
                                     (requester :target-type requester
                                      :member-name "Requester")
                                     (quota-arn :target-type quota-arn
                                      :member-name "QuotaArn")
                                     (global-quota :target-type global-quota
                                      :member-name "GlobalQuota")
                                     (unit :target-type quota-unit :member-name
                                      "Unit")
                                     (quota-requested-at-level :target-type
                                      applied-level-enum :member-name
                                      "QuotaRequestedAtLevel")
                                     (quota-context :target-type
                                      quota-context-info :member-name
                                      "QuotaContext"))
                                    (:shape-name "RequestedServiceQuotaChange"))

(smithy/sdk/shapes:define-list
 requested-service-quota-change-history-list-definition :member
 requested-service-quota-change)

(smithy/sdk/shapes:define-type requester smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure service-info common-lisp:nil
                                    ((service-code :target-type service-code
                                      :member-name "ServiceCode")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName"))
                                    (:shape-name "ServiceInfo"))

(smithy/sdk/shapes:define-list service-info-list-definition :member
                               service-info)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-quota common-lisp:nil
                                    ((service-code :target-type service-code
                                      :member-name "ServiceCode")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (quota-arn :target-type quota-arn
                                      :member-name "QuotaArn")
                                     (quota-code :target-type quota-code
                                      :member-name "QuotaCode")
                                     (quota-name :target-type quota-name
                                      :member-name "QuotaName")
                                     (value :target-type quota-value
                                      :member-name "Value")
                                     (unit :target-type quota-unit :member-name
                                      "Unit")
                                     (adjustable :target-type quota-adjustable
                                      :member-name "Adjustable")
                                     (global-quota :target-type global-quota
                                      :member-name "GlobalQuota")
                                     (usage-metric :target-type metric-info
                                      :member-name "UsageMetric")
                                     (period :target-type quota-period
                                      :member-name "Period")
                                     (error-reason :target-type error-reason
                                      :member-name "ErrorReason")
                                     (quota-applied-at-level :target-type
                                      applied-level-enum :member-name
                                      "QuotaAppliedAtLevel")
                                     (quota-context :target-type
                                      quota-context-info :member-name
                                      "QuotaContext")
                                     (description :target-type
                                      quota-description :member-name
                                      "Description"))
                                    (:shape-name "ServiceQuota"))

(smithy/sdk/shapes:define-structure service-quota-increase-request-in-template
                                    common-lisp:nil
                                    ((service-code :target-type service-code
                                      :member-name "ServiceCode")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (quota-code :target-type quota-code
                                      :member-name "QuotaCode")
                                     (quota-name :target-type quota-name
                                      :member-name "QuotaName")
                                     (desired-value :target-type quota-value
                                      :member-name "DesiredValue")
                                     (aws-region :target-type aws-region
                                      :member-name "AwsRegion")
                                     (unit :target-type quota-unit :member-name
                                      "Unit")
                                     (global-quota :target-type global-quota
                                      :member-name "GlobalQuota"))
                                    (:shape-name
                                     "ServiceQuotaIncreaseRequestInTemplate"))

(smithy/sdk/shapes:define-list service-quota-increase-request-in-template-list
                               :member
                               service-quota-increase-request-in-template)

(smithy/sdk/shapes:define-list service-quota-list-definition :member
                               service-quota)

(smithy/sdk/shapes:define-enum service-quota-template-association-status
    common-lisp:nil
  (:associated "ASSOCIATED")
  (:disassociated "DISASSOCIATED"))

(smithy/sdk/shapes:define-error service-quota-template-not-in-use-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ServiceQuotaTemplateNotInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type statistic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type support-case-allowed
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error tag-policy-violation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TagPolicyViolationException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type input-tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error templates-not-available-in-region-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "TemplatesNotAvailableInRegionException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type input-tag-keys
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/operation:define-operation associate-service-quota-template
                                       :shape-name
                                       "AssociateServiceQuotaTemplate" :input
                                       associate-service-quota-template-request
                                       :output
                                       associate-service-quota-template-response
                                       :errors
                                       (access-denied-exception
                                        awsservice-access-not-enabled-exception
                                        dependency-access-denied-exception
                                        no-available-organization-exception
                                        organization-not-in-all-features-mode-exception
                                        service-exception
                                        templates-not-available-in-region-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-support-case :shape-name
                                       "CreateSupportCase" :input
                                       create-support-case-request :output
                                       create-support-case-response :errors
                                       (access-denied-exception
                                        dependency-access-denied-exception
                                        illegal-argument-exception
                                        invalid-resource-state-exception
                                        no-such-resource-exception
                                        resource-already-exists-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 delete-service-quota-increase-request-from-template :shape-name
 "DeleteServiceQuotaIncreaseRequestFromTemplate" :input
 delete-service-quota-increase-request-from-template-request :output
 delete-service-quota-increase-request-from-template-response :errors
 (access-denied-exception awsservice-access-not-enabled-exception
  dependency-access-denied-exception illegal-argument-exception
  no-available-organization-exception no-such-resource-exception
  service-exception templates-not-available-in-region-exception
  too-many-requests-exception))

(smithy/sdk/operation:define-operation disassociate-service-quota-template
                                       :shape-name
                                       "DisassociateServiceQuotaTemplate"
                                       :input
                                       disassociate-service-quota-template-request
                                       :output
                                       disassociate-service-quota-template-response
                                       :errors
                                       (access-denied-exception
                                        awsservice-access-not-enabled-exception
                                        dependency-access-denied-exception
                                        no-available-organization-exception
                                        service-exception
                                        service-quota-template-not-in-use-exception
                                        templates-not-available-in-region-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-awsdefault-service-quota :shape-name
                                       "GetAWSDefaultServiceQuota" :input
                                       get-awsdefault-service-quota-request
                                       :output
                                       get-awsdefault-service-quota-response
                                       :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 get-association-for-service-quota-template :shape-name
 "GetAssociationForServiceQuotaTemplate" :input
 get-association-for-service-quota-template-request :output
 get-association-for-service-quota-template-response :errors
 (access-denied-exception awsservice-access-not-enabled-exception
  dependency-access-denied-exception no-available-organization-exception
  service-exception service-quota-template-not-in-use-exception
  templates-not-available-in-region-exception too-many-requests-exception))

(smithy/sdk/operation:define-operation get-requested-service-quota-change
                                       :shape-name
                                       "GetRequestedServiceQuotaChange" :input
                                       get-requested-service-quota-change-request
                                       :output
                                       get-requested-service-quota-change-response
                                       :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-service-quota :shape-name
                                       "GetServiceQuota" :input
                                       get-service-quota-request :output
                                       get-service-quota-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 get-service-quota-increase-request-from-template :shape-name
 "GetServiceQuotaIncreaseRequestFromTemplate" :input
 get-service-quota-increase-request-from-template-request :output
 get-service-quota-increase-request-from-template-response :errors
 (access-denied-exception awsservice-access-not-enabled-exception
  dependency-access-denied-exception illegal-argument-exception
  no-available-organization-exception no-such-resource-exception
  service-exception templates-not-available-in-region-exception
  too-many-requests-exception))

(smithy/sdk/operation:define-operation list-awsdefault-service-quotas
                                       :shape-name
                                       "ListAWSDefaultServiceQuotas" :input
                                       list-awsdefault-service-quotas-request
                                       :output
                                       list-awsdefault-service-quotas-response
                                       :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        invalid-pagination-token-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 list-requested-service-quota-change-history :shape-name
 "ListRequestedServiceQuotaChangeHistory" :input
 list-requested-service-quota-change-history-request :output
 list-requested-service-quota-change-history-response :errors
 (access-denied-exception illegal-argument-exception
  invalid-pagination-token-exception no-such-resource-exception
  service-exception too-many-requests-exception))

(smithy/sdk/operation:define-operation
 list-requested-service-quota-change-history-by-quota :shape-name
 "ListRequestedServiceQuotaChangeHistoryByQuota" :input
 list-requested-service-quota-change-history-by-quota-request :output
 list-requested-service-quota-change-history-by-quota-response :errors
 (access-denied-exception illegal-argument-exception
  invalid-pagination-token-exception no-such-resource-exception
  service-exception too-many-requests-exception))

(smithy/sdk/operation:define-operation
 list-service-quota-increase-requests-in-template :shape-name
 "ListServiceQuotaIncreaseRequestsInTemplate" :input
 list-service-quota-increase-requests-in-template-request :output
 list-service-quota-increase-requests-in-template-response :errors
 (access-denied-exception awsservice-access-not-enabled-exception
  dependency-access-denied-exception illegal-argument-exception
  no-available-organization-exception service-exception
  templates-not-available-in-region-exception too-many-requests-exception))

(smithy/sdk/operation:define-operation list-service-quotas :shape-name
                                       "ListServiceQuotas" :input
                                       list-service-quotas-request :output
                                       list-service-quotas-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        invalid-pagination-token-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-request :output
                                       list-services-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        invalid-pagination-token-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 put-service-quota-increase-request-into-template :shape-name
 "PutServiceQuotaIncreaseRequestIntoTemplate" :input
 put-service-quota-increase-request-into-template-request :output
 put-service-quota-increase-request-into-template-response :errors
 (access-denied-exception awsservice-access-not-enabled-exception
  dependency-access-denied-exception illegal-argument-exception
  no-available-organization-exception no-such-resource-exception
  quota-exceeded-exception service-exception
  templates-not-available-in-region-exception too-many-requests-exception))

(smithy/sdk/operation:define-operation request-service-quota-increase
                                       :shape-name
                                       "RequestServiceQuotaIncrease" :input
                                       request-service-quota-increase-request
                                       :output
                                       request-service-quota-increase-response
                                       :errors
                                       (access-denied-exception
                                        dependency-access-denied-exception
                                        illegal-argument-exception
                                        invalid-resource-state-exception
                                        no-such-resource-exception
                                        quota-exceeded-exception
                                        resource-already-exists-exception
                                        service-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        no-such-resource-exception
                                        service-exception
                                        tag-policy-violation-exception
                                        too-many-requests-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        illegal-argument-exception
                                        no-such-resource-exception
                                        service-exception
                                        too-many-requests-exception))
