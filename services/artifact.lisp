(uiop/package:define-package #:pira/artifact (:use)
                             (:export #:acceptance-type #:account-settings
                              #:account-settings-resource #:agreement-terms
                              #:agreement-type #:artifact
                              #:customer-agreement-id-attribute
                              #:customer-agreement-list
                              #:customer-agreement-resource
                              #:customer-agreement-state
                              #:customer-agreement-summary
                              #:get-account-settings #:get-report
                              #:get-report-metadata #:get-term-for-report
                              #:list-customer-agreements #:list-reports
                              #:long-string-attribute #:max-results-attribute
                              #:next-token-attribute
                              #:notification-subscription-status
                              #:published-state #:put-account-settings
                              #:report-detail #:report-id #:report-resource
                              #:report-summary #:reports-list
                              #:sequence-number-attribute
                              #:short-string-attribute #:status-message
                              #:term-id #:term-resource #:timestamp-attribute
                              #:upload-state #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:version-attribute))
(common-lisp:in-package #:pira/artifact)

(smithy/sdk/service:define-service artifact :shape-name "Artifact" :version
                                   "2018-05-10" :title "AWS Artifact"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service" ("sdkId" . "Artifact")
                                      ("arnNamespace" . "artifact")
                                      ("cloudTrailEventSource"
                                       . "artifact.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "artifact"))
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum acceptance-type
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:explicit "EXPLICIT"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-settings common-lisp:nil
                                    ((notification-subscription-status
                                      :target-type
                                      notification-subscription-status
                                      :member-name
                                      "notificationSubscriptionStatus"))
                                    (:shape-name "AccountSettings"))

common-lisp:nil

(smithy/sdk/shapes:define-list agreement-terms :member long-string-attribute)

(smithy/sdk/shapes:define-enum agreement-type
    common-lisp:nil
  (:custom "CUSTOM")
  (:default "DEFAULT")
  (:modified "MODIFIED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type customer-agreement-id-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list customer-agreement-list :member
                               customer-agreement-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum customer-agreement-state
    common-lisp:nil
  (:active "ACTIVE")
  (:customer-terminated "CUSTOMER_TERMINATED")
  (:aws-terminated "AWS_TERMINATED"))

(smithy/sdk/shapes:define-structure customer-agreement-summary common-lisp:nil
                                    ((name :target-type long-string-attribute
                                      :member-name "name")
                                     (arn :target-type long-string-attribute
                                      :member-name "arn")
                                     (id :target-type
                                      customer-agreement-id-attribute
                                      :member-name "id")
                                     (agreement-arn :target-type
                                      long-string-attribute :member-name
                                      "agreementArn")
                                     (aws-account-id :target-type
                                      short-string-attribute :member-name
                                      "awsAccountId")
                                     (organization-arn :target-type
                                      long-string-attribute :member-name
                                      "organizationArn")
                                     (effective-start :target-type
                                      timestamp-attribute :member-name
                                      "effectiveStart")
                                     (effective-end :target-type
                                      timestamp-attribute :member-name
                                      "effectiveEnd")
                                     (state :target-type
                                      customer-agreement-state :member-name
                                      "state")
                                     (description :target-type
                                      long-string-attribute :member-name
                                      "description")
                                     (acceptance-terms :target-type
                                      agreement-terms :member-name
                                      "acceptanceTerms")
                                     (terminate-terms :target-type
                                      agreement-terms :member-name
                                      "terminateTerms")
                                     (type :target-type agreement-type
                                      :member-name "type"))
                                    (:shape-name "CustomerAgreementSummary"))

(smithy/sdk/shapes:define-input get-account-settings-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountSettingsRequest"))

(smithy/sdk/shapes:define-output get-account-settings-response common-lisp:nil
                                 ((account-settings :target-type
                                   account-settings :member-name
                                   "accountSettings"))
                                 (:shape-name "GetAccountSettingsResponse"))

(smithy/sdk/shapes:define-input get-report-metadata-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"
                                  :http-query "reportId")
                                 (report-version :target-type version-attribute
                                  :member-name "reportVersion" :http-query
                                  "reportVersion"))
                                (:shape-name "GetReportMetadataRequest"))

(smithy/sdk/shapes:define-output get-report-metadata-response common-lisp:nil
                                 ((report-details :target-type report-detail
                                   :member-name "reportDetails"))
                                 (:shape-name "GetReportMetadataResponse"))

(smithy/sdk/shapes:define-input get-report-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"
                                  :http-query "reportId")
                                 (report-version :target-type version-attribute
                                  :member-name "reportVersion" :http-query
                                  "reportVersion")
                                 (term-token :target-type
                                  short-string-attribute :required
                                  common-lisp:t :member-name "termToken"
                                  :http-query "termToken"))
                                (:shape-name "GetReportRequest"))

(smithy/sdk/shapes:define-output get-report-response common-lisp:nil
                                 ((document-presigned-url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "documentPresignedUrl"))
                                 (:shape-name "GetReportResponse"))

(smithy/sdk/shapes:define-input get-term-for-report-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"
                                  :http-query "reportId")
                                 (report-version :target-type version-attribute
                                  :member-name "reportVersion" :http-query
                                  "reportVersion"))
                                (:shape-name "GetTermForReportRequest"))

(smithy/sdk/shapes:define-output get-term-for-report-response common-lisp:nil
                                 ((document-presigned-url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "documentPresignedUrl")
                                  (term-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "termToken"))
                                 (:shape-name "GetTermForReportResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-customer-agreements-request
                                common-lisp:nil
                                ((max-results :target-type
                                  max-results-attribute :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token-attribute
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListCustomerAgreementsRequest"))

(smithy/sdk/shapes:define-output list-customer-agreements-response
                                 common-lisp:nil
                                 ((customer-agreements :target-type
                                   customer-agreement-list :required
                                   common-lisp:t :member-name
                                   "customerAgreements")
                                  (next-token :target-type next-token-attribute
                                   :member-name "nextToken"))
                                 (:shape-name "ListCustomerAgreementsResponse"))

(smithy/sdk/shapes:define-input list-reports-request common-lisp:nil
                                ((max-results :target-type
                                  max-results-attribute :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token-attribute
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListReportsRequest"))

(smithy/sdk/shapes:define-output list-reports-response common-lisp:nil
                                 ((reports :target-type reports-list
                                   :member-name "reports")
                                  (next-token :target-type next-token-attribute
                                   :member-name "nextToken"))
                                 (:shape-name "ListReportsResponse"))

(smithy/sdk/shapes:define-type long-string-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results-attribute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum notification-subscription-status
    common-lisp:nil
  (:subscribed "SUBSCRIBED")
  (:not-subscribed "NOT_SUBSCRIBED"))

(smithy/sdk/shapes:define-enum published-state
    common-lisp:nil
  (:published "PUBLISHED")
  (:unpublished "UNPUBLISHED"))

(smithy/sdk/shapes:define-input put-account-settings-request common-lisp:nil
                                ((notification-subscription-status :target-type
                                  notification-subscription-status :member-name
                                  "notificationSubscriptionStatus"))
                                (:shape-name "PutAccountSettingsRequest"))

(smithy/sdk/shapes:define-output put-account-settings-response common-lisp:nil
                                 ((account-settings :target-type
                                   account-settings :member-name
                                   "accountSettings"))
                                 (:shape-name "PutAccountSettingsResponse"))

(smithy/sdk/shapes:define-structure report-detail common-lisp:nil
                                    ((id :target-type report-id :member-name
                                      "id")
                                     (name :target-type short-string-attribute
                                      :member-name "name")
                                     (description :target-type
                                      long-string-attribute :member-name
                                      "description")
                                     (period-start :target-type
                                      timestamp-attribute :member-name
                                      "periodStart")
                                     (period-end :target-type
                                      timestamp-attribute :member-name
                                      "periodEnd")
                                     (created-at :target-type
                                      timestamp-attribute :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      timestamp-attribute :member-name
                                      "lastModifiedAt")
                                     (deleted-at :target-type
                                      timestamp-attribute :member-name
                                      "deletedAt")
                                     (state :target-type published-state
                                      :member-name "state")
                                     (arn :target-type long-string-attribute
                                      :member-name "arn")
                                     (series :target-type
                                      short-string-attribute :member-name
                                      "series")
                                     (category :target-type
                                      short-string-attribute :member-name
                                      "category")
                                     (company-name :target-type
                                      short-string-attribute :member-name
                                      "companyName")
                                     (product-name :target-type
                                      short-string-attribute :member-name
                                      "productName")
                                     (term-arn :target-type
                                      long-string-attribute :member-name
                                      "termArn")
                                     (version :target-type version-attribute
                                      :member-name "version")
                                     (acceptance-type :target-type
                                      acceptance-type :member-name
                                      "acceptanceType")
                                     (sequence-number :target-type
                                      sequence-number-attribute :member-name
                                      "sequenceNumber")
                                     (upload-state :target-type upload-state
                                      :member-name "uploadState")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "ReportDetail"))

(smithy/sdk/shapes:define-type report-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure report-summary common-lisp:nil
                                    ((id :target-type report-id :member-name
                                      "id")
                                     (name :target-type short-string-attribute
                                      :member-name "name")
                                     (state :target-type published-state
                                      :member-name "state")
                                     (arn :target-type long-string-attribute
                                      :member-name "arn")
                                     (version :target-type version-attribute
                                      :member-name "version")
                                     (upload-state :target-type upload-state
                                      :member-name "uploadState")
                                     (description :target-type
                                      long-string-attribute :member-name
                                      "description")
                                     (period-start :target-type
                                      timestamp-attribute :member-name
                                      "periodStart")
                                     (period-end :target-type
                                      timestamp-attribute :member-name
                                      "periodEnd")
                                     (series :target-type
                                      short-string-attribute :member-name
                                      "series")
                                     (category :target-type
                                      short-string-attribute :member-name
                                      "category")
                                     (company-name :target-type
                                      short-string-attribute :member-name
                                      "companyName")
                                     (product-name :target-type
                                      short-string-attribute :member-name
                                      "productName")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (acceptance-type :target-type
                                      acceptance-type :member-name
                                      "acceptanceType"))
                                    (:shape-name "ReportSummary"))

(smithy/sdk/shapes:define-list reports-list :member report-summary)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sequence-number-attribute
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type short-string-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type term-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp-attribute
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum upload-state
    common-lisp:nil
  (:processing "PROCESSING")
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:fault "FAULT"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-attribute smithy/sdk/smithy-types:long)

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       get-account-settings-request :output
                                       get-account-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/account-settings/get" :code 200)

(smithy/sdk/operation:define-operation get-report :shape-name "GetReport"
                                       :input get-report-request :output
                                       get-report-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/report/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-report-metadata :shape-name
                                       "GetReportMetadata" :input
                                       get-report-metadata-request :output
                                       get-report-metadata-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/report/getMetadata" :code 200)

(smithy/sdk/operation:define-operation get-term-for-report :shape-name
                                       "GetTermForReport" :input
                                       get-term-for-report-request :output
                                       get-term-for-report-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/report/getTermForReport" :code 200)

(smithy/sdk/operation:define-operation list-customer-agreements :shape-name
                                       "ListCustomerAgreements" :input
                                       list-customer-agreements-request :output
                                       list-customer-agreements-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/customer-agreement/list" :code 200)

(smithy/sdk/operation:define-operation list-reports :shape-name "ListReports"
                                       :input list-reports-request :output
                                       list-reports-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/report/list"
                                       :code 200)

(smithy/sdk/operation:define-operation put-account-settings :shape-name
                                       "PutAccountSettings" :input
                                       put-account-settings-request :output
                                       put-account-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v1/account-settings/put" :code 200)
