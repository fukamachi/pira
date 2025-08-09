(uiop/package:define-package #:pira/apptest (:use)
                             (:export #:arn #:aws-apptest-control-plane-service
                              #:batch #:batch-job-parameters #:batch-step-input
                              #:batch-step-output #:batch-summary
                              #:capture-tool #:cloud-formation
                              #:cloud-formation-action
                              #:cloud-formation-action-type
                              #:cloud-formation-step-summary #:compare-action
                              #:compare-action-summary
                              #:compare-data-sets-step-input
                              #:compare-data-sets-step-output
                              #:compare-data-sets-summary
                              #:compare-database-cdcstep-input
                              #:compare-database-cdcstep-output
                              #:compare-database-cdcsummary #:compare-file-type
                              #:comparison-status-enum
                              #:create-cloud-formation-step-input
                              #:create-cloud-formation-step-output
                              #:create-cloud-formation-summary
                              #:create-test-case #:create-test-configuration
                              #:create-test-suite #:data-set #:data-set-list
                              #:data-set-type #:database-cdc
                              #:delete-cloud-formation-step-input
                              #:delete-cloud-formation-step-output
                              #:delete-cloud-formation-summary
                              #:delete-test-case #:delete-test-configuration
                              #:delete-test-run #:delete-test-suite
                              #:export-data-set-names #:file #:file-metadata
                              #:format #:get-test-case #:get-test-configuration
                              #:get-test-run-step #:get-test-suite
                              #:idempotency-token-string #:identifier #:input
                              #:input-file #:list-tags-for-resource
                              #:list-test-cases #:list-test-configurations
                              #:list-test-run-steps #:list-test-run-test-cases
                              #:list-test-runs #:list-test-suites
                              #:m2managed-action-properties
                              #:m2managed-action-type #:m2managed-application
                              #:m2managed-application-action
                              #:m2managed-application-step-input
                              #:m2managed-application-step-output
                              #:m2managed-application-step-summary
                              #:m2managed-application-summary
                              #:m2managed-runtime #:m2non-managed-action-type
                              #:m2non-managed-application
                              #:m2non-managed-application-action
                              #:m2non-managed-application-step-input
                              #:m2non-managed-application-step-output
                              #:m2non-managed-application-step-summary
                              #:m2non-managed-application-summary
                              #:m2non-managed-runtime #:mainframe-action
                              #:mainframe-action-properties
                              #:mainframe-action-summary
                              #:mainframe-action-type
                              #:mainframe-resource-summary #:max-results
                              #:next-token #:output #:output-file #:properties
                              #:resource #:resource-action
                              #:resource-action-summary #:resource-description
                              #:resource-list #:resource-name #:resource-type
                              #:s3uri #:script #:script-summary #:script-type
                              #:service-settings #:source-database
                              #:source-database-metadata #:start-test-run
                              #:step #:step-action #:step-list
                              #:step-run-status #:step-run-summary #:string100
                              #:string50 #:tn3270 #:tn3270step-input
                              #:tn3270step-output #:tn3270summary #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:target-database
                              #:target-database-metadata #:test-case
                              #:test-case-id-list #:test-case-latest-version
                              #:test-case-lifecycle #:test-case-list
                              #:test-case-run-status #:test-case-run-summary
                              #:test-case-run-summary-list #:test-case-summary
                              #:test-case-summary-list #:test-cases
                              #:test-configuration #:test-configuration-id-list
                              #:test-configuration-latest-version
                              #:test-configuration-lifecycle
                              #:test-configuration-list
                              #:test-configuration-summary #:test-run
                              #:test-run-id-list #:test-run-status
                              #:test-run-step-summary
                              #:test-run-step-summary-list #:test-run-summary
                              #:test-run-summary-list #:test-suite
                              #:test-suite-id-list #:test-suite-latest-version
                              #:test-suite-lifecycle #:test-suite-list
                              #:test-suite-summary #:untag-resource
                              #:update-test-case #:update-test-configuration
                              #:update-test-suite #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:variable
                              #:version))
(common-lisp:in-package #:pira/apptest)

(smithy/sdk/service:define-service aws-apptest-control-plane-service
                                   :shape-name "AwsApptestControlPlaneService"
                                   :version "2022-12-06" :title
                                   "AWS Mainframe Modernization Application Testing"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AppTest")
                                      ("cloudFormationName" . "AppTest")
                                      ("cloudTrailEventSource"
                                       . "apptest.amazonaws.com")
                                      ("arnNamespace" . "apptest")
                                      ("endpointPrefix" . "apptest"))
                                     ("aws.auth#sigv4" ("name" . "apptest"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair of a resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair that is allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by a list of tag keys that are allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch common-lisp:nil
                                    ((batch-job-name :target-type variable
                                      :required common-lisp:t :member-name
                                      "batchJobName")
                                     (batch-job-parameters :target-type
                                      batch-job-parameters :member-name
                                      "batchJobParameters")
                                     (export-data-set-names :target-type
                                      export-data-set-names :member-name
                                      "exportDataSetNames"))
                                    (:shape-name "Batch"))

(smithy/sdk/shapes:define-map batch-job-parameters :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-step-input common-lisp:nil
                                    ((resource :target-type
                                      mainframe-resource-summary :required
                                      common-lisp:t :member-name "resource")
                                     (batch-job-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "batchJobName")
                                     (batch-job-parameters :target-type
                                      batch-job-parameters :member-name
                                      "batchJobParameters")
                                     (export-data-set-names :target-type
                                      export-data-set-names :member-name
                                      "exportDataSetNames")
                                     (properties :target-type
                                      mainframe-action-properties :member-name
                                      "properties"))
                                    (:shape-name "BatchStepInput"))

(smithy/sdk/shapes:define-structure batch-step-output common-lisp:nil
                                    ((data-set-export-location :target-type
                                      s3uri :member-name
                                      "dataSetExportLocation")
                                     (dms-output-location :target-type s3uri
                                      :member-name "dmsOutputLocation")
                                     (data-set-details :target-type
                                      data-set-list :member-name
                                      "dataSetDetails"))
                                    (:shape-name "BatchStepOutput"))

(smithy/sdk/shapes:define-structure batch-summary common-lisp:nil
                                    ((step-input :target-type batch-step-input
                                      :required common-lisp:t :member-name
                                      "stepInput")
                                     (step-output :target-type
                                      batch-step-output :member-name
                                      "stepOutput"))
                                    (:shape-name "BatchSummary"))

(smithy/sdk/shapes:define-enum capture-tool
    common-lisp:nil
  (:precisely "Precisely")
  (:aws-dms "AWS DMS"))

(smithy/sdk/shapes:define-structure cloud-formation common-lisp:nil
                                    ((template-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "templateLocation")
                                     (parameters :target-type properties
                                      :member-name "parameters"))
                                    (:shape-name "CloudFormation"))

(smithy/sdk/shapes:define-structure cloud-formation-action common-lisp:nil
                                    ((resource :target-type variable :required
                                      common-lisp:t :member-name "resource")
                                     (action-type :target-type
                                      cloud-formation-action-type :member-name
                                      "actionType"))
                                    (:shape-name "CloudFormationAction"))

(smithy/sdk/shapes:define-enum cloud-formation-action-type
    common-lisp:nil
  (:create "Create")
  (:delete "Delete"))

(smithy/sdk/shapes:define-union cloud-formation-step-summary common-lisp:nil
                                ((create-cloudformation :target-type
                                  create-cloud-formation-summary :member-name
                                  "createCloudformation")
                                 (delete-cloudformation :target-type
                                  delete-cloud-formation-summary :member-name
                                  "deleteCloudformation"))
                                (:shape-name "CloudFormationStepSummary"))

(smithy/sdk/shapes:define-structure compare-action common-lisp:nil
                                    ((input :target-type input :required
                                      common-lisp:t :member-name "input")
                                     (output :target-type output :member-name
                                      "output"))
                                    (:shape-name "CompareAction"))

(smithy/sdk/shapes:define-structure compare-action-summary common-lisp:nil
                                    ((type :target-type file :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "CompareActionSummary"))

(smithy/sdk/shapes:define-structure compare-data-sets-step-input
                                    common-lisp:nil
                                    ((source-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "sourceLocation")
                                     (target-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "targetLocation")
                                     (source-data-sets :target-type
                                      data-set-list :required common-lisp:t
                                      :member-name "sourceDataSets")
                                     (target-data-sets :target-type
                                      data-set-list :required common-lisp:t
                                      :member-name "targetDataSets"))
                                    (:shape-name "CompareDataSetsStepInput"))

(smithy/sdk/shapes:define-structure compare-data-sets-step-output
                                    common-lisp:nil
                                    ((comparison-output-location :target-type
                                      s3uri :required common-lisp:t
                                      :member-name "comparisonOutputLocation")
                                     (comparison-status :target-type
                                      comparison-status-enum :required
                                      common-lisp:t :member-name
                                      "comparisonStatus"))
                                    (:shape-name "CompareDataSetsStepOutput"))

(smithy/sdk/shapes:define-structure compare-data-sets-summary common-lisp:nil
                                    ((step-input :target-type
                                      compare-data-sets-step-input :required
                                      common-lisp:t :member-name "stepInput")
                                     (step-output :target-type
                                      compare-data-sets-step-output
                                      :member-name "stepOutput"))
                                    (:shape-name "CompareDataSetsSummary"))

(smithy/sdk/shapes:define-structure compare-database-cdcstep-input
                                    common-lisp:nil
                                    ((source-location :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "sourceLocation")
                                     (target-location :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "targetLocation")
                                     (output-location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "outputLocation")
                                     (source-metadata :target-type
                                      source-database-metadata :required
                                      common-lisp:t :member-name
                                      "sourceMetadata")
                                     (target-metadata :target-type
                                      target-database-metadata :required
                                      common-lisp:t :member-name
                                      "targetMetadata"))
                                    (:shape-name "CompareDatabaseCDCStepInput"))

(smithy/sdk/shapes:define-structure compare-database-cdcstep-output
                                    common-lisp:nil
                                    ((comparison-output-location :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "comparisonOutputLocation")
                                     (comparison-status :target-type
                                      comparison-status-enum :required
                                      common-lisp:t :member-name
                                      "comparisonStatus"))
                                    (:shape-name
                                     "CompareDatabaseCDCStepOutput"))

(smithy/sdk/shapes:define-structure compare-database-cdcsummary common-lisp:nil
                                    ((step-input :target-type
                                      compare-database-cdcstep-input :required
                                      common-lisp:t :member-name "stepInput")
                                     (step-output :target-type
                                      compare-database-cdcstep-output
                                      :member-name "stepOutput"))
                                    (:shape-name "CompareDatabaseCDCSummary"))

(smithy/sdk/shapes:define-union compare-file-type common-lisp:nil
                                ((datasets :target-type
                                  compare-data-sets-summary :member-name
                                  "datasets")
                                 (database-cdc :target-type
                                  compare-database-cdcsummary :member-name
                                  "databaseCDC"))
                                (:shape-name "CompareFileType"))

(smithy/sdk/shapes:define-enum comparison-status-enum
    common-lisp:nil
  (:different "Different")
  (:equivalent "Equivalent")
  (:equal "Equal"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-cloud-formation-step-input
                                    common-lisp:nil
                                    ((template-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "templateLocation")
                                     (parameters :target-type properties
                                      :member-name "parameters"))
                                    (:shape-name
                                     "CreateCloudFormationStepInput"))

(smithy/sdk/shapes:define-structure create-cloud-formation-step-output
                                    common-lisp:nil
                                    ((stack-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "stackId")
                                     (exports :target-type properties
                                      :member-name "exports"))
                                    (:shape-name
                                     "CreateCloudFormationStepOutput"))

(smithy/sdk/shapes:define-structure create-cloud-formation-summary
                                    common-lisp:nil
                                    ((step-input :target-type
                                      create-cloud-formation-step-input
                                      :required common-lisp:t :member-name
                                      "stepInput")
                                     (step-output :target-type
                                      create-cloud-formation-step-output
                                      :member-name "stepOutput"))
                                    (:shape-name "CreateCloudFormationSummary"))

(smithy/sdk/shapes:define-input create-test-case-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (steps :target-type step-list :required
                                  common-lisp:t :member-name "steps")
                                 (client-token :target-type
                                  idempotency-token-string :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateTestCaseRequest"))

(smithy/sdk/shapes:define-output create-test-case-response common-lisp:nil
                                 ((test-case-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testCaseId")
                                  (test-case-version :target-type version
                                   :required common-lisp:t :member-name
                                   "testCaseVersion"))
                                 (:shape-name "CreateTestCaseResponse"))

(smithy/sdk/shapes:define-input create-test-configuration-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (resources :target-type resource-list
                                  :required common-lisp:t :member-name
                                  "resources")
                                 (properties :target-type properties
                                  :member-name "properties")
                                 (client-token :target-type
                                  idempotency-token-string :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (service-settings :target-type
                                  service-settings :member-name
                                  "serviceSettings"))
                                (:shape-name "CreateTestConfigurationRequest"))

(smithy/sdk/shapes:define-output create-test-configuration-response
                                 common-lisp:nil
                                 ((test-configuration-id :target-type
                                   identifier :required common-lisp:t
                                   :member-name "testConfigurationId")
                                  (test-configuration-version :target-type
                                   version :required common-lisp:t :member-name
                                   "testConfigurationVersion"))
                                 (:shape-name
                                  "CreateTestConfigurationResponse"))

(smithy/sdk/shapes:define-input create-test-suite-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (before-steps :target-type step-list
                                  :member-name "beforeSteps")
                                 (after-steps :target-type step-list
                                  :member-name "afterSteps")
                                 (test-cases :target-type test-cases :required
                                  common-lisp:t :member-name "testCases")
                                 (client-token :target-type
                                  idempotency-token-string :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateTestSuiteRequest"))

(smithy/sdk/shapes:define-output create-test-suite-response common-lisp:nil
                                 ((test-suite-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testSuiteId")
                                  (test-suite-version :target-type version
                                   :required common-lisp:t :member-name
                                   "testSuiteVersion"))
                                 (:shape-name "CreateTestSuiteResponse"))

(smithy/sdk/shapes:define-structure data-set common-lisp:nil
                                    ((type :target-type data-set-type :required
                                      common-lisp:t :member-name "type")
                                     (name :target-type string100 :required
                                      common-lisp:t :member-name "name")
                                     (ccsid :target-type string50 :required
                                      common-lisp:t :member-name "ccsid")
                                     (format :target-type format :required
                                      common-lisp:t :member-name "format")
                                     (length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "length"))
                                    (:shape-name "DataSet"))

(smithy/sdk/shapes:define-list data-set-list :member data-set)

(smithy/sdk/shapes:define-enum data-set-type
    common-lisp:nil
  (:ps "PS"))

(smithy/sdk/shapes:define-structure database-cdc common-lisp:nil
                                    ((source-metadata :target-type
                                      source-database-metadata :required
                                      common-lisp:t :member-name
                                      "sourceMetadata")
                                     (target-metadata :target-type
                                      target-database-metadata :required
                                      common-lisp:t :member-name
                                      "targetMetadata"))
                                    (:shape-name "DatabaseCDC"))

(smithy/sdk/shapes:define-structure delete-cloud-formation-step-input
                                    common-lisp:nil
                                    ((stack-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "stackId"))
                                    (:shape-name
                                     "DeleteCloudFormationStepInput"))

(smithy/sdk/shapes:define-structure delete-cloud-formation-step-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteCloudFormationStepOutput"))

(smithy/sdk/shapes:define-structure delete-cloud-formation-summary
                                    common-lisp:nil
                                    ((step-input :target-type
                                      delete-cloud-formation-step-input
                                      :required common-lisp:t :member-name
                                      "stepInput")
                                     (step-output :target-type
                                      delete-cloud-formation-step-output
                                      :member-name "stepOutput"))
                                    (:shape-name "DeleteCloudFormationSummary"))

(smithy/sdk/shapes:define-input delete-test-case-request common-lisp:nil
                                ((test-case-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testCaseId" :http-label common-lisp:t))
                                (:shape-name "DeleteTestCaseRequest"))

(smithy/sdk/shapes:define-output delete-test-case-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTestCaseResponse"))

(smithy/sdk/shapes:define-input delete-test-configuration-request
                                common-lisp:nil
                                ((test-configuration-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testConfigurationId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTestConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-test-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTestConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-test-run-request common-lisp:nil
                                ((test-run-id :target-type identifier :required
                                  common-lisp:t :member-name "testRunId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteTestRunRequest"))

(smithy/sdk/shapes:define-output delete-test-run-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTestRunResponse"))

(smithy/sdk/shapes:define-input delete-test-suite-request common-lisp:nil
                                ((test-suite-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testSuiteId" :http-label common-lisp:t))
                                (:shape-name "DeleteTestSuiteRequest"))

(smithy/sdk/shapes:define-output delete-test-suite-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTestSuiteResponse"))

(smithy/sdk/shapes:define-list export-data-set-names :member string100)

(smithy/sdk/shapes:define-union file common-lisp:nil
                                ((file-type :target-type compare-file-type
                                  :member-name "fileType"))
                                (:shape-name "File"))

(smithy/sdk/shapes:define-union file-metadata common-lisp:nil
                                ((data-sets :target-type data-set-list
                                  :member-name "dataSets")
                                 (database-cdc :target-type database-cdc
                                  :member-name "databaseCDC"))
                                (:shape-name "FileMetadata"))

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:fixed "FIXED")
  (:variable "VARIABLE")
  (:line-sequential "LINE_SEQUENTIAL"))

(smithy/sdk/shapes:define-input get-test-case-request common-lisp:nil
                                ((test-case-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testCaseId" :http-label common-lisp:t)
                                 (test-case-version :target-type version
                                  :member-name "testCaseVersion" :http-query
                                  "testCaseVersion"))
                                (:shape-name "GetTestCaseRequest"))

(smithy/sdk/shapes:define-output get-test-case-response common-lisp:nil
                                 ((test-case-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testCaseId")
                                  (test-case-arn :target-type arn :required
                                   common-lisp:t :member-name "testCaseArn")
                                  (name :target-type resource-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (latest-version :target-type
                                   test-case-latest-version :required
                                   common-lisp:t :member-name "latestVersion")
                                  (test-case-version :target-type version
                                   :required common-lisp:t :member-name
                                   "testCaseVersion")
                                  (status :target-type test-case-lifecycle
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime")
                                  (last-update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "lastUpdateTime")
                                  (steps :target-type step-list :required
                                   common-lisp:t :member-name "steps")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetTestCaseResponse"))

(smithy/sdk/shapes:define-input get-test-configuration-request common-lisp:nil
                                ((test-configuration-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testConfigurationId" :http-label
                                  common-lisp:t)
                                 (test-configuration-version :target-type
                                  version :member-name
                                  "testConfigurationVersion" :http-query
                                  "testConfigurationVersion"))
                                (:shape-name "GetTestConfigurationRequest"))

(smithy/sdk/shapes:define-output get-test-configuration-response
                                 common-lisp:nil
                                 ((test-configuration-id :target-type
                                   identifier :required common-lisp:t
                                   :member-name "testConfigurationId")
                                  (name :target-type resource-name :required
                                   common-lisp:t :member-name "name")
                                  (test-configuration-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "testConfigurationArn")
                                  (latest-version :target-type
                                   test-configuration-latest-version :required
                                   common-lisp:t :member-name "latestVersion")
                                  (test-configuration-version :target-type
                                   version :required common-lisp:t :member-name
                                   "testConfigurationVersion")
                                  (status :target-type
                                   test-configuration-lifecycle :required
                                   common-lisp:t :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime")
                                  (last-update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "lastUpdateTime")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (resources :target-type resource-list
                                   :required common-lisp:t :member-name
                                   "resources")
                                  (properties :target-type properties :required
                                   common-lisp:t :member-name "properties")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (service-settings :target-type
                                   service-settings :member-name
                                   "serviceSettings"))
                                 (:shape-name "GetTestConfigurationResponse"))

(smithy/sdk/shapes:define-input get-test-run-step-request common-lisp:nil
                                ((test-run-id :target-type identifier :required
                                  common-lisp:t :member-name "testRunId"
                                  :http-label common-lisp:t)
                                 (step-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "stepName" :http-label common-lisp:t)
                                 (test-case-id :target-type identifier
                                  :member-name "testCaseId" :http-query
                                  "testCaseId")
                                 (test-suite-id :target-type identifier
                                  :member-name "testSuiteId" :http-query
                                  "testSuiteId"))
                                (:shape-name "GetTestRunStepRequest"))

(smithy/sdk/shapes:define-output get-test-run-step-response common-lisp:nil
                                 ((step-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "stepName")
                                  (test-run-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testRunId")
                                  (test-case-id :target-type identifier
                                   :member-name "testCaseId")
                                  (test-case-version :target-type version
                                   :member-name "testCaseVersion")
                                  (test-suite-id :target-type identifier
                                   :member-name "testSuiteId")
                                  (test-suite-version :target-type version
                                   :member-name "testSuiteVersion")
                                  (before-step :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "beforeStep")
                                  (after-step :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "afterStep")
                                  (status :target-type step-run-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (run-start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "runStartTime")
                                  (run-end-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "runEndTime")
                                  (step-run-summary :target-type
                                   step-run-summary :member-name
                                   "stepRunSummary"))
                                 (:shape-name "GetTestRunStepResponse"))

(smithy/sdk/shapes:define-input get-test-suite-request common-lisp:nil
                                ((test-suite-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testSuiteId" :http-label common-lisp:t)
                                 (test-suite-version :target-type version
                                  :member-name "testSuiteVersion" :http-query
                                  "testSuiteVersion"))
                                (:shape-name "GetTestSuiteRequest"))

(smithy/sdk/shapes:define-output get-test-suite-response common-lisp:nil
                                 ((test-suite-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testSuiteId")
                                  (name :target-type resource-name :required
                                   common-lisp:t :member-name "name")
                                  (latest-version :target-type
                                   test-suite-latest-version :required
                                   common-lisp:t :member-name "latestVersion")
                                  (test-suite-version :target-type version
                                   :required common-lisp:t :member-name
                                   "testSuiteVersion")
                                  (status :target-type test-suite-lifecycle
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (test-suite-arn :target-type arn :required
                                   common-lisp:t :member-name "testSuiteArn")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime")
                                  (last-update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "lastUpdateTime")
                                  (description :target-type
                                   resource-description :member-name
                                   "description")
                                  (before-steps :target-type step-list
                                   :required common-lisp:t :member-name
                                   "beforeSteps")
                                  (after-steps :target-type step-list :required
                                   common-lisp:t :member-name "afterSteps")
                                  (test-cases :target-type test-cases :required
                                   common-lisp:t :member-name "testCases")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetTestSuiteResponse"))

(smithy/sdk/shapes:define-type idempotency-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union input common-lisp:nil
                                ((file :target-type input-file :member-name
                                  "file"))
                                (:shape-name "Input"))

(smithy/sdk/shapes:define-structure input-file common-lisp:nil
                                    ((source-location :target-type variable
                                      :required common-lisp:t :member-name
                                      "sourceLocation")
                                     (target-location :target-type variable
                                      :required common-lisp:t :member-name
                                      "targetLocation")
                                     (file-metadata :target-type file-metadata
                                      :required common-lisp:t :member-name
                                      "fileMetadata"))
                                    (:shape-name "InputFile"))

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

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-test-cases-request common-lisp:nil
                                ((test-case-ids :target-type test-case-id-list
                                  :member-name "testCaseIds" :http-query
                                  "testCaseIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTestCasesRequest"))

(smithy/sdk/shapes:define-output list-test-cases-response common-lisp:nil
                                 ((test-cases :target-type
                                   test-case-summary-list :required
                                   common-lisp:t :member-name "testCases")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestCasesResponse"))

(smithy/sdk/shapes:define-input list-test-configurations-request
                                common-lisp:nil
                                ((test-configuration-ids :target-type
                                  test-configuration-id-list :member-name
                                  "testConfigurationIds" :http-query
                                  "testConfigurationIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTestConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-test-configurations-response
                                 common-lisp:nil
                                 ((test-configurations :target-type
                                   test-configuration-list :required
                                   common-lisp:t :member-name
                                   "testConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-test-run-steps-request common-lisp:nil
                                ((test-run-id :target-type identifier :required
                                  common-lisp:t :member-name "testRunId"
                                  :http-label common-lisp:t)
                                 (test-case-id :target-type identifier
                                  :member-name "testCaseId" :http-query
                                  "testCaseId")
                                 (test-suite-id :target-type identifier
                                  :member-name "testSuiteId" :http-query
                                  "testSuiteId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTestRunStepsRequest"))

(smithy/sdk/shapes:define-output list-test-run-steps-response common-lisp:nil
                                 ((test-run-steps :target-type
                                   test-run-step-summary-list :required
                                   common-lisp:t :member-name "testRunSteps")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestRunStepsResponse"))

(smithy/sdk/shapes:define-input list-test-run-test-cases-request
                                common-lisp:nil
                                ((test-run-id :target-type identifier :required
                                  common-lisp:t :member-name "testRunId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTestRunTestCasesRequest"))

(smithy/sdk/shapes:define-output list-test-run-test-cases-response
                                 common-lisp:nil
                                 ((test-run-test-cases :target-type
                                   test-case-run-summary-list :required
                                   common-lisp:t :member-name
                                   "testRunTestCases")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestRunTestCasesResponse"))

(smithy/sdk/shapes:define-input list-test-runs-request common-lisp:nil
                                ((test-suite-id :target-type identifier
                                  :member-name "testSuiteId" :http-query
                                  "testSuiteId")
                                 (test-run-ids :target-type test-run-id-list
                                  :member-name "testRunIds" :http-query
                                  "testrunIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTestRunsRequest"))

(smithy/sdk/shapes:define-output list-test-runs-response common-lisp:nil
                                 ((test-runs :target-type test-run-summary-list
                                   :required common-lisp:t :member-name
                                   "testRuns")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestRunsResponse"))

(smithy/sdk/shapes:define-input list-test-suites-request common-lisp:nil
                                ((test-suite-ids :target-type
                                  test-suite-id-list :member-name
                                  "testSuiteIds" :http-query "testSuiteIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTestSuitesRequest"))

(smithy/sdk/shapes:define-output list-test-suites-response common-lisp:nil
                                 ((test-suites :target-type test-suite-list
                                   :required common-lisp:t :member-name
                                   "testSuites")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTestSuitesResponse"))

(smithy/sdk/shapes:define-structure m2managed-action-properties common-lisp:nil
                                    ((force-stop :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "forceStop")
                                     (import-data-set-location :target-type
                                      variable :member-name
                                      "importDataSetLocation"))
                                    (:shape-name "M2ManagedActionProperties"))

(smithy/sdk/shapes:define-enum m2managed-action-type
    common-lisp:nil
  (:configure "Configure")
  (:deconfigure "Deconfigure"))

(smithy/sdk/shapes:define-structure m2managed-application common-lisp:nil
                                    ((application-id :target-type variable
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (runtime :target-type m2managed-runtime
                                      :required common-lisp:t :member-name
                                      "runtime")
                                     (vpc-endpoint-service-name :target-type
                                      variable :member-name
                                      "vpcEndpointServiceName")
                                     (listener-port :target-type variable
                                      :member-name "listenerPort"))
                                    (:shape-name "M2ManagedApplication"))

(smithy/sdk/shapes:define-structure m2managed-application-action
                                    common-lisp:nil
                                    ((resource :target-type variable :required
                                      common-lisp:t :member-name "resource")
                                     (action-type :target-type
                                      m2managed-action-type :required
                                      common-lisp:t :member-name "actionType")
                                     (properties :target-type
                                      m2managed-action-properties :member-name
                                      "properties"))
                                    (:shape-name "M2ManagedApplicationAction"))

(smithy/sdk/shapes:define-structure m2managed-application-step-input
                                    common-lisp:nil
                                    ((application-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "applicationId")
                                     (runtime :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "runtime")
                                     (vpc-endpoint-service-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcEndpointServiceName")
                                     (listener-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "listenerPort")
                                     (action-type :target-type
                                      m2managed-action-type :required
                                      common-lisp:t :member-name "actionType")
                                     (properties :target-type
                                      m2managed-action-properties :member-name
                                      "properties"))
                                    (:shape-name
                                     "M2ManagedApplicationStepInput"))

(smithy/sdk/shapes:define-structure m2managed-application-step-output
                                    common-lisp:nil
                                    ((import-data-set-summary :target-type
                                      properties :member-name
                                      "importDataSetSummary"))
                                    (:shape-name
                                     "M2ManagedApplicationStepOutput"))

(smithy/sdk/shapes:define-structure m2managed-application-step-summary
                                    common-lisp:nil
                                    ((step-input :target-type
                                      m2managed-application-step-input
                                      :required common-lisp:t :member-name
                                      "stepInput")
                                     (step-output :target-type
                                      m2managed-application-step-output
                                      :member-name "stepOutput"))
                                    (:shape-name
                                     "M2ManagedApplicationStepSummary"))

(smithy/sdk/shapes:define-structure m2managed-application-summary
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (runtime :target-type m2managed-runtime
                                      :required common-lisp:t :member-name
                                      "runtime")
                                     (listener-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "listenerPort"))
                                    (:shape-name "M2ManagedApplicationSummary"))

(smithy/sdk/shapes:define-enum m2managed-runtime
    common-lisp:nil
  (:microfocus "MicroFocus"))

(smithy/sdk/shapes:define-enum m2non-managed-action-type
    common-lisp:nil
  (:configure "Configure")
  (:deconfigure "Deconfigure"))

(smithy/sdk/shapes:define-structure m2non-managed-application common-lisp:nil
                                    ((vpc-endpoint-service-name :target-type
                                      variable :required common-lisp:t
                                      :member-name "vpcEndpointServiceName")
                                     (listener-port :target-type variable
                                      :required common-lisp:t :member-name
                                      "listenerPort")
                                     (runtime :target-type
                                      m2non-managed-runtime :required
                                      common-lisp:t :member-name "runtime")
                                     (web-app-name :target-type variable
                                      :member-name "webAppName"))
                                    (:shape-name "M2NonManagedApplication"))

(smithy/sdk/shapes:define-structure m2non-managed-application-action
                                    common-lisp:nil
                                    ((resource :target-type variable :required
                                      common-lisp:t :member-name "resource")
                                     (action-type :target-type
                                      m2non-managed-action-type :required
                                      common-lisp:t :member-name "actionType"))
                                    (:shape-name
                                     "M2NonManagedApplicationAction"))

(smithy/sdk/shapes:define-structure m2non-managed-application-step-input
                                    common-lisp:nil
                                    ((vpc-endpoint-service-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "vpcEndpointServiceName")
                                     (listener-port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "listenerPort")
                                     (runtime :target-type
                                      m2non-managed-runtime :required
                                      common-lisp:t :member-name "runtime")
                                     (web-app-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "webAppName")
                                     (action-type :target-type
                                      m2non-managed-action-type :required
                                      common-lisp:t :member-name "actionType"))
                                    (:shape-name
                                     "M2NonManagedApplicationStepInput"))

(smithy/sdk/shapes:define-structure m2non-managed-application-step-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "M2NonManagedApplicationStepOutput"))

(smithy/sdk/shapes:define-structure m2non-managed-application-step-summary
                                    common-lisp:nil
                                    ((step-input :target-type
                                      m2non-managed-application-step-input
                                      :required common-lisp:t :member-name
                                      "stepInput")
                                     (step-output :target-type
                                      m2non-managed-application-step-output
                                      :member-name "stepOutput"))
                                    (:shape-name
                                     "M2NonManagedApplicationStepSummary"))

(smithy/sdk/shapes:define-structure m2non-managed-application-summary
                                    common-lisp:nil
                                    ((vpc-endpoint-service-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "vpcEndpointServiceName")
                                     (listener-port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "listenerPort")
                                     (runtime :target-type
                                      m2non-managed-runtime :required
                                      common-lisp:t :member-name "runtime")
                                     (web-app-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "webAppName"))
                                    (:shape-name
                                     "M2NonManagedApplicationSummary"))

(smithy/sdk/shapes:define-enum m2non-managed-runtime
    common-lisp:nil
  (:bluage "BluAge"))

(smithy/sdk/shapes:define-structure mainframe-action common-lisp:nil
                                    ((resource :target-type variable :required
                                      common-lisp:t :member-name "resource")
                                     (action-type :target-type
                                      mainframe-action-type :required
                                      common-lisp:t :member-name "actionType")
                                     (properties :target-type
                                      mainframe-action-properties :member-name
                                      "properties"))
                                    (:shape-name "MainframeAction"))

(smithy/sdk/shapes:define-structure mainframe-action-properties common-lisp:nil
                                    ((dms-task-arn :target-type variable
                                      :member-name "dmsTaskArn"))
                                    (:shape-name "MainframeActionProperties"))

(smithy/sdk/shapes:define-union mainframe-action-summary common-lisp:nil
                                ((batch :target-type batch-summary :member-name
                                  "batch")
                                 (tn3270 :target-type tn3270summary
                                  :member-name "tn3270"))
                                (:shape-name "MainframeActionSummary"))

(smithy/sdk/shapes:define-union mainframe-action-type common-lisp:nil
                                ((batch :target-type batch :member-name
                                  "batch")
                                 (tn3270 :target-type tn3270 :member-name
                                  "tn3270"))
                                (:shape-name "MainframeActionType"))

(smithy/sdk/shapes:define-union mainframe-resource-summary common-lisp:nil
                                ((m2managed-application :target-type
                                  m2managed-application-summary :member-name
                                  "m2ManagedApplication")
                                 (m2non-managed-application :target-type
                                  m2non-managed-application-summary
                                  :member-name "m2NonManagedApplication"))
                                (:shape-name "MainframeResourceSummary"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union output common-lisp:nil
                                ((file :target-type output-file :member-name
                                  "file"))
                                (:shape-name "Output"))

(smithy/sdk/shapes:define-structure output-file common-lisp:nil
                                    ((file-location :target-type s3uri
                                      :member-name "fileLocation"))
                                    (:shape-name "OutputFile"))

(smithy/sdk/shapes:define-map properties :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type resource-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-union resource-action common-lisp:nil
                                ((m2managed-application-action :target-type
                                  m2managed-application-action :member-name
                                  "m2ManagedApplicationAction")
                                 (m2non-managed-application-action :target-type
                                  m2non-managed-application-action :member-name
                                  "m2NonManagedApplicationAction")
                                 (cloud-formation-action :target-type
                                  cloud-formation-action :member-name
                                  "cloudFormationAction"))
                                (:shape-name "ResourceAction"))

(smithy/sdk/shapes:define-union resource-action-summary common-lisp:nil
                                ((cloud-formation :target-type
                                  cloud-formation-step-summary :member-name
                                  "cloudFormation")
                                 (m2managed-application :target-type
                                  m2managed-application-step-summary
                                  :member-name "m2ManagedApplication")
                                 (m2non-managed-application :target-type
                                  m2non-managed-application-step-summary
                                  :member-name "m2NonManagedApplication"))
                                (:shape-name "ResourceActionSummary"))

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-union resource-type common-lisp:nil
                                ((cloud-formation :target-type cloud-formation
                                  :member-name "cloudFormation")
                                 (m2managed-application :target-type
                                  m2managed-application :member-name
                                  "m2ManagedApplication")
                                 (m2non-managed-application :target-type
                                  m2non-managed-application :member-name
                                  "m2NonManagedApplication"))
                                (:shape-name "ResourceType"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure script common-lisp:nil
                                    ((script-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "scriptLocation")
                                     (type :target-type script-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "Script"))

(smithy/sdk/shapes:define-structure script-summary common-lisp:nil
                                    ((script-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "scriptLocation")
                                     (type :target-type script-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "ScriptSummary"))

(smithy/sdk/shapes:define-enum script-type
    common-lisp:nil
  (:selenium "Selenium"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure service-settings common-lisp:nil
                                    ((kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId"))
                                    (:shape-name "ServiceSettings"))

(smithy/sdk/shapes:define-enum source-database
    common-lisp:nil
  (:z-os-db2 "z/OS-DB2"))

(smithy/sdk/shapes:define-structure source-database-metadata common-lisp:nil
                                    ((type :target-type source-database
                                      :required common-lisp:t :member-name
                                      "type")
                                     (capture-tool :target-type capture-tool
                                      :required common-lisp:t :member-name
                                      "captureTool"))
                                    (:shape-name "SourceDatabaseMetadata"))

(smithy/sdk/shapes:define-input start-test-run-request common-lisp:nil
                                ((test-suite-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testSuiteId")
                                 (test-configuration-id :target-type identifier
                                  :member-name "testConfigurationId")
                                 (client-token :target-type
                                  idempotency-token-string :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "StartTestRunRequest"))

(smithy/sdk/shapes:define-output start-test-run-response common-lisp:nil
                                 ((test-run-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testRunId")
                                  (test-run-status :target-type test-run-status
                                   :required common-lisp:t :member-name
                                   "testRunStatus"))
                                 (:shape-name "StartTestRunResponse"))

(smithy/sdk/shapes:define-structure step common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (action :target-type step-action :required
                                      common-lisp:t :member-name "action"))
                                    (:shape-name "Step"))

(smithy/sdk/shapes:define-union step-action common-lisp:nil
                                ((resource-action :target-type resource-action
                                  :member-name "resourceAction")
                                 (mainframe-action :target-type
                                  mainframe-action :member-name
                                  "mainframeAction")
                                 (compare-action :target-type compare-action
                                  :member-name "compareAction"))
                                (:shape-name "StepAction"))

(smithy/sdk/shapes:define-list step-list :member step)

(smithy/sdk/shapes:define-enum step-run-status
    common-lisp:nil
  (:success "Success")
  (:failed "Failed")
  (:running "Running"))

(smithy/sdk/shapes:define-union step-run-summary common-lisp:nil
                                ((mainframe-action :target-type
                                  mainframe-action-summary :member-name
                                  "mainframeAction")
                                 (compare-action :target-type
                                  compare-action-summary :member-name
                                  "compareAction")
                                 (resource-action :target-type
                                  resource-action-summary :member-name
                                  "resourceAction"))
                                (:shape-name "StepRunSummary"))

(smithy/sdk/shapes:define-type string100 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string50 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tn3270 common-lisp:nil
                                    ((script :target-type script :required
                                      common-lisp:t :member-name "script")
                                     (export-data-set-names :target-type
                                      export-data-set-names :member-name
                                      "exportDataSetNames"))
                                    (:shape-name "TN3270"))

(smithy/sdk/shapes:define-structure tn3270step-input common-lisp:nil
                                    ((resource :target-type
                                      mainframe-resource-summary :required
                                      common-lisp:t :member-name "resource")
                                     (script :target-type script-summary
                                      :required common-lisp:t :member-name
                                      "script")
                                     (export-data-set-names :target-type
                                      export-data-set-names :member-name
                                      "exportDataSetNames")
                                     (properties :target-type
                                      mainframe-action-properties :member-name
                                      "properties"))
                                    (:shape-name "TN3270StepInput"))

(smithy/sdk/shapes:define-structure tn3270step-output common-lisp:nil
                                    ((data-set-export-location :target-type
                                      s3uri :member-name
                                      "dataSetExportLocation")
                                     (dms-output-location :target-type s3uri
                                      :member-name "dmsOutputLocation")
                                     (data-set-details :target-type
                                      data-set-list :member-name
                                      "dataSetDetails")
                                     (script-output-location :target-type s3uri
                                      :required common-lisp:t :member-name
                                      "scriptOutputLocation"))
                                    (:shape-name "TN3270StepOutput"))

(smithy/sdk/shapes:define-structure tn3270summary common-lisp:nil
                                    ((step-input :target-type tn3270step-input
                                      :required common-lisp:t :member-name
                                      "stepInput")
                                     (step-output :target-type
                                      tn3270step-output :member-name
                                      "stepOutput"))
                                    (:shape-name "TN3270Summary"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-database
    common-lisp:nil
  (:postgresql "PostgreSQL"))

(smithy/sdk/shapes:define-structure target-database-metadata common-lisp:nil
                                    ((type :target-type target-database
                                      :required common-lisp:t :member-name
                                      "type")
                                     (capture-tool :target-type capture-tool
                                      :required common-lisp:t :member-name
                                      "captureTool"))
                                    (:shape-name "TargetDatabaseMetadata"))

common-lisp:nil

(smithy/sdk/shapes:define-list test-case-id-list :member identifier)

(smithy/sdk/shapes:define-structure test-case-latest-version common-lisp:nil
                                    ((version :target-type version :required
                                      common-lisp:t :member-name "version")
                                     (status :target-type test-case-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "TestCaseLatestVersion"))

(smithy/sdk/shapes:define-enum test-case-lifecycle
    common-lisp:nil
  (:active "Active")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-list test-case-list :member identifier)

(smithy/sdk/shapes:define-enum test-case-run-status
    common-lisp:nil
  (:success "Success")
  (:running "Running")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure test-case-run-summary common-lisp:nil
                                    ((test-case-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testCaseId")
                                     (test-case-version :target-type version
                                      :required common-lisp:t :member-name
                                      "testCaseVersion")
                                     (test-run-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testRunId")
                                     (status :target-type test-case-run-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (run-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "runStartTime")
                                     (run-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "runEndTime"))
                                    (:shape-name "TestCaseRunSummary"))

(smithy/sdk/shapes:define-list test-case-run-summary-list :member
                               test-case-run-summary)

(smithy/sdk/shapes:define-structure test-case-summary common-lisp:nil
                                    ((test-case-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testCaseId")
                                     (test-case-arn :target-type arn :required
                                      common-lisp:t :member-name "testCaseArn")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (latest-version :target-type version
                                      :required common-lisp:t :member-name
                                      "latestVersion")
                                     (status :target-type test-case-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateTime"))
                                    (:shape-name "TestCaseSummary"))

(smithy/sdk/shapes:define-list test-case-summary-list :member test-case-summary)

(smithy/sdk/shapes:define-union test-cases common-lisp:nil
                                ((sequential :target-type test-case-list
                                  :member-name "sequential"))
                                (:shape-name "TestCases"))

common-lisp:nil

(smithy/sdk/shapes:define-list test-configuration-id-list :member identifier)

(smithy/sdk/shapes:define-structure test-configuration-latest-version
                                    common-lisp:nil
                                    ((version :target-type version :required
                                      common-lisp:t :member-name "version")
                                     (status :target-type
                                      test-configuration-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name
                                     "TestConfigurationLatestVersion"))

(smithy/sdk/shapes:define-enum test-configuration-lifecycle
    common-lisp:nil
  (:active "Active")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-list test-configuration-list :member
                               test-configuration-summary)

(smithy/sdk/shapes:define-structure test-configuration-summary common-lisp:nil
                                    ((test-configuration-id :target-type
                                      identifier :required common-lisp:t
                                      :member-name "testConfigurationId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (latest-version :target-type version
                                      :required common-lisp:t :member-name
                                      "latestVersion")
                                     (test-configuration-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "testConfigurationArn")
                                     (status :target-type
                                      test-configuration-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateTime"))
                                    (:shape-name "TestConfigurationSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-list test-run-id-list :member identifier)

(smithy/sdk/shapes:define-enum test-run-status
    common-lisp:nil
  (:success "Success")
  (:running "Running")
  (:failed "Failed")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-structure test-run-step-summary common-lisp:nil
                                    ((step-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "stepName")
                                     (test-run-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testRunId")
                                     (test-case-id :target-type identifier
                                      :member-name "testCaseId")
                                     (test-case-version :target-type version
                                      :member-name "testCaseVersion")
                                     (test-suite-id :target-type identifier
                                      :member-name "testSuiteId")
                                     (test-suite-version :target-type version
                                      :member-name "testSuiteVersion")
                                     (before-step :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "beforeStep")
                                     (after-step :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "afterStep")
                                     (status :target-type step-run-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (run-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "runStartTime")
                                     (run-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "runEndTime"))
                                    (:shape-name "TestRunStepSummary"))

(smithy/sdk/shapes:define-list test-run-step-summary-list :member
                               test-run-step-summary)

(smithy/sdk/shapes:define-structure test-run-summary common-lisp:nil
                                    ((test-run-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testRunId")
                                     (test-run-arn :target-type arn :required
                                      common-lisp:t :member-name "testRunArn")
                                     (test-suite-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testSuiteId")
                                     (test-suite-version :target-type version
                                      :required common-lisp:t :member-name
                                      "testSuiteVersion")
                                     (test-configuration-id :target-type
                                      identifier :member-name
                                      "testConfigurationId")
                                     (test-configuration-version :target-type
                                      version :member-name
                                      "testConfigurationVersion")
                                     (status :target-type test-run-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (run-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "runStartTime")
                                     (run-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "runEndTime"))
                                    (:shape-name "TestRunSummary"))

(smithy/sdk/shapes:define-list test-run-summary-list :member test-run-summary)

common-lisp:nil

(smithy/sdk/shapes:define-list test-suite-id-list :member identifier)

(smithy/sdk/shapes:define-structure test-suite-latest-version common-lisp:nil
                                    ((version :target-type version :required
                                      common-lisp:t :member-name "version")
                                     (status :target-type test-suite-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "TestSuiteLatestVersion"))

(smithy/sdk/shapes:define-enum test-suite-lifecycle
    common-lisp:nil
  (:creating "Creating")
  (:updating "Updating")
  (:active "Active")
  (:failed "Failed")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-list test-suite-list :member test-suite-summary)

(smithy/sdk/shapes:define-structure test-suite-summary common-lisp:nil
                                    ((test-suite-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "testSuiteId")
                                     (name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (latest-version :target-type version
                                      :required common-lisp:t :member-name
                                      "latestVersion")
                                     (test-suite-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "testSuiteArn")
                                     (status :target-type test-suite-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateTime"))
                                    (:shape-name "TestSuiteSummary"))

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

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-test-case-request common-lisp:nil
                                ((test-case-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testCaseId" :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (steps :target-type step-list :member-name
                                  "steps"))
                                (:shape-name "UpdateTestCaseRequest"))

(smithy/sdk/shapes:define-output update-test-case-response common-lisp:nil
                                 ((test-case-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testCaseId")
                                  (test-case-version :target-type version
                                   :required common-lisp:t :member-name
                                   "testCaseVersion"))
                                 (:shape-name "UpdateTestCaseResponse"))

(smithy/sdk/shapes:define-input update-test-configuration-request
                                common-lisp:nil
                                ((test-configuration-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testConfigurationId" :http-label
                                  common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (resources :target-type resource-list
                                  :member-name "resources")
                                 (properties :target-type properties
                                  :member-name "properties")
                                 (service-settings :target-type
                                  service-settings :member-name
                                  "serviceSettings"))
                                (:shape-name "UpdateTestConfigurationRequest"))

(smithy/sdk/shapes:define-output update-test-configuration-response
                                 common-lisp:nil
                                 ((test-configuration-id :target-type
                                   identifier :required common-lisp:t
                                   :member-name "testConfigurationId")
                                  (test-configuration-version :target-type
                                   version :required common-lisp:t :member-name
                                   "testConfigurationVersion"))
                                 (:shape-name
                                  "UpdateTestConfigurationResponse"))

(smithy/sdk/shapes:define-input update-test-suite-request common-lisp:nil
                                ((test-suite-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "testSuiteId" :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (before-steps :target-type step-list
                                  :member-name "beforeSteps")
                                 (after-steps :target-type step-list
                                  :member-name "afterSteps")
                                 (test-cases :target-type test-cases
                                  :member-name "testCases"))
                                (:shape-name "UpdateTestSuiteRequest"))

(smithy/sdk/shapes:define-output update-test-suite-response common-lisp:nil
                                 ((test-suite-id :target-type identifier
                                   :required common-lisp:t :member-name
                                   "testSuiteId")
                                  (test-suite-version :target-type version
                                   :member-name "testSuiteVersion"))
                                 (:shape-name "UpdateTestSuiteResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
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
  (:other "other"))

(smithy/sdk/shapes:define-type variable smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation create-test-case :shape-name
                                       "CreateTestCase" :input
                                       create-test-case-request :output
                                       create-test-case-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testcase" :code
                                       201)

(smithy/sdk/operation:define-operation create-test-configuration :shape-name
                                       "CreateTestConfiguration" :input
                                       create-test-configuration-request
                                       :output
                                       create-test-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testconfiguration"
                                       :code 201)

(smithy/sdk/operation:define-operation create-test-suite :shape-name
                                       "CreateTestSuite" :input
                                       create-test-suite-request :output
                                       create-test-suite-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testsuite" :code
                                       201)

(smithy/sdk/operation:define-operation delete-test-case :shape-name
                                       "DeleteTestCase" :input
                                       delete-test-case-request :output
                                       delete-test-case-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/testcases/{testCaseId}" :code 204)

(smithy/sdk/operation:define-operation delete-test-configuration :shape-name
                                       "DeleteTestConfiguration" :input
                                       delete-test-configuration-request
                                       :output
                                       delete-test-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/testconfigurations/{testConfigurationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-test-run :shape-name
                                       "DeleteTestRun" :input
                                       delete-test-run-request :output
                                       delete-test-run-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/testruns/{testRunId}" :code 204)

(smithy/sdk/operation:define-operation delete-test-suite :shape-name
                                       "DeleteTestSuite" :input
                                       delete-test-suite-request :output
                                       delete-test-suite-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/testsuites/{testSuiteId}" :code 204)

(smithy/sdk/operation:define-operation get-test-case :shape-name "GetTestCase"
                                       :input get-test-case-request :output
                                       get-test-case-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testcases/{testCaseId}" :code 200)

(smithy/sdk/operation:define-operation get-test-configuration :shape-name
                                       "GetTestConfiguration" :input
                                       get-test-configuration-request :output
                                       get-test-configuration-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testconfigurations/{testConfigurationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-test-run-step :shape-name
                                       "GetTestRunStep" :input
                                       get-test-run-step-request :output
                                       get-test-run-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testruns/{testRunId}/steps/{stepName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-test-suite :shape-name
                                       "GetTestSuite" :input
                                       get-test-suite-request :output
                                       get-test-suite-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testsuites/{testSuiteId}" :code 200)

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

(smithy/sdk/operation:define-operation list-test-cases :shape-name
                                       "ListTestCases" :input
                                       list-test-cases-request :output
                                       list-test-cases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/testcases" :code
                                       200)

(smithy/sdk/operation:define-operation list-test-configurations :shape-name
                                       "ListTestConfigurations" :input
                                       list-test-configurations-request :output
                                       list-test-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/testconfigurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-test-run-steps :shape-name
                                       "ListTestRunSteps" :input
                                       list-test-run-steps-request :output
                                       list-test-run-steps-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testruns/{testRunId}/steps" :code 200)

(smithy/sdk/operation:define-operation list-test-run-test-cases :shape-name
                                       "ListTestRunTestCases" :input
                                       list-test-run-test-cases-request :output
                                       list-test-run-test-cases-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/testruns/{testRunId}/testcases" :code
                                       200)

(smithy/sdk/operation:define-operation list-test-runs :shape-name
                                       "ListTestRuns" :input
                                       list-test-runs-request :output
                                       list-test-runs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/testruns" :code 200)

(smithy/sdk/operation:define-operation list-test-suites :shape-name
                                       "ListTestSuites" :input
                                       list-test-suites-request :output
                                       list-test-suites-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/testsuites" :code
                                       200)

(smithy/sdk/operation:define-operation start-test-run :shape-name
                                       "StartTestRun" :input
                                       start-test-run-request :output
                                       start-test-run-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/testrun" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
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

(smithy/sdk/operation:define-operation update-test-case :shape-name
                                       "UpdateTestCase" :input
                                       update-test-case-request :output
                                       update-test-case-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/testcases/{testCaseId}" :code 200)

(smithy/sdk/operation:define-operation update-test-configuration :shape-name
                                       "UpdateTestConfiguration" :input
                                       update-test-configuration-request
                                       :output
                                       update-test-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/testconfigurations/{testConfigurationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-test-suite :shape-name
                                       "UpdateTestSuite" :input
                                       update-test-suite-request :output
                                       update-test-suite-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/testsuites/{testSuiteId}" :code 200)
