(uiop/package:define-package #:pira/cost-and-usage-report-service (:use)
                             (:export #:awsorigami-service-gateway-service
                              #:awsregion #:additional-artifact
                              #:additional-artifact-list #:billing-view-arn
                              #:compression-format #:delete-report-definition
                              #:delete-response-message
                              #:describe-report-definitions
                              #:duplicate-report-name-exception #:error-message
                              #:generic-string #:internal-error-exception
                              #:last-delivery #:last-status
                              #:list-tags-for-resource #:max-results
                              #:modify-report-definition
                              #:put-report-definition #:refresh-closed-reports
                              #:report-definition #:report-definition-list
                              #:report-format #:report-limit-reached-exception
                              #:report-name #:report-status #:report-versioning
                              #:resource-not-found-exception #:s3bucket
                              #:s3prefix #:schema-element #:schema-element-list
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:time-unit
                              #:untag-resource #:validation-exception
                              #:cost-and-usage-report-service-error))
(common-lisp:in-package #:pira/cost-and-usage-report-service)

(common-lisp:define-condition cost-and-usage-report-service-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsorigami-service-gateway-service
                                   :shape-name
                                   "AWSOrigamiServiceGatewayService" :version
                                   "2017-01-06" :title
                                   "AWS Cost and Usage Report Service"
                                   :operations
                                   '(delete-report-definition
                                     describe-report-definitions
                                     list-tags-for-resource
                                     modify-report-definition
                                     put-report-definition tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Cost and Usage Report Service")
                                      ("arnNamespace" . "cur")
                                      ("cloudFormationName"
                                       . "CostandUsageReportService")
                                      ("cloudTrailEventSource"
                                       . "costandusagereportservice.amazonaws.com")
                                      ("docId" . "cur-2017-01-06")
                                      ("endpointPrefix" . "cur"))
                                     ("aws.auth#sigv4" ("name" . "cur"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum awsregion
    common-lisp:nil
  (:cape-town "af-south-1")
  (:hong-kong "ap-east-1")
  (:mumbai "ap-south-1")
  (:hyderabad "ap-south-2")
  (:singapore "ap-southeast-1")
  (:sydney "ap-southeast-2")
  (:jakarta "ap-southeast-3")
  (:tokyo "ap-northeast-1")
  (:seoul "ap-northeast-2")
  (:osaka "ap-northeast-3")
  (:canada-central "ca-central-1")
  (:frankfurt "eu-central-1")
  (:zurich "eu-central-2")
  (:ireland "eu-west-1")
  (:london "eu-west-2")
  (:paris "eu-west-3")
  (:stockholm "eu-north-1")
  (:milano "eu-south-1")
  (:spain "eu-south-2")
  (:uae "me-central-1")
  (:bahrain "me-south-1")
  (:sao-paulo "sa-east-1")
  (:us-standard "us-east-1")
  (:ohio "us-east-2")
  (:northern-california "us-west-1")
  (:oregon "us-west-2")
  (:beijing "cn-north-1")
  (:ningxia "cn-northwest-1"))

(smithy/sdk/shapes:define-enum additional-artifact
    common-lisp:nil
  (:redshift "REDSHIFT")
  (:quicksight "QUICKSIGHT")
  (:athena "ATHENA"))

(smithy/sdk/shapes:define-list additional-artifact-list :member
                               additional-artifact)

(smithy/sdk/shapes:define-type billing-view-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compression-format
    common-lisp:nil
  (:zip "ZIP")
  (:gzip "GZIP")
  (:parquet "Parquet"))

(smithy/sdk/shapes:define-input delete-report-definition-request
                                common-lisp:nil
                                ((report-name :target-type report-name
                                  :required common-lisp:t :member-name
                                  "ReportName"))
                                (:shape-name "DeleteReportDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-report-definition-response
                                 common-lisp:nil
                                 ((response-message :target-type
                                   delete-response-message :member-name
                                   "ResponseMessage"))
                                 (:shape-name "DeleteReportDefinitionResponse"))

(smithy/sdk/shapes:define-type delete-response-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-report-definitions-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeReportDefinitionsRequest"))

(smithy/sdk/shapes:define-output describe-report-definitions-response
                                 common-lisp:nil
                                 ((report-definitions :target-type
                                   report-definition-list :member-name
                                   "ReportDefinitions")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeReportDefinitionsResponse"))

(smithy/sdk/shapes:define-error duplicate-report-name-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DuplicateReportNameException")
                                (:error-code 400)
                                (:base-class
                                 cost-and-usage-report-service-error))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500)
                                (:base-class
                                 cost-and-usage-report-service-error))

(smithy/sdk/shapes:define-type last-delivery smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum last-status
    common-lisp:nil
  (:success "SUCCESS")
  (:error-permissions "ERROR_PERMISSIONS")
  (:error-no-bucket "ERROR_NO_BUCKET"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((report-name :target-type report-name
                                  :required common-lisp:t :member-name
                                  "ReportName"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input modify-report-definition-request
                                common-lisp:nil
                                ((report-name :target-type report-name
                                  :required common-lisp:t :member-name
                                  "ReportName")
                                 (report-definition :target-type
                                  report-definition :required common-lisp:t
                                  :member-name "ReportDefinition"))
                                (:shape-name "ModifyReportDefinitionRequest"))

(smithy/sdk/shapes:define-output modify-report-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ModifyReportDefinitionResponse"))

(smithy/sdk/shapes:define-input put-report-definition-request common-lisp:nil
                                ((report-definition :target-type
                                  report-definition :required common-lisp:t
                                  :member-name "ReportDefinition")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "PutReportDefinitionRequest"))

(smithy/sdk/shapes:define-output put-report-definition-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutReportDefinitionResponse"))

(smithy/sdk/shapes:define-type refresh-closed-reports
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure report-definition common-lisp:nil
                                    ((report-name :target-type report-name
                                      :required common-lisp:t :member-name
                                      "ReportName")
                                     (time-unit :target-type time-unit
                                      :required common-lisp:t :member-name
                                      "TimeUnit")
                                     (format :target-type report-format
                                      :required common-lisp:t :member-name
                                      "Format")
                                     (compression :target-type
                                      compression-format :required
                                      common-lisp:t :member-name "Compression")
                                     (additional-schema-elements :target-type
                                      schema-element-list :required
                                      common-lisp:t :member-name
                                      "AdditionalSchemaElements")
                                     (s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3prefix :target-type s3prefix :required
                                      common-lisp:t :member-name "S3Prefix")
                                     (s3region :target-type awsregion :required
                                      common-lisp:t :member-name "S3Region")
                                     (additional-artifacts :target-type
                                      additional-artifact-list :member-name
                                      "AdditionalArtifacts")
                                     (refresh-closed-reports :target-type
                                      refresh-closed-reports :member-name
                                      "RefreshClosedReports")
                                     (report-versioning :target-type
                                      report-versioning :member-name
                                      "ReportVersioning")
                                     (billing-view-arn :target-type
                                      billing-view-arn :member-name
                                      "BillingViewArn")
                                     (report-status :target-type report-status
                                      :member-name "ReportStatus"))
                                    (:shape-name "ReportDefinition"))

(smithy/sdk/shapes:define-list report-definition-list :member report-definition)

(smithy/sdk/shapes:define-enum report-format
    common-lisp:nil
  (:csv "textORcsv")
  (:parquet "Parquet"))

(smithy/sdk/shapes:define-error report-limit-reached-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ReportLimitReachedException")
                                (:error-code 400)
                                (:base-class
                                 cost-and-usage-report-service-error))

(smithy/sdk/shapes:define-type report-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure report-status common-lisp:nil
                                    ((last-delivery :target-type last-delivery
                                      :member-name "lastDelivery")
                                     (last-status :target-type last-status
                                      :member-name "lastStatus"))
                                    (:shape-name "ReportStatus"))

(smithy/sdk/shapes:define-enum report-versioning
    common-lisp:nil
  (:create-new-report "CREATE_NEW_REPORT")
  (:overwrite-report "OVERWRITE_REPORT"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class
                                 cost-and-usage-report-service-error))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schema-element
    common-lisp:nil
  (:resources "RESOURCES")
  (:split-cost-allocation-data "SPLIT_COST_ALLOCATION_DATA")
  (:manual-discount-compatibility "MANUAL_DISCOUNT_COMPATIBILITY"))

(smithy/sdk/shapes:define-list schema-element-list :member schema-element)

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
                                ((report-name :target-type report-name
                                  :required common-lisp:t :member-name
                                  "ReportName")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum time-unit
    common-lisp:nil
  (:hourly "HOURLY")
  (:daily "DAILY")
  (:monthly "MONTHLY"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((report-name :target-type report-name
                                  :required common-lisp:t :member-name
                                  "ReportName")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class
                                 cost-and-usage-report-service-error))

(smithy/sdk/operation:define-operation delete-report-definition :shape-name
                                       "DeleteReportDefinition" :input
                                       delete-report-definition-request :output
                                       delete-report-definition-response
                                       :errors
                                       (internal-error-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-report-definitions :shape-name
                                       "DescribeReportDefinitions" :input
                                       describe-report-definitions-request
                                       :output
                                       describe-report-definitions-response
                                       :errors (internal-error-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation modify-report-definition :shape-name
                                       "ModifyReportDefinition" :input
                                       modify-report-definition-request :output
                                       modify-report-definition-response
                                       :errors
                                       (internal-error-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-report-definition :shape-name
                                       "PutReportDefinition" :input
                                       put-report-definition-request :output
                                       put-report-definition-response :errors
                                       (duplicate-report-name-exception
                                        internal-error-exception
                                        report-limit-reached-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception
                                        validation-exception))
