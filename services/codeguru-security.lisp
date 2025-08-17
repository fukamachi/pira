(uiop/package:define-package #:pira/codeguru-security (:use)
                             (:export #:account-findings-metric #:analysis-type
                              #:aws-code-guru-security #:batch-get-findings
                              #:batch-get-findings-error
                              #:batch-get-findings-errors
                              #:categories-with-most-findings
                              #:category-with-finding-num #:client-token
                              #:code-line #:code-snippet #:create-scan
                              #:create-upload-url #:detector-tags
                              #:encryption-config #:error-code #:error-message
                              #:file-path #:finding #:finding-identifier
                              #:finding-identifiers
                              #:finding-metrics-value-per-severity #:findings
                              #:findings-metric-list
                              #:get-account-configuration #:get-findings
                              #:get-metrics-summary #:get-scan #:header-key
                              #:header-value #:kms-key-arn
                              #:list-findings-metrics #:list-scans
                              #:list-tags-for-resource #:metrics-summary
                              #:next-token #:recommendation #:reference-urls
                              #:related-vulnerabilities #:remediation
                              #:request-header-map #:resource #:resource-id
                              #:s3url #:scan-name #:scan-name-arn
                              #:scan-name-with-finding-num #:scan-state
                              #:scan-summaries #:scan-summary #:scan-type
                              #:scans-with-most-open-critical-findings
                              #:scans-with-most-open-findings #:severity
                              #:status #:suggested-fix #:suggested-fixes
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:untag-resource
                              #:update-account-configuration #:uuid
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vulnerability))
(common-lisp:in-package #:pira/codeguru-security)

(smithy/sdk/service:define-service aws-code-guru-security :shape-name
                                   "AwsCodeGuruSecurity" :version "2018-05-10"
                                   :title "Amazon CodeGuru Security"
                                   :operations
                                   '(batch-get-findings create-scan
                                     create-upload-url
                                     get-account-configuration get-findings
                                     get-metrics-summary get-scan
                                     list-findings-metrics list-scans
                                     list-tags-for-resource tag-resource
                                     untag-resource
                                     update-account-configuration)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeGuru Security")
                                      ("arnNamespace" . "codeguru-security")
                                      ("cloudTrailEventSource"
                                       . "codeguru-security.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codeguru-security"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((error-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "errorCode")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-findings-metric common-lisp:nil
                                    ((date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "date")
                                     (new-findings :target-type
                                      finding-metrics-value-per-severity
                                      :member-name "newFindings")
                                     (closed-findings :target-type
                                      finding-metrics-value-per-severity
                                      :member-name "closedFindings")
                                     (open-findings :target-type
                                      finding-metrics-value-per-severity
                                      :member-name "openFindings")
                                     (mean-time-to-close :target-type
                                      finding-metrics-value-per-severity
                                      :member-name "meanTimeToClose"))
                                    (:shape-name "AccountFindingsMetric"))

(smithy/sdk/shapes:define-enum analysis-type
    common-lisp:nil
  (:security "Security")
  (:all "All"))

(smithy/sdk/shapes:define-structure batch-get-findings-error common-lisp:nil
                                    ((scan-name :target-type scan-name
                                      :required common-lisp:t :member-name
                                      "scanName")
                                     (finding-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "findingId")
                                     (error-code :target-type error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "BatchGetFindingsError"))

(smithy/sdk/shapes:define-list batch-get-findings-errors :member
                               batch-get-findings-error)

(smithy/sdk/shapes:define-input batch-get-findings-request common-lisp:nil
                                ((finding-identifiers :target-type
                                  finding-identifiers :required common-lisp:t
                                  :member-name "findingIdentifiers"))
                                (:shape-name "BatchGetFindingsRequest"))

(smithy/sdk/shapes:define-output batch-get-findings-response common-lisp:nil
                                 ((findings :target-type findings :required
                                   common-lisp:t :member-name "findings")
                                  (failed-findings :target-type
                                   batch-get-findings-errors :required
                                   common-lisp:t :member-name
                                   "failedFindings"))
                                 (:shape-name "BatchGetFindingsResponse"))

(smithy/sdk/shapes:define-list categories-with-most-findings :member
                               category-with-finding-num)

(smithy/sdk/shapes:define-structure category-with-finding-num common-lisp:nil
                                    ((category-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "categoryName")
                                     (finding-number :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "findingNumber"))
                                    (:shape-name "CategoryWithFindingNum"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-line common-lisp:nil
                                    ((number :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "number")
                                     (content :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "content"))
                                    (:shape-name "CodeLine"))

(smithy/sdk/shapes:define-list code-snippet :member code-line)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((error-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "errorCode")
                                 (message :target-type
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

(smithy/sdk/shapes:define-input create-scan-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (scan-name :target-type scan-name :required
                                  common-lisp:t :member-name "scanName")
                                 (scan-type :target-type scan-type :member-name
                                  "scanType")
                                 (analysis-type :target-type analysis-type
                                  :member-name "analysisType")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateScanRequest"))

(smithy/sdk/shapes:define-output create-scan-response common-lisp:nil
                                 ((scan-name :target-type scan-name :required
                                   common-lisp:t :member-name "scanName")
                                  (run-id :target-type uuid :required
                                   common-lisp:t :member-name "runId")
                                  (resource-id :target-type resource-id
                                   :required common-lisp:t :member-name
                                   "resourceId")
                                  (scan-state :target-type scan-state :required
                                   common-lisp:t :member-name "scanState")
                                  (scan-name-arn :target-type scan-name-arn
                                   :member-name "scanNameArn"))
                                 (:shape-name "CreateScanResponse"))

(smithy/sdk/shapes:define-input create-upload-url-request common-lisp:nil
                                ((scan-name :target-type scan-name :required
                                  common-lisp:t :member-name "scanName"))
                                (:shape-name "CreateUploadUrlRequest"))

(smithy/sdk/shapes:define-output create-upload-url-response common-lisp:nil
                                 ((s3url :target-type s3url :required
                                   common-lisp:t :member-name "s3Url")
                                  (request-headers :target-type
                                   request-header-map :required common-lisp:t
                                   :member-name "requestHeaders")
                                  (code-artifact-id :target-type uuid :required
                                   common-lisp:t :member-name
                                   "codeArtifactId"))
                                 (:shape-name "CreateUploadUrlResponse"))

(smithy/sdk/shapes:define-list detector-tags :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure encryption-config common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "EncryptionConfig"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:duplicate-identifier "DUPLICATE_IDENTIFIER")
  (:item-does-not-exist "ITEM_DOES_NOT_EXIST")
  (:internal-error "INTERNAL_ERROR")
  (:invalid-finding-id "INVALID_FINDING_ID")
  (:invalid-scan-name "INVALID_SCAN_NAME"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-path common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "path")
                                     (start-line :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "startLine")
                                     (end-line :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "endLine")
                                     (code-snippet :target-type code-snippet
                                      :member-name "codeSnippet"))
                                    (:shape-name "FilePath"))

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (generator-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "generatorId")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (status :target-type status :member-name
                                      "status")
                                     (resource :target-type resource
                                      :member-name "resource")
                                     (vulnerability :target-type vulnerability
                                      :member-name "vulnerability")
                                     (severity :target-type severity
                                      :member-name "severity")
                                     (remediation :target-type remediation
                                      :member-name "remediation")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title")
                                     (detector-tags :target-type detector-tags
                                      :member-name "detectorTags")
                                     (detector-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "detectorId")
                                     (detector-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "detectorName")
                                     (rule-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ruleId"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-structure finding-identifier common-lisp:nil
                                    ((scan-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "scanName")
                                     (finding-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "findingId"))
                                    (:shape-name "FindingIdentifier"))

(smithy/sdk/shapes:define-list finding-identifiers :member finding-identifier)

(smithy/sdk/shapes:define-structure finding-metrics-value-per-severity
                                    common-lisp:nil
                                    ((info :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "info")
                                     (low :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "low")
                                     (medium :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "medium")
                                     (high :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "high")
                                     (critical :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "critical"))
                                    (:shape-name
                                     "FindingMetricsValuePerSeverity"))

(smithy/sdk/shapes:define-list findings :member finding)

(smithy/sdk/shapes:define-list findings-metric-list :member
                               account-findings-metric)

(smithy/sdk/shapes:define-input get-account-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output get-account-configuration-response
                                 common-lisp:nil
                                 ((encryption-config :target-type
                                   encryption-config :required common-lisp:t
                                   :member-name "encryptionConfig"))
                                 (:shape-name
                                  "GetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-input get-findings-request common-lisp:nil
                                ((scan-name :target-type scan-name :required
                                  common-lisp:t :member-name "scanName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (status :target-type status :member-name
                                  "status" :http-query "status"))
                                (:shape-name "GetFindingsRequest"))

(smithy/sdk/shapes:define-output get-findings-response common-lisp:nil
                                 ((findings :target-type findings :member-name
                                   "findings")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetFindingsResponse"))

(smithy/sdk/shapes:define-input get-metrics-summary-request common-lisp:nil
                                ((date :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "date" :http-query
                                  "date"))
                                (:shape-name "GetMetricsSummaryRequest"))

(smithy/sdk/shapes:define-output get-metrics-summary-response common-lisp:nil
                                 ((metrics-summary :target-type metrics-summary
                                   :member-name "metricsSummary"))
                                 (:shape-name "GetMetricsSummaryResponse"))

(smithy/sdk/shapes:define-input get-scan-request common-lisp:nil
                                ((scan-name :target-type scan-name :required
                                  common-lisp:t :member-name "scanName"
                                  :http-label common-lisp:t)
                                 (run-id :target-type uuid :member-name "runId"
                                  :http-query "runId"))
                                (:shape-name "GetScanRequest"))

(smithy/sdk/shapes:define-output get-scan-response common-lisp:nil
                                 ((scan-name :target-type scan-name :required
                                   common-lisp:t :member-name "scanName")
                                  (run-id :target-type uuid :required
                                   common-lisp:t :member-name "runId")
                                  (scan-state :target-type scan-state :required
                                   common-lisp:t :member-name "scanState")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (analysis-type :target-type analysis-type
                                   :required common-lisp:t :member-name
                                   "analysisType")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt")
                                  (number-of-revisions :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "numberOfRevisions")
                                  (scan-name-arn :target-type scan-name-arn
                                   :member-name "scanNameArn")
                                  (error-message :target-type error-message
                                   :member-name "errorMessage"))
                                 (:shape-name "GetScanResponse"))

(smithy/sdk/shapes:define-type header-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((error :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "error")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-findings-metrics-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (start-date :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "startDate"
                                  :http-query "startDate")
                                 (end-date :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "endDate"
                                  :http-query "endDate"))
                                (:shape-name "ListFindingsMetricsRequest"))

(smithy/sdk/shapes:define-output list-findings-metrics-response common-lisp:nil
                                 ((findings-metrics :target-type
                                   findings-metric-list :member-name
                                   "findingsMetrics")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFindingsMetricsResponse"))

(smithy/sdk/shapes:define-input list-scans-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListScansRequest"))

(smithy/sdk/shapes:define-output list-scans-response common-lisp:nil
                                 ((summaries :target-type scan-summaries
                                   :member-name "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListScansResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type scan-name-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure metrics-summary common-lisp:nil
                                    ((date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "date")
                                     (open-findings :target-type
                                      finding-metrics-value-per-severity
                                      :member-name "openFindings")
                                     (categories-with-most-findings
                                      :target-type
                                      categories-with-most-findings
                                      :member-name
                                      "categoriesWithMostFindings")
                                     (scans-with-most-open-findings
                                      :target-type
                                      scans-with-most-open-findings
                                      :member-name "scansWithMostOpenFindings")
                                     (scans-with-most-open-critical-findings
                                      :target-type
                                      scans-with-most-open-critical-findings
                                      :member-name
                                      "scansWithMostOpenCriticalFindings"))
                                    (:shape-name "MetricsSummary"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-list reference-urls :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list related-vulnerabilities :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure remediation common-lisp:nil
                                    ((recommendation :target-type
                                      recommendation :member-name
                                      "recommendation")
                                     (suggested-fixes :target-type
                                      suggested-fixes :member-name
                                      "suggestedFixes"))
                                    (:shape-name "Remediation"))

(smithy/sdk/shapes:define-map request-header-map :key header-key :value
                              header-value)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (sub-resource-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "subResourceId"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-union resource-id common-lisp:nil
                                ((code-artifact-id :target-type uuid
                                  :member-name "codeArtifactId"))
                                (:shape-name "ResourceId"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((error-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "errorCode")
                                 (message :target-type
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

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-name-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scan-name-with-finding-num common-lisp:nil
                                    ((scan-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scanName")
                                     (finding-number :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "findingNumber"))
                                    (:shape-name "ScanNameWithFindingNum"))

(smithy/sdk/shapes:define-enum scan-state
    common-lisp:nil
  (:in-progress "InProgress")
  (:successful "Successful")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list scan-summaries :member scan-summary)

(smithy/sdk/shapes:define-structure scan-summary common-lisp:nil
                                    ((scan-state :target-type scan-state
                                      :required common-lisp:t :member-name
                                      "scanState")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt")
                                     (scan-name :target-type scan-name
                                      :required common-lisp:t :member-name
                                      "scanName")
                                     (run-id :target-type uuid :required
                                      common-lisp:t :member-name "runId")
                                     (scan-name-arn :target-type scan-name-arn
                                      :member-name "scanNameArn"))
                                    (:shape-name "ScanSummary"))

(smithy/sdk/shapes:define-enum scan-type
    common-lisp:nil
  (:standard "Standard")
  (:express "Express"))

(smithy/sdk/shapes:define-list scans-with-most-open-critical-findings :member
                               scan-name-with-finding-num)

(smithy/sdk/shapes:define-list scans-with-most-open-findings :member
                               scan-name-with-finding-num)

(smithy/sdk/shapes:define-enum severity
    common-lisp:nil
  (:critical "Critical")
  (:high "High")
  (:medium "Medium")
  (:low "Low")
  (:info "Info"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:closed "Closed")
  (:open "Open")
  (:all "All"))

(smithy/sdk/shapes:define-structure suggested-fix common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code"))
                                    (:shape-name "SuggestedFix"))

(smithy/sdk/shapes:define-list suggested-fixes :member suggested-fix)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type scan-name-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((error-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "errorCode")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type scan-name-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-account-configuration-request
                                common-lisp:nil
                                ((encryption-config :target-type
                                  encryption-config :required common-lisp:t
                                  :member-name "encryptionConfig"))
                                (:shape-name
                                 "UpdateAccountConfigurationRequest"))

(smithy/sdk/shapes:define-output update-account-configuration-response
                                 common-lisp:nil
                                 ((encryption-config :target-type
                                   encryption-config :required common-lisp:t
                                   :member-name "encryptionConfig"))
                                 (:shape-name
                                  "UpdateAccountConfigurationResponse"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((error-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "errorCode")
                                 (message :target-type
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

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other")
  (:lambda-code-sha-mismatch "lambdaCodeShaMisMatch"))

(smithy/sdk/shapes:define-structure vulnerability common-lisp:nil
                                    ((reference-urls :target-type
                                      reference-urls :member-name
                                      "referenceUrls")
                                     (related-vulnerabilities :target-type
                                      related-vulnerabilities :member-name
                                      "relatedVulnerabilities")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (file-path :target-type file-path
                                      :member-name "filePath")
                                     (item-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "itemCount"))
                                    (:shape-name "Vulnerability"))

(smithy/sdk/operation:define-operation batch-get-findings :shape-name
                                       "BatchGetFindings" :input
                                       batch-get-findings-request :output
                                       batch-get-findings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/batchGetFindings"
                                       :code 200)

(smithy/sdk/operation:define-operation create-scan :shape-name "CreateScan"
                                       :input create-scan-request :output
                                       create-scan-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/scans" :code 200)

(smithy/sdk/operation:define-operation create-upload-url :shape-name
                                       "CreateUploadUrl" :input
                                       create-upload-url-request :output
                                       create-upload-url-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/uploadUrl" :code
                                       200)

(smithy/sdk/operation:define-operation get-account-configuration :shape-name
                                       "GetAccountConfiguration" :input
                                       get-account-configuration-request
                                       :output
                                       get-account-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/accountConfiguration/get" :code 200)

(smithy/sdk/operation:define-operation get-findings :shape-name "GetFindings"
                                       :input get-findings-request :output
                                       get-findings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/findings/{scanName}" :code 200)

(smithy/sdk/operation:define-operation get-metrics-summary :shape-name
                                       "GetMetricsSummary" :input
                                       get-metrics-summary-request :output
                                       get-metrics-summary-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/metrics/summary"
                                       :code 200)

(smithy/sdk/operation:define-operation get-scan :shape-name "GetScan" :input
                                       get-scan-request :output
                                       get-scan-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/scans/{scanName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-findings-metrics :shape-name
                                       "ListFindingsMetrics" :input
                                       list-findings-metrics-request :output
                                       list-findings-metrics-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/metrics/findings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-scans :shape-name "ListScans"
                                       :input list-scans-request :output
                                       list-scans-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/scans" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-account-configuration :shape-name
                                       "UpdateAccountConfiguration" :input
                                       update-account-configuration-request
                                       :output
                                       update-account-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/updateAccountConfiguration" :code 200)
