(uiop/package:define-package #:pira/m2 (:use)
                             (:export #:access-denied-exception #:alternate-key
                              #:alternate-key-list #:application
                              #:application-deployment-lifecycle
                              #:application-lifecycle #:application-summary
                              #:application-summary-list
                              #:application-version-lifecycle
                              #:application-version-summary
                              #:application-version-summary-list #:arn
                              #:arn-list #:auth-secrets-manager-arn
                              #:aws-supernova-control-plane-service
                              #:batch-job-definition #:batch-job-definitions
                              #:batch-job-execution-status
                              #:batch-job-execution-summary
                              #:batch-job-execution-summary-list
                              #:batch-job-identifier #:batch-job-parameters-map
                              #:batch-job-step-list #:batch-job-type
                              #:batch-param-key #:batch-param-value #:boolean
                              #:cancel-batch-job-execution
                              #:cancel-batch-job-execution-request
                              #:cancel-batch-job-execution-response
                              #:capacity-value #:client-token
                              #:conflict-exception #:create-application
                              #:create-application-request
                              #:create-application-response
                              #:create-data-set-export-task
                              #:create-data-set-export-task-request
                              #:create-data-set-export-task-response
                              #:create-data-set-import-task
                              #:create-data-set-import-task-request
                              #:create-data-set-import-task-response
                              #:create-deployment #:create-deployment-request
                              #:create-deployment-response #:create-environment
                              #:create-environment-request
                              #:create-environment-response #:data-set
                              #:data-set-export-config #:data-set-export-item
                              #:data-set-export-list #:data-set-export-summary
                              #:data-set-export-task
                              #:data-set-export-task-list
                              #:data-set-import-config #:data-set-import-item
                              #:data-set-import-list #:data-set-import-summary
                              #:data-set-import-task
                              #:data-set-import-task-list #:data-set-summary
                              #:data-set-task-lifecycle
                              #:data-sets-summary-list
                              #:dataset-detail-org-attributes
                              #:dataset-org-attributes #:definition
                              #:delete-application
                              #:delete-application-from-environment
                              #:delete-application-from-environment-request
                              #:delete-application-from-environment-response
                              #:delete-application-request
                              #:delete-application-response
                              #:delete-environment #:delete-environment-request
                              #:delete-environment-response
                              #:deployed-version-summary #:deployment-lifecycle
                              #:deployment-list #:deployment-summary
                              #:efs-storage-configuration #:engine-type
                              #:engine-version #:engine-versions-summary
                              #:engine-versions-summary-list
                              #:entity-description #:entity-name
                              #:entity-name-list #:environment
                              #:environment-lifecycle #:environment-summary
                              #:environment-summary-list
                              #:execution-timeout-exception #:external-location
                              #:file-batch-job-definition
                              #:file-batch-job-identifier
                              #:fsx-storage-configuration #:gdg-attributes
                              #:gdg-detail-attributes #:get-application
                              #:get-application-request
                              #:get-application-response
                              #:get-application-version
                              #:get-application-version-request
                              #:get-application-version-response
                              #:get-batch-job-execution
                              #:get-batch-job-execution-request
                              #:get-batch-job-execution-response
                              #:get-data-set-details
                              #:get-data-set-details-request
                              #:get-data-set-details-response
                              #:get-data-set-export-task
                              #:get-data-set-export-task-request
                              #:get-data-set-export-task-response
                              #:get-data-set-import-task
                              #:get-data-set-import-task-request
                              #:get-data-set-import-task-response
                              #:get-deployment #:get-deployment-request
                              #:get-deployment-response #:get-environment
                              #:get-environment-request
                              #:get-environment-response
                              #:get-signed-bluinsights-url
                              #:get-signed-bluinsights-url-response
                              #:high-availability-config #:identifier
                              #:identifier-list #:integer
                              #:internal-server-exception #:job-identifier
                              #:job-step #:job-step-restart-marker #:kmskey-id
                              #:list-application-versions
                              #:list-application-versions-request
                              #:list-application-versions-response
                              #:list-applications #:list-applications-request
                              #:list-applications-response
                              #:list-batch-job-definitions
                              #:list-batch-job-definitions-request
                              #:list-batch-job-definitions-response
                              #:list-batch-job-executions
                              #:list-batch-job-executions-request
                              #:list-batch-job-executions-response
                              #:list-batch-job-restart-points
                              #:list-batch-job-restart-points-request
                              #:list-batch-job-restart-points-response
                              #:list-data-set-export-history
                              #:list-data-set-export-history-request
                              #:list-data-set-export-history-response
                              #:list-data-set-import-history
                              #:list-data-set-import-history-request
                              #:list-data-set-import-history-response
                              #:list-data-sets #:list-data-sets-request
                              #:list-data-sets-response #:list-deployments
                              #:list-deployments-request
                              #:list-deployments-response
                              #:list-engine-versions
                              #:list-engine-versions-request
                              #:list-engine-versions-response
                              #:list-environments #:list-environments-request
                              #:list-environments-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:log-group-identifier #:log-group-summaries
                              #:log-group-summary #:maintenance-schedule
                              #:max-results #:network-type #:next-token
                              #:pending-maintenance #:po-attributes
                              #:po-detail-attributes #:port-list #:primary-key
                              #:ps-attributes #:ps-detail-attributes
                              #:record-length #:resource-not-found-exception
                              #:restart-batch-job-identifier
                              #:s3batch-job-identifier
                              #:script-batch-job-definition
                              #:script-batch-job-identifier
                              #:service-quota-exceeded-exception
                              #:service-unavailable-exception
                              #:start-application #:start-application-request
                              #:start-application-response #:start-batch-job
                              #:start-batch-job-request
                              #:start-batch-job-response #:stop-application
                              #:stop-application-request
                              #:stop-application-response
                              #:storage-configuration
                              #:storage-configuration-list #:string100
                              #:string20 #:string200 #:string2000
                              #:string20list #:string50 #:string50list
                              #:string-free65000 #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:throttling-exception #:timestamp
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-application
                              #:update-application-request
                              #:update-application-response
                              #:update-environment #:update-environment-request
                              #:update-environment-response
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:version
                              #:vsam-attributes #:vsam-detail-attributes))
(common-lisp:in-package #:pira/m2)

(smithy/sdk/service:define-service aws-supernova-control-plane-service
                                   :shape-name
                                   "AwsSupernovaControlPlaneService" :version
                                   "2021-04-28" :title
                                   "AWSMainframeModernization" :traits
                                   '(("aws.api#service" ("sdkId" . "m2")
                                      ("sdkServiceId" . "M2")
                                      ("serviceName" . "m2")
                                      ("arnNamespace" . "m2")
                                      ("cloudFormationName" . "M2")
                                      ("cloudTrailEventSource"
                                       . "m2.amazonaws.com")
                                      ("endpointPrefix" . "m2"))
                                     ("aws.auth#sigv4" ("name" . "m2"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair of a resource"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair that is allowed in the request"))
                                      ("aws:TagKeys" ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a list of tag keys that are allowed in the request")))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure alternate-key common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (offset :target-type integer :required
                                      common-lisp:t :member-name "offset")
                                     (length :target-type integer :required
                                      common-lisp:t :member-name "length")
                                     (allow-duplicates :target-type boolean
                                      :member-name "allowDuplicates"))
                                    (:shape-name "AlternateKey"))

(smithy/sdk/shapes:define-list alternate-key-list :member alternate-key)

common-lisp:nil

(smithy/sdk/shapes:define-type application-deployment-lifecycle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-lifecycle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (application-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "applicationArn")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (status :target-type application-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "engineType")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (environment-id :target-type identifier
                                      :member-name "environmentId")
                                     (last-start-time :target-type timestamp
                                      :member-name "lastStartTime")
                                     (version-status :target-type
                                      application-version-lifecycle
                                      :member-name "versionStatus")
                                     (deployment-status :target-type
                                      application-deployment-lifecycle
                                      :member-name "deploymentStatus")
                                     (role-arn :target-type arn :member-name
                                      "roleArn"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-list application-summary-list :member
                               application-summary)

(smithy/sdk/shapes:define-type application-version-lifecycle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-version-summary common-lisp:nil
                                    ((application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (status :target-type
                                      application-version-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime"))
                                    (:shape-name "ApplicationVersionSummary"))

(smithy/sdk/shapes:define-list application-version-summary-list :member
                               application-version-summary)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-type auth-secrets-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union batch-job-definition common-lisp:nil
                                ((file-batch-job-definition :target-type
                                  file-batch-job-definition :member-name
                                  "fileBatchJobDefinition")
                                 (script-batch-job-definition :target-type
                                  script-batch-job-definition :member-name
                                  "scriptBatchJobDefinition"))
                                (:shape-name "BatchJobDefinition"))

(smithy/sdk/shapes:define-list batch-job-definitions :member
                               batch-job-definition)

(smithy/sdk/shapes:define-type batch-job-execution-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-job-execution-summary common-lisp:nil
                                    ((execution-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "executionId")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (job-id :target-type string100
                                      :member-name "jobId")
                                     (job-name :target-type string100
                                      :member-name "jobName")
                                     (job-type :target-type batch-job-type
                                      :member-name "jobType")
                                     (status :target-type
                                      batch-job-execution-status :required
                                      common-lisp:t :member-name "status")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (return-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "returnCode")
                                     (batch-job-identifier :target-type
                                      batch-job-identifier :member-name
                                      "batchJobIdentifier"))
                                    (:shape-name "BatchJobExecutionSummary"))

(smithy/sdk/shapes:define-list batch-job-execution-summary-list :member
                               batch-job-execution-summary)

(smithy/sdk/shapes:define-union batch-job-identifier common-lisp:nil
                                ((file-batch-job-identifier :target-type
                                  file-batch-job-identifier :member-name
                                  "fileBatchJobIdentifier")
                                 (script-batch-job-identifier :target-type
                                  script-batch-job-identifier :member-name
                                  "scriptBatchJobIdentifier")
                                 (s3batch-job-identifier :target-type
                                  s3batch-job-identifier :member-name
                                  "s3BatchJobIdentifier")
                                 (restart-batch-job-identifier :target-type
                                  restart-batch-job-identifier :member-name
                                  "restartBatchJobIdentifier"))
                                (:shape-name "BatchJobIdentifier"))

(smithy/sdk/shapes:define-map batch-job-parameters-map :key batch-param-key
                              :value batch-param-value)

(smithy/sdk/shapes:define-list batch-job-step-list :member job-step)

(smithy/sdk/shapes:define-type batch-job-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type batch-param-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type batch-param-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cancel-batch-job-execution-request
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (execution-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "executionId")
                                     (auth-secrets-manager-arn :target-type
                                      auth-secrets-manager-arn :member-name
                                      "authSecretsManagerArn"))
                                    (:shape-name
                                     "CancelBatchJobExecutionRequest"))

(smithy/sdk/shapes:define-structure cancel-batch-job-execution-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "CancelBatchJobExecutionResponse"))

(smithy/sdk/shapes:define-type capacity-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure create-application-request common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "engineType")
                                     (definition :target-type definition
                                      :required common-lisp:t :member-name
                                      "definition")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId")
                                     (role-arn :target-type arn :member-name
                                      "roleArn"))
                                    (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-structure create-application-response common-lisp:nil
                                    ((application-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "applicationArn")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion"))
                                    (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-data-set-export-task-request
                                common-lisp:nil
                                ((application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (export-config :target-type
                                  data-set-export-config :required
                                  common-lisp:t :member-name "exportConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (kms-key-id :target-type kmskey-id
                                  :member-name "kmsKeyId"))
                                (:shape-name "CreateDataSetExportTaskRequest"))

(smithy/sdk/shapes:define-output create-data-set-export-task-response
                                 common-lisp:nil
                                 ((task-id :target-type identifier :required
                                   common-lisp:t :member-name "taskId"))
                                 (:shape-name
                                  "CreateDataSetExportTaskResponse"))

(smithy/sdk/shapes:define-structure create-data-set-import-task-request
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (import-config :target-type
                                      data-set-import-config :required
                                      common-lisp:t :member-name
                                      "importConfig")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "CreateDataSetImportTaskRequest"))

(smithy/sdk/shapes:define-structure create-data-set-import-task-response
                                    common-lisp:nil
                                    ((task-id :target-type identifier :required
                                      common-lisp:t :member-name "taskId"))
                                    (:shape-name
                                     "CreateDataSetImportTaskResponse"))

(smithy/sdk/shapes:define-structure create-deployment-request common-lisp:nil
                                    ((environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-structure create-deployment-response common-lisp:nil
                                    ((deployment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "deploymentId"))
                                    (:shape-name "CreateDeploymentResponse"))

(smithy/sdk/shapes:define-structure create-environment-request common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (instance-type :target-type string20
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "engineType")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "engineVersion")
                                     (subnet-ids :target-type string50list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      string50list :member-name
                                      "securityGroupIds")
                                     (storage-configurations :target-type
                                      storage-configuration-list :member-name
                                      "storageConfigurations")
                                     (publicly-accessible :target-type boolean
                                      :member-name "publiclyAccessible")
                                     (high-availability-config :target-type
                                      high-availability-config :member-name
                                      "highAvailabilityConfig")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (preferred-maintenance-window :target-type
                                      string50 :member-name
                                      "preferredMaintenanceWindow")
                                     (network-type :target-type network-type
                                      :member-name "networkType")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId"))
                                    (:shape-name "CreateEnvironmentRequest"))

(smithy/sdk/shapes:define-structure create-environment-response common-lisp:nil
                                    ((environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId"))
                                    (:shape-name "CreateEnvironmentResponse"))

(smithy/sdk/shapes:define-structure data-set common-lisp:nil
                                    ((storage-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageType")
                                     (dataset-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "datasetName")
                                     (dataset-org :target-type
                                      dataset-org-attributes :required
                                      common-lisp:t :member-name "datasetOrg")
                                     (relative-path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "relativePath")
                                     (record-length :target-type record-length
                                      :required common-lisp:t :member-name
                                      "recordLength"))
                                    (:shape-name "DataSet"))

(smithy/sdk/shapes:define-union data-set-export-config common-lisp:nil
                                ((s3location :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "s3Location")
                                 (data-sets :target-type data-set-export-list
                                  :member-name "dataSets"))
                                (:shape-name "DataSetExportConfig"))

(smithy/sdk/shapes:define-structure data-set-export-item common-lisp:nil
                                    ((dataset-name :target-type string200
                                      :required common-lisp:t :member-name
                                      "datasetName")
                                     (external-location :target-type
                                      external-location :required common-lisp:t
                                      :member-name "externalLocation"))
                                    (:shape-name "DataSetExportItem"))

(smithy/sdk/shapes:define-list data-set-export-list :member
                               data-set-export-item)

(smithy/sdk/shapes:define-structure data-set-export-summary common-lisp:nil
                                    ((total :target-type integer :required
                                      common-lisp:t :member-name "total")
                                     (succeeded :target-type integer :required
                                      common-lisp:t :member-name "succeeded")
                                     (failed :target-type integer :required
                                      common-lisp:t :member-name "failed")
                                     (pending :target-type integer :required
                                      common-lisp:t :member-name "pending")
                                     (in-progress :target-type integer
                                      :required common-lisp:t :member-name
                                      "inProgress"))
                                    (:shape-name "DataSetExportSummary"))

(smithy/sdk/shapes:define-structure data-set-export-task common-lisp:nil
                                    ((task-id :target-type identifier :required
                                      common-lisp:t :member-name "taskId")
                                     (status :target-type
                                      data-set-task-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (summary :target-type
                                      data-set-export-summary :required
                                      common-lisp:t :member-name "summary")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "DataSetExportTask"))

(smithy/sdk/shapes:define-list data-set-export-task-list :member
                               data-set-export-task)

(smithy/sdk/shapes:define-union data-set-import-config common-lisp:nil
                                ((s3location :target-type string2000
                                  :member-name "s3Location")
                                 (data-sets :target-type data-set-import-list
                                  :member-name "dataSets"))
                                (:shape-name "DataSetImportConfig"))

(smithy/sdk/shapes:define-structure data-set-import-item common-lisp:nil
                                    ((data-set :target-type data-set :required
                                      common-lisp:t :member-name "dataSet")
                                     (external-location :target-type
                                      external-location :required common-lisp:t
                                      :member-name "externalLocation"))
                                    (:shape-name "DataSetImportItem"))

(smithy/sdk/shapes:define-list data-set-import-list :member
                               data-set-import-item)

(smithy/sdk/shapes:define-structure data-set-import-summary common-lisp:nil
                                    ((total :target-type integer :required
                                      common-lisp:t :member-name "total")
                                     (succeeded :target-type integer :required
                                      common-lisp:t :member-name "succeeded")
                                     (failed :target-type integer :required
                                      common-lisp:t :member-name "failed")
                                     (pending :target-type integer :required
                                      common-lisp:t :member-name "pending")
                                     (in-progress :target-type integer
                                      :required common-lisp:t :member-name
                                      "inProgress"))
                                    (:shape-name "DataSetImportSummary"))

(smithy/sdk/shapes:define-structure data-set-import-task common-lisp:nil
                                    ((task-id :target-type identifier :required
                                      common-lisp:t :member-name "taskId")
                                     (status :target-type
                                      data-set-task-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (summary :target-type
                                      data-set-import-summary :required
                                      common-lisp:t :member-name "summary")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "DataSetImportTask"))

(smithy/sdk/shapes:define-list data-set-import-task-list :member
                               data-set-import-task)

(smithy/sdk/shapes:define-structure data-set-summary common-lisp:nil
                                    ((data-set-name :target-type string200
                                      :required common-lisp:t :member-name
                                      "dataSetName")
                                     (data-set-org :target-type string20
                                      :member-name "dataSetOrg")
                                     (format :target-type string20 :member-name
                                      "format")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "lastUpdatedTime")
                                     (last-referenced-time :target-type
                                      timestamp :member-name
                                      "lastReferencedTime"))
                                    (:shape-name "DataSetSummary"))

(smithy/sdk/shapes:define-type data-set-task-lifecycle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-sets-summary-list :member data-set-summary)

(smithy/sdk/shapes:define-union dataset-detail-org-attributes common-lisp:nil
                                ((vsam :target-type vsam-detail-attributes
                                  :member-name "vsam")
                                 (gdg :target-type gdg-detail-attributes
                                  :member-name "gdg")
                                 (po :target-type po-detail-attributes
                                  :member-name "po")
                                 (ps :target-type ps-detail-attributes
                                  :member-name "ps"))
                                (:shape-name "DatasetDetailOrgAttributes"))

(smithy/sdk/shapes:define-union dataset-org-attributes common-lisp:nil
                                ((vsam :target-type vsam-attributes
                                  :member-name "vsam")
                                 (gdg :target-type gdg-attributes :member-name
                                  "gdg")
                                 (po :target-type po-attributes :member-name
                                  "po")
                                 (ps :target-type ps-attributes :member-name
                                  "ps"))
                                (:shape-name "DatasetOrgAttributes"))

(smithy/sdk/shapes:define-union definition common-lisp:nil
                                ((s3location :target-type string2000
                                  :member-name "s3Location")
                                 (content :target-type string-free65000
                                  :member-name "content"))
                                (:shape-name "Definition"))

(smithy/sdk/shapes:define-structure delete-application-from-environment-request
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId"))
                                    (:shape-name
                                     "DeleteApplicationFromEnvironmentRequest"))

(smithy/sdk/shapes:define-structure
 delete-application-from-environment-response common-lisp:nil common-lisp:nil
 (:shape-name "DeleteApplicationFromEnvironmentResponse"))

(smithy/sdk/shapes:define-structure delete-application-request common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId"))
                                    (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-structure delete-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-structure delete-environment-request common-lisp:nil
                                    ((environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId"))
                                    (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-structure delete-environment-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteEnvironmentResponse"))

(smithy/sdk/shapes:define-structure deployed-version-summary common-lisp:nil
                                    ((application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (status :target-type deployment-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "DeployedVersionSummary"))

(smithy/sdk/shapes:define-type deployment-lifecycle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list deployment-list :member deployment-summary)

(smithy/sdk/shapes:define-structure deployment-summary common-lisp:nil
                                    ((deployment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "deploymentId")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (status :target-type deployment-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "DeploymentSummary"))

(smithy/sdk/shapes:define-structure efs-storage-configuration common-lisp:nil
                                    ((file-system-id :target-type string200
                                      :required common-lisp:t :member-name
                                      "fileSystemId" :json-name
                                      "file-system-id")
                                     (mount-point :target-type string200
                                      :required common-lisp:t :member-name
                                      "mountPoint" :json-name "mount-point"))
                                    (:shape-name "EfsStorageConfiguration"))

(smithy/sdk/shapes:define-type engine-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engine-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure engine-versions-summary common-lisp:nil
                                    ((engine-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "engineType")
                                     (engine-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "engineVersion"))
                                    (:shape-name "EngineVersionsSummary"))

(smithy/sdk/shapes:define-list engine-versions-summary-list :member
                               engine-versions-summary)

(smithy/sdk/shapes:define-type entity-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-name-list :member entity-name)

common-lisp:nil

(smithy/sdk/shapes:define-type environment-lifecycle
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment-summary common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (environment-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "environmentArn")
                                     (environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId")
                                     (instance-type :target-type string20
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (status :target-type environment-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "engineType")
                                     (engine-version :target-type
                                      engine-version :required common-lisp:t
                                      :member-name "engineVersion")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (network-type :target-type network-type
                                      :member-name "networkType"))
                                    (:shape-name "EnvironmentSummary"))

(smithy/sdk/shapes:define-list environment-summary-list :member
                               environment-summary)

(smithy/sdk/shapes:define-error execution-timeout-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ExecutionTimeoutException")
                                (:error-code 504))

(smithy/sdk/shapes:define-union external-location common-lisp:nil
                                ((s3location :target-type string2000
                                  :member-name "s3Location"))
                                (:shape-name "ExternalLocation"))

(smithy/sdk/shapes:define-structure file-batch-job-definition common-lisp:nil
                                    ((file-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fileName")
                                     (folder-path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "folderPath"))
                                    (:shape-name "FileBatchJobDefinition"))

(smithy/sdk/shapes:define-structure file-batch-job-identifier common-lisp:nil
                                    ((file-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fileName")
                                     (folder-path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "folderPath"))
                                    (:shape-name "FileBatchJobIdentifier"))

(smithy/sdk/shapes:define-structure fsx-storage-configuration common-lisp:nil
                                    ((file-system-id :target-type string200
                                      :required common-lisp:t :member-name
                                      "fileSystemId" :json-name
                                      "file-system-id")
                                     (mount-point :target-type string200
                                      :required common-lisp:t :member-name
                                      "mountPoint" :json-name "mount-point"))
                                    (:shape-name "FsxStorageConfiguration"))

(smithy/sdk/shapes:define-structure gdg-attributes common-lisp:nil
                                    ((limit :target-type integer :member-name
                                      "limit")
                                     (roll-disposition :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "rollDisposition"))
                                    (:shape-name "GdgAttributes"))

(smithy/sdk/shapes:define-structure gdg-detail-attributes common-lisp:nil
                                    ((limit :target-type integer :member-name
                                      "limit")
                                     (roll-disposition :target-type string50
                                      :member-name "rollDisposition"))
                                    (:shape-name "GdgDetailAttributes"))

(smithy/sdk/shapes:define-structure get-application-request common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId"))
                                    (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-structure get-application-response common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (application-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "applicationArn")
                                     (status :target-type application-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (latest-version :target-type
                                      application-version-summary :required
                                      common-lisp:t :member-name
                                      "latestVersion")
                                     (deployed-version :target-type
                                      deployed-version-summary :member-name
                                      "deployedVersion")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "engineType")
                                     (log-groups :target-type
                                      log-group-summaries :member-name
                                      "logGroups")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-start-time :target-type timestamp
                                      :member-name "lastStartTime")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (environment-id :target-type identifier
                                      :member-name "environmentId")
                                     (target-group-arns :target-type arn-list
                                      :member-name "targetGroupArns")
                                     (listener-arns :target-type arn-list
                                      :member-name "listenerArns")
                                     (listener-ports :target-type port-list
                                      :member-name "listenerPorts")
                                     (load-balancer-dns-name :target-type
                                      string100 :member-name
                                      "loadBalancerDnsName")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId")
                                     (role-arn :target-type arn :member-name
                                      "roleArn"))
                                    (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-structure get-application-version-request
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion"))
                                    (:shape-name
                                     "GetApplicationVersionRequest"))

(smithy/sdk/shapes:define-structure get-application-version-response
                                    common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (definition-content :target-type
                                      string-free65000 :required common-lisp:t
                                      :member-name "definitionContent")
                                     (status :target-type
                                      application-version-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name
                                     "GetApplicationVersionResponse"))

(smithy/sdk/shapes:define-structure get-batch-job-execution-request
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (execution-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "executionId"))
                                    (:shape-name "GetBatchJobExecutionRequest"))

(smithy/sdk/shapes:define-structure get-batch-job-execution-response
                                    common-lisp:nil
                                    ((execution-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "executionId")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (job-id :target-type string100
                                      :member-name "jobId")
                                     (job-name :target-type string100
                                      :member-name "jobName")
                                     (job-user :target-type string100
                                      :member-name "jobUser")
                                     (job-type :target-type batch-job-type
                                      :member-name "jobType")
                                     (status :target-type
                                      batch-job-execution-status :required
                                      common-lisp:t :member-name "status")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (return-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "returnCode")
                                     (batch-job-identifier :target-type
                                      batch-job-identifier :member-name
                                      "batchJobIdentifier")
                                     (job-step-restart-marker :target-type
                                      job-step-restart-marker :member-name
                                      "jobStepRestartMarker"))
                                    (:shape-name
                                     "GetBatchJobExecutionResponse"))

(smithy/sdk/shapes:define-input get-data-set-details-request common-lisp:nil
                                ((application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (data-set-name :target-type string200
                                  :required common-lisp:t :member-name
                                  "dataSetName" :http-label common-lisp:t))
                                (:shape-name "GetDataSetDetailsRequest"))

(smithy/sdk/shapes:define-output get-data-set-details-response common-lisp:nil
                                 ((data-set-name :target-type string200
                                   :required common-lisp:t :member-name
                                   "dataSetName")
                                  (data-set-org :target-type
                                   dataset-detail-org-attributes :member-name
                                   "dataSetOrg")
                                  (record-length :target-type integer
                                   :member-name "recordLength")
                                  (location :target-type string2000
                                   :member-name "location")
                                  (blocksize :target-type integer :member-name
                                   "blocksize")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-updated-time :target-type timestamp
                                   :member-name "lastUpdatedTime")
                                  (last-referenced-time :target-type timestamp
                                   :member-name "lastReferencedTime")
                                  (file-size :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "fileSize"))
                                 (:shape-name "GetDataSetDetailsResponse"))

(smithy/sdk/shapes:define-input get-data-set-export-task-request
                                common-lisp:nil
                                ((application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (task-id :target-type identifier :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataSetExportTaskRequest"))

(smithy/sdk/shapes:define-output get-data-set-export-task-response
                                 common-lisp:nil
                                 ((task-id :target-type identifier :required
                                   common-lisp:t :member-name "taskId")
                                  (status :target-type data-set-task-lifecycle
                                   :required common-lisp:t :member-name
                                   "status")
                                  (summary :target-type data-set-export-summary
                                   :member-name "summary")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (kms-key-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "kmsKeyArn"))
                                 (:shape-name "GetDataSetExportTaskResponse"))

(smithy/sdk/shapes:define-structure get-data-set-import-task-request
                                    common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (task-id :target-type identifier :required
                                      common-lisp:t :member-name "taskId"))
                                    (:shape-name "GetDataSetImportTaskRequest"))

(smithy/sdk/shapes:define-structure get-data-set-import-task-response
                                    common-lisp:nil
                                    ((task-id :target-type identifier :required
                                      common-lisp:t :member-name "taskId")
                                     (status :target-type
                                      data-set-task-lifecycle :required
                                      common-lisp:t :member-name "status")
                                     (summary :target-type
                                      data-set-import-summary :member-name
                                      "summary"))
                                    (:shape-name
                                     "GetDataSetImportTaskResponse"))

(smithy/sdk/shapes:define-structure get-deployment-request common-lisp:nil
                                    ((deployment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "deploymentId")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId"))
                                    (:shape-name "GetDeploymentRequest"))

(smithy/sdk/shapes:define-structure get-deployment-response common-lisp:nil
                                    ((deployment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "deploymentId")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId")
                                     (application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion")
                                     (status :target-type deployment-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "GetDeploymentResponse"))

(smithy/sdk/shapes:define-structure get-environment-request common-lisp:nil
                                    ((environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId"))
                                    (:shape-name "GetEnvironmentRequest"))

(smithy/sdk/shapes:define-structure get-environment-response common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (environment-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "environmentArn")
                                     (environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId")
                                     (instance-type :target-type string20
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (status :target-type environment-lifecycle
                                      :required common-lisp:t :member-name
                                      "status")
                                     (engine-type :target-type engine-type
                                      :required common-lisp:t :member-name
                                      "engineType")
                                     (engine-version :target-type
                                      engine-version :required common-lisp:t
                                      :member-name "engineVersion")
                                     (vpc-id :target-type string50 :required
                                      common-lisp:t :member-name "vpcId")
                                     (subnet-ids :target-type string50list
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (security-group-ids :target-type
                                      string50list :required common-lisp:t
                                      :member-name "securityGroupIds")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (storage-configurations :target-type
                                      storage-configuration-list :member-name
                                      "storageConfigurations")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (high-availability-config :target-type
                                      high-availability-config :member-name
                                      "highAvailabilityConfig")
                                     (publicly-accessible :target-type boolean
                                      :member-name "publiclyAccessible")
                                     (actual-capacity :target-type
                                      capacity-value :member-name
                                      "actualCapacity")
                                     (load-balancer-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "loadBalancerArn")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (preferred-maintenance-window :target-type
                                      string50 :member-name
                                      "preferredMaintenanceWindow")
                                     (pending-maintenance :target-type
                                      pending-maintenance :member-name
                                      "pendingMaintenance")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId")
                                     (network-type :target-type network-type
                                      :member-name "networkType"))
                                    (:shape-name "GetEnvironmentResponse"))

(smithy/sdk/shapes:define-output get-signed-bluinsights-url-response
                                 common-lisp:nil
                                 ((signed-bi-url :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "signedBiUrl"))
                                 (:shape-name
                                  "GetSignedBluinsightsUrlResponse"))

(smithy/sdk/shapes:define-structure high-availability-config common-lisp:nil
                                    ((desired-capacity :target-type
                                      capacity-value :required common-lisp:t
                                      :member-name "desiredCapacity"))
                                    (:shape-name "HighAvailabilityConfig"))

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list identifier-list :member identifier)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type integer
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-union job-identifier common-lisp:nil
                                ((file-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "fileName")
                                 (script-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "scriptName"))
                                (:shape-name "JobIdentifier"))

(smithy/sdk/shapes:define-structure job-step common-lisp:nil
                                    ((step-number :target-type integer
                                      :member-name "stepNumber")
                                     (step-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepName")
                                     (proc-step-number :target-type integer
                                      :member-name "procStepNumber")
                                     (proc-step-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "procStepName")
                                     (step-cond-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepCondCode")
                                     (step-restartable :target-type boolean
                                      :member-name "stepRestartable")
                                     (step-checkpoint :target-type integer
                                      :member-name "stepCheckpoint")
                                     (step-checkpoint-status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepCheckpointStatus")
                                     (step-checkpoint-time :target-type
                                      timestamp :member-name
                                      "stepCheckpointTime"))
                                    (:shape-name "JobStep"))

(smithy/sdk/shapes:define-structure job-step-restart-marker common-lisp:nil
                                    ((from-step :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "fromStep")
                                     (from-proc-step :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "fromProcStep")
                                     (to-step :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "toStep")
                                     (to-proc-step :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "toProcStep")
                                     (step-checkpoint :target-type integer
                                      :member-name "stepCheckpoint")
                                     (skip :target-type boolean :member-name
                                      "skip"))
                                    (:shape-name "JobStepRestartMarker"))

(smithy/sdk/shapes:define-type kmskey-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-application-versions-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "ListApplicationVersionsRequest"))

(smithy/sdk/shapes:define-output list-application-versions-response
                                 common-lisp:nil
                                 ((application-versions :target-type
                                   application-version-summary-list :required
                                   common-lisp:t :member-name
                                   "applicationVersions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListApplicationVersionsResponse"))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (names :target-type entity-name-list
                                  :member-name "names" :http-query "names")
                                 (environment-id :target-type identifier
                                  :member-name "environmentId" :http-query
                                  "environmentId"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((applications :target-type
                                   application-summary-list :required
                                   common-lisp:t :member-name "applications")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-batch-job-definitions-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "prefix" :http-query "prefix"))
                                (:shape-name "ListBatchJobDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-batch-job-definitions-response
                                 common-lisp:nil
                                 ((batch-job-definitions :target-type
                                   batch-job-definitions :required
                                   common-lisp:t :member-name
                                   "batchJobDefinitions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListBatchJobDefinitionsResponse"))

(smithy/sdk/shapes:define-structure list-batch-job-executions-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (execution-ids :target-type
                                      identifier-list :member-name
                                      "executionIds" :http-query
                                      "executionIds")
                                     (job-name :target-type string100
                                      :member-name "jobName" :http-query
                                      "jobName")
                                     (status :target-type
                                      batch-job-execution-status :member-name
                                      "status" :http-query "status")
                                     (started-after :target-type timestamp
                                      :member-name "startedAfter" :http-query
                                      "startedAfter")
                                     (started-before :target-type timestamp
                                      :member-name "startedBefore" :http-query
                                      "startedBefore"))
                                    (:shape-name
                                     "ListBatchJobExecutionsRequest"))

(smithy/sdk/shapes:define-structure list-batch-job-executions-response
                                    common-lisp:nil
                                    ((batch-job-executions :target-type
                                      batch-job-execution-summary-list
                                      :required common-lisp:t :member-name
                                      "batchJobExecutions")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListBatchJobExecutionsResponse"))

(smithy/sdk/shapes:define-input list-batch-job-restart-points-request
                                common-lisp:nil
                                ((application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (execution-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "executionId" :http-label common-lisp:t)
                                 (auth-secrets-manager-arn :target-type
                                  auth-secrets-manager-arn :member-name
                                  "authSecretsManagerArn" :http-query
                                  "authSecretsManagerArn"))
                                (:shape-name
                                 "ListBatchJobRestartPointsRequest"))

(smithy/sdk/shapes:define-output list-batch-job-restart-points-response
                                 common-lisp:nil
                                 ((batch-job-steps :target-type
                                   batch-job-step-list :member-name
                                   "batchJobSteps"))
                                 (:shape-name
                                  "ListBatchJobRestartPointsResponse"))

(smithy/sdk/shapes:define-input list-data-set-export-history-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "ListDataSetExportHistoryRequest"))

(smithy/sdk/shapes:define-output list-data-set-export-history-response
                                 common-lisp:nil
                                 ((data-set-export-tasks :target-type
                                   data-set-export-task-list :required
                                   common-lisp:t :member-name
                                   "dataSetExportTasks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataSetExportHistoryResponse"))

(smithy/sdk/shapes:define-input list-data-set-import-history-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "ListDataSetImportHistoryRequest"))

(smithy/sdk/shapes:define-output list-data-set-import-history-response
                                 common-lisp:nil
                                 ((data-set-import-tasks :target-type
                                   data-set-import-task-list :required
                                   common-lisp:t :member-name
                                   "dataSetImportTasks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataSetImportHistoryResponse"))

(smithy/sdk/shapes:define-input list-data-sets-request common-lisp:nil
                                ((application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (prefix :target-type string200 :member-name
                                  "prefix" :http-query "prefix")
                                 (name-filter :target-type string200
                                  :member-name "nameFilter" :http-query
                                  "nameFilter"))
                                (:shape-name "ListDataSetsRequest"))

(smithy/sdk/shapes:define-output list-data-sets-response common-lisp:nil
                                 ((data-sets :target-type
                                   data-sets-summary-list :required
                                   common-lisp:t :member-name "dataSets")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSetsResponse"))

(smithy/sdk/shapes:define-input list-deployments-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (application-id :target-type identifier
                                  :required common-lisp:t :member-name
                                  "applicationId" :http-label common-lisp:t))
                                (:shape-name "ListDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-deployments-response common-lisp:nil
                                 ((deployments :target-type deployment-list
                                   :required common-lisp:t :member-name
                                   "deployments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentsResponse"))

(smithy/sdk/shapes:define-structure list-engine-versions-request
                                    common-lisp:nil
                                    ((engine-type :target-type engine-type
                                      :member-name "engineType" :http-query
                                      "engineType")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListEngineVersionsRequest"))

(smithy/sdk/shapes:define-structure list-engine-versions-response
                                    common-lisp:nil
                                    ((engine-versions :target-type
                                      engine-versions-summary-list :required
                                      common-lisp:t :member-name
                                      "engineVersions")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListEngineVersionsResponse"))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (names :target-type entity-name-list
                                  :member-name "names" :http-query "names")
                                 (engine-type :target-type engine-type
                                  :member-name "engineType" :http-query
                                  "engineType"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-environments-response common-lisp:nil
                                 ((environments :target-type
                                   environment-summary-list :required
                                   common-lisp:t :member-name "environments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnvironmentsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-group-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-group-summaries :member log-group-summary)

(smithy/sdk/shapes:define-structure log-group-summary common-lisp:nil
                                    ((log-type :target-type string20 :required
                                      common-lisp:t :member-name "logType")
                                     (log-group-name :target-type
                                      log-group-identifier :required
                                      common-lisp:t :member-name
                                      "logGroupName"))
                                    (:shape-name "LogGroupSummary"))

(smithy/sdk/shapes:define-structure maintenance-schedule common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime"))
                                    (:shape-name "MaintenanceSchedule"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type network-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-maintenance common-lisp:nil
                                    ((schedule :target-type
                                      maintenance-schedule :member-name
                                      "schedule")
                                     (engine-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "engineVersion"))
                                    (:shape-name "PendingMaintenance"))

(smithy/sdk/shapes:define-structure po-attributes common-lisp:nil
                                    ((format :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "format")
                                     (encoding :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "encoding")
                                     (member-file-extensions :target-type
                                      string20list :required common-lisp:t
                                      :member-name "memberFileExtensions"))
                                    (:shape-name "PoAttributes"))

(smithy/sdk/shapes:define-structure po-detail-attributes common-lisp:nil
                                    ((format :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "format")
                                     (encoding :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "encoding"))
                                    (:shape-name "PoDetailAttributes"))

(smithy/sdk/shapes:define-list port-list :member integer)

(smithy/sdk/shapes:define-structure primary-key common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (offset :target-type integer :required
                                      common-lisp:t :member-name "offset")
                                     (length :target-type integer :required
                                      common-lisp:t :member-name "length"))
                                    (:shape-name "PrimaryKey"))

(smithy/sdk/shapes:define-structure ps-attributes common-lisp:nil
                                    ((format :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "format")
                                     (encoding :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "encoding"))
                                    (:shape-name "PsAttributes"))

(smithy/sdk/shapes:define-structure ps-detail-attributes common-lisp:nil
                                    ((format :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "format")
                                     (encoding :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "encoding"))
                                    (:shape-name "PsDetailAttributes"))

(smithy/sdk/shapes:define-structure record-length common-lisp:nil
                                    ((min :target-type integer :required
                                      common-lisp:t :member-name "min")
                                     (max :target-type integer :required
                                      common-lisp:t :member-name "max"))
                                    (:shape-name "RecordLength"))

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

(smithy/sdk/shapes:define-structure restart-batch-job-identifier
                                    common-lisp:nil
                                    ((execution-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "executionId")
                                     (job-step-restart-marker :target-type
                                      job-step-restart-marker :required
                                      common-lisp:t :member-name
                                      "jobStepRestartMarker"))
                                    (:shape-name "RestartBatchJobIdentifier"))

(smithy/sdk/shapes:define-structure s3batch-job-identifier common-lisp:nil
                                    ((bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "keyPrefix")
                                     (identifier :target-type job-identifier
                                      :required common-lisp:t :member-name
                                      "identifier"))
                                    (:shape-name "S3BatchJobIdentifier"))

(smithy/sdk/shapes:define-structure script-batch-job-definition common-lisp:nil
                                    ((script-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "scriptName"))
                                    (:shape-name "ScriptBatchJobDefinition"))

(smithy/sdk/shapes:define-structure script-batch-job-identifier common-lisp:nil
                                    ((script-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "scriptName"))
                                    (:shape-name "ScriptBatchJobIdentifier"))

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

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure start-application-request common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId"))
                                    (:shape-name "StartApplicationRequest"))

(smithy/sdk/shapes:define-structure start-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StartApplicationResponse"))

(smithy/sdk/shapes:define-structure start-batch-job-request common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (batch-job-identifier :target-type
                                      batch-job-identifier :required
                                      common-lisp:t :member-name
                                      "batchJobIdentifier")
                                     (job-params :target-type
                                      batch-job-parameters-map :member-name
                                      "jobParams")
                                     (auth-secrets-manager-arn :target-type
                                      auth-secrets-manager-arn :member-name
                                      "authSecretsManagerArn"))
                                    (:shape-name "StartBatchJobRequest"))

(smithy/sdk/shapes:define-structure start-batch-job-response common-lisp:nil
                                    ((execution-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "executionId"))
                                    (:shape-name "StartBatchJobResponse"))

(smithy/sdk/shapes:define-structure stop-application-request common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (force-stop :target-type boolean
                                      :member-name "forceStop"))
                                    (:shape-name "StopApplicationRequest"))

(smithy/sdk/shapes:define-structure stop-application-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopApplicationResponse"))

(smithy/sdk/shapes:define-union storage-configuration common-lisp:nil
                                ((efs :target-type efs-storage-configuration
                                  :member-name "efs")
                                 (fsx :target-type fsx-storage-configuration
                                  :member-name "fsx"))
                                (:shape-name "StorageConfiguration"))

(smithy/sdk/shapes:define-list storage-configuration-list :member
                               storage-configuration)

(smithy/sdk/shapes:define-type string100 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string20 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string200 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string2000 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string20list :member string20)

(smithy/sdk/shapes:define-type string50 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string50list :member string50)

(smithy/sdk/shapes:define-type string-free65000 smithy/sdk/smithy-types:string)

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
                                 (retry-after-seconds :target-type integer
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

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

(smithy/sdk/shapes:define-structure update-application-request common-lisp:nil
                                    ((application-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "applicationId")
                                     (description :target-type
                                      entity-description :member-name
                                      "description")
                                     (current-application-version :target-type
                                      version :required common-lisp:t
                                      :member-name "currentApplicationVersion")
                                     (definition :target-type definition
                                      :member-name "definition"))
                                    (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-structure update-application-response common-lisp:nil
                                    ((application-version :target-type version
                                      :required common-lisp:t :member-name
                                      "applicationVersion"))
                                    (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-structure update-environment-request common-lisp:nil
                                    ((environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId")
                                     (desired-capacity :target-type
                                      capacity-value :member-name
                                      "desiredCapacity")
                                     (instance-type :target-type string20
                                      :member-name "instanceType")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "engineVersion")
                                     (preferred-maintenance-window :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "preferredMaintenanceWindow")
                                     (apply-during-maintenance-window
                                      :target-type boolean :member-name
                                      "applyDuringMaintenanceWindow")
                                     (force-update :target-type boolean
                                      :member-name "forceUpdate"))
                                    (:shape-name "UpdateEnvironmentRequest"))

(smithy/sdk/shapes:define-structure update-environment-response common-lisp:nil
                                    ((environment-id :target-type identifier
                                      :required common-lisp:t :member-name
                                      "environmentId"))
                                    (:shape-name "UpdateEnvironmentResponse"))

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

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure vsam-attributes common-lisp:nil
                                    ((format :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "format")
                                     (encoding :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "encoding")
                                     (compressed :target-type boolean
                                      :member-name "compressed")
                                     (primary-key :target-type primary-key
                                      :member-name "primaryKey")
                                     (alternate-keys :target-type
                                      alternate-key-list :member-name
                                      "alternateKeys"))
                                    (:shape-name "VsamAttributes"))

(smithy/sdk/shapes:define-structure vsam-detail-attributes common-lisp:nil
                                    ((encoding :target-type string20
                                      :member-name "encoding")
                                     (record-format :target-type string20
                                      :member-name "recordFormat")
                                     (compressed :target-type boolean
                                      :member-name "compressed")
                                     (cache-at-startup :target-type boolean
                                      :member-name "cacheAtStartup")
                                     (primary-key :target-type primary-key
                                      :member-name "primaryKey")
                                     (alternate-keys :target-type
                                      alternate-key-list :member-name
                                      "alternateKeys"))
                                    (:shape-name "VsamDetailAttributes"))

(smithy/sdk/operation:define-operation cancel-batch-job-execution :shape-name
                                       "CancelBatchJobExecution" :input
                                       cancel-batch-job-execution-request
                                       :output
                                       cancel-batch-job-execution-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/batch-job-executions/{executionId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/applications"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-set-export-task :shape-name
                                       "CreateDataSetExportTask" :input
                                       create-data-set-export-task-request
                                       :output
                                       create-data-set-export-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/dataset-export-task"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-set-import-task :shape-name
                                       "CreateDataSetImportTask" :input
                                       create-data-set-import-task-request
                                       :output
                                       create-data-set-import-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/dataset-import-task"
                                       :code 200)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       create-deployment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-request :output
                                       create-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/environments"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-application-from-environment
                                       :shape-name
                                       "DeleteApplicationFromEnvironment"
                                       :input
                                       delete-application-from-environment-request
                                       :output
                                       delete-application-from-environment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{applicationId}/environment/{environmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       delete-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{environmentId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-application-version :shape-name
                                       "GetApplicationVersion" :input
                                       get-application-version-request :output
                                       get-application-version-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/versions/{applicationVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-batch-job-execution :shape-name
                                       "GetBatchJobExecution" :input
                                       get-batch-job-execution-request :output
                                       get-batch-job-execution-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/batch-job-executions/{executionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-set-details :shape-name
                                       "GetDataSetDetails" :input
                                       get-data-set-details-request :output
                                       get-data-set-details-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        execution-timeout-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/datasets/{dataSetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-set-export-task :shape-name
                                       "GetDataSetExportTask" :input
                                       get-data-set-export-task-request :output
                                       get-data-set-export-task-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/dataset-export-tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-set-import-task :shape-name
                                       "GetDataSetImportTask" :input
                                       get-data-set-import-task-request :output
                                       get-data-set-import-task-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/dataset-import-tasks/{taskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-request :output
                                       get-deployment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/deployments/{deploymentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-request :output
                                       get-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{environmentId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-signed-bluinsights-url :shape-name
                                       "GetSignedBluinsightsUrl" :input
                                       common-lisp:null :output
                                       get-signed-bluinsights-url-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri "/signed-bi-url"
                                       :code 200)

(smithy/sdk/operation:define-operation list-application-versions :shape-name
                                       "ListApplicationVersions" :input
                                       list-application-versions-request
                                       :output
                                       list-application-versions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation list-batch-job-definitions :shape-name
                                       "ListBatchJobDefinitions" :input
                                       list-batch-job-definitions-request
                                       :output
                                       list-batch-job-definitions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/batch-job-definitions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-batch-job-executions :shape-name
                                       "ListBatchJobExecutions" :input
                                       list-batch-job-executions-request
                                       :output
                                       list-batch-job-executions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/batch-job-executions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-batch-job-restart-points
                                       :shape-name "ListBatchJobRestartPoints"
                                       :input
                                       list-batch-job-restart-points-request
                                       :output
                                       list-batch-job-restart-points-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/batch-job-executions/{executionId}/steps"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-set-export-history :shape-name
                                       "ListDataSetExportHistory" :input
                                       list-data-set-export-history-request
                                       :output
                                       list-data-set-export-history-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/dataset-export-tasks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-set-import-history :shape-name
                                       "ListDataSetImportHistory" :input
                                       list-data-set-import-history-request
                                       :output
                                       list-data-set-import-history-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/dataset-import-tasks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-sets :shape-name
                                       "ListDataSets" :input
                                       list-data-sets-request :output
                                       list-data-sets-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        execution-timeout-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/datasets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-request :output
                                       list-deployments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{applicationId}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-engine-versions :shape-name
                                       "ListEngineVersions" :input
                                       list-engine-versions-request :output
                                       list-engine-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/engine-versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       list-environments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/environments" :code
                                       200)

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

(smithy/sdk/operation:define-operation start-application :shape-name
                                       "StartApplication" :input
                                       start-application-request :output
                                       start-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-batch-job :shape-name
                                       "StartBatchJob" :input
                                       start-batch-job-request :output
                                       start-batch-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/batch-job"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-application :shape-name
                                       "StopApplication" :input
                                       stop-application-request :output
                                       stop-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/applications/{applicationId}/stop"
                                       :code 200)

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

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/applications/{applicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-request :output
                                       update-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/environments/{environmentId}" :code
                                       200)
