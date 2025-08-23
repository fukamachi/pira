(uiop/package:define-package #:pira/migrationhubstrategy (:use)
                             (:export
                              #:awsmigration-hub-strategy-recommendation
                              #:analysis-status-union #:analysis-type
                              #:analyzable-server-summary
                              #:analyzable-server-summary-list
                              #:analyzer-name-union #:antipattern-report-result
                              #:antipattern-report-result-list
                              #:antipattern-report-status
                              #:antipattern-severity-summary #:app-type
                              #:app-unit-error #:app-unit-error-category
                              #:application-component-criteria
                              #:application-component-detail
                              #:application-component-details
                              #:application-component-id
                              #:application-component-status-summary
                              #:application-component-strategies
                              #:application-component-strategy
                              #:application-component-summary
                              #:application-mode #:application-preferences
                              #:assessment-data-source-type #:assessment-status
                              #:assessment-status-message #:assessment-summary
                              #:assessment-target #:assessment-target-values
                              #:assessment-targets #:associated-application
                              #:associated-applications #:associated-server-ids
                              #:async-task-id #:auth-type
                              #:aws-managed-resources
                              #:aws-managed-target-destination
                              #:aws-managed-target-destinations
                              #:binary-analyzer-name #:boolean #:business-goals
                              #:business-goals-integer #:collector
                              #:collector-health #:collectors #:condition
                              #:configuration-summary #:data-collection-details
                              #:data-source-type #:database-config-detail
                              #:database-management-preference
                              #:database-migration-preference
                              #:database-preferences
                              #:get-application-component-details
                              #:get-application-component-details-request
                              #:get-application-component-details-response
                              #:get-application-component-strategies
                              #:get-application-component-strategies-request
                              #:get-application-component-strategies-response
                              #:get-assessment #:get-assessment-request
                              #:get-assessment-response #:get-import-file-task
                              #:get-import-file-task-request
                              #:get-import-file-task-response
                              #:get-latest-assessment-id
                              #:get-latest-assessment-id-request
                              #:get-latest-assessment-id-response
                              #:get-portfolio-preferences
                              #:get-portfolio-preferences-request
                              #:get-portfolio-preferences-response
                              #:get-portfolio-summary
                              #:get-portfolio-summary-request
                              #:get-portfolio-summary-response
                              #:get-recommendation-report-details
                              #:get-recommendation-report-details-request
                              #:get-recommendation-report-details-response
                              #:get-server-details #:get-server-details-request
                              #:get-server-details-response
                              #:get-server-strategies
                              #:get-server-strategies-request
                              #:get-server-strategies-response #:group
                              #:group-ids #:group-name #:heterogeneous
                              #:heterogeneous-target-database-engine
                              #:heterogeneous-target-database-engines
                              #:homogeneous
                              #:homogeneous-target-database-engine
                              #:homogeneous-target-database-engines #:ipaddress
                              #:ipaddress-based-remote-info
                              #:ipaddress-based-remote-info-list
                              #:import-file-task-information
                              #:import-file-task-status #:inclusion-status
                              #:integer #:interface-name
                              #:list-analyzable-servers
                              #:list-antipattern-severity-summary
                              #:list-application-component-status-summary
                              #:list-application-component-summary
                              #:list-application-components
                              #:list-application-components-request
                              #:list-application-components-response
                              #:list-collectors #:list-collectors-request
                              #:list-collectors-response
                              #:list-import-file-task
                              #:list-import-file-task-information
                              #:list-import-file-task-request
                              #:list-import-file-task-response
                              #:list-server-status-summary
                              #:list-server-summary #:list-servers
                              #:list-servers-request #:list-servers-response
                              #:list-strategy-summary #:location #:mac-address
                              #:management-preference #:max-result #:net-mask
                              #:network-info #:network-info-list #:next-token
                              #:no-database-migration-preference
                              #:no-management-preference
                              #:no-preference-target-destination
                              #:no-preference-target-destinations #:osinfo
                              #:ostype #:osversion #:output-format
                              #:pipeline-info #:pipeline-info-list
                              #:pipeline-type #:prioritize-business-goals
                              #:project-name #:put-portfolio-preferences
                              #:put-portfolio-preferences-request
                              #:put-portfolio-preferences-response
                              #:recommendation-report-details
                              #:recommendation-report-status
                              #:recommendation-report-status-message
                              #:recommendation-report-time-stamp
                              #:recommendation-set #:recommendation-task-id
                              #:remote-source-code-analysis-server-info
                              #:resource-id #:resource-name #:resource-sub-type
                              #:result #:result-list #:run-time-analyzer-name
                              #:run-time-assessment-status
                              #:runtime-analysis-status #:s3bucket #:s3key
                              #:s3keys #:s3object #:secrets-manager-key
                              #:self-manage-resources
                              #:self-manage-target-destination
                              #:self-manage-target-destinations
                              #:server-criteria #:server-detail
                              #:server-details #:server-error
                              #:server-error-category #:server-id
                              #:server-os-type #:server-status-summary
                              #:server-strategies #:server-strategy
                              #:server-summary #:severity #:sort-order
                              #:source-code #:source-code-analyzer-name
                              #:source-code-list #:source-code-repositories
                              #:source-code-repository #:source-version
                              #:src-code-or-db-analysis-status
                              #:start-assessment #:start-assessment-request
                              #:start-assessment-response
                              #:start-import-file-task
                              #:start-import-file-task-request
                              #:start-import-file-task-response
                              #:start-recommendation-report-generation
                              #:start-recommendation-report-generation-request
                              #:start-recommendation-report-generation-response
                              #:status-message #:stop-assessment
                              #:stop-assessment-request
                              #:stop-assessment-response #:strategy
                              #:strategy-option #:strategy-recommendation
                              #:strategy-summary #:string #:system-info
                              #:target-database-engine
                              #:target-database-engines #:target-destination
                              #:time-stamp #:tranformation-tool-description
                              #:tranformation-tool-installation-link
                              #:transformation-tool #:transformation-tool-name
                              #:update-application-component-config
                              #:update-application-component-config-request
                              #:update-application-component-config-response
                              #:update-server-config
                              #:update-server-config-request
                              #:update-server-config-response
                              #:vcenter-based-remote-info
                              #:vcenter-based-remote-info-list
                              #:version-control #:version-control-info
                              #:version-control-info-list
                              #:version-control-type #:error-message
                              #:import-s3bucket #:import-s3key))
(common-lisp:in-package #:pira/migrationhubstrategy)

(smithy/sdk/service:define-service awsmigration-hub-strategy-recommendation
                                   :shape-name
                                   "AWSMigrationHubStrategyRecommendation"
                                   :version "2020-02-19" :title
                                   "Migration Hub Strategy Recommendations"
                                   :operations
                                   '(get-application-component-details
                                     get-application-component-strategies
                                     get-assessment get-import-file-task
                                     get-latest-assessment-id
                                     get-portfolio-preferences
                                     get-portfolio-summary
                                     get-recommendation-report-details
                                     get-server-details get-server-strategies
                                     list-analyzable-servers
                                     list-application-components
                                     list-collectors list-import-file-task
                                     list-servers put-portfolio-preferences
                                     start-assessment start-import-file-task
                                     start-recommendation-report-generation
                                     stop-assessment
                                     update-application-component-config
                                     update-server-config)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MigrationHubStrategy")
                                      ("endpointPrefix"
                                       . "migrationhub-strategy")
                                      ("cloudTrailEventSource"
                                       . "migrationhub-strategy.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "migrationhub-strategy"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-union analysis-status-union common-lisp:nil
                                ((runtime-analysis-status :target-type
                                  runtime-analysis-status :member-name
                                  "runtimeAnalysisStatus")
                                 (src-code-or-db-analysis-status :target-type
                                  src-code-or-db-analysis-status :member-name
                                  "srcCodeOrDbAnalysisStatus"))
                                (:shape-name "AnalysisStatusUnion"))

(smithy/sdk/shapes:define-type analysis-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analyzable-server-summary common-lisp:nil
                                    ((hostname :target-type string :member-name
                                      "hostname")
                                     (ip-address :target-type string
                                      :member-name "ipAddress")
                                     (source :target-type string :member-name
                                      "source")
                                     (vm-id :target-type string :member-name
                                      "vmId"))
                                    (:shape-name "AnalyzableServerSummary"))

(smithy/sdk/shapes:define-list analyzable-server-summary-list :member
                               analyzable-server-summary)

(smithy/sdk/shapes:define-union analyzer-name-union common-lisp:nil
                                ((binary-analyzer-name :target-type
                                  binary-analyzer-name :member-name
                                  "binaryAnalyzerName")
                                 (run-time-analyzer-name :target-type
                                  run-time-analyzer-name :member-name
                                  "runTimeAnalyzerName")
                                 (source-code-analyzer-name :target-type
                                  source-code-analyzer-name :member-name
                                  "sourceCodeAnalyzerName"))
                                (:shape-name "AnalyzerNameUnion"))

(smithy/sdk/shapes:define-structure antipattern-report-result common-lisp:nil
                                    ((analyzer-name :target-type
                                      analyzer-name-union :member-name
                                      "analyzerName")
                                     (anti-pattern-report-s3object :target-type
                                      s3object :member-name
                                      "antiPatternReportS3Object")
                                     (antipattern-report-status :target-type
                                      antipattern-report-status :member-name
                                      "antipatternReportStatus")
                                     (antipattern-report-status-message
                                      :target-type status-message :member-name
                                      "antipatternReportStatusMessage"))
                                    (:shape-name "AntipatternReportResult"))

(smithy/sdk/shapes:define-list antipattern-report-result-list :member
                               antipattern-report-result)

(smithy/sdk/shapes:define-type antipattern-report-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure antipattern-severity-summary
                                    common-lisp:nil
                                    ((severity :target-type severity
                                      :member-name "severity")
                                     (count :target-type integer :member-name
                                      "count"))
                                    (:shape-name "AntipatternSeveritySummary"))

(smithy/sdk/shapes:define-type app-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure app-unit-error common-lisp:nil
                                    ((app-unit-error-category :target-type
                                      app-unit-error-category :member-name
                                      "appUnitErrorCategory"))
                                    (:shape-name "AppUnitError"))

(smithy/sdk/shapes:define-type app-unit-error-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-component-criteria
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-component-detail
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (recommendation-set :target-type
                                      recommendation-set :member-name
                                      "recommendationSet")
                                     (analysis-status :target-type
                                      src-code-or-db-analysis-status
                                      :member-name "analysisStatus")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (list-antipattern-severity-summary
                                      :target-type
                                      list-antipattern-severity-summary
                                      :member-name
                                      "listAntipatternSeveritySummary")
                                     (database-config-detail :target-type
                                      database-config-detail :member-name
                                      "databaseConfigDetail")
                                     (source-code-repositories :target-type
                                      source-code-repositories :member-name
                                      "sourceCodeRepositories")
                                     (app-type :target-type app-type
                                      :member-name "appType")
                                     (resource-sub-type :target-type
                                      resource-sub-type :member-name
                                      "resourceSubType")
                                     (inclusion-status :target-type
                                      inclusion-status :member-name
                                      "inclusionStatus")
                                     (antipattern-report-s3object :target-type
                                      s3object :member-name
                                      "antipatternReportS3Object")
                                     (antipattern-report-status :target-type
                                      antipattern-report-status :member-name
                                      "antipatternReportStatus")
                                     (antipattern-report-status-message
                                      :target-type status-message :member-name
                                      "antipatternReportStatusMessage")
                                     (os-version :target-type string
                                      :member-name "osVersion")
                                     (os-driver :target-type string
                                      :member-name "osDriver")
                                     (last-analyzed-timestamp :target-type
                                      time-stamp :member-name
                                      "lastAnalyzedTimestamp")
                                     (associated-server-id :target-type
                                      server-id :member-name
                                      "associatedServerId")
                                     (more-server-association-exists
                                      :target-type boolean :member-name
                                      "moreServerAssociationExists")
                                     (runtime-status :target-type
                                      runtime-analysis-status :member-name
                                      "runtimeStatus")
                                     (runtime-status-message :target-type
                                      status-message :member-name
                                      "runtimeStatusMessage")
                                     (app-unit-error :target-type
                                      app-unit-error :member-name
                                      "appUnitError")
                                     (result-list :target-type result-list
                                      :member-name "resultList"))
                                    (:shape-name "ApplicationComponentDetail"))

(smithy/sdk/shapes:define-list application-component-details :member
                               application-component-detail)

(smithy/sdk/shapes:define-type application-component-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-component-status-summary
                                    common-lisp:nil
                                    ((src-code-or-db-analysis-status
                                      :target-type
                                      src-code-or-db-analysis-status
                                      :member-name "srcCodeOrDbAnalysisStatus")
                                     (count :target-type integer :member-name
                                      "count"))
                                    (:shape-name
                                     "ApplicationComponentStatusSummary"))

(smithy/sdk/shapes:define-list application-component-strategies :member
                               application-component-strategy)

(smithy/sdk/shapes:define-structure application-component-strategy
                                    common-lisp:nil
                                    ((recommendation :target-type
                                      recommendation-set :member-name
                                      "recommendation")
                                     (status :target-type
                                      strategy-recommendation :member-name
                                      "status")
                                     (is-preferred :target-type boolean
                                      :member-name "isPreferred"))
                                    (:shape-name
                                     "ApplicationComponentStrategy"))

(smithy/sdk/shapes:define-structure application-component-summary
                                    common-lisp:nil
                                    ((app-type :target-type app-type
                                      :member-name "appType")
                                     (count :target-type integer :member-name
                                      "count"))
                                    (:shape-name "ApplicationComponentSummary"))

(smithy/sdk/shapes:define-type application-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-preferences common-lisp:nil
                                    ((management-preference :target-type
                                      management-preference :member-name
                                      "managementPreference"))
                                    (:shape-name "ApplicationPreferences"))

(smithy/sdk/shapes:define-type assessment-data-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-summary common-lisp:nil
                                    ((list-server-strategy-summary :target-type
                                      list-strategy-summary :member-name
                                      "listServerStrategySummary")
                                     (list-application-component-strategy-summary
                                      :target-type list-strategy-summary
                                      :member-name
                                      "listApplicationComponentStrategySummary")
                                     (list-antipattern-severity-summary
                                      :target-type
                                      list-antipattern-severity-summary
                                      :member-name
                                      "listAntipatternSeveritySummary")
                                     (list-application-component-summary
                                      :target-type
                                      list-application-component-summary
                                      :member-name
                                      "listApplicationComponentSummary")
                                     (list-server-summary :target-type
                                      list-server-summary :member-name
                                      "listServerSummary")
                                     (antipattern-report-s3object :target-type
                                      s3object :member-name
                                      "antipatternReportS3Object")
                                     (antipattern-report-status :target-type
                                      antipattern-report-status :member-name
                                      "antipatternReportStatus")
                                     (antipattern-report-status-message
                                      :target-type status-message :member-name
                                      "antipatternReportStatusMessage")
                                     (last-analyzed-timestamp :target-type
                                      time-stamp :member-name
                                      "lastAnalyzedTimestamp")
                                     (list-application-component-status-summary
                                      :target-type
                                      list-application-component-status-summary
                                      :member-name
                                      "listApplicationComponentStatusSummary")
                                     (list-server-status-summary :target-type
                                      list-server-status-summary :member-name
                                      "listServerStatusSummary"))
                                    (:shape-name "AssessmentSummary"))

(smithy/sdk/shapes:define-structure assessment-target common-lisp:nil
                                    ((condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "condition")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type
                                      assessment-target-values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "AssessmentTarget"))

(smithy/sdk/shapes:define-list assessment-target-values :member string)

(smithy/sdk/shapes:define-list assessment-targets :member assessment-target)

(smithy/sdk/shapes:define-structure associated-application common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (id :target-type string :member-name
                                      "id"))
                                    (:shape-name "AssociatedApplication"))

(smithy/sdk/shapes:define-list associated-applications :member
                               associated-application)

(smithy/sdk/shapes:define-list associated-server-ids :member string)

(smithy/sdk/shapes:define-type async-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-managed-resources common-lisp:nil
                                    ((target-destination :target-type
                                      aws-managed-target-destinations :required
                                      common-lisp:t :member-name
                                      "targetDestination"))
                                    (:shape-name "AwsManagedResources"))

(smithy/sdk/shapes:define-type aws-managed-target-destination
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-managed-target-destinations :member
                               aws-managed-target-destination)

(smithy/sdk/shapes:define-type binary-analyzer-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure business-goals common-lisp:nil
                                    ((speed-of-migration :target-type
                                      business-goals-integer :member-name
                                      "speedOfMigration")
                                     (reduce-operational-overhead-with-managed-services
                                      :target-type business-goals-integer
                                      :member-name
                                      "reduceOperationalOverheadWithManagedServices")
                                     (modernize-infrastructure-with-cloud-native-technologies
                                      :target-type business-goals-integer
                                      :member-name
                                      "modernizeInfrastructureWithCloudNativeTechnologies")
                                     (license-cost-reduction :target-type
                                      business-goals-integer :member-name
                                      "licenseCostReduction"))
                                    (:shape-name "BusinessGoals"))

(smithy/sdk/shapes:define-type business-goals-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure collector common-lisp:nil
                                    ((collector-id :target-type string
                                      :member-name "collectorId")
                                     (ip-address :target-type string
                                      :member-name "ipAddress")
                                     (host-name :target-type string
                                      :member-name "hostName")
                                     (collector-health :target-type
                                      collector-health :member-name
                                      "collectorHealth")
                                     (collector-version :target-type string
                                      :member-name "collectorVersion")
                                     (registered-time-stamp :target-type string
                                      :member-name "registeredTimeStamp")
                                     (last-activity-time-stamp :target-type
                                      string :member-name
                                      "lastActivityTimeStamp")
                                     (configuration-summary :target-type
                                      configuration-summary :member-name
                                      "configurationSummary"))
                                    (:shape-name "Collector"))

(smithy/sdk/shapes:define-type collector-health smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list collectors :member collector)

(smithy/sdk/shapes:define-type condition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-summary common-lisp:nil
                                    ((vcenter-based-remote-info-list
                                      :target-type
                                      vcenter-based-remote-info-list
                                      :member-name
                                      "vcenterBasedRemoteInfoList")
                                     (ip-address-based-remote-info-list
                                      :target-type
                                      ipaddress-based-remote-info-list
                                      :member-name
                                      "ipAddressBasedRemoteInfoList")
                                     (version-control-info-list :target-type
                                      version-control-info-list :member-name
                                      "versionControlInfoList")
                                     (pipeline-info-list :target-type
                                      pipeline-info-list :member-name
                                      "pipelineInfoList")
                                     (remote-source-code-analysis-server-info
                                      :target-type
                                      remote-source-code-analysis-server-info
                                      :member-name
                                      "remoteSourceCodeAnalysisServerInfo"))
                                    (:shape-name "ConfigurationSummary"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure data-collection-details common-lisp:nil
                                    ((status :target-type assessment-status
                                      :member-name "status")
                                     (servers :target-type integer :member-name
                                      "servers")
                                     (failed :target-type integer :member-name
                                      "failed")
                                     (success :target-type integer :member-name
                                      "success")
                                     (in-progress :target-type integer
                                      :member-name "inProgress")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (completion-time :target-type time-stamp
                                      :member-name "completionTime")
                                     (status-message :target-type
                                      assessment-status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "DataCollectionDetails"))

(smithy/sdk/shapes:define-type data-source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure database-config-detail common-lisp:nil
                                    ((secret-name :target-type string
                                      :member-name "secretName"))
                                    (:shape-name "DatabaseConfigDetail"))

(smithy/sdk/shapes:define-type database-management-preference
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union database-migration-preference common-lisp:nil
                                ((heterogeneous :target-type heterogeneous
                                  :member-name "heterogeneous")
                                 (homogeneous :target-type homogeneous
                                  :member-name "homogeneous")
                                 (no-preference :target-type
                                  no-database-migration-preference :member-name
                                  "noPreference"))
                                (:shape-name "DatabaseMigrationPreference"))

(smithy/sdk/shapes:define-structure database-preferences common-lisp:nil
                                    ((database-management-preference
                                      :target-type
                                      database-management-preference
                                      :member-name
                                      "databaseManagementPreference")
                                     (database-migration-preference
                                      :target-type
                                      database-migration-preference
                                      :member-name
                                      "databaseMigrationPreference"))
                                    (:shape-name "DatabasePreferences"))

(smithy/sdk/shapes:define-error dependency-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DependencyException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input get-application-component-details-request
                                common-lisp:nil
                                ((application-component-id :target-type
                                  application-component-id :required
                                  common-lisp:t :member-name
                                  "applicationComponentId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetApplicationComponentDetailsRequest"))

(smithy/sdk/shapes:define-structure get-application-component-details-response
                                    common-lisp:nil
                                    ((application-component-detail :target-type
                                      application-component-detail :member-name
                                      "applicationComponentDetail")
                                     (associated-applications :target-type
                                      associated-applications :member-name
                                      "associatedApplications")
                                     (more-application-resource :target-type
                                      boolean :member-name
                                      "moreApplicationResource")
                                     (associated-server-ids :target-type
                                      associated-server-ids :member-name
                                      "associatedServerIds"))
                                    (:shape-name
                                     "GetApplicationComponentDetailsResponse"))

(smithy/sdk/shapes:define-input get-application-component-strategies-request
                                common-lisp:nil
                                ((application-component-id :target-type
                                  application-component-id :required
                                  common-lisp:t :member-name
                                  "applicationComponentId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetApplicationComponentStrategiesRequest"))

(smithy/sdk/shapes:define-structure
 get-application-component-strategies-response common-lisp:nil
 ((application-component-strategies :target-type
   application-component-strategies :member-name
   "applicationComponentStrategies"))
 (:shape-name "GetApplicationComponentStrategiesResponse"))

(smithy/sdk/shapes:define-input get-assessment-request common-lisp:nil
                                ((id :target-type async-task-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAssessmentRequest"))

(smithy/sdk/shapes:define-structure get-assessment-response common-lisp:nil
                                    ((id :target-type async-task-id
                                      :member-name "id")
                                     (data-collection-details :target-type
                                      data-collection-details :member-name
                                      "dataCollectionDetails")
                                     (assessment-targets :target-type
                                      assessment-targets :member-name
                                      "assessmentTargets"))
                                    (:shape-name "GetAssessmentResponse"))

(smithy/sdk/shapes:define-input get-import-file-task-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetImportFileTaskRequest"))

(smithy/sdk/shapes:define-structure get-import-file-task-response
                                    common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (status :target-type
                                      import-file-task-status :member-name
                                      "status")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (input-s3bucket :target-type
                                      import-s3bucket :member-name
                                      "inputS3Bucket")
                                     (input-s3key :target-type import-s3key
                                      :member-name "inputS3Key")
                                     (status-report-s3bucket :target-type
                                      import-s3bucket :member-name
                                      "statusReportS3Bucket")
                                     (status-report-s3key :target-type
                                      import-s3key :member-name
                                      "statusReportS3Key")
                                     (completion-time :target-type time-stamp
                                      :member-name "completionTime")
                                     (number-of-records-success :target-type
                                      integer :member-name
                                      "numberOfRecordsSuccess")
                                     (number-of-records-failed :target-type
                                      integer :member-name
                                      "numberOfRecordsFailed")
                                     (import-name :target-type string
                                      :member-name "importName"))
                                    (:shape-name "GetImportFileTaskResponse"))

(smithy/sdk/shapes:define-structure get-latest-assessment-id-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "GetLatestAssessmentIdRequest"))

(smithy/sdk/shapes:define-structure get-latest-assessment-id-response
                                    common-lisp:nil
                                    ((id :target-type async-task-id
                                      :member-name "id"))
                                    (:shape-name
                                     "GetLatestAssessmentIdResponse"))

(smithy/sdk/shapes:define-structure get-portfolio-preferences-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "GetPortfolioPreferencesRequest"))

(smithy/sdk/shapes:define-structure get-portfolio-preferences-response
                                    common-lisp:nil
                                    ((prioritize-business-goals :target-type
                                      prioritize-business-goals :member-name
                                      "prioritizeBusinessGoals")
                                     (application-preferences :target-type
                                      application-preferences :member-name
                                      "applicationPreferences")
                                     (database-preferences :target-type
                                      database-preferences :member-name
                                      "databasePreferences")
                                     (application-mode :target-type
                                      application-mode :member-name
                                      "applicationMode"))
                                    (:shape-name
                                     "GetPortfolioPreferencesResponse"))

(smithy/sdk/shapes:define-structure get-portfolio-summary-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "GetPortfolioSummaryRequest"))

(smithy/sdk/shapes:define-structure get-portfolio-summary-response
                                    common-lisp:nil
                                    ((assessment-summary :target-type
                                      assessment-summary :member-name
                                      "assessmentSummary"))
                                    (:shape-name "GetPortfolioSummaryResponse"))

(smithy/sdk/shapes:define-input get-recommendation-report-details-request
                                common-lisp:nil
                                ((id :target-type recommendation-task-id
                                  :required common-lisp:t :member-name "id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetRecommendationReportDetailsRequest"))

(smithy/sdk/shapes:define-structure get-recommendation-report-details-response
                                    common-lisp:nil
                                    ((id :target-type recommendation-task-id
                                      :member-name "id")
                                     (recommendation-report-details
                                      :target-type
                                      recommendation-report-details
                                      :member-name
                                      "recommendationReportDetails"))
                                    (:shape-name
                                     "GetRecommendationReportDetailsResponse"))

(smithy/sdk/shapes:define-input get-server-details-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "serverId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-result
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetServerDetailsRequest"))

(smithy/sdk/shapes:define-structure get-server-details-response common-lisp:nil
                                    ((next-token :target-type string
                                      :member-name "nextToken")
                                     (server-detail :target-type server-detail
                                      :member-name "serverDetail")
                                     (associated-applications :target-type
                                      associated-applications :member-name
                                      "associatedApplications"))
                                    (:shape-name "GetServerDetailsResponse"))

(smithy/sdk/shapes:define-input get-server-strategies-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "serverId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetServerStrategiesRequest"))

(smithy/sdk/shapes:define-structure get-server-strategies-response
                                    common-lisp:nil
                                    ((server-strategies :target-type
                                      server-strategies :member-name
                                      "serverStrategies"))
                                    (:shape-name "GetServerStrategiesResponse"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((name :target-type group-name :member-name
                                      "name")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-list group-ids :member group)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure heterogeneous common-lisp:nil
                                    ((target-database-engine :target-type
                                      heterogeneous-target-database-engines
                                      :required common-lisp:t :member-name
                                      "targetDatabaseEngine"))
                                    (:shape-name "Heterogeneous"))

(smithy/sdk/shapes:define-type heterogeneous-target-database-engine
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list heterogeneous-target-database-engines :member
                               heterogeneous-target-database-engine)

(smithy/sdk/shapes:define-structure homogeneous common-lisp:nil
                                    ((target-database-engine :target-type
                                      homogeneous-target-database-engines
                                      :member-name "targetDatabaseEngine"))
                                    (:shape-name "Homogeneous"))

(smithy/sdk/shapes:define-type homogeneous-target-database-engine
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list homogeneous-target-database-engines :member
                               homogeneous-target-database-engine)

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ipaddress-based-remote-info common-lisp:nil
                                    ((ip-address-configuration-time-stamp
                                      :target-type string :member-name
                                      "ipAddressConfigurationTimeStamp")
                                     (auth-type :target-type auth-type
                                      :member-name "authType")
                                     (os-type :target-type ostype :member-name
                                      "osType"))
                                    (:shape-name "IPAddressBasedRemoteInfo"))

(smithy/sdk/shapes:define-list ipaddress-based-remote-info-list :member
                               ipaddress-based-remote-info)

(smithy/sdk/shapes:define-structure import-file-task-information
                                    common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (status :target-type
                                      import-file-task-status :member-name
                                      "status")
                                     (start-time :target-type time-stamp
                                      :member-name "startTime")
                                     (input-s3bucket :target-type
                                      import-s3bucket :member-name
                                      "inputS3Bucket")
                                     (input-s3key :target-type import-s3key
                                      :member-name "inputS3Key")
                                     (status-report-s3bucket :target-type
                                      import-s3bucket :member-name
                                      "statusReportS3Bucket")
                                     (status-report-s3key :target-type
                                      import-s3key :member-name
                                      "statusReportS3Key")
                                     (completion-time :target-type time-stamp
                                      :member-name "completionTime")
                                     (number-of-records-success :target-type
                                      integer :member-name
                                      "numberOfRecordsSuccess")
                                     (number-of-records-failed :target-type
                                      integer :member-name
                                      "numberOfRecordsFailed")
                                     (import-name :target-type string
                                      :member-name "importName"))
                                    (:shape-name "ImportFileTaskInformation"))

(smithy/sdk/shapes:define-type import-file-task-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inclusion-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type interface-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-analyzable-servers-request common-lisp:nil
                                ((sort :target-type sort-order :member-name
                                  "sort")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-result
                                  :member-name "maxResults"))
                                (:shape-name "ListAnalyzableServersRequest"))

(smithy/sdk/shapes:define-output list-analyzable-servers-response
                                 common-lisp:nil
                                 ((analyzable-servers :target-type
                                   analyzable-server-summary-list :member-name
                                   "analyzableServers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAnalyzableServersResponse"))

(smithy/sdk/shapes:define-list list-antipattern-severity-summary :member
                               antipattern-severity-summary)

(smithy/sdk/shapes:define-list list-application-component-status-summary
                               :member application-component-status-summary)

(smithy/sdk/shapes:define-list list-application-component-summary :member
                               application-component-summary)

(smithy/sdk/shapes:define-structure list-application-components-request
                                    common-lisp:nil
                                    ((application-component-criteria
                                      :target-type
                                      application-component-criteria
                                      :member-name
                                      "applicationComponentCriteria")
                                     (filter-value :target-type string
                                      :member-name "filterValue")
                                     (sort :target-type sort-order :member-name
                                      "sort")
                                     (group-id-filter :target-type group-ids
                                      :member-name "groupIdFilter")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-result
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListApplicationComponentsRequest"))

(smithy/sdk/shapes:define-structure list-application-components-response
                                    common-lisp:nil
                                    ((application-component-infos :target-type
                                      application-component-details
                                      :member-name "applicationComponentInfos")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListApplicationComponentsResponse"))

(smithy/sdk/shapes:define-input list-collectors-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-result
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListCollectorsRequest"))

(smithy/sdk/shapes:define-structure list-collectors-response common-lisp:nil
                                    ((collectors :target-type collectors
                                      :member-name "Collectors")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListCollectorsResponse"))

(smithy/sdk/shapes:define-list list-import-file-task-information :member
                               import-file-task-information)

(smithy/sdk/shapes:define-input list-import-file-task-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListImportFileTaskRequest"))

(smithy/sdk/shapes:define-structure list-import-file-task-response
                                    common-lisp:nil
                                    ((task-infos :target-type
                                      list-import-file-task-information
                                      :member-name "taskInfos")
                                     (next-token :target-type string
                                      :member-name "nextToken"))
                                    (:shape-name "ListImportFileTaskResponse"))

(smithy/sdk/shapes:define-list list-server-status-summary :member
                               server-status-summary)

(smithy/sdk/shapes:define-list list-server-summary :member server-summary)

(smithy/sdk/shapes:define-structure list-servers-request common-lisp:nil
                                    ((server-criteria :target-type
                                      server-criteria :member-name
                                      "serverCriteria")
                                     (filter-value :target-type string
                                      :member-name "filterValue")
                                     (sort :target-type sort-order :member-name
                                      "sort")
                                     (group-id-filter :target-type group-ids
                                      :member-name "groupIdFilter")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-result
                                      :member-name "maxResults"))
                                    (:shape-name "ListServersRequest"))

(smithy/sdk/shapes:define-structure list-servers-response common-lisp:nil
                                    ((server-infos :target-type server-details
                                      :member-name "serverInfos")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListServersResponse"))

(smithy/sdk/shapes:define-list list-strategy-summary :member strategy-summary)

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mac-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union management-preference common-lisp:nil
                                ((aws-managed-resources :target-type
                                  aws-managed-resources :member-name
                                  "awsManagedResources")
                                 (self-manage-resources :target-type
                                  self-manage-resources :member-name
                                  "selfManageResources")
                                 (no-preference :target-type
                                  no-management-preference :member-name
                                  "noPreference"))
                                (:shape-name "ManagementPreference"))

(smithy/sdk/shapes:define-type max-result smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type net-mask smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-info common-lisp:nil
                                    ((interface-name :target-type
                                      interface-name :required common-lisp:t
                                      :member-name "interfaceName")
                                     (ip-address :target-type ipaddress
                                      :required common-lisp:t :member-name
                                      "ipAddress")
                                     (mac-address :target-type mac-address
                                      :required common-lisp:t :member-name
                                      "macAddress")
                                     (net-mask :target-type net-mask :required
                                      common-lisp:t :member-name "netMask"))
                                    (:shape-name "NetworkInfo"))

(smithy/sdk/shapes:define-list network-info-list :member network-info)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure no-database-migration-preference
                                    common-lisp:nil
                                    ((target-database-engine :target-type
                                      target-database-engines :required
                                      common-lisp:t :member-name
                                      "targetDatabaseEngine"))
                                    (:shape-name
                                     "NoDatabaseMigrationPreference"))

(smithy/sdk/shapes:define-structure no-management-preference common-lisp:nil
                                    ((target-destination :target-type
                                      no-preference-target-destinations
                                      :required common-lisp:t :member-name
                                      "targetDestination"))
                                    (:shape-name "NoManagementPreference"))

(smithy/sdk/shapes:define-type no-preference-target-destination
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list no-preference-target-destinations :member
                               no-preference-target-destination)

(smithy/sdk/shapes:define-structure osinfo common-lisp:nil
                                    ((type :target-type ostype :member-name
                                      "type")
                                     (version :target-type osversion
                                      :member-name "version"))
                                    (:shape-name "OSInfo"))

(smithy/sdk/shapes:define-type ostype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type osversion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline-info common-lisp:nil
                                    ((pipeline-type :target-type pipeline-type
                                      :member-name "pipelineType")
                                     (pipeline-configuration-time-stamp
                                      :target-type string :member-name
                                      "pipelineConfigurationTimeStamp"))
                                    (:shape-name "PipelineInfo"))

(smithy/sdk/shapes:define-list pipeline-info-list :member pipeline-info)

(smithy/sdk/shapes:define-type pipeline-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prioritize-business-goals common-lisp:nil
                                    ((business-goals :target-type
                                      business-goals :member-name
                                      "businessGoals"))
                                    (:shape-name "PrioritizeBusinessGoals"))

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-portfolio-preferences-request
                                    common-lisp:nil
                                    ((prioritize-business-goals :target-type
                                      prioritize-business-goals :member-name
                                      "prioritizeBusinessGoals")
                                     (application-preferences :target-type
                                      application-preferences :member-name
                                      "applicationPreferences")
                                     (database-preferences :target-type
                                      database-preferences :member-name
                                      "databasePreferences")
                                     (application-mode :target-type
                                      application-mode :member-name
                                      "applicationMode"))
                                    (:shape-name
                                     "PutPortfolioPreferencesRequest"))

(smithy/sdk/shapes:define-structure put-portfolio-preferences-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "PutPortfolioPreferencesResponse"))

(smithy/sdk/shapes:define-structure recommendation-report-details
                                    common-lisp:nil
                                    ((status :target-type
                                      recommendation-report-status :member-name
                                      "status")
                                     (status-message :target-type
                                      recommendation-report-status-message
                                      :member-name "statusMessage")
                                     (start-time :target-type
                                      recommendation-report-time-stamp
                                      :member-name "startTime")
                                     (completion-time :target-type
                                      recommendation-report-time-stamp
                                      :member-name "completionTime")
                                     (s3bucket :target-type string :member-name
                                      "s3Bucket")
                                     (s3keys :target-type s3keys :member-name
                                      "s3Keys"))
                                    (:shape-name "RecommendationReportDetails"))

(smithy/sdk/shapes:define-type recommendation-report-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-report-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recommendation-report-time-stamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure recommendation-set common-lisp:nil
                                    ((transformation-tool :target-type
                                      transformation-tool :member-name
                                      "transformationTool")
                                     (target-destination :target-type
                                      target-destination :member-name
                                      "targetDestination")
                                     (strategy :target-type strategy
                                      :member-name "strategy"))
                                    (:shape-name "RecommendationSet"))

(smithy/sdk/shapes:define-type recommendation-task-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure remote-source-code-analysis-server-info
                                    common-lisp:nil
                                    ((remote-source-code-analysis-server-configuration-timestamp
                                      :target-type string :member-name
                                      "remoteSourceCodeAnalysisServerConfigurationTimestamp"))
                                    (:shape-name
                                     "RemoteSourceCodeAnalysisServerInfo"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-sub-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure result common-lisp:nil
                                    ((analysis-type :target-type analysis-type
                                      :member-name "analysisType")
                                     (analysis-status :target-type
                                      analysis-status-union :member-name
                                      "analysisStatus")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (antipattern-report-result-list
                                      :target-type
                                      antipattern-report-result-list
                                      :member-name
                                      "antipatternReportResultList"))
                                    (:shape-name "Result"))

(smithy/sdk/shapes:define-list result-list :member result)

(smithy/sdk/shapes:define-type run-time-analyzer-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-time-assessment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type runtime-analysis-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3keys :member string)

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "s3key"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-type secrets-manager-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure self-manage-resources common-lisp:nil
                                    ((target-destination :target-type
                                      self-manage-target-destinations :required
                                      common-lisp:t :member-name
                                      "targetDestination"))
                                    (:shape-name "SelfManageResources"))

(smithy/sdk/shapes:define-type self-manage-target-destination
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list self-manage-target-destinations :member
                               self-manage-target-destination)

(smithy/sdk/shapes:define-type server-criteria smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-detail common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (recommendation-set :target-type
                                      recommendation-set :member-name
                                      "recommendationSet")
                                     (data-collection-status :target-type
                                      run-time-assessment-status :member-name
                                      "dataCollectionStatus")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (list-antipattern-severity-summary
                                      :target-type
                                      list-antipattern-severity-summary
                                      :member-name
                                      "listAntipatternSeveritySummary")
                                     (system-info :target-type system-info
                                      :member-name "systemInfo")
                                     (application-component-strategy-summary
                                      :target-type list-strategy-summary
                                      :member-name
                                      "applicationComponentStrategySummary")
                                     (antipattern-report-s3object :target-type
                                      s3object :member-name
                                      "antipatternReportS3Object")
                                     (antipattern-report-status :target-type
                                      antipattern-report-status :member-name
                                      "antipatternReportStatus")
                                     (antipattern-report-status-message
                                      :target-type status-message :member-name
                                      "antipatternReportStatusMessage")
                                     (server-type :target-type string
                                      :member-name "serverType")
                                     (last-analyzed-timestamp :target-type
                                      time-stamp :member-name
                                      "lastAnalyzedTimestamp")
                                     (server-error :target-type server-error
                                      :member-name "serverError"))
                                    (:shape-name "ServerDetail"))

(smithy/sdk/shapes:define-list server-details :member server-detail)

(smithy/sdk/shapes:define-structure server-error common-lisp:nil
                                    ((server-error-category :target-type
                                      server-error-category :member-name
                                      "serverErrorCategory"))
                                    (:shape-name "ServerError"))

(smithy/sdk/shapes:define-type server-error-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type server-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type server-os-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-status-summary common-lisp:nil
                                    ((run-time-assessment-status :target-type
                                      run-time-assessment-status :member-name
                                      "runTimeAssessmentStatus")
                                     (count :target-type integer :member-name
                                      "count"))
                                    (:shape-name "ServerStatusSummary"))

(smithy/sdk/shapes:define-list server-strategies :member server-strategy)

(smithy/sdk/shapes:define-structure server-strategy common-lisp:nil
                                    ((recommendation :target-type
                                      recommendation-set :member-name
                                      "recommendation")
                                     (status :target-type
                                      strategy-recommendation :member-name
                                      "status")
                                     (number-of-application-components
                                      :target-type integer :member-name
                                      "numberOfApplicationComponents")
                                     (is-preferred :target-type boolean
                                      :member-name "isPreferred"))
                                    (:shape-name "ServerStrategy"))

(smithy/sdk/shapes:define-structure server-summary common-lisp:nil
                                    ((server-os-type :target-type
                                      server-os-type :member-name
                                      "ServerOsType")
                                     (count :target-type integer :member-name
                                      "count"))
                                    (:shape-name "ServerSummary"))

(smithy/sdk/shapes:define-error service-linked-role-lock-client-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ServiceLinkedRoleLockClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-code common-lisp:nil
                                    ((version-control :target-type
                                      version-control :member-name
                                      "versionControl")
                                     (source-version :target-type
                                      source-version :member-name
                                      "sourceVersion")
                                     (location :target-type location
                                      :member-name "location")
                                     (project-name :target-type project-name
                                      :member-name "projectName"))
                                    (:shape-name "SourceCode"))

(smithy/sdk/shapes:define-type source-code-analyzer-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list source-code-list :member source-code)

(smithy/sdk/shapes:define-list source-code-repositories :member
                               source-code-repository)

(smithy/sdk/shapes:define-structure source-code-repository common-lisp:nil
                                    ((repository :target-type string
                                      :member-name "repository")
                                     (branch :target-type string :member-name
                                      "branch")
                                     (version-control-type :target-type string
                                      :member-name "versionControlType")
                                     (project-name :target-type string
                                      :member-name "projectName"))
                                    (:shape-name "SourceCodeRepository"))

(smithy/sdk/shapes:define-type source-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type src-code-or-db-analysis-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-assessment-request common-lisp:nil
                                    ((s3bucket-for-analysis-data :target-type
                                      string :member-name
                                      "s3bucketForAnalysisData")
                                     (s3bucket-for-report-data :target-type
                                      string :member-name
                                      "s3bucketForReportData")
                                     (assessment-targets :target-type
                                      assessment-targets :member-name
                                      "assessmentTargets")
                                     (assessment-data-source-type :target-type
                                      assessment-data-source-type :member-name
                                      "assessmentDataSourceType"))
                                    (:shape-name "StartAssessmentRequest"))

(smithy/sdk/shapes:define-structure start-assessment-response common-lisp:nil
                                    ((assessment-id :target-type async-task-id
                                      :member-name "assessmentId"))
                                    (:shape-name "StartAssessmentResponse"))

(smithy/sdk/shapes:define-structure start-import-file-task-request
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (s3bucket :target-type import-s3bucket
                                      :required common-lisp:t :member-name
                                      "S3Bucket")
                                     (s3key :target-type string :required
                                      common-lisp:t :member-name "s3key")
                                     (data-source-type :target-type
                                      data-source-type :member-name
                                      "dataSourceType")
                                     (group-id :target-type group-ids
                                      :member-name "groupId")
                                     (s3bucket-for-report-data :target-type
                                      string :member-name
                                      "s3bucketForReportData"))
                                    (:shape-name "StartImportFileTaskRequest"))

(smithy/sdk/shapes:define-structure start-import-file-task-response
                                    common-lisp:nil
                                    ((id :target-type string :member-name
                                      "id"))
                                    (:shape-name "StartImportFileTaskResponse"))

(smithy/sdk/shapes:define-structure
 start-recommendation-report-generation-request common-lisp:nil
 ((output-format :target-type output-format :member-name "outputFormat")
  (group-id-filter :target-type group-ids :member-name "groupIdFilter"))
 (:shape-name "StartRecommendationReportGenerationRequest"))

(smithy/sdk/shapes:define-structure
 start-recommendation-report-generation-response common-lisp:nil
 ((id :target-type recommendation-task-id :member-name "id"))
 (:shape-name "StartRecommendationReportGenerationResponse"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stop-assessment-request common-lisp:nil
                                    ((assessment-id :target-type async-task-id
                                      :required common-lisp:t :member-name
                                      "assessmentId"))
                                    (:shape-name "StopAssessmentRequest"))

(smithy/sdk/shapes:define-structure stop-assessment-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "StopAssessmentResponse"))

(smithy/sdk/shapes:define-type strategy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure strategy-option common-lisp:nil
                                    ((strategy :target-type strategy
                                      :member-name "strategy")
                                     (tool-name :target-type
                                      transformation-tool-name :member-name
                                      "toolName")
                                     (target-destination :target-type
                                      target-destination :member-name
                                      "targetDestination")
                                     (is-preferred :target-type boolean
                                      :member-name "isPreferred"))
                                    (:shape-name "StrategyOption"))

(smithy/sdk/shapes:define-type strategy-recommendation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure strategy-summary common-lisp:nil
                                    ((strategy :target-type strategy
                                      :member-name "strategy")
                                     (count :target-type integer :member-name
                                      "count"))
                                    (:shape-name "StrategySummary"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure system-info common-lisp:nil
                                    ((os-info :target-type osinfo :member-name
                                      "osInfo")
                                     (file-system-type :target-type string
                                      :member-name "fileSystemType")
                                     (network-info-list :target-type
                                      network-info-list :member-name
                                      "networkInfoList")
                                     (cpu-architecture :target-type string
                                      :member-name "cpuArchitecture"))
                                    (:shape-name "SystemInfo"))

(smithy/sdk/shapes:define-type target-database-engine
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-database-engines :member
                               target-database-engine)

(smithy/sdk/shapes:define-type target-destination
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type tranformation-tool-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tranformation-tool-installation-link
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transformation-tool common-lisp:nil
                                    ((name :target-type
                                      transformation-tool-name :member-name
                                      "name")
                                     (description :target-type
                                      tranformation-tool-description
                                      :member-name "description")
                                     (tranformation-tool-installation-link
                                      :target-type
                                      tranformation-tool-installation-link
                                      :member-name
                                      "tranformationToolInstallationLink"))
                                    (:shape-name "TransformationTool"))

(smithy/sdk/shapes:define-type transformation-tool-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-application-component-config-request
                                    common-lisp:nil
                                    ((application-component-id :target-type
                                      application-component-id :required
                                      common-lisp:t :member-name
                                      "applicationComponentId")
                                     (inclusion-status :target-type
                                      inclusion-status :member-name
                                      "inclusionStatus")
                                     (strategy-option :target-type
                                      strategy-option :member-name
                                      "strategyOption")
                                     (source-code-list :target-type
                                      source-code-list :member-name
                                      "sourceCodeList")
                                     (secrets-manager-key :target-type
                                      secrets-manager-key :member-name
                                      "secretsManagerKey")
                                     (configure-only :target-type boolean
                                      :member-name "configureOnly")
                                     (app-type :target-type app-type
                                      :member-name "appType"))
                                    (:shape-name
                                     "UpdateApplicationComponentConfigRequest"))

(smithy/sdk/shapes:define-structure
 update-application-component-config-response common-lisp:nil common-lisp:nil
 (:shape-name "UpdateApplicationComponentConfigResponse"))

(smithy/sdk/shapes:define-structure update-server-config-request
                                    common-lisp:nil
                                    ((server-id :target-type server-id
                                      :required common-lisp:t :member-name
                                      "serverId")
                                     (strategy-option :target-type
                                      strategy-option :member-name
                                      "strategyOption"))
                                    (:shape-name "UpdateServerConfigRequest"))

(smithy/sdk/shapes:define-structure update-server-config-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "UpdateServerConfigResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure vcenter-based-remote-info common-lisp:nil
                                    ((vcenter-configuration-time-stamp
                                      :target-type string :member-name
                                      "vcenterConfigurationTimeStamp")
                                     (os-type :target-type ostype :member-name
                                      "osType"))
                                    (:shape-name "VcenterBasedRemoteInfo"))

(smithy/sdk/shapes:define-list vcenter-based-remote-info-list :member
                               vcenter-based-remote-info)

(smithy/sdk/shapes:define-type version-control smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure version-control-info common-lisp:nil
                                    ((version-control-type :target-type
                                      version-control-type :member-name
                                      "versionControlType")
                                     (version-control-configuration-time-stamp
                                      :target-type string :member-name
                                      "versionControlConfigurationTimeStamp"))
                                    (:shape-name "VersionControlInfo"))

(smithy/sdk/shapes:define-list version-control-info-list :member
                               version-control-info)

(smithy/sdk/shapes:define-type version-control-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type import-s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type import-s3key smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-application-component-details
                                       :shape-name
                                       "GetApplicationComponentDetails" :input
                                       get-application-component-details-request
                                       :output
                                       get-application-component-details-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/get-applicationcomponent-details/{applicationComponentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-application-component-strategies
                                       :shape-name
                                       "GetApplicationComponentStrategies"
                                       :input
                                       get-application-component-strategies-request
                                       :output
                                       get-application-component-strategies-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/get-applicationcomponent-strategies/{applicationComponentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-assessment :shape-name
                                       "GetAssessment" :input
                                       get-assessment-request :output
                                       get-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/get-assessment/{id}" :code 200)

(smithy/sdk/operation:define-operation get-import-file-task :shape-name
                                       "GetImportFileTask" :input
                                       get-import-file-task-request :output
                                       get-import-file-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/get-import-file-task/{id}" :code 200)

(smithy/sdk/operation:define-operation get-latest-assessment-id :shape-name
                                       "GetLatestAssessmentId" :input
                                       get-latest-assessment-id-request :output
                                       get-latest-assessment-id-response
                                       :errors
                                       (access-denied-exception
                                        dependency-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/get-latest-assessment-id" :code 200)

(smithy/sdk/operation:define-operation get-portfolio-preferences :shape-name
                                       "GetPortfolioPreferences" :input
                                       get-portfolio-preferences-request
                                       :output
                                       get-portfolio-preferences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/get-portfolio-preferences" :code 200)

(smithy/sdk/operation:define-operation get-portfolio-summary :shape-name
                                       "GetPortfolioSummary" :input
                                       get-portfolio-summary-request :output
                                       get-portfolio-summary-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/get-portfolio-summary" :code 200)

(smithy/sdk/operation:define-operation get-recommendation-report-details
                                       :shape-name
                                       "GetRecommendationReportDetails" :input
                                       get-recommendation-report-details-request
                                       :output
                                       get-recommendation-report-details-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/get-recommendation-report-details/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-server-details :shape-name
                                       "GetServerDetails" :input
                                       get-server-details-request :output
                                       get-server-details-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/get-server-details/{serverId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-server-strategies :shape-name
                                       "GetServerStrategies" :input
                                       get-server-strategies-request :output
                                       get-server-strategies-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/get-server-strategies/{serverId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-analyzable-servers :shape-name
                                       "ListAnalyzableServers" :input
                                       list-analyzable-servers-request :output
                                       list-analyzable-servers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-analyzable-servers" :code 200)

(smithy/sdk/operation:define-operation list-application-components :shape-name
                                       "ListApplicationComponents" :input
                                       list-application-components-request
                                       :output
                                       list-application-components-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-linked-role-lock-client-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-applicationcomponents" :code 200)

(smithy/sdk/operation:define-operation list-collectors :shape-name
                                       "ListCollectors" :input
                                       list-collectors-request :output
                                       list-collectors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/list-collectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-import-file-task :shape-name
                                       "ListImportFileTask" :input
                                       list-import-file-task-request :output
                                       list-import-file-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-import-file-task" :code 200)

(smithy/sdk/operation:define-operation list-servers :shape-name "ListServers"
                                       :input list-servers-request :output
                                       list-servers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-servers"
                                       :code 200)

(smithy/sdk/operation:define-operation put-portfolio-preferences :shape-name
                                       "PutPortfolioPreferences" :input
                                       put-portfolio-preferences-request
                                       :output
                                       put-portfolio-preferences-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/put-portfolio-preferences" :code 200)

(smithy/sdk/operation:define-operation start-assessment :shape-name
                                       "StartAssessment" :input
                                       start-assessment-request :output
                                       start-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri "/start-assessment"
                                       :code 200)

(smithy/sdk/operation:define-operation start-import-file-task :shape-name
                                       "StartImportFileTask" :input
                                       start-import-file-task-request :output
                                       start-import-file-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/start-import-file-task" :code 200)

(smithy/sdk/operation:define-operation start-recommendation-report-generation
                                       :shape-name
                                       "StartRecommendationReportGeneration"
                                       :input
                                       start-recommendation-report-generation-request
                                       :output
                                       start-recommendation-report-generation-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/start-recommendation-report-generation"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-assessment :shape-name
                                       "StopAssessment" :input
                                       stop-assessment-request :output
                                       stop-assessment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/stop-assessment"
                                       :code 200)

(smithy/sdk/operation:define-operation update-application-component-config
                                       :shape-name
                                       "UpdateApplicationComponentConfig"
                                       :input
                                       update-application-component-config-request
                                       :output
                                       update-application-component-config-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-applicationcomponent-config/"
                                       :code 200)

(smithy/sdk/operation:define-operation update-server-config :shape-name
                                       "UpdateServerConfig" :input
                                       update-server-config-request :output
                                       update-server-config-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-server-config/" :code 200)
