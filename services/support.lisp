(uiop/package:define-package #:pira/support (:use)
                             (:export #:awssupport-20130415
                              #:add-attachments-to-set
                              #:add-communication-to-case #:after-time
                              #:attachment #:attachment-details #:attachment-id
                              #:attachment-set #:attachment-set-id
                              #:attachments #:availability-error-message
                              #:before-time #:boolean #:case-details #:case-id
                              #:case-id-list #:case-list #:case-status
                              #:category #:category-code #:category-list
                              #:category-name #:cc-email-address
                              #:cc-email-address-list #:code #:communication
                              #:communication-body #:communication-list
                              #:communication-type-options
                              #:communication-type-options-list #:create-case
                              #:data #:date-interval
                              #:dates-without-support-list
                              #:describe-attachment #:describe-cases
                              #:describe-communications
                              #:describe-create-case-options
                              #:describe-services #:describe-severity-levels
                              #:describe-supported-languages
                              #:describe-trusted-advisor-check-refresh-statuses
                              #:describe-trusted-advisor-check-result
                              #:describe-trusted-advisor-check-summaries
                              #:describe-trusted-advisor-checks #:display
                              #:display-id #:double #:end-time #:error-message
                              #:expiry-time #:file-name
                              #:include-communications #:include-resolved-cases
                              #:issue-type #:language #:long #:max-results
                              #:next-token #:recent-case-communications
                              #:refresh-trusted-advisor-check #:resolve-case
                              #:result #:service #:service-code #:service-code2
                              #:service-code-list #:service-list #:service-name
                              #:severity-code #:severity-level
                              #:severity-level-code #:severity-level-name
                              #:severity-levels-list #:start-time #:status
                              #:string #:string-list #:subject #:submitted-by
                              #:supported-hour #:supported-hours-list
                              #:supported-language #:supported-languages-list
                              #:time-created
                              #:trusted-advisor-category-specific-summary
                              #:trusted-advisor-check-description
                              #:trusted-advisor-check-list
                              #:trusted-advisor-check-refresh-status
                              #:trusted-advisor-check-refresh-status-list
                              #:trusted-advisor-check-result
                              #:trusted-advisor-check-summary
                              #:trusted-advisor-check-summary-list
                              #:trusted-advisor-cost-optimizing-summary
                              #:trusted-advisor-resource-detail
                              #:trusted-advisor-resource-detail-list
                              #:trusted-advisor-resources-summary #:type
                              #:validated-category-code
                              #:validated-communication-body
                              #:validated-date-time
                              #:validated-issue-type-string
                              #:validated-language-availability
                              #:validated-service-code))
(common-lisp:in-package #:pira/support)

(smithy/sdk/service:define-service awssupport-20130415 :shape-name
                                   "AWSSupport_20130415" :version "2013-04-15"
                                   :title "AWS Support" :operations
                                   '(add-attachments-to-set
                                     add-communication-to-case create-case
                                     describe-attachment describe-cases
                                     describe-communications
                                     describe-create-case-options
                                     describe-services describe-severity-levels
                                     describe-supported-languages
                                     describe-trusted-advisor-check-refresh-statuses
                                     describe-trusted-advisor-check-result
                                     describe-trusted-advisor-checks
                                     describe-trusted-advisor-check-summaries
                                     refresh-trusted-advisor-check
                                     resolve-case)
                                   :xml-namespace
                                   (:uri
                                    "http://support.amazonaws.com/doc/2013-04-15/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Support")
                                      ("arnNamespace" . "support")
                                      ("cloudFormationName" . "Support")
                                      ("cloudTrailEventSource"
                                       . "support.amazonaws.com")
                                      ("endpointPrefix" . "support"))
                                     ("aws.auth#sigv4" ("name" . "support"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input add-attachments-to-set-request common-lisp:nil
                                ((attachment-set-id :target-type
                                  attachment-set-id :member-name
                                  "attachmentSetId")
                                 (attachments :target-type attachments
                                  :required common-lisp:t :member-name
                                  "attachments"))
                                (:shape-name "AddAttachmentsToSetRequest"))

(smithy/sdk/shapes:define-output add-attachments-to-set-response
                                 common-lisp:nil
                                 ((attachment-set-id :target-type
                                   attachment-set-id :member-name
                                   "attachmentSetId")
                                  (expiry-time :target-type expiry-time
                                   :member-name "expiryTime"))
                                 (:shape-name "AddAttachmentsToSetResponse"))

(smithy/sdk/shapes:define-input add-communication-to-case-request
                                common-lisp:nil
                                ((case-id :target-type case-id :member-name
                                  "caseId")
                                 (communication-body :target-type
                                  communication-body :required common-lisp:t
                                  :member-name "communicationBody")
                                 (cc-email-addresses :target-type
                                  cc-email-address-list :member-name
                                  "ccEmailAddresses")
                                 (attachment-set-id :target-type
                                  attachment-set-id :member-name
                                  "attachmentSetId"))
                                (:shape-name "AddCommunicationToCaseRequest"))

(smithy/sdk/shapes:define-output add-communication-to-case-response
                                 common-lisp:nil
                                 ((result :target-type result :member-name
                                   "result"))
                                 (:shape-name "AddCommunicationToCaseResponse"))

(smithy/sdk/shapes:define-type after-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((file-name :target-type file-name
                                      :member-name "fileName")
                                     (data :target-type data :member-name
                                      "data"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-structure attachment-details common-lisp:nil
                                    ((attachment-id :target-type attachment-id
                                      :member-name "attachmentId")
                                     (file-name :target-type file-name
                                      :member-name "fileName"))
                                    (:shape-name "AttachmentDetails"))

(smithy/sdk/shapes:define-type attachment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error attachment-id-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AttachmentIdNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error attachment-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AttachmentLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list attachment-set :member attachment-details)

(smithy/sdk/shapes:define-error attachment-set-expired common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AttachmentSetExpired")
                                (:error-code 400))

(smithy/sdk/shapes:define-type attachment-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error attachment-set-id-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AttachmentSetIdNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error attachment-set-size-limit-exceeded
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AttachmentSetSizeLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list attachments :member attachment)

(smithy/sdk/shapes:define-type availability-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type before-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error case-creation-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CaseCreationLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure case-details common-lisp:nil
                                    ((case-id :target-type case-id :member-name
                                      "caseId")
                                     (display-id :target-type display-id
                                      :member-name "displayId")
                                     (subject :target-type subject :member-name
                                      "subject")
                                     (status :target-type status :member-name
                                      "status")
                                     (service-code :target-type service-code
                                      :member-name "serviceCode")
                                     (category-code :target-type category-code
                                      :member-name "categoryCode")
                                     (severity-code :target-type severity-code
                                      :member-name "severityCode")
                                     (submitted-by :target-type submitted-by
                                      :member-name "submittedBy")
                                     (time-created :target-type time-created
                                      :member-name "timeCreated")
                                     (recent-communications :target-type
                                      recent-case-communications :member-name
                                      "recentCommunications")
                                     (cc-email-addresses :target-type
                                      cc-email-address-list :member-name
                                      "ccEmailAddresses")
                                     (language :target-type language
                                      :member-name "language"))
                                    (:shape-name "CaseDetails"))

(smithy/sdk/shapes:define-type case-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list case-id-list :member case-id)

(smithy/sdk/shapes:define-error case-id-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CaseIdNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list case-list :member case-details)

(smithy/sdk/shapes:define-type case-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure category common-lisp:nil
                                    ((code :target-type category-code
                                      :member-name "code")
                                     (name :target-type category-name
                                      :member-name "name"))
                                    (:shape-name "Category"))

(smithy/sdk/shapes:define-type category-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list category-list :member category)

(smithy/sdk/shapes:define-type category-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cc-email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cc-email-address-list :member cc-email-address)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure communication common-lisp:nil
                                    ((case-id :target-type case-id :member-name
                                      "caseId")
                                     (body :target-type
                                      validated-communication-body :member-name
                                      "body")
                                     (submitted-by :target-type submitted-by
                                      :member-name "submittedBy")
                                     (time-created :target-type time-created
                                      :member-name "timeCreated")
                                     (attachment-set :target-type
                                      attachment-set :member-name
                                      "attachmentSet"))
                                    (:shape-name "Communication"))

(smithy/sdk/shapes:define-type communication-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list communication-list :member communication)

(smithy/sdk/shapes:define-structure communication-type-options common-lisp:nil
                                    ((type :target-type type :member-name
                                      "type")
                                     (supported-hours :target-type
                                      supported-hours-list :member-name
                                      "supportedHours")
                                     (dates-without-support :target-type
                                      dates-without-support-list :member-name
                                      "datesWithoutSupport"))
                                    (:shape-name "CommunicationTypeOptions"))

(smithy/sdk/shapes:define-list communication-type-options-list :member
                               communication-type-options)

(smithy/sdk/shapes:define-input create-case-request common-lisp:nil
                                ((subject :target-type subject :required
                                  common-lisp:t :member-name "subject")
                                 (service-code :target-type service-code2
                                  :member-name "serviceCode")
                                 (severity-code :target-type severity-code
                                  :member-name "severityCode")
                                 (category-code :target-type category-code
                                  :member-name "categoryCode")
                                 (communication-body :target-type
                                  communication-body :required common-lisp:t
                                  :member-name "communicationBody")
                                 (cc-email-addresses :target-type
                                  cc-email-address-list :member-name
                                  "ccEmailAddresses")
                                 (language :target-type language :member-name
                                  "language")
                                 (issue-type :target-type issue-type
                                  :member-name "issueType")
                                 (attachment-set-id :target-type
                                  attachment-set-id :member-name
                                  "attachmentSetId"))
                                (:shape-name "CreateCaseRequest"))

(smithy/sdk/shapes:define-output create-case-response common-lisp:nil
                                 ((case-id :target-type case-id :member-name
                                   "caseId"))
                                 (:shape-name "CreateCaseResponse"))

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure date-interval common-lisp:nil
                                    ((start-date-time :target-type
                                      validated-date-time :member-name
                                      "startDateTime")
                                     (end-date-time :target-type
                                      validated-date-time :member-name
                                      "endDateTime"))
                                    (:shape-name "DateInterval"))

(smithy/sdk/shapes:define-list dates-without-support-list :member date-interval)

(smithy/sdk/shapes:define-error describe-attachment-limit-exceeded
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DescribeAttachmentLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-input describe-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "attachmentId"))
                                (:shape-name "DescribeAttachmentRequest"))

(smithy/sdk/shapes:define-output describe-attachment-response common-lisp:nil
                                 ((attachment :target-type attachment
                                   :member-name "attachment"))
                                 (:shape-name "DescribeAttachmentResponse"))

(smithy/sdk/shapes:define-input describe-cases-request common-lisp:nil
                                ((case-id-list :target-type case-id-list
                                  :member-name "caseIdList")
                                 (display-id :target-type display-id
                                  :member-name "displayId")
                                 (after-time :target-type after-time
                                  :member-name "afterTime")
                                 (before-time :target-type before-time
                                  :member-name "beforeTime")
                                 (include-resolved-cases :target-type
                                  include-resolved-cases :member-name
                                  "includeResolvedCases")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (language :target-type language :member-name
                                  "language")
                                 (include-communications :target-type
                                  include-communications :member-name
                                  "includeCommunications"))
                                (:shape-name "DescribeCasesRequest"))

(smithy/sdk/shapes:define-output describe-cases-response common-lisp:nil
                                 ((cases :target-type case-list :member-name
                                   "cases")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeCasesResponse"))

(smithy/sdk/shapes:define-input describe-communications-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId")
                                 (before-time :target-type before-time
                                  :member-name "beforeTime")
                                 (after-time :target-type after-time
                                  :member-name "afterTime")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeCommunicationsRequest"))

(smithy/sdk/shapes:define-output describe-communications-response
                                 common-lisp:nil
                                 ((communications :target-type
                                   communication-list :member-name
                                   "communications")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeCommunicationsResponse"))

(smithy/sdk/shapes:define-input describe-create-case-options-request
                                common-lisp:nil
                                ((issue-type :target-type issue-type :required
                                  common-lisp:t :member-name "issueType")
                                 (service-code :target-type service-code2
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (language :target-type language :required
                                  common-lisp:t :member-name "language")
                                 (category-code :target-type category-code
                                  :required common-lisp:t :member-name
                                  "categoryCode"))
                                (:shape-name
                                 "DescribeCreateCaseOptionsRequest"))

(smithy/sdk/shapes:define-output describe-create-case-options-response
                                 common-lisp:nil
                                 ((language-availability :target-type
                                   validated-language-availability :member-name
                                   "languageAvailability")
                                  (communication-types :target-type
                                   communication-type-options-list :member-name
                                   "communicationTypes"))
                                 (:shape-name
                                  "DescribeCreateCaseOptionsResponse"))

(smithy/sdk/shapes:define-input describe-services-request common-lisp:nil
                                ((service-code-list :target-type
                                  service-code-list :member-name
                                  "serviceCodeList")
                                 (language :target-type language :member-name
                                  "language"))
                                (:shape-name "DescribeServicesRequest"))

(smithy/sdk/shapes:define-output describe-services-response common-lisp:nil
                                 ((services :target-type service-list
                                   :member-name "services"))
                                 (:shape-name "DescribeServicesResponse"))

(smithy/sdk/shapes:define-input describe-severity-levels-request
                                common-lisp:nil
                                ((language :target-type language :member-name
                                  "language"))
                                (:shape-name "DescribeSeverityLevelsRequest"))

(smithy/sdk/shapes:define-output describe-severity-levels-response
                                 common-lisp:nil
                                 ((severity-levels :target-type
                                   severity-levels-list :member-name
                                   "severityLevels"))
                                 (:shape-name "DescribeSeverityLevelsResponse"))

(smithy/sdk/shapes:define-input describe-supported-languages-request
                                common-lisp:nil
                                ((issue-type :target-type
                                  validated-issue-type-string :required
                                  common-lisp:t :member-name "issueType")
                                 (service-code :target-type
                                  validated-service-code :required
                                  common-lisp:t :member-name "serviceCode")
                                 (category-code :target-type
                                  validated-category-code :required
                                  common-lisp:t :member-name "categoryCode"))
                                (:shape-name
                                 "DescribeSupportedLanguagesRequest"))

(smithy/sdk/shapes:define-output describe-supported-languages-response
                                 common-lisp:nil
                                 ((supported-languages :target-type
                                   supported-languages-list :member-name
                                   "supportedLanguages"))
                                 (:shape-name
                                  "DescribeSupportedLanguagesResponse"))

(smithy/sdk/shapes:define-input
 describe-trusted-advisor-check-refresh-statuses-request common-lisp:nil
 ((check-ids :target-type string-list :required common-lisp:t :member-name
   "checkIds"))
 (:shape-name "DescribeTrustedAdvisorCheckRefreshStatusesRequest"))

(smithy/sdk/shapes:define-output
 describe-trusted-advisor-check-refresh-statuses-response common-lisp:nil
 ((statuses :target-type trusted-advisor-check-refresh-status-list :required
   common-lisp:t :member-name "statuses"))
 (:shape-name "DescribeTrustedAdvisorCheckRefreshStatusesResponse"))

(smithy/sdk/shapes:define-input describe-trusted-advisor-check-result-request
                                common-lisp:nil
                                ((check-id :target-type string :required
                                  common-lisp:t :member-name "checkId")
                                 (language :target-type string :member-name
                                  "language"))
                                (:shape-name
                                 "DescribeTrustedAdvisorCheckResultRequest"))

(smithy/sdk/shapes:define-output describe-trusted-advisor-check-result-response
                                 common-lisp:nil
                                 ((result :target-type
                                   trusted-advisor-check-result :member-name
                                   "result"))
                                 (:shape-name
                                  "DescribeTrustedAdvisorCheckResultResponse"))

(smithy/sdk/shapes:define-input
 describe-trusted-advisor-check-summaries-request common-lisp:nil
 ((check-ids :target-type string-list :required common-lisp:t :member-name
   "checkIds"))
 (:shape-name "DescribeTrustedAdvisorCheckSummariesRequest"))

(smithy/sdk/shapes:define-output
 describe-trusted-advisor-check-summaries-response common-lisp:nil
 ((summaries :target-type trusted-advisor-check-summary-list :required
   common-lisp:t :member-name "summaries"))
 (:shape-name "DescribeTrustedAdvisorCheckSummariesResponse"))

(smithy/sdk/shapes:define-input describe-trusted-advisor-checks-request
                                common-lisp:nil
                                ((language :target-type string :required
                                  common-lisp:t :member-name "language"))
                                (:shape-name
                                 "DescribeTrustedAdvisorChecksRequest"))

(smithy/sdk/shapes:define-output describe-trusted-advisor-checks-response
                                 common-lisp:nil
                                 ((checks :target-type
                                   trusted-advisor-check-list :required
                                   common-lisp:t :member-name "checks"))
                                 (:shape-name
                                  "DescribeTrustedAdvisorChecksResponse"))

(smithy/sdk/shapes:define-type display smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiry-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-communications
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-resolved-cases
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-type issue-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type language smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recent-case-communications common-lisp:nil
                                    ((communications :target-type
                                      communication-list :member-name
                                      "communications")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "RecentCaseCommunications"))

(smithy/sdk/shapes:define-input refresh-trusted-advisor-check-request
                                common-lisp:nil
                                ((check-id :target-type string :required
                                  common-lisp:t :member-name "checkId"))
                                (:shape-name
                                 "RefreshTrustedAdvisorCheckRequest"))

(smithy/sdk/shapes:define-output refresh-trusted-advisor-check-response
                                 common-lisp:nil
                                 ((status :target-type
                                   trusted-advisor-check-refresh-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name
                                  "RefreshTrustedAdvisorCheckResponse"))

(smithy/sdk/shapes:define-input resolve-case-request common-lisp:nil
                                ((case-id :target-type case-id :member-name
                                  "caseId"))
                                (:shape-name "ResolveCaseRequest"))

(smithy/sdk/shapes:define-output resolve-case-response common-lisp:nil
                                 ((initial-case-status :target-type case-status
                                   :member-name "initialCaseStatus")
                                  (final-case-status :target-type case-status
                                   :member-name "finalCaseStatus"))
                                 (:shape-name "ResolveCaseResponse"))

(smithy/sdk/shapes:define-type result smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((code :target-type service-code
                                      :member-name "code")
                                     (name :target-type service-name
                                      :member-name "name")
                                     (categories :target-type category-list
                                      :member-name "categories"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-code2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-code-list :member service-code2)

(smithy/sdk/shapes:define-list service-list :member service)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type severity-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure severity-level common-lisp:nil
                                    ((code :target-type severity-level-code
                                      :member-name "code")
                                     (name :target-type severity-level-name
                                      :member-name "name"))
                                    (:shape-name "SeverityLevel"))

(smithy/sdk/shapes:define-type severity-level-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type severity-level-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list severity-levels-list :member severity-level)

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type submitted-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure supported-hour common-lisp:nil
                                    ((start-time :target-type start-time
                                      :member-name "startTime")
                                     (end-time :target-type end-time
                                      :member-name "endTime"))
                                    (:shape-name "SupportedHour"))

(smithy/sdk/shapes:define-list supported-hours-list :member supported-hour)

(smithy/sdk/shapes:define-structure supported-language common-lisp:nil
                                    ((code :target-type code :member-name
                                      "code")
                                     (language :target-type language
                                      :member-name "language")
                                     (display :target-type display :member-name
                                      "display"))
                                    (:shape-name "SupportedLanguage"))

(smithy/sdk/shapes:define-list supported-languages-list :member
                               supported-language)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  availability-error-message :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "Throttling") (:error-code 400))

(smithy/sdk/shapes:define-type time-created smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trusted-advisor-category-specific-summary
                                    common-lisp:nil
                                    ((cost-optimizing :target-type
                                      trusted-advisor-cost-optimizing-summary
                                      :member-name "costOptimizing"))
                                    (:shape-name
                                     "TrustedAdvisorCategorySpecificSummary"))

(smithy/sdk/shapes:define-structure trusted-advisor-check-description
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type string :required
                                      common-lisp:t :member-name "description")
                                     (category :target-type string :required
                                      common-lisp:t :member-name "category")
                                     (metadata :target-type string-list
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name
                                     "TrustedAdvisorCheckDescription"))

(smithy/sdk/shapes:define-list trusted-advisor-check-list :member
                               trusted-advisor-check-description)

(smithy/sdk/shapes:define-structure trusted-advisor-check-refresh-status
                                    common-lisp:nil
                                    ((check-id :target-type string :required
                                      common-lisp:t :member-name "checkId")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "status")
                                     (millis-until-next-refreshable
                                      :target-type long :required common-lisp:t
                                      :member-name
                                      "millisUntilNextRefreshable"))
                                    (:shape-name
                                     "TrustedAdvisorCheckRefreshStatus"))

(smithy/sdk/shapes:define-list trusted-advisor-check-refresh-status-list
                               :member trusted-advisor-check-refresh-status)

(smithy/sdk/shapes:define-structure trusted-advisor-check-result
                                    common-lisp:nil
                                    ((check-id :target-type string :required
                                      common-lisp:t :member-name "checkId")
                                     (timestamp :target-type string :required
                                      common-lisp:t :member-name "timestamp")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "status")
                                     (resources-summary :target-type
                                      trusted-advisor-resources-summary
                                      :required common-lisp:t :member-name
                                      "resourcesSummary")
                                     (category-specific-summary :target-type
                                      trusted-advisor-category-specific-summary
                                      :required common-lisp:t :member-name
                                      "categorySpecificSummary")
                                     (flagged-resources :target-type
                                      trusted-advisor-resource-detail-list
                                      :required common-lisp:t :member-name
                                      "flaggedResources"))
                                    (:shape-name "TrustedAdvisorCheckResult"))

(smithy/sdk/shapes:define-structure trusted-advisor-check-summary
                                    common-lisp:nil
                                    ((check-id :target-type string :required
                                      common-lisp:t :member-name "checkId")
                                     (timestamp :target-type string :required
                                      common-lisp:t :member-name "timestamp")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "status")
                                     (has-flagged-resources :target-type
                                      boolean :member-name
                                      "hasFlaggedResources")
                                     (resources-summary :target-type
                                      trusted-advisor-resources-summary
                                      :required common-lisp:t :member-name
                                      "resourcesSummary")
                                     (category-specific-summary :target-type
                                      trusted-advisor-category-specific-summary
                                      :required common-lisp:t :member-name
                                      "categorySpecificSummary"))
                                    (:shape-name "TrustedAdvisorCheckSummary"))

(smithy/sdk/shapes:define-list trusted-advisor-check-summary-list :member
                               trusted-advisor-check-summary)

(smithy/sdk/shapes:define-structure trusted-advisor-cost-optimizing-summary
                                    common-lisp:nil
                                    ((estimated-monthly-savings :target-type
                                      double :required common-lisp:t
                                      :member-name "estimatedMonthlySavings")
                                     (estimated-percent-monthly-savings
                                      :target-type double :required
                                      common-lisp:t :member-name
                                      "estimatedPercentMonthlySavings"))
                                    (:shape-name
                                     "TrustedAdvisorCostOptimizingSummary"))

(smithy/sdk/shapes:define-structure trusted-advisor-resource-detail
                                    common-lisp:nil
                                    ((status :target-type string :required
                                      common-lisp:t :member-name "status")
                                     (region :target-type string :member-name
                                      "region")
                                     (resource-id :target-type string :required
                                      common-lisp:t :member-name "resourceId")
                                     (is-suppressed :target-type boolean
                                      :member-name "isSuppressed")
                                     (metadata :target-type string-list
                                      :required common-lisp:t :member-name
                                      "metadata"))
                                    (:shape-name
                                     "TrustedAdvisorResourceDetail"))

(smithy/sdk/shapes:define-list trusted-advisor-resource-detail-list :member
                               trusted-advisor-resource-detail)

(smithy/sdk/shapes:define-structure trusted-advisor-resources-summary
                                    common-lisp:nil
                                    ((resources-processed :target-type long
                                      :required common-lisp:t :member-name
                                      "resourcesProcessed")
                                     (resources-flagged :target-type long
                                      :required common-lisp:t :member-name
                                      "resourcesFlagged")
                                     (resources-ignored :target-type long
                                      :required common-lisp:t :member-name
                                      "resourcesIgnored")
                                     (resources-suppressed :target-type long
                                      :required common-lisp:t :member-name
                                      "resourcesSuppressed"))
                                    (:shape-name
                                     "TrustedAdvisorResourcesSummary"))

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validated-category-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validated-communication-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validated-date-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validated-issue-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validated-language-availability
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validated-service-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-attachments-to-set :shape-name
                                       "AddAttachmentsToSet" :input
                                       add-attachments-to-set-request :output
                                       add-attachments-to-set-response :errors
                                       (attachment-limit-exceeded
                                        attachment-set-expired
                                        attachment-set-id-not-found
                                        attachment-set-size-limit-exceeded
                                        internal-server-error))

(smithy/sdk/operation:define-operation add-communication-to-case :shape-name
                                       "AddCommunicationToCase" :input
                                       add-communication-to-case-request
                                       :output
                                       add-communication-to-case-response
                                       :errors
                                       (attachment-set-expired
                                        attachment-set-id-not-found
                                        case-id-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation create-case :shape-name "CreateCase"
                                       :input create-case-request :output
                                       create-case-response :errors
                                       (attachment-set-expired
                                        attachment-set-id-not-found
                                        case-creation-limit-exceeded
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-attachment :shape-name
                                       "DescribeAttachment" :input
                                       describe-attachment-request :output
                                       describe-attachment-response :errors
                                       (attachment-id-not-found
                                        describe-attachment-limit-exceeded
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-cases :shape-name
                                       "DescribeCases" :input
                                       describe-cases-request :output
                                       describe-cases-response :errors
                                       (case-id-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-communications :shape-name
                                       "DescribeCommunications" :input
                                       describe-communications-request :output
                                       describe-communications-response :errors
                                       (case-id-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-create-case-options :shape-name
                                       "DescribeCreateCaseOptions" :input
                                       describe-create-case-options-request
                                       :output
                                       describe-create-case-options-response
                                       :errors
                                       (internal-server-error
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-services :shape-name
                                       "DescribeServices" :input
                                       describe-services-request :output
                                       describe-services-response :errors
                                       (internal-server-error))

(smithy/sdk/operation:define-operation describe-severity-levels :shape-name
                                       "DescribeSeverityLevels" :input
                                       describe-severity-levels-request :output
                                       describe-severity-levels-response
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation describe-supported-languages :shape-name
                                       "DescribeSupportedLanguages" :input
                                       describe-supported-languages-request
                                       :output
                                       describe-supported-languages-response
                                       :errors
                                       (internal-server-error
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 describe-trusted-advisor-check-refresh-statuses :shape-name
 "DescribeTrustedAdvisorCheckRefreshStatuses" :input
 describe-trusted-advisor-check-refresh-statuses-request :output
 describe-trusted-advisor-check-refresh-statuses-response :errors
 (internal-server-error throttling-exception))

(smithy/sdk/operation:define-operation describe-trusted-advisor-check-result
                                       :shape-name
                                       "DescribeTrustedAdvisorCheckResult"
                                       :input
                                       describe-trusted-advisor-check-result-request
                                       :output
                                       describe-trusted-advisor-check-result-response
                                       :errors
                                       (internal-server-error
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-trusted-advisor-check-summaries
                                       :shape-name
                                       "DescribeTrustedAdvisorCheckSummaries"
                                       :input
                                       describe-trusted-advisor-check-summaries-request
                                       :output
                                       describe-trusted-advisor-check-summaries-response
                                       :errors
                                       (internal-server-error
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-trusted-advisor-checks
                                       :shape-name
                                       "DescribeTrustedAdvisorChecks" :input
                                       describe-trusted-advisor-checks-request
                                       :output
                                       describe-trusted-advisor-checks-response
                                       :errors
                                       (internal-server-error
                                        throttling-exception))

(smithy/sdk/operation:define-operation refresh-trusted-advisor-check
                                       :shape-name "RefreshTrustedAdvisorCheck"
                                       :input
                                       refresh-trusted-advisor-check-request
                                       :output
                                       refresh-trusted-advisor-check-response
                                       :errors (internal-server-error))

(smithy/sdk/operation:define-operation resolve-case :shape-name "ResolveCase"
                                       :input resolve-case-request :output
                                       resolve-case-response :errors
                                       (case-id-not-found
                                        internal-server-error))
