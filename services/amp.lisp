(uiop/package:define-package #:pira/amp (:use)
                             (:export #:access-denied-exception
                              #:alert-manager-definition
                              #:alert-manager-definition-data
                              #:alert-manager-definition-description
                              #:alert-manager-definition-status
                              #:alert-manager-definition-status-code
                              #:amazon-prometheus-service #:amp-configuration
                              #:cloud-watch-log-destination #:cluster-arn
                              #:conflict-exception
                              #:create-alert-manager-definition
                              #:create-alert-manager-definition-request
                              #:create-alert-manager-definition-response
                              #:create-logging-configuration
                              #:create-logging-configuration-request
                              #:create-logging-configuration-response
                              #:create-query-logging-configuration
                              #:create-query-logging-configuration-request
                              #:create-query-logging-configuration-response
                              #:create-rule-groups-namespace
                              #:create-rule-groups-namespace-request
                              #:create-rule-groups-namespace-response
                              #:create-scraper #:create-scraper-request
                              #:create-scraper-response #:create-workspace
                              #:create-workspace-request
                              #:create-workspace-response
                              #:delete-alert-manager-definition
                              #:delete-alert-manager-definition-request
                              #:delete-logging-configuration
                              #:delete-logging-configuration-request
                              #:delete-query-logging-configuration
                              #:delete-query-logging-configuration-request
                              #:delete-rule-groups-namespace
                              #:delete-rule-groups-namespace-request
                              #:delete-scraper #:delete-scraper-request
                              #:delete-scraper-response #:delete-workspace
                              #:delete-workspace-request
                              #:describe-alert-manager-definition
                              #:describe-alert-manager-definition-request
                              #:describe-alert-manager-definition-response
                              #:describe-logging-configuration
                              #:describe-logging-configuration-request
                              #:describe-logging-configuration-response
                              #:describe-query-logging-configuration
                              #:describe-query-logging-configuration-request
                              #:describe-query-logging-configuration-response
                              #:describe-rule-groups-namespace
                              #:describe-rule-groups-namespace-request
                              #:describe-rule-groups-namespace-response
                              #:describe-scraper #:describe-scraper-request
                              #:describe-scraper-response #:describe-workspace
                              #:describe-workspace-configuration
                              #:describe-workspace-configuration-request
                              #:describe-workspace-configuration-response
                              #:describe-workspace-request
                              #:describe-workspace-response #:destination
                              #:eks-configuration #:filter-key #:filter-value
                              #:filter-values
                              #:get-default-scraper-configuration
                              #:get-default-scraper-configuration-request
                              #:get-default-scraper-configuration-response
                              #:iam-role-arn #:idempotency-token
                              #:internal-server-exception #:kms-key-arn
                              #:label-name #:label-set #:label-value
                              #:limits-per-label-set
                              #:limits-per-label-set-entry
                              #:limits-per-label-set-list
                              #:list-rule-groups-namespaces
                              #:list-rule-groups-namespaces-request
                              #:list-rule-groups-namespaces-response
                              #:list-scrapers #:list-scrapers-request
                              #:list-scrapers-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-workspaces #:list-workspaces-request
                              #:list-workspaces-response #:log-group-arn
                              #:logging-configuration
                              #:logging-configuration-metadata
                              #:logging-configuration-status
                              #:logging-configuration-status-code
                              #:logging-destination #:logging-destinations
                              #:logging-filter #:pagination-token
                              #:put-alert-manager-definition
                              #:put-alert-manager-definition-request
                              #:put-alert-manager-definition-response
                              #:put-rule-groups-namespace
                              #:put-rule-groups-namespace-request
                              #:put-rule-groups-namespace-response
                              #:query-logging-configuration
                              #:query-logging-configuration-metadata
                              #:query-logging-configuration-status
                              #:query-logging-configuration-status-code
                              #:resource-not-found-exception
                              #:role-configuration #:rule-groups-namespace
                              #:rule-groups-namespace-arn
                              #:rule-groups-namespace-data
                              #:rule-groups-namespace-description
                              #:rule-groups-namespace-name
                              #:rule-groups-namespace-status
                              #:rule-groups-namespace-status-code
                              #:rule-groups-namespace-summary
                              #:rule-groups-namespace-summary-list
                              #:scrape-configuration #:scraper #:scraper-alias
                              #:scraper-arn #:scraper-description
                              #:scraper-filters #:scraper-id #:scraper-status
                              #:scraper-status-code #:scraper-summary
                              #:scraper-summary-list #:security-group-id
                              #:security-group-ids
                              #:service-quota-exceeded-exception #:source
                              #:status-reason #:subnet-id #:subnet-ids
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-logging-configuration
                              #:update-logging-configuration-request
                              #:update-logging-configuration-response
                              #:update-query-logging-configuration
                              #:update-query-logging-configuration-request
                              #:update-query-logging-configuration-response
                              #:update-scraper #:update-scraper-request
                              #:update-scraper-response
                              #:update-workspace-alias
                              #:update-workspace-alias-request
                              #:update-workspace-configuration
                              #:update-workspace-configuration-request
                              #:update-workspace-configuration-response #:uri
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:workspace
                              #:workspace-alias #:workspace-arn
                              #:workspace-configuration
                              #:workspace-configuration-description
                              #:workspace-configuration-status
                              #:workspace-configuration-status-code
                              #:workspace-description #:workspace-id
                              #:workspace-status #:workspace-status-code
                              #:workspace-summary #:workspace-summary-list))
(common-lisp:in-package #:pira/amp)

(smithy/sdk/service:define-service amazon-prometheus-service :shape-name
                                   "AmazonPrometheusService" :version
                                   "2020-08-01" :title
                                   "Amazon Prometheus Service" :traits
                                   '(("aws.api#service" ("sdkId" . "amp")
                                      ("arnNamespace" . "aps")
                                      ("cloudTrailEventSource"
                                       . "CLOUDTRAIL_PLACEHOLDER_REPLACED_BY_CDK"))
                                     ("aws.auth#sigv4" ("name" . "aps"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

common-lisp:nil

(smithy/sdk/shapes:define-type alert-manager-definition-data
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure alert-manager-definition-description
                                    common-lisp:nil
                                    ((status :target-type
                                      alert-manager-definition-status :required
                                      common-lisp:t :member-name "status")
                                     (data :target-type
                                      alert-manager-definition-data :required
                                      common-lisp:t :member-name "data")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt"))
                                    (:shape-name
                                     "AlertManagerDefinitionDescription"))

(smithy/sdk/shapes:define-structure alert-manager-definition-status
                                    common-lisp:nil
                                    ((status-code :target-type
                                      alert-manager-definition-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name
                                     "AlertManagerDefinitionStatus"))

(smithy/sdk/shapes:define-type alert-manager-definition-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure amp-configuration common-lisp:nil
                                    ((workspace-arn :target-type workspace-arn
                                      :required common-lisp:t :member-name
                                      "workspaceArn"))
                                    (:shape-name "AmpConfiguration"))

(smithy/sdk/shapes:define-structure cloud-watch-log-destination common-lisp:nil
                                    ((log-group-arn :target-type log-group-arn
                                      :required common-lisp:t :member-name
                                      "logGroupArn"))
                                    (:shape-name "CloudWatchLogDestination"))

(smithy/sdk/shapes:define-type cluster-arn smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure create-alert-manager-definition-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (data :target-type
                                      alert-manager-definition-data :required
                                      common-lisp:t :member-name "data")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name
                                     "CreateAlertManagerDefinitionRequest"))

(smithy/sdk/shapes:define-structure create-alert-manager-definition-response
                                    common-lisp:nil
                                    ((status :target-type
                                      alert-manager-definition-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "CreateAlertManagerDefinitionResponse"))

(smithy/sdk/shapes:define-structure create-logging-configuration-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (log-group-arn :target-type log-group-arn
                                      :required common-lisp:t :member-name
                                      "logGroupArn")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name
                                     "CreateLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure create-logging-configuration-response
                                    common-lisp:nil
                                    ((status :target-type
                                      logging-configuration-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "CreateLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input create-query-logging-configuration-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t)
                                 (destinations :target-type
                                  logging-destinations :required common-lisp:t
                                  :member-name "destinations")
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "CreateQueryLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output create-query-logging-configuration-response
                                 common-lisp:nil
                                 ((status :target-type
                                   query-logging-configuration-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "CreateQueryLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-rule-groups-namespace-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (data :target-type
                                      rule-groups-namespace-data :required
                                      common-lisp:t :member-name "data")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateRuleGroupsNamespaceRequest"))

(smithy/sdk/shapes:define-structure create-rule-groups-namespace-response
                                    common-lisp:nil
                                    ((name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type
                                      rule-groups-namespace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type
                                      rule-groups-namespace-status :required
                                      common-lisp:t :member-name "status")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateRuleGroupsNamespaceResponse"))

(smithy/sdk/shapes:define-input create-scraper-request common-lisp:nil
                                ((alias :target-type scraper-alias :member-name
                                  "alias")
                                 (scrape-configuration :target-type
                                  scrape-configuration :required common-lisp:t
                                  :member-name "scrapeConfiguration")
                                 (source :target-type source :required
                                  common-lisp:t :member-name "source")
                                 (destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "destination")
                                 (role-configuration :target-type
                                  role-configuration :member-name
                                  "roleConfiguration")
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateScraperRequest"))

(smithy/sdk/shapes:define-output create-scraper-response common-lisp:nil
                                 ((scraper-id :target-type scraper-id :required
                                   common-lisp:t :member-name "scraperId")
                                  (arn :target-type scraper-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type scraper-status :required
                                   common-lisp:t :member-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateScraperResponse"))

(smithy/sdk/shapes:define-structure create-workspace-request common-lisp:nil
                                    ((alias :target-type workspace-alias
                                      :member-name "alias")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "CreateWorkspaceRequest"))

(smithy/sdk/shapes:define-structure create-workspace-response common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (arn :target-type workspace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type workspace-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "CreateWorkspaceResponse"))

(smithy/sdk/shapes:define-structure delete-alert-manager-definition-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken" :http-query "clientToken"))
                                    (:shape-name
                                     "DeleteAlertManagerDefinitionRequest"))

(smithy/sdk/shapes:define-structure delete-logging-configuration-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken" :http-query "clientToken"))
                                    (:shape-name
                                     "DeleteLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-query-logging-configuration-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t)
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name
                                 "DeleteQueryLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-rule-groups-namespace-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken" :http-query "clientToken"))
                                    (:shape-name
                                     "DeleteRuleGroupsNamespaceRequest"))

(smithy/sdk/shapes:define-input delete-scraper-request common-lisp:nil
                                ((scraper-id :target-type scraper-id :required
                                  common-lisp:t :member-name "scraperId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteScraperRequest"))

(smithy/sdk/shapes:define-output delete-scraper-response common-lisp:nil
                                 ((scraper-id :target-type scraper-id :required
                                   common-lisp:t :member-name "scraperId")
                                  (status :target-type scraper-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "DeleteScraperResponse"))

(smithy/sdk/shapes:define-structure delete-workspace-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken" :http-query "clientToken"))
                                    (:shape-name "DeleteWorkspaceRequest"))

(smithy/sdk/shapes:define-structure describe-alert-manager-definition-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "DescribeAlertManagerDefinitionRequest"))

(smithy/sdk/shapes:define-structure describe-alert-manager-definition-response
                                    common-lisp:nil
                                    ((alert-manager-definition :target-type
                                      alert-manager-definition-description
                                      :required common-lisp:t :member-name
                                      "alertManagerDefinition"))
                                    (:shape-name
                                     "DescribeAlertManagerDefinitionResponse"))

(smithy/sdk/shapes:define-structure describe-logging-configuration-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "DescribeLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure describe-logging-configuration-response
                                    common-lisp:nil
                                    ((logging-configuration :target-type
                                      logging-configuration-metadata :required
                                      common-lisp:t :member-name
                                      "loggingConfiguration"))
                                    (:shape-name
                                     "DescribeLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-query-logging-configuration-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeQueryLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-query-logging-configuration-response
                                 common-lisp:nil
                                 ((query-logging-configuration :target-type
                                   query-logging-configuration-metadata
                                   :required common-lisp:t :member-name
                                   "queryLoggingConfiguration"))
                                 (:shape-name
                                  "DescribeQueryLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-structure describe-rule-groups-namespace-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name
                                     "DescribeRuleGroupsNamespaceRequest"))

(smithy/sdk/shapes:define-structure describe-rule-groups-namespace-response
                                    common-lisp:nil
                                    ((rule-groups-namespace :target-type
                                      rule-groups-namespace-description
                                      :required common-lisp:t :member-name
                                      "ruleGroupsNamespace"))
                                    (:shape-name
                                     "DescribeRuleGroupsNamespaceResponse"))

(smithy/sdk/shapes:define-input describe-scraper-request common-lisp:nil
                                ((scraper-id :target-type scraper-id :required
                                  common-lisp:t :member-name "scraperId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeScraperRequest"))

(smithy/sdk/shapes:define-output describe-scraper-response common-lisp:nil
                                 ((scraper :target-type scraper-description
                                   :required common-lisp:t :member-name
                                   "scraper"))
                                 (:shape-name "DescribeScraperResponse"))

(smithy/sdk/shapes:define-input describe-workspace-configuration-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeWorkspaceConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-workspace-configuration-response
                                 common-lisp:nil
                                 ((workspace-configuration :target-type
                                   workspace-configuration-description
                                   :required common-lisp:t :member-name
                                   "workspaceConfiguration"))
                                 (:shape-name
                                  "DescribeWorkspaceConfigurationResponse"))

(smithy/sdk/shapes:define-structure describe-workspace-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "DescribeWorkspaceRequest"))

(smithy/sdk/shapes:define-structure describe-workspace-response common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "DescribeWorkspaceResponse"))

(smithy/sdk/shapes:define-union destination common-lisp:nil
                                ((amp-configuration :target-type
                                  amp-configuration :member-name
                                  "ampConfiguration"))
                                (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure eks-configuration common-lisp:nil
                                    ((cluster-arn :target-type cluster-arn
                                      :required common-lisp:t :member-name
                                      "clusterArn")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds"))
                                    (:shape-name "EksConfiguration"))

(smithy/sdk/shapes:define-type filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-input get-default-scraper-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetDefaultScraperConfigurationRequest"))

(smithy/sdk/shapes:define-output get-default-scraper-configuration-response
                                 common-lisp:nil
                                 ((configuration :target-type
                                   smithy/sdk/smithy-types:blob :required
                                   common-lisp:t :member-name "configuration"))
                                 (:shape-name
                                  "GetDefaultScraperConfigurationResponse"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map label-set :key label-name :value label-value)

(smithy/sdk/shapes:define-type label-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure limits-per-label-set common-lisp:nil
                                    ((limits :target-type
                                      limits-per-label-set-entry :required
                                      common-lisp:t :member-name "limits")
                                     (label-set :target-type label-set
                                      :required common-lisp:t :member-name
                                      "labelSet"))
                                    (:shape-name "LimitsPerLabelSet"))

(smithy/sdk/shapes:define-structure limits-per-label-set-entry common-lisp:nil
                                    ((max-series :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "maxSeries"))
                                    (:shape-name "LimitsPerLabelSetEntry"))

(smithy/sdk/shapes:define-list limits-per-label-set-list :member
                               limits-per-label-set)

(smithy/sdk/shapes:define-structure list-rule-groups-namespaces-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (name :target-type
                                      rule-groups-namespace-name :member-name
                                      "name" :http-query "name")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListRuleGroupsNamespacesRequest"))

(smithy/sdk/shapes:define-structure list-rule-groups-namespaces-response
                                    common-lisp:nil
                                    ((rule-groups-namespaces :target-type
                                      rule-groups-namespace-summary-list
                                      :required common-lisp:t :member-name
                                      "ruleGroupsNamespaces")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListRuleGroupsNamespacesResponse"))

(smithy/sdk/shapes:define-input list-scrapers-request common-lisp:nil
                                ((filters :target-type scraper-filters
                                  :member-name "filters" :http-query-params
                                  common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListScrapersRequest"))

(smithy/sdk/shapes:define-output list-scrapers-response common-lisp:nil
                                 ((scrapers :target-type scraper-summary-list
                                   :required common-lisp:t :member-name
                                   "scrapers")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListScrapersResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-workspaces-request common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (alias :target-type workspace-alias
                                      :member-name "alias" :http-query "alias")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListWorkspacesRequest"))

(smithy/sdk/shapes:define-structure list-workspaces-response common-lisp:nil
                                    ((workspaces :target-type
                                      workspace-summary-list :required
                                      common-lisp:t :member-name "workspaces")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListWorkspacesResponse"))

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure logging-configuration-metadata
                                    common-lisp:nil
                                    ((status :target-type
                                      logging-configuration-status :required
                                      common-lisp:t :member-name "status")
                                     (workspace :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspace")
                                     (log-group-arn :target-type log-group-arn
                                      :required common-lisp:t :member-name
                                      "logGroupArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt"))
                                    (:shape-name
                                     "LoggingConfigurationMetadata"))

(smithy/sdk/shapes:define-structure logging-configuration-status
                                    common-lisp:nil
                                    ((status-code :target-type
                                      logging-configuration-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "LoggingConfigurationStatus"))

(smithy/sdk/shapes:define-type logging-configuration-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logging-destination common-lisp:nil
                                    ((cloud-watch-logs :target-type
                                      cloud-watch-log-destination :required
                                      common-lisp:t :member-name
                                      "cloudWatchLogs")
                                     (filters :target-type logging-filter
                                      :required common-lisp:t :member-name
                                      "filters"))
                                    (:shape-name "LoggingDestination"))

(smithy/sdk/shapes:define-list logging-destinations :member logging-destination)

(smithy/sdk/shapes:define-structure logging-filter common-lisp:nil
                                    ((qsp-threshold :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "qspThreshold"))
                                    (:shape-name "LoggingFilter"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-alert-manager-definition-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (data :target-type
                                      alert-manager-definition-data :required
                                      common-lisp:t :member-name "data")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name
                                     "PutAlertManagerDefinitionRequest"))

(smithy/sdk/shapes:define-structure put-alert-manager-definition-response
                                    common-lisp:nil
                                    ((status :target-type
                                      alert-manager-definition-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "PutAlertManagerDefinitionResponse"))

(smithy/sdk/shapes:define-structure put-rule-groups-namespace-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (data :target-type
                                      rule-groups-namespace-data :required
                                      common-lisp:t :member-name "data")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name
                                     "PutRuleGroupsNamespaceRequest"))

(smithy/sdk/shapes:define-structure put-rule-groups-namespace-response
                                    common-lisp:nil
                                    ((name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type
                                      rule-groups-namespace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type
                                      rule-groups-namespace-status :required
                                      common-lisp:t :member-name "status")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "PutRuleGroupsNamespaceResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-structure query-logging-configuration-metadata
                                    common-lisp:nil
                                    ((status :target-type
                                      query-logging-configuration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (workspace :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspace")
                                     (destinations :target-type
                                      logging-destinations :required
                                      common-lisp:t :member-name
                                      "destinations")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt"))
                                    (:shape-name
                                     "QueryLoggingConfigurationMetadata"))

(smithy/sdk/shapes:define-structure query-logging-configuration-status
                                    common-lisp:nil
                                    ((status-code :target-type
                                      query-logging-configuration-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name
                                     "QueryLoggingConfigurationStatus"))

(smithy/sdk/shapes:define-type query-logging-configuration-status-code
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure role-configuration common-lisp:nil
                                    ((source-role-arn :target-type iam-role-arn
                                      :member-name "sourceRoleArn")
                                     (target-role-arn :target-type iam-role-arn
                                      :member-name "targetRoleArn"))
                                    (:shape-name "RoleConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-type rule-groups-namespace-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-groups-namespace-data
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure rule-groups-namespace-description
                                    common-lisp:nil
                                    ((arn :target-type
                                      rule-groups-namespace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type
                                      rule-groups-namespace-status :required
                                      common-lisp:t :member-name "status")
                                     (data :target-type
                                      rule-groups-namespace-data :required
                                      common-lisp:t :member-name "data")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "RuleGroupsNamespaceDescription"))

(smithy/sdk/shapes:define-type rule-groups-namespace-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-groups-namespace-status
                                    common-lisp:nil
                                    ((status-code :target-type
                                      rule-groups-namespace-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "RuleGroupsNamespaceStatus"))

(smithy/sdk/shapes:define-type rule-groups-namespace-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-groups-namespace-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      rule-groups-namespace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      rule-groups-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type
                                      rule-groups-namespace-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "RuleGroupsNamespaceSummary"))

(smithy/sdk/shapes:define-list rule-groups-namespace-summary-list :member
                               rule-groups-namespace-summary)

(smithy/sdk/shapes:define-union scrape-configuration common-lisp:nil
                                ((configuration-blob :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "configurationBlob"))
                                (:shape-name "ScrapeConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-type scraper-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scraper-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scraper-description common-lisp:nil
                                    ((alias :target-type scraper-alias
                                      :member-name "alias")
                                     (scraper-id :target-type scraper-id
                                      :required common-lisp:t :member-name
                                      "scraperId")
                                     (arn :target-type scraper-arn :required
                                      common-lisp:t :member-name "arn")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (status :target-type scraper-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (scrape-configuration :target-type
                                      scrape-configuration :required
                                      common-lisp:t :member-name
                                      "scrapeConfiguration")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (role-configuration :target-type
                                      role-configuration :member-name
                                      "roleConfiguration"))
                                    (:shape-name "ScraperDescription"))

(smithy/sdk/shapes:define-map scraper-filters :key filter-key :value
                              filter-values)

(smithy/sdk/shapes:define-type scraper-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scraper-status common-lisp:nil
                                    ((status-code :target-type
                                      scraper-status-code :required
                                      common-lisp:t :member-name "statusCode"))
                                    (:shape-name "ScraperStatus"))

(smithy/sdk/shapes:define-type scraper-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scraper-summary common-lisp:nil
                                    ((alias :target-type scraper-alias
                                      :member-name "alias")
                                     (scraper-id :target-type scraper-id
                                      :required common-lisp:t :member-name
                                      "scraperId")
                                     (arn :target-type scraper-arn :required
                                      common-lisp:t :member-name "arn")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "roleArn")
                                     (status :target-type scraper-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (role-configuration :target-type
                                      role-configuration :member-name
                                      "roleConfiguration"))
                                    (:shape-name "ScraperSummary"))

(smithy/sdk/shapes:define-list scraper-summary-list :member scraper-summary)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

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

(smithy/sdk/shapes:define-union source common-lisp:nil
                                ((eks-configuration :target-type
                                  eks-configuration :member-name
                                  "eksConfiguration"))
                                (:shape-name "Source"))

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
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
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "tagKeys"
                                      :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-logging-configuration-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (log-group-arn :target-type log-group-arn
                                      :required common-lisp:t :member-name
                                      "logGroupArn")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name
                                     "UpdateLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-logging-configuration-response
                                    common-lisp:nil
                                    ((status :target-type
                                      logging-configuration-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name
                                     "UpdateLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input update-query-logging-configuration-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t)
                                 (destinations :target-type
                                  logging-destinations :required common-lisp:t
                                  :member-name "destinations")
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "UpdateQueryLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output update-query-logging-configuration-response
                                 common-lisp:nil
                                 ((status :target-type
                                   query-logging-configuration-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "UpdateQueryLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input update-scraper-request common-lisp:nil
                                ((scraper-id :target-type scraper-id :required
                                  common-lisp:t :member-name "scraperId"
                                  :http-label common-lisp:t)
                                 (alias :target-type scraper-alias :member-name
                                  "alias")
                                 (scrape-configuration :target-type
                                  scrape-configuration :member-name
                                  "scrapeConfiguration")
                                 (destination :target-type destination
                                  :member-name "destination")
                                 (role-configuration :target-type
                                  role-configuration :member-name
                                  "roleConfiguration")
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateScraperRequest"))

(smithy/sdk/shapes:define-output update-scraper-response common-lisp:nil
                                 ((scraper-id :target-type scraper-id :required
                                   common-lisp:t :member-name "scraperId")
                                  (arn :target-type scraper-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type scraper-status :required
                                   common-lisp:t :member-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateScraperResponse"))

(smithy/sdk/shapes:define-structure update-workspace-alias-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (alias :target-type workspace-alias
                                      :member-name "alias")
                                     (client-token :target-type
                                      idempotency-token :member-name
                                      "clientToken"))
                                    (:shape-name "UpdateWorkspaceAliasRequest"))

(smithy/sdk/shapes:define-input update-workspace-configuration-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t)
                                 (client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (limits-per-label-set :target-type
                                  limits-per-label-set-list :member-name
                                  "limitsPerLabelSet")
                                 (retention-period-in-days :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retentionPeriodInDays"))
                                (:shape-name
                                 "UpdateWorkspaceConfigurationRequest"))

(smithy/sdk/shapes:define-output update-workspace-configuration-response
                                 common-lisp:nil
                                 ((status :target-type
                                   workspace-configuration-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "UpdateWorkspaceConfigurationResponse"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

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

common-lisp:nil

(smithy/sdk/shapes:define-type workspace-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workspace-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure workspace-configuration-description
                                    common-lisp:nil
                                    ((status :target-type
                                      workspace-configuration-status :required
                                      common-lisp:t :member-name "status")
                                     (limits-per-label-set :target-type
                                      limits-per-label-set-list :member-name
                                      "limitsPerLabelSet")
                                     (retention-period-in-days :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "retentionPeriodInDays"))
                                    (:shape-name
                                     "WorkspaceConfigurationDescription"))

(smithy/sdk/shapes:define-structure workspace-configuration-status
                                    common-lisp:nil
                                    ((status-code :target-type
                                      workspace-configuration-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name
                                     "WorkspaceConfigurationStatus"))

(smithy/sdk/shapes:define-type workspace-configuration-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workspace-description common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (alias :target-type workspace-alias
                                      :member-name "alias")
                                     (arn :target-type workspace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type workspace-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (prometheus-endpoint :target-type uri
                                      :member-name "prometheusEndpoint")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "WorkspaceDescription"))

(smithy/sdk/shapes:define-type workspace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workspace-status common-lisp:nil
                                    ((status-code :target-type
                                      workspace-status-code :required
                                      common-lisp:t :member-name "statusCode"))
                                    (:shape-name "WorkspaceStatus"))

(smithy/sdk/shapes:define-type workspace-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workspace-summary common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (alias :target-type workspace-alias
                                      :member-name "alias")
                                     (arn :target-type workspace-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type workspace-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "WorkspaceSummary"))

(smithy/sdk/shapes:define-list workspace-summary-list :member workspace-summary)

(smithy/sdk/operation:define-operation create-alert-manager-definition
                                       :shape-name
                                       "CreateAlertManagerDefinition" :input
                                       create-alert-manager-definition-request
                                       :output
                                       create-alert-manager-definition-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/alertmanager/definition"
                                       :code 202)

(smithy/sdk/operation:define-operation create-logging-configuration :shape-name
                                       "CreateLoggingConfiguration" :input
                                       create-logging-configuration-request
                                       :output
                                       create-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/logging"
                                       :code 202)

(smithy/sdk/operation:define-operation create-query-logging-configuration
                                       :shape-name
                                       "CreateQueryLoggingConfiguration" :input
                                       create-query-logging-configuration-request
                                       :output
                                       create-query-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/logging/query"
                                       :code 202)

(smithy/sdk/operation:define-operation create-rule-groups-namespace :shape-name
                                       "CreateRuleGroupsNamespace" :input
                                       create-rule-groups-namespace-request
                                       :output
                                       create-rule-groups-namespace-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/rulegroupsnamespaces"
                                       :code 202)

(smithy/sdk/operation:define-operation create-scraper :shape-name
                                       "CreateScraper" :input
                                       create-scraper-request :output
                                       create-scraper-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/scrapers" :code
                                       202)

(smithy/sdk/operation:define-operation create-workspace :shape-name
                                       "CreateWorkspace" :input
                                       create-workspace-request :output
                                       create-workspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workspaces" :code
                                       202)

(smithy/sdk/operation:define-operation delete-alert-manager-definition
                                       :shape-name
                                       "DeleteAlertManagerDefinition" :input
                                       delete-alert-manager-definition-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/alertmanager/definition"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-logging-configuration :shape-name
                                       "DeleteLoggingConfiguration" :input
                                       delete-logging-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/logging"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-query-logging-configuration
                                       :shape-name
                                       "DeleteQueryLoggingConfiguration" :input
                                       delete-query-logging-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/logging/query"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-rule-groups-namespace :shape-name
                                       "DeleteRuleGroupsNamespace" :input
                                       delete-rule-groups-namespace-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-scraper :shape-name
                                       "DeleteScraper" :input
                                       delete-scraper-request :output
                                       delete-scraper-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/scrapers/{scraperId}" :code 202)

(smithy/sdk/operation:define-operation delete-workspace :shape-name
                                       "DeleteWorkspace" :input
                                       delete-workspace-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}" :code 202)

(smithy/sdk/operation:define-operation describe-alert-manager-definition
                                       :shape-name
                                       "DescribeAlertManagerDefinition" :input
                                       describe-alert-manager-definition-request
                                       :output
                                       describe-alert-manager-definition-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/alertmanager/definition"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-logging-configuration
                                       :shape-name
                                       "DescribeLoggingConfiguration" :input
                                       describe-logging-configuration-request
                                       :output
                                       describe-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/logging"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-query-logging-configuration
                                       :shape-name
                                       "DescribeQueryLoggingConfiguration"
                                       :input
                                       describe-query-logging-configuration-request
                                       :output
                                       describe-query-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/logging/query"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-rule-groups-namespace
                                       :shape-name
                                       "DescribeRuleGroupsNamespace" :input
                                       describe-rule-groups-namespace-request
                                       :output
                                       describe-rule-groups-namespace-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-scraper :shape-name
                                       "DescribeScraper" :input
                                       describe-scraper-request :output
                                       describe-scraper-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/scrapers/{scraperId}" :code 200)

(smithy/sdk/operation:define-operation describe-workspace :shape-name
                                       "DescribeWorkspace" :input
                                       describe-workspace-request :output
                                       describe-workspace-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}" :code 200)

(smithy/sdk/operation:define-operation describe-workspace-configuration
                                       :shape-name
                                       "DescribeWorkspaceConfiguration" :input
                                       describe-workspace-configuration-request
                                       :output
                                       describe-workspace-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-default-scraper-configuration
                                       :shape-name
                                       "GetDefaultScraperConfiguration" :input
                                       get-default-scraper-configuration-request
                                       :output
                                       get-default-scraper-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/scraperconfiguration" :code 200)

(smithy/sdk/operation:define-operation list-rule-groups-namespaces :shape-name
                                       "ListRuleGroupsNamespaces" :input
                                       list-rule-groups-namespaces-request
                                       :output
                                       list-rule-groups-namespaces-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/rulegroupsnamespaces"
                                       :code 200)

(smithy/sdk/operation:define-operation list-scrapers :shape-name "ListScrapers"
                                       :input list-scrapers-request :output
                                       list-scrapers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/scrapers" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-workspaces :shape-name
                                       "ListWorkspaces" :input
                                       list-workspaces-request :output
                                       list-workspaces-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/workspaces" :code
                                       200)

(smithy/sdk/operation:define-operation put-alert-manager-definition :shape-name
                                       "PutAlertManagerDefinition" :input
                                       put-alert-manager-definition-request
                                       :output
                                       put-alert-manager-definition-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/alertmanager/definition"
                                       :code 202)

(smithy/sdk/operation:define-operation put-rule-groups-namespace :shape-name
                                       "PutRuleGroupsNamespace" :input
                                       put-rule-groups-namespace-request
                                       :output
                                       put-rule-groups-namespace-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

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
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-logging-configuration :shape-name
                                       "UpdateLoggingConfiguration" :input
                                       update-logging-configuration-request
                                       :output
                                       update-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/logging"
                                       :code 202)

(smithy/sdk/operation:define-operation update-query-logging-configuration
                                       :shape-name
                                       "UpdateQueryLoggingConfiguration" :input
                                       update-query-logging-configuration-request
                                       :output
                                       update-query-logging-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/logging/query"
                                       :code 202)

(smithy/sdk/operation:define-operation update-scraper :shape-name
                                       "UpdateScraper" :input
                                       update-scraper-request :output
                                       update-scraper-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/scrapers/{scraperId}" :code 202)

(smithy/sdk/operation:define-operation update-workspace-alias :shape-name
                                       "UpdateWorkspaceAlias" :input
                                       update-workspace-alias-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/alias" :code
                                       204)

(smithy/sdk/operation:define-operation update-workspace-configuration
                                       :shape-name
                                       "UpdateWorkspaceConfiguration" :input
                                       update-workspace-configuration-request
                                       :output
                                       update-workspace-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workspaces/{workspaceId}/configuration"
                                       :code 202)
