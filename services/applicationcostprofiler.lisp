(uiop/package:define-package #:pira/applicationcostprofiler (:use)
                             (:export #:awsapplication-cost-profiler
                              #:access-denied-exception
                              #:delete-report-definition
                              #:delete-report-definition-request
                              #:delete-report-definition-result #:error-message
                              #:format #:get-report-definition
                              #:get-report-definition-request
                              #:get-report-definition-result
                              #:import-application-usage
                              #:import-application-usage-request
                              #:import-application-usage-result #:import-id
                              #:integer #:internal-server-exception
                              #:list-report-definitions
                              #:list-report-definitions-request
                              #:list-report-definitions-result
                              #:put-report-definition
                              #:put-report-definition-request
                              #:put-report-definition-result
                              #:report-definition #:report-definition-list
                              #:report-description #:report-frequency
                              #:report-id #:s3bucket #:s3bucket-region #:s3key
                              #:s3location #:s3prefix
                              #:service-quota-exceeded-exception
                              #:source-s3location #:throttling-exception
                              #:timestamp #:token #:update-report-definition
                              #:update-report-definition-request
                              #:update-report-definition-result
                              #:validation-exception))
(common-lisp:in-package #:pira/applicationcostprofiler)

(smithy/sdk/service:define-service awsapplication-cost-profiler :shape-name
                                   "AWSApplicationCostProfiler" :version
                                   "2020-09-10" :title
                                   "AWS Application Cost Profiler" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ApplicationCostProfiler")
                                      ("arnNamespace"
                                       . "application-cost-profiler")
                                      ("cloudFormationName"
                                       . "ApplicationCostProfiler")
                                      ("cloudTrailEventSource"
                                       . "applicationcostprofiler.amazonaws.com")
                                      ("docId"
                                       . "AWSApplicationCostProfiler-2020-09-10")
                                      ("endpointPrefix"
                                       . "application-cost-profiler"))
                                     ("aws.auth#sigv4"
                                      ("name" . "application-cost-profiler"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input delete-report-definition-request
                                common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteReportDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-report-definition-result
                                 common-lisp:nil
                                 ((report-id :target-type report-id
                                   :member-name "reportId"))
                                 (:shape-name "DeleteReportDefinitionResult"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:csv "CSV")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-input get-report-definition-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetReportDefinitionRequest"))

(smithy/sdk/shapes:define-output get-report-definition-result common-lisp:nil
                                 ((report-id :target-type report-id :required
                                   common-lisp:t :member-name "reportId")
                                  (report-description :target-type
                                   report-description :required common-lisp:t
                                   :member-name "reportDescription")
                                  (report-frequency :target-type
                                   report-frequency :required common-lisp:t
                                   :member-name "reportFrequency")
                                  (format :target-type format :required
                                   common-lisp:t :member-name "format")
                                  (destination-s3location :target-type
                                   s3location :required common-lisp:t
                                   :member-name "destinationS3Location")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (last-updated :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdated"))
                                 (:shape-name "GetReportDefinitionResult"))

(smithy/sdk/shapes:define-input import-application-usage-request
                                common-lisp:nil
                                ((source-s3location :target-type
                                  source-s3location :required common-lisp:t
                                  :member-name "sourceS3Location"))
                                (:shape-name "ImportApplicationUsageRequest"))

(smithy/sdk/shapes:define-output import-application-usage-result
                                 common-lisp:nil
                                 ((import-id :target-type import-id :required
                                   common-lisp:t :member-name "importId"))
                                 (:shape-name "ImportApplicationUsageResult"))

(smithy/sdk/shapes:define-type import-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-report-definitions-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListReportDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-report-definitions-result common-lisp:nil
                                 ((report-definitions :target-type
                                   report-definition-list :member-name
                                   "reportDefinitions")
                                  (next-token :target-type token :member-name
                                   "nextToken"))
                                 (:shape-name "ListReportDefinitionsResult"))

(smithy/sdk/shapes:define-input put-report-definition-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId")
                                 (report-description :target-type
                                  report-description :required common-lisp:t
                                  :member-name "reportDescription")
                                 (report-frequency :target-type
                                  report-frequency :required common-lisp:t
                                  :member-name "reportFrequency")
                                 (format :target-type format :required
                                  common-lisp:t :member-name "format")
                                 (destination-s3location :target-type
                                  s3location :required common-lisp:t
                                  :member-name "destinationS3Location"))
                                (:shape-name "PutReportDefinitionRequest"))

(smithy/sdk/shapes:define-output put-report-definition-result common-lisp:nil
                                 ((report-id :target-type report-id
                                   :member-name "reportId"))
                                 (:shape-name "PutReportDefinitionResult"))

(smithy/sdk/shapes:define-structure report-definition common-lisp:nil
                                    ((report-id :target-type report-id
                                      :member-name "reportId")
                                     (report-description :target-type
                                      report-description :member-name
                                      "reportDescription")
                                     (report-frequency :target-type
                                      report-frequency :member-name
                                      "reportFrequency")
                                     (format :target-type format :member-name
                                      "format")
                                     (destination-s3location :target-type
                                      s3location :member-name
                                      "destinationS3Location")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "ReportDefinition"))

(smithy/sdk/shapes:define-list report-definition-list :member report-definition)

(smithy/sdk/shapes:define-type report-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum report-frequency
    common-lisp:nil
  (:monthly "MONTHLY")
  (:daily "DAILY")
  (:all "ALL"))

(smithy/sdk/shapes:define-type report-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3bucket-region
    common-lisp:nil
  (:ap-east-1 "ap-east-1")
  (:me-south-1 "me-south-1")
  (:eu-south-1 "eu-south-1")
  (:af-south-1 "af-south-1"))

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (prefix :target-type s3prefix :required
                                      common-lisp:t :member-name "prefix"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure source-s3location common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "key")
                                     (region :target-type s3bucket-region
                                      :member-name "region"))
                                    (:shape-name "SourceS3Location"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-report-definition-request
                                common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"
                                  :http-label common-lisp:t)
                                 (report-description :target-type
                                  report-description :required common-lisp:t
                                  :member-name "reportDescription")
                                 (report-frequency :target-type
                                  report-frequency :required common-lisp:t
                                  :member-name "reportFrequency")
                                 (format :target-type format :required
                                  common-lisp:t :member-name "format")
                                 (destination-s3location :target-type
                                  s3location :required common-lisp:t
                                  :member-name "destinationS3Location"))
                                (:shape-name "UpdateReportDefinitionRequest"))

(smithy/sdk/shapes:define-output update-report-definition-result
                                 common-lisp:nil
                                 ((report-id :target-type report-id
                                   :member-name "reportId"))
                                 (:shape-name "UpdateReportDefinitionResult"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation delete-report-definition :shape-name
                                       "DeleteReportDefinition" :input
                                       delete-report-definition-request :output
                                       delete-report-definition-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/reportDefinition/{reportId}" :code 200)

(smithy/sdk/operation:define-operation get-report-definition :shape-name
                                       "GetReportDefinition" :input
                                       get-report-definition-request :output
                                       get-report-definition-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/reportDefinition/{reportId}" :code 200)

(smithy/sdk/operation:define-operation import-application-usage :shape-name
                                       "ImportApplicationUsage" :input
                                       import-application-usage-request :output
                                       import-application-usage-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/importApplicationUsage" :code 200)

(smithy/sdk/operation:define-operation list-report-definitions :shape-name
                                       "ListReportDefinitions" :input
                                       list-report-definitions-request :output
                                       list-report-definitions-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/reportDefinition"
                                       :code 200)

(smithy/sdk/operation:define-operation put-report-definition :shape-name
                                       "PutReportDefinition" :input
                                       put-report-definition-request :output
                                       put-report-definition-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/reportDefinition"
                                       :code 200)

(smithy/sdk/operation:define-operation update-report-definition :shape-name
                                       "UpdateReportDefinition" :input
                                       update-report-definition-request :output
                                       update-report-definition-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/reportDefinition/{reportId}" :code 200)
