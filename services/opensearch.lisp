(uiop/package:define-package #:pira/opensearch (:use)
                             (:export #:aimloptions-input #:aimloptions-output
                              #:aimloptions-status #:arn #:awsaccount
                              #:awsdomain-information #:awsservice-principal
                              #:accept-inbound-connection
                              #:access-policies-status #:action-severity
                              #:action-status #:action-type #:add-data-source
                              #:add-direct-query-data-source #:add-tags
                              #:additional-limit #:additional-limit-list
                              #:advanced-options #:advanced-options-status
                              #:advanced-security-options
                              #:advanced-security-options-input
                              #:advanced-security-options-status
                              #:amazon-open-search-service #:app-config
                              #:app-config-type #:app-config-value
                              #:app-configs #:application-name
                              #:application-status #:application-statuses
                              #:application-summaries #:application-summary
                              #:associate-package #:associate-packages
                              #:authorize-vpc-endpoint-access
                              #:authorized-principal
                              #:authorized-principal-list #:auto-tune
                              #:auto-tune-date #:auto-tune-desired-state
                              #:auto-tune-details #:auto-tune-list
                              #:auto-tune-maintenance-schedule
                              #:auto-tune-maintenance-schedule-list
                              #:auto-tune-options #:auto-tune-options-input
                              #:auto-tune-options-output
                              #:auto-tune-options-status #:auto-tune-state
                              #:auto-tune-status #:auto-tune-type
                              #:availability-zone #:availability-zone-info
                              #:availability-zone-info-list
                              #:availability-zone-list #:backend-role #:boolean
                              #:cancel-domain-config-change
                              #:cancel-service-software-update
                              #:cancelled-change-property
                              #:cancelled-change-property-list
                              #:change-progress-details #:change-progress-stage
                              #:change-progress-stage-list
                              #:change-progress-stage-name
                              #:change-progress-stage-status
                              #:change-progress-status-details #:client-token
                              #:cloud-watch-direct-query-data-source
                              #:cloud-watch-logs-log-group-arn #:cluster-config
                              #:cluster-config-status #:cognito-options
                              #:cognito-options-status #:cold-storage-options
                              #:commit-message #:compatible-versions-list
                              #:compatible-versions-map #:config-change-status
                              #:connection-alias #:connection-id
                              #:connection-mode #:connection-properties
                              #:connection-status-message #:create-application
                              #:create-domain #:create-outbound-connection
                              #:create-package #:create-vpc-endpoint
                              #:created-at
                              #:cross-cluster-search-connection-properties
                              #:data-source #:data-source-description
                              #:data-source-details #:data-source-list
                              #:data-source-name #:data-source-status
                              #:data-source-type #:data-sources
                              #:delete-application #:delete-data-source
                              #:delete-direct-query-data-source #:delete-domain
                              #:delete-inbound-connection
                              #:delete-outbound-connection #:delete-package
                              #:delete-vpc-endpoint
                              #:deployment-close-date-time-stamp
                              #:deployment-status #:deployment-type
                              #:describe-domain #:describe-domain-auto-tunes
                              #:describe-domain-change-progress
                              #:describe-domain-config #:describe-domain-health
                              #:describe-domain-nodes #:describe-domains
                              #:describe-dry-run-progress
                              #:describe-inbound-connections
                              #:describe-instance-type-limits
                              #:describe-outbound-connections
                              #:describe-packages #:describe-packages-filter
                              #:describe-packages-filter-list
                              #:describe-packages-filter-name
                              #:describe-packages-filter-value
                              #:describe-packages-filter-values
                              #:describe-reserved-instance-offerings
                              #:describe-reserved-instances
                              #:describe-vpc-endpoints #:description
                              #:direct-query-data-source
                              #:direct-query-data-source-description
                              #:direct-query-data-source-list
                              #:direct-query-data-source-name
                              #:direct-query-data-source-role-arn
                              #:direct-query-data-source-type
                              #:direct-query-open-search-arnlist
                              #:disable-timestamp #:dissociate-package
                              #:dissociate-packages #:domain-arn
                              #:domain-config #:domain-endpoint-options
                              #:domain-endpoint-options-status #:domain-health
                              #:domain-id #:domain-info #:domain-info-list
                              #:domain-information-container
                              #:domain-maintenance-details
                              #:domain-maintenance-list #:domain-name
                              #:domain-name-fqdn #:domain-name-list
                              #:domain-nodes-status #:domain-nodes-status-list
                              #:domain-package-details
                              #:domain-package-details-list
                              #:domain-package-status
                              #:domain-processing-status-type #:domain-state
                              #:domain-status #:domain-status-list #:double
                              #:dry-run #:dry-run-mode
                              #:dry-run-progress-status #:dry-run-results
                              #:duration #:duration-value #:ebsoptions
                              #:ebsoptions-status #:encryption-at-rest-options
                              #:encryption-at-rest-options-status #:endpoint
                              #:endpoints-map #:engine-type #:engine-version
                              #:environment-info #:environment-info-list
                              #:error-details #:error-message #:error-type
                              #:filter #:filter-list #:guid #:guidlist
                              #:get-application #:get-compatible-versions
                              #:get-data-source #:get-direct-query-data-source
                              #:get-domain-maintenance-status
                              #:get-package-version-history
                              #:get-upgrade-history #:get-upgrade-status
                              #:hosted-zone-id #:iamfederation-options-input
                              #:iamfederation-options-output
                              #:iamfederation-roles-key
                              #:iamfederation-subject-key #:ipaddress-type
                              #:ipaddress-type-status
                              #:iam-identity-center-options
                              #:iam-identity-center-options-input #:id
                              #:identity-center-application-arn
                              #:identity-center-instance-arn
                              #:identity-center-options
                              #:identity-center-options-input
                              #:identity-center-options-status
                              #:identity-pool-id #:identity-store-id
                              #:inbound-connection #:inbound-connection-status
                              #:inbound-connection-status-code
                              #:inbound-connections #:initiated-by
                              #:instance-count #:instance-count-limits
                              #:instance-limits #:instance-role
                              #:instance-role-list #:instance-type-details
                              #:instance-type-details-list
                              #:instance-type-string #:integer #:integer-class
                              #:issue #:issues #:jwtoptions-input
                              #:jwtoptions-output #:key-store-access-option
                              #:kms-key-id #:last-updated #:license-filepath
                              #:limit-name #:limit-value #:limit-value-list
                              #:limits #:limits-by-role #:list-applications
                              #:list-data-sources
                              #:list-direct-query-data-sources
                              #:list-domain-maintenances #:list-domain-names
                              #:list-domains-for-package
                              #:list-instance-type-details
                              #:list-packages-for-domain
                              #:list-scheduled-actions #:list-tags
                              #:list-versions #:list-vpc-endpoint-access
                              #:list-vpc-endpoints
                              #:list-vpc-endpoints-for-domain
                              #:log-publishing-option #:log-publishing-options
                              #:log-publishing-options-status #:log-type #:long
                              #:maintenance-status #:maintenance-status-message
                              #:maintenance-type #:master-node-status
                              #:master-user-options #:max-results
                              #:maximum-instance-count #:message
                              #:minimum-instance-count #:modifying-properties
                              #:modifying-properties-list
                              #:natural-language-query-generation-current-state
                              #:natural-language-query-generation-desired-state
                              #:natural-language-query-generation-options-input
                              #:natural-language-query-generation-options-output
                              #:next-token #:node-config #:node-id
                              #:node-option #:node-options-list
                              #:node-options-node-type #:node-status
                              #:node-to-node-encryption-options
                              #:node-to-node-encryption-options-status
                              #:node-type #:non-empty-string #:number-of-azs
                              #:number-of-nodes #:number-of-shards
                              #:off-peak-window #:off-peak-window-options
                              #:off-peak-window-options-status
                              #:open-search-partition-instance-type
                              #:open-search-warm-partition-instance-type
                              #:option-state #:option-status
                              #:outbound-connection
                              #:outbound-connection-status
                              #:outbound-connection-status-code
                              #:outbound-connections #:overall-change-status
                              #:owner-id #:package-association-configuration
                              #:package-configuration #:package-description
                              #:package-details
                              #:package-details-for-association
                              #:package-details-for-association-list
                              #:package-details-list
                              #:package-encryption-options #:package-id
                              #:package-idlist #:package-name #:package-owner
                              #:package-scope-operation-enum #:package-source
                              #:package-status #:package-type #:package-user
                              #:package-user-list #:package-vending-options
                              #:package-version #:package-version-history
                              #:package-version-history-list #:password
                              #:plugin-class-name #:plugin-description
                              #:plugin-name #:plugin-properties
                              #:plugin-version #:policy-document
                              #:principal-type #:property-value-type
                              #:purchase-reserved-instance-offering
                              #:recurring-charge #:recurring-charge-list
                              #:reference-path #:region
                              #:reject-inbound-connection #:remove-tags
                              #:request-id #:requirement-level
                              #:reservation-token #:reserved-instance
                              #:reserved-instance-list
                              #:reserved-instance-offering
                              #:reserved-instance-offering-list
                              #:reserved-instance-payment-option
                              #:revoke-vpc-endpoint-access #:role-arn
                              #:roles-key #:roles-key-id-coption
                              #:rollback-on-disable #:s3bucket-name
                              #:s3glue-data-catalog #:s3key #:s3vectors-engine
                              #:samlentity-id #:samlidp #:samlmetadata
                              #:samloptions-input #:samloptions-output
                              #:schedule-at #:scheduled-action
                              #:scheduled-actions-list
                              #:scheduled-auto-tune-action-type
                              #:scheduled-auto-tune-description
                              #:scheduled-auto-tune-details
                              #:scheduled-auto-tune-severity-type
                              #:scheduled-by
                              #:security-lake-direct-query-data-source
                              #:service-software-options #:service-url
                              #:skip-unavailable-status #:slot-list
                              #:snapshot-options #:snapshot-options-status
                              #:software-update-options
                              #:software-update-options-status #:start-at
                              #:start-domain-maintenance
                              #:start-service-software-update
                              #:start-time-hours #:start-time-minutes
                              #:start-timestamp #:storage-sub-type-name
                              #:storage-type #:storage-type-limit
                              #:storage-type-limit-list #:storage-type-list
                              #:storage-type-name #:string #:string-list
                              #:subject-key #:subject-key-id-coption
                              #:tlssecurity-policy #:tag #:tag-key #:tag-list
                              #:tag-value #:time-unit #:timestamp
                              #:total-number-of-stages #:uint-value
                              #:uncompressed-plugin-size-in-bytes
                              #:update-application #:update-data-source
                              #:update-direct-query-data-source
                              #:update-domain-config #:update-package
                              #:update-package-scope #:update-scheduled-action
                              #:update-timestamp #:update-vpc-endpoint
                              #:upgrade-domain #:upgrade-history
                              #:upgrade-history-list #:upgrade-name
                              #:upgrade-status #:upgrade-step
                              #:upgrade-step-item #:upgrade-steps-list
                              #:user-pool-id #:username #:vpcderived-info
                              #:vpcderived-info-status #:vpcoptions
                              #:validation-failure #:validation-failures
                              #:value-string-list #:version-list
                              #:version-status #:version-string #:volume-size
                              #:volume-type #:vpc-endpoint #:vpc-endpoint-error
                              #:vpc-endpoint-error-code
                              #:vpc-endpoint-error-list #:vpc-endpoint-id
                              #:vpc-endpoint-id-list #:vpc-endpoint-status
                              #:vpc-endpoint-summary
                              #:vpc-endpoint-summary-list #:vpc-endpoints
                              #:window-start-time #:zone-awareness-config
                              #:zone-status))
(common-lisp:in-package #:pira/opensearch)

(smithy/sdk/service:define-service amazon-open-search-service :shape-name
                                   "AmazonOpenSearchService" :version
                                   "2021-01-01" :title
                                   "Amazon OpenSearch Service" :operations
                                   '(accept-inbound-connection add-data-source
                                     add-direct-query-data-source add-tags
                                     associate-package associate-packages
                                     authorize-vpc-endpoint-access
                                     cancel-domain-config-change
                                     cancel-service-software-update
                                     create-application create-domain
                                     create-outbound-connection create-package
                                     create-vpc-endpoint delete-application
                                     delete-data-source
                                     delete-direct-query-data-source
                                     delete-domain delete-inbound-connection
                                     delete-outbound-connection delete-package
                                     delete-vpc-endpoint describe-domain
                                     describe-domain-auto-tunes
                                     describe-domain-change-progress
                                     describe-domain-config
                                     describe-domain-health
                                     describe-domain-nodes describe-domains
                                     describe-dry-run-progress
                                     describe-inbound-connections
                                     describe-instance-type-limits
                                     describe-outbound-connections
                                     describe-packages
                                     describe-reserved-instance-offerings
                                     describe-reserved-instances
                                     describe-vpc-endpoints dissociate-package
                                     dissociate-packages get-application
                                     get-compatible-versions get-data-source
                                     get-direct-query-data-source
                                     get-domain-maintenance-status
                                     get-package-version-history
                                     get-upgrade-history get-upgrade-status
                                     list-applications list-data-sources
                                     list-direct-query-data-sources
                                     list-domain-maintenances list-domain-names
                                     list-domains-for-package
                                     list-instance-type-details
                                     list-packages-for-domain
                                     list-scheduled-actions list-tags
                                     list-versions list-vpc-endpoint-access
                                     list-vpc-endpoints
                                     list-vpc-endpoints-for-domain
                                     purchase-reserved-instance-offering
                                     reject-inbound-connection remove-tags
                                     revoke-vpc-endpoint-access
                                     start-domain-maintenance
                                     start-service-software-update
                                     update-application update-data-source
                                     update-direct-query-data-source
                                     update-domain-config update-package
                                     update-package-scope
                                     update-scheduled-action
                                     update-vpc-endpoint upgrade-domain)
                                   :xml-namespace
                                   (:uri
                                    "http://es.amazonaws.com/doc/2021-01-01/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "OpenSearch")
                                      ("arnNamespace" . "es")
                                      ("cloudFormationName" . "OpenSearch")
                                      ("cloudTrailEventSource"
                                       . "opensearch.amazonaws.com")
                                      ("endpointPrefix" . "es"))
                                     ("aws.auth#sigv4" ("name" . "es"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure aimloptions-input common-lisp:nil
                                    ((natural-language-query-generation-options
                                      :target-type
                                      natural-language-query-generation-options-input
                                      :member-name
                                      "NaturalLanguageQueryGenerationOptions")
                                     (s3vectors-engine :target-type
                                      s3vectors-engine :member-name
                                      "S3VectorsEngine"))
                                    (:shape-name "AIMLOptionsInput"))

(smithy/sdk/shapes:define-structure aimloptions-output common-lisp:nil
                                    ((natural-language-query-generation-options
                                      :target-type
                                      natural-language-query-generation-options-output
                                      :member-name
                                      "NaturalLanguageQueryGenerationOptions")
                                     (s3vectors-engine :target-type
                                      s3vectors-engine :member-name
                                      "S3VectorsEngine"))
                                    (:shape-name "AIMLOptionsOutput"))

(smithy/sdk/shapes:define-structure aimloptions-status common-lisp:nil
                                    ((options :target-type aimloptions-output
                                      :member-name "Options")
                                     (status :target-type option-status
                                      :member-name "Status"))
                                    (:shape-name "AIMLOptionsStatus"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type awsaccount smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure awsdomain-information common-lisp:nil
                                    ((owner-id :target-type owner-id
                                      :member-name "OwnerId")
                                     (domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (region :target-type region :member-name
                                      "Region"))
                                    (:shape-name "AWSDomainInformation"))

(smithy/sdk/shapes:define-enum awsservice-principal
    common-lisp:nil
  (:application-opensearchservice-amazonaws-com
   "application.opensearchservice.amazonaws.com"))

(smithy/sdk/shapes:define-input accept-inbound-connection-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t))
                                (:shape-name "AcceptInboundConnectionRequest"))

(smithy/sdk/shapes:define-output accept-inbound-connection-response
                                 common-lisp:nil
                                 ((connection :target-type inbound-connection
                                   :member-name "Connection"))
                                 (:shape-name
                                  "AcceptInboundConnectionResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure access-policies-status common-lisp:nil
                                    ((options :target-type policy-document
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "AccessPoliciesStatus"))

(smithy/sdk/shapes:define-enum action-severity
    common-lisp:nil
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW"))

(smithy/sdk/shapes:define-enum action-status
    common-lisp:nil
  (:pending-update "PENDING_UPDATE")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED")
  (:not-eligible "NOT_ELIGIBLE")
  (:eligible "ELIGIBLE"))

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:service-software-update "SERVICE_SOFTWARE_UPDATE")
  (:jvm-heap-size-tuning "JVM_HEAP_SIZE_TUNING")
  (:jvm-young-gen-tuning "JVM_YOUNG_GEN_TUNING"))

(smithy/sdk/shapes:define-input add-data-source-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (name :target-type data-source-name :required
                                  common-lisp:t :member-name "Name")
                                 (data-source-type :target-type
                                  data-source-type :required common-lisp:t
                                  :member-name "DataSourceType")
                                 (description :target-type
                                  data-source-description :member-name
                                  "Description"))
                                (:shape-name "AddDataSourceRequest"))

(smithy/sdk/shapes:define-output add-data-source-response common-lisp:nil
                                 ((message :target-type string :member-name
                                   "Message"))
                                 (:shape-name "AddDataSourceResponse"))

(smithy/sdk/shapes:define-input add-direct-query-data-source-request
                                common-lisp:nil
                                ((data-source-name :target-type
                                  direct-query-data-source-name :required
                                  common-lisp:t :member-name "DataSourceName")
                                 (data-source-type :target-type
                                  direct-query-data-source-type :required
                                  common-lisp:t :member-name "DataSourceType")
                                 (description :target-type
                                  direct-query-data-source-description
                                  :member-name "Description")
                                 (open-search-arns :target-type
                                  direct-query-open-search-arnlist :required
                                  common-lisp:t :member-name "OpenSearchArns")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name "AddDirectQueryDataSourceRequest"))

(smithy/sdk/shapes:define-output add-direct-query-data-source-response
                                 common-lisp:nil
                                 ((data-source-arn :target-type string
                                   :member-name "DataSourceArn"))
                                 (:shape-name
                                  "AddDirectQueryDataSourceResponse"))

(smithy/sdk/shapes:define-input add-tags-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "ARN")
                                 (tag-list :target-type tag-list :required
                                  common-lisp:t :member-name "TagList"))
                                (:shape-name "AddTagsRequest"))

(smithy/sdk/shapes:define-structure additional-limit common-lisp:nil
                                    ((limit-name :target-type limit-name
                                      :member-name "LimitName")
                                     (limit-values :target-type
                                      limit-value-list :member-name
                                      "LimitValues"))
                                    (:shape-name "AdditionalLimit"))

(smithy/sdk/shapes:define-list additional-limit-list :member additional-limit)

(smithy/sdk/shapes:define-map advanced-options :key string :value string)

(smithy/sdk/shapes:define-structure advanced-options-status common-lisp:nil
                                    ((options :target-type advanced-options
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "AdvancedOptionsStatus"))

(smithy/sdk/shapes:define-structure advanced-security-options common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (internal-user-database-enabled
                                      :target-type boolean :member-name
                                      "InternalUserDatabaseEnabled")
                                     (samloptions :target-type
                                      samloptions-output :member-name
                                      "SAMLOptions")
                                     (jwtoptions :target-type jwtoptions-output
                                      :member-name "JWTOptions")
                                     (iamfederation-options :target-type
                                      iamfederation-options-output :member-name
                                      "IAMFederationOptions")
                                     (anonymous-auth-disable-date :target-type
                                      disable-timestamp :member-name
                                      "AnonymousAuthDisableDate")
                                     (anonymous-auth-enabled :target-type
                                      boolean :member-name
                                      "AnonymousAuthEnabled"))
                                    (:shape-name "AdvancedSecurityOptions"))

(smithy/sdk/shapes:define-structure advanced-security-options-input
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (internal-user-database-enabled
                                      :target-type boolean :member-name
                                      "InternalUserDatabaseEnabled")
                                     (master-user-options :target-type
                                      master-user-options :member-name
                                      "MasterUserOptions")
                                     (samloptions :target-type
                                      samloptions-input :member-name
                                      "SAMLOptions")
                                     (jwtoptions :target-type jwtoptions-input
                                      :member-name "JWTOptions")
                                     (iamfederation-options :target-type
                                      iamfederation-options-input :member-name
                                      "IAMFederationOptions")
                                     (anonymous-auth-enabled :target-type
                                      boolean :member-name
                                      "AnonymousAuthEnabled"))
                                    (:shape-name
                                     "AdvancedSecurityOptionsInput"))

(smithy/sdk/shapes:define-structure advanced-security-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      advanced-security-options :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name
                                     "AdvancedSecurityOptionsStatus"))

(smithy/sdk/shapes:define-structure app-config common-lisp:nil
                                    ((key :target-type app-config-type
                                      :member-name "key")
                                     (value :target-type app-config-value
                                      :member-name "value"))
                                    (:shape-name "AppConfig"))

(smithy/sdk/shapes:define-enum app-config-type
    common-lisp:nil
  (:opensearch-dashboard-admin-users
   "opensearchDashboards.dashboardAdmin.users")
  (:opensearch-dashboard-admin-groups
   "opensearchDashboards.dashboardAdmin.groups"))

(smithy/sdk/shapes:define-type app-config-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list app-configs :member app-config)

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:active "ACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list application-statuses :member application-status)

(smithy/sdk/shapes:define-list application-summaries :member
                               application-summary)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (arn :target-type arn :member-name "arn")
                                     (name :target-type application-name
                                      :member-name "name")
                                     (endpoint :target-type string :member-name
                                      "endpoint")
                                     (status :target-type application-status
                                      :member-name "status")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-input associate-package-request common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (prerequisite-package-idlist :target-type
                                  package-idlist :member-name
                                  "PrerequisitePackageIDList")
                                 (association-configuration :target-type
                                  package-association-configuration
                                  :member-name "AssociationConfiguration"))
                                (:shape-name "AssociatePackageRequest"))

(smithy/sdk/shapes:define-output associate-package-response common-lisp:nil
                                 ((domain-package-details :target-type
                                   domain-package-details :member-name
                                   "DomainPackageDetails"))
                                 (:shape-name "AssociatePackageResponse"))

(smithy/sdk/shapes:define-input associate-packages-request common-lisp:nil
                                ((package-list :target-type
                                  package-details-for-association-list
                                  :required common-lisp:t :member-name
                                  "PackageList")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "AssociatePackagesRequest"))

(smithy/sdk/shapes:define-output associate-packages-response common-lisp:nil
                                 ((domain-package-details-list :target-type
                                   domain-package-details-list :member-name
                                   "DomainPackageDetailsList"))
                                 (:shape-name "AssociatePackagesResponse"))

(smithy/sdk/shapes:define-input authorize-vpc-endpoint-access-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (account :target-type awsaccount :member-name
                                  "Account")
                                 (service :target-type awsservice-principal
                                  :member-name "Service"))
                                (:shape-name
                                 "AuthorizeVpcEndpointAccessRequest"))

(smithy/sdk/shapes:define-output authorize-vpc-endpoint-access-response
                                 common-lisp:nil
                                 ((authorized-principal :target-type
                                   authorized-principal :required common-lisp:t
                                   :member-name "AuthorizedPrincipal"))
                                 (:shape-name
                                  "AuthorizeVpcEndpointAccessResponse"))

(smithy/sdk/shapes:define-structure authorized-principal common-lisp:nil
                                    ((principal-type :target-type
                                      principal-type :member-name
                                      "PrincipalType")
                                     (principal :target-type string
                                      :member-name "Principal"))
                                    (:shape-name "AuthorizedPrincipal"))

(smithy/sdk/shapes:define-list authorized-principal-list :member
                               authorized-principal)

(smithy/sdk/shapes:define-structure auto-tune common-lisp:nil
                                    ((auto-tune-type :target-type
                                      auto-tune-type :member-name
                                      "AutoTuneType")
                                     (auto-tune-details :target-type
                                      auto-tune-details :member-name
                                      "AutoTuneDetails"))
                                    (:shape-name "AutoTune"))

(smithy/sdk/shapes:define-type auto-tune-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum auto-tune-desired-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure auto-tune-details common-lisp:nil
                                    ((scheduled-auto-tune-details :target-type
                                      scheduled-auto-tune-details :member-name
                                      "ScheduledAutoTuneDetails"))
                                    (:shape-name "AutoTuneDetails"))

(smithy/sdk/shapes:define-list auto-tune-list :member auto-tune)

(smithy/sdk/shapes:define-structure auto-tune-maintenance-schedule
                                    common-lisp:nil
                                    ((start-at :target-type start-at
                                      :member-name "StartAt")
                                     (duration :target-type duration
                                      :member-name "Duration")
                                     (cron-expression-for-recurrence
                                      :target-type string :member-name
                                      "CronExpressionForRecurrence"))
                                    (:shape-name "AutoTuneMaintenanceSchedule"))

(smithy/sdk/shapes:define-list auto-tune-maintenance-schedule-list :member
                               auto-tune-maintenance-schedule)

(smithy/sdk/shapes:define-structure auto-tune-options common-lisp:nil
                                    ((desired-state :target-type
                                      auto-tune-desired-state :member-name
                                      "DesiredState")
                                     (rollback-on-disable :target-type
                                      rollback-on-disable :member-name
                                      "RollbackOnDisable")
                                     (maintenance-schedules :target-type
                                      auto-tune-maintenance-schedule-list
                                      :member-name "MaintenanceSchedules")
                                     (use-off-peak-window :target-type boolean
                                      :member-name "UseOffPeakWindow"))
                                    (:shape-name "AutoTuneOptions"))

(smithy/sdk/shapes:define-structure auto-tune-options-input common-lisp:nil
                                    ((desired-state :target-type
                                      auto-tune-desired-state :member-name
                                      "DesiredState")
                                     (maintenance-schedules :target-type
                                      auto-tune-maintenance-schedule-list
                                      :member-name "MaintenanceSchedules")
                                     (use-off-peak-window :target-type boolean
                                      :member-name "UseOffPeakWindow"))
                                    (:shape-name "AutoTuneOptionsInput"))

(smithy/sdk/shapes:define-structure auto-tune-options-output common-lisp:nil
                                    ((state :target-type auto-tune-state
                                      :member-name "State")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (use-off-peak-window :target-type boolean
                                      :member-name "UseOffPeakWindow"))
                                    (:shape-name "AutoTuneOptionsOutput"))

(smithy/sdk/shapes:define-structure auto-tune-options-status common-lisp:nil
                                    ((options :target-type auto-tune-options
                                      :member-name "Options")
                                     (status :target-type auto-tune-status
                                      :member-name "Status"))
                                    (:shape-name "AutoTuneOptionsStatus"))

(smithy/sdk/shapes:define-enum auto-tune-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:enable-in-progress "ENABLE_IN_PROGRESS")
  (:disable-in-progress "DISABLE_IN_PROGRESS")
  (:disabled-and-rollback-scheduled "DISABLED_AND_ROLLBACK_SCHEDULED")
  (:disabled-and-rollback-in-progress "DISABLED_AND_ROLLBACK_IN_PROGRESS")
  (:disabled-and-rollback-complete "DISABLED_AND_ROLLBACK_COMPLETE")
  (:disabled-and-rollback-error "DISABLED_AND_ROLLBACK_ERROR")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure auto-tune-status common-lisp:nil
                                    ((creation-date :target-type
                                      update-timestamp :required common-lisp:t
                                      :member-name "CreationDate")
                                     (update-date :target-type update-timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateDate")
                                     (update-version :target-type uint-value
                                      :member-name "UpdateVersion")
                                     (state :target-type auto-tune-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (pending-deletion :target-type boolean
                                      :member-name "PendingDeletion"))
                                    (:shape-name "AutoTuneStatus"))

(smithy/sdk/shapes:define-enum auto-tune-type
    common-lisp:nil
  (:scheduled-action "SCHEDULED_ACTION"))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure availability-zone-info common-lisp:nil
                                    ((availability-zone-name :target-type
                                      availability-zone :member-name
                                      "AvailabilityZoneName")
                                     (zone-status :target-type zone-status
                                      :member-name "ZoneStatus")
                                     (configured-data-node-count :target-type
                                      number-of-nodes :member-name
                                      "ConfiguredDataNodeCount")
                                     (available-data-node-count :target-type
                                      number-of-nodes :member-name
                                      "AvailableDataNodeCount")
                                     (total-shards :target-type
                                      number-of-shards :member-name
                                      "TotalShards")
                                     (total-un-assigned-shards :target-type
                                      number-of-shards :member-name
                                      "TotalUnAssignedShards"))
                                    (:shape-name "AvailabilityZoneInfo"))

(smithy/sdk/shapes:define-list availability-zone-info-list :member
                               availability-zone-info)

(smithy/sdk/shapes:define-list availability-zone-list :member availability-zone)

(smithy/sdk/shapes:define-type backend-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error base-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BaseException") (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-domain-config-change-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name "CancelDomainConfigChangeRequest"))

(smithy/sdk/shapes:define-output cancel-domain-config-change-response
                                 common-lisp:nil
                                 ((cancelled-change-ids :target-type guidlist
                                   :member-name "CancelledChangeIds")
                                  (cancelled-change-properties :target-type
                                   cancelled-change-property-list :member-name
                                   "CancelledChangeProperties")
                                  (dry-run :target-type dry-run :member-name
                                   "DryRun"))
                                 (:shape-name
                                  "CancelDomainConfigChangeResponse"))

(smithy/sdk/shapes:define-input cancel-service-software-update-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name
                                 "CancelServiceSoftwareUpdateRequest"))

(smithy/sdk/shapes:define-output cancel-service-software-update-response
                                 common-lisp:nil
                                 ((service-software-options :target-type
                                   service-software-options :member-name
                                   "ServiceSoftwareOptions"))
                                 (:shape-name
                                  "CancelServiceSoftwareUpdateResponse"))

(smithy/sdk/shapes:define-structure cancelled-change-property common-lisp:nil
                                    ((property-name :target-type string
                                      :member-name "PropertyName")
                                     (cancelled-value :target-type string
                                      :member-name "CancelledValue")
                                     (active-value :target-type string
                                      :member-name "ActiveValue"))
                                    (:shape-name "CancelledChangeProperty"))

(smithy/sdk/shapes:define-list cancelled-change-property-list :member
                               cancelled-change-property)

(smithy/sdk/shapes:define-structure change-progress-details common-lisp:nil
                                    ((change-id :target-type guid :member-name
                                      "ChangeId")
                                     (message :target-type message :member-name
                                      "Message")
                                     (config-change-status :target-type
                                      config-change-status :member-name
                                      "ConfigChangeStatus")
                                     (initiated-by :target-type initiated-by
                                      :member-name "InitiatedBy")
                                     (start-time :target-type update-timestamp
                                      :member-name "StartTime")
                                     (last-updated-time :target-type
                                      update-timestamp :member-name
                                      "LastUpdatedTime"))
                                    (:shape-name "ChangeProgressDetails"))

(smithy/sdk/shapes:define-structure change-progress-stage common-lisp:nil
                                    ((name :target-type
                                      change-progress-stage-name :member-name
                                      "Name")
                                     (status :target-type
                                      change-progress-stage-status :member-name
                                      "Status")
                                     (description :target-type description
                                      :member-name "Description")
                                     (last-updated :target-type last-updated
                                      :member-name "LastUpdated"))
                                    (:shape-name "ChangeProgressStage"))

(smithy/sdk/shapes:define-list change-progress-stage-list :member
                               change-progress-stage)

(smithy/sdk/shapes:define-type change-progress-stage-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type change-progress-stage-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure change-progress-status-details
                                    common-lisp:nil
                                    ((change-id :target-type guid :member-name
                                      "ChangeId")
                                     (start-time :target-type update-timestamp
                                      :member-name "StartTime")
                                     (status :target-type overall-change-status
                                      :member-name "Status")
                                     (pending-properties :target-type
                                      string-list :member-name
                                      "PendingProperties")
                                     (completed-properties :target-type
                                      string-list :member-name
                                      "CompletedProperties")
                                     (total-number-of-stages :target-type
                                      total-number-of-stages :member-name
                                      "TotalNumberOfStages")
                                     (change-progress-stages :target-type
                                      change-progress-stage-list :member-name
                                      "ChangeProgressStages")
                                     (last-updated-time :target-type
                                      update-timestamp :member-name
                                      "LastUpdatedTime")
                                     (config-change-status :target-type
                                      config-change-status :member-name
                                      "ConfigChangeStatus")
                                     (initiated-by :target-type initiated-by
                                      :member-name "InitiatedBy"))
                                    (:shape-name "ChangeProgressStatusDetails"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-direct-query-data-source
                                    common-lisp:nil
                                    ((role-arn :target-type
                                      direct-query-data-source-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn"))
                                    (:shape-name
                                     "CloudWatchDirectQueryDataSource"))

(smithy/sdk/shapes:define-type cloud-watch-logs-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cluster-config common-lisp:nil
                                    ((instance-type :target-type
                                      open-search-partition-instance-type
                                      :member-name "InstanceType")
                                     (instance-count :target-type integer-class
                                      :member-name "InstanceCount")
                                     (dedicated-master-enabled :target-type
                                      boolean :member-name
                                      "DedicatedMasterEnabled")
                                     (zone-awareness-enabled :target-type
                                      boolean :member-name
                                      "ZoneAwarenessEnabled")
                                     (zone-awareness-config :target-type
                                      zone-awareness-config :member-name
                                      "ZoneAwarenessConfig")
                                     (dedicated-master-type :target-type
                                      open-search-partition-instance-type
                                      :member-name "DedicatedMasterType")
                                     (dedicated-master-count :target-type
                                      integer-class :member-name
                                      "DedicatedMasterCount")
                                     (warm-enabled :target-type boolean
                                      :member-name "WarmEnabled")
                                     (warm-type :target-type
                                      open-search-warm-partition-instance-type
                                      :member-name "WarmType")
                                     (warm-count :target-type integer-class
                                      :member-name "WarmCount")
                                     (cold-storage-options :target-type
                                      cold-storage-options :member-name
                                      "ColdStorageOptions")
                                     (multi-azwith-standby-enabled :target-type
                                      boolean :member-name
                                      "MultiAZWithStandbyEnabled")
                                     (node-options :target-type
                                      node-options-list :member-name
                                      "NodeOptions"))
                                    (:shape-name "ClusterConfig"))

(smithy/sdk/shapes:define-structure cluster-config-status common-lisp:nil
                                    ((options :target-type cluster-config
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "ClusterConfigStatus"))

(smithy/sdk/shapes:define-structure cognito-options common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (user-pool-id :target-type user-pool-id
                                      :member-name "UserPoolId")
                                     (identity-pool-id :target-type
                                      identity-pool-id :member-name
                                      "IdentityPoolId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "CognitoOptions"))

(smithy/sdk/shapes:define-structure cognito-options-status common-lisp:nil
                                    ((options :target-type cognito-options
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "CognitoOptionsStatus"))

(smithy/sdk/shapes:define-structure cold-storage-options common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name "ColdStorageOptions"))

(smithy/sdk/shapes:define-type commit-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compatible-versions-list :member
                               compatible-versions-map)

(smithy/sdk/shapes:define-structure compatible-versions-map common-lisp:nil
                                    ((source-version :target-type
                                      version-string :member-name
                                      "SourceVersion")
                                     (target-versions :target-type version-list
                                      :member-name "TargetVersions"))
                                    (:shape-name "CompatibleVersionsMap"))

(smithy/sdk/shapes:define-enum config-change-status
    common-lisp:nil
  (:pending "Pending")
  (:initializing "Initializing")
  (:validating "Validating")
  (:validation-failed "ValidationFailed")
  (:applying-changes "ApplyingChanges")
  (:completed "Completed")
  (:pending-user-input "PendingUserInput")
  (:cancelled "Cancelled"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type connection-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-mode
    common-lisp:nil
  (:direct "DIRECT")
  (:vpc-endpoint "VPC_ENDPOINT"))

(smithy/sdk/shapes:define-structure connection-properties common-lisp:nil
                                    ((endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (cross-cluster-search :target-type
                                      cross-cluster-search-connection-properties
                                      :member-name "CrossClusterSearch"))
                                    (:shape-name "ConnectionProperties"))

(smithy/sdk/shapes:define-type connection-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (name :target-type application-name :required
                                  common-lisp:t :member-name "name")
                                 (data-sources :target-type data-sources
                                  :member-name "dataSources")
                                 (iam-identity-center-options :target-type
                                  iam-identity-center-options-input
                                  :member-name "iamIdentityCenterOptions")
                                 (app-configs :target-type app-configs
                                  :member-name "appConfigs")
                                 (tag-list :target-type tag-list :member-name
                                  "tagList"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((id :target-type id :member-name "id")
                                  (name :target-type application-name
                                   :member-name "name")
                                  (arn :target-type arn :member-name "arn")
                                  (data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (iam-identity-center-options :target-type
                                   iam-identity-center-options :member-name
                                   "iamIdentityCenterOptions")
                                  (app-configs :target-type app-configs
                                   :member-name "appConfigs")
                                  (tag-list :target-type tag-list :member-name
                                   "tagList")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (engine-version :target-type version-string
                                  :member-name "EngineVersion")
                                 (cluster-config :target-type cluster-config
                                  :member-name "ClusterConfig")
                                 (ebsoptions :target-type ebsoptions
                                  :member-name "EBSOptions")
                                 (access-policies :target-type policy-document
                                  :member-name "AccessPolicies")
                                 (ipaddress-type :target-type ipaddress-type
                                  :member-name "IPAddressType")
                                 (snapshot-options :target-type
                                  snapshot-options :member-name
                                  "SnapshotOptions")
                                 (vpcoptions :target-type vpcoptions
                                  :member-name "VPCOptions")
                                 (cognito-options :target-type cognito-options
                                  :member-name "CognitoOptions")
                                 (encryption-at-rest-options :target-type
                                  encryption-at-rest-options :member-name
                                  "EncryptionAtRestOptions")
                                 (node-to-node-encryption-options :target-type
                                  node-to-node-encryption-options :member-name
                                  "NodeToNodeEncryptionOptions")
                                 (advanced-options :target-type
                                  advanced-options :member-name
                                  "AdvancedOptions")
                                 (log-publishing-options :target-type
                                  log-publishing-options :member-name
                                  "LogPublishingOptions")
                                 (domain-endpoint-options :target-type
                                  domain-endpoint-options :member-name
                                  "DomainEndpointOptions")
                                 (advanced-security-options :target-type
                                  advanced-security-options-input :member-name
                                  "AdvancedSecurityOptions")
                                 (identity-center-options :target-type
                                  identity-center-options-input :member-name
                                  "IdentityCenterOptions")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList")
                                 (auto-tune-options :target-type
                                  auto-tune-options-input :member-name
                                  "AutoTuneOptions")
                                 (off-peak-window-options :target-type
                                  off-peak-window-options :member-name
                                  "OffPeakWindowOptions")
                                 (software-update-options :target-type
                                  software-update-options :member-name
                                  "SoftwareUpdateOptions")
                                 (aimloptions :target-type aimloptions-input
                                  :member-name "AIMLOptions"))
                                (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-output create-domain-response common-lisp:nil
                                 ((domain-status :target-type domain-status
                                   :member-name "DomainStatus"))
                                 (:shape-name "CreateDomainResponse"))

(smithy/sdk/shapes:define-input create-outbound-connection-request
                                common-lisp:nil
                                ((local-domain-info :target-type
                                  domain-information-container :required
                                  common-lisp:t :member-name "LocalDomainInfo")
                                 (remote-domain-info :target-type
                                  domain-information-container :required
                                  common-lisp:t :member-name
                                  "RemoteDomainInfo")
                                 (connection-alias :target-type
                                  connection-alias :required common-lisp:t
                                  :member-name "ConnectionAlias")
                                 (connection-mode :target-type connection-mode
                                  :member-name "ConnectionMode")
                                 (connection-properties :target-type
                                  connection-properties :member-name
                                  "ConnectionProperties"))
                                (:shape-name "CreateOutboundConnectionRequest"))

(smithy/sdk/shapes:define-output create-outbound-connection-response
                                 common-lisp:nil
                                 ((local-domain-info :target-type
                                   domain-information-container :member-name
                                   "LocalDomainInfo")
                                  (remote-domain-info :target-type
                                   domain-information-container :member-name
                                   "RemoteDomainInfo")
                                  (connection-alias :target-type
                                   connection-alias :member-name
                                   "ConnectionAlias")
                                  (connection-status :target-type
                                   outbound-connection-status :member-name
                                   "ConnectionStatus")
                                  (connection-id :target-type connection-id
                                   :member-name "ConnectionId")
                                  (connection-mode :target-type connection-mode
                                   :member-name "ConnectionMode")
                                  (connection-properties :target-type
                                   connection-properties :member-name
                                   "ConnectionProperties"))
                                 (:shape-name
                                  "CreateOutboundConnectionResponse"))

(smithy/sdk/shapes:define-input create-package-request common-lisp:nil
                                ((package-name :target-type package-name
                                  :required common-lisp:t :member-name
                                  "PackageName")
                                 (package-type :target-type package-type
                                  :required common-lisp:t :member-name
                                  "PackageType")
                                 (package-description :target-type
                                  package-description :member-name
                                  "PackageDescription")
                                 (package-source :target-type package-source
                                  :required common-lisp:t :member-name
                                  "PackageSource")
                                 (package-configuration :target-type
                                  package-configuration :member-name
                                  "PackageConfiguration")
                                 (engine-version :target-type engine-version
                                  :member-name "EngineVersion")
                                 (package-vending-options :target-type
                                  package-vending-options :member-name
                                  "PackageVendingOptions")
                                 (package-encryption-options :target-type
                                  package-encryption-options :member-name
                                  "PackageEncryptionOptions"))
                                (:shape-name "CreatePackageRequest"))

(smithy/sdk/shapes:define-output create-package-response common-lisp:nil
                                 ((package-details :target-type package-details
                                   :member-name "PackageDetails"))
                                 (:shape-name "CreatePackageResponse"))

(smithy/sdk/shapes:define-input create-vpc-endpoint-request common-lisp:nil
                                ((domain-arn :target-type domain-arn :required
                                  common-lisp:t :member-name "DomainArn")
                                 (vpc-options :target-type vpcoptions :required
                                  common-lisp:t :member-name "VpcOptions")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateVpcEndpointRequest"))

(smithy/sdk/shapes:define-output create-vpc-endpoint-response common-lisp:nil
                                 ((vpc-endpoint :target-type vpc-endpoint
                                   :required common-lisp:t :member-name
                                   "VpcEndpoint"))
                                 (:shape-name "CreateVpcEndpointResponse"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure cross-cluster-search-connection-properties
                                    common-lisp:nil
                                    ((skip-unavailable :target-type
                                      skip-unavailable-status :member-name
                                      "SkipUnavailable"))
                                    (:shape-name
                                     "CrossClusterSearchConnectionProperties"))

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((data-source-arn :target-type arn
                                      :member-name "dataSourceArn")
                                     (data-source-description :target-type
                                      data-source-description :member-name
                                      "dataSourceDescription"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-type data-source-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-source-details common-lisp:nil
                                    ((data-source-type :target-type
                                      data-source-type :member-name
                                      "DataSourceType")
                                     (name :target-type data-source-name
                                      :member-name "Name")
                                     (description :target-type
                                      data-source-description :member-name
                                      "Description")
                                     (status :target-type data-source-status
                                      :member-name "Status"))
                                    (:shape-name "DataSourceDetails"))

(smithy/sdk/shapes:define-list data-source-list :member data-source-details)

(smithy/sdk/shapes:define-type data-source-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-source-status
    common-lisp:nil
  (:active "ACTIVE")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-union data-source-type common-lisp:nil
                                ((s3glue-data-catalog :target-type
                                  s3glue-data-catalog :member-name
                                  "S3GlueDataCatalog"))
                                (:shape-name "DataSourceType"))

(smithy/sdk/shapes:define-list data-sources :member data-source)

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-data-source-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (name :target-type data-source-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDataSourceRequest"))

(smithy/sdk/shapes:define-output delete-data-source-response common-lisp:nil
                                 ((message :target-type string :member-name
                                   "Message"))
                                 (:shape-name "DeleteDataSourceResponse"))

(smithy/sdk/shapes:define-input delete-direct-query-data-source-request
                                common-lisp:nil
                                ((data-source-name :target-type
                                  direct-query-data-source-name :required
                                  common-lisp:t :member-name "DataSourceName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteDirectQueryDataSourceRequest"))

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-output delete-domain-response common-lisp:nil
                                 ((domain-status :target-type domain-status
                                   :member-name "DomainStatus"))
                                 (:shape-name "DeleteDomainResponse"))

(smithy/sdk/shapes:define-input delete-inbound-connection-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t))
                                (:shape-name "DeleteInboundConnectionRequest"))

(smithy/sdk/shapes:define-output delete-inbound-connection-response
                                 common-lisp:nil
                                 ((connection :target-type inbound-connection
                                   :member-name "Connection"))
                                 (:shape-name
                                  "DeleteInboundConnectionResponse"))

(smithy/sdk/shapes:define-input delete-outbound-connection-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t))
                                (:shape-name "DeleteOutboundConnectionRequest"))

(smithy/sdk/shapes:define-output delete-outbound-connection-response
                                 common-lisp:nil
                                 ((connection :target-type outbound-connection
                                   :member-name "Connection"))
                                 (:shape-name
                                  "DeleteOutboundConnectionResponse"))

(smithy/sdk/shapes:define-input delete-package-request common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePackageRequest"))

(smithy/sdk/shapes:define-output delete-package-response common-lisp:nil
                                 ((package-details :target-type package-details
                                   :member-name "PackageDetails"))
                                 (:shape-name "DeletePackageResponse"))

(smithy/sdk/shapes:define-input delete-vpc-endpoint-request common-lisp:nil
                                ((vpc-endpoint-id :target-type vpc-endpoint-id
                                  :required common-lisp:t :member-name
                                  "VpcEndpointId" :http-label common-lisp:t))
                                (:shape-name "DeleteVpcEndpointRequest"))

(smithy/sdk/shapes:define-output delete-vpc-endpoint-response common-lisp:nil
                                 ((vpc-endpoint-summary :target-type
                                   vpc-endpoint-summary :required common-lisp:t
                                   :member-name "VpcEndpointSummary"))
                                 (:shape-name "DeleteVpcEndpointResponse"))

(smithy/sdk/shapes:define-error dependency-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DependencyFailureException")
                                (:error-code 424))

(smithy/sdk/shapes:define-type deployment-close-date-time-stamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:pending-update "PENDING_UPDATE")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:not-eligible "NOT_ELIGIBLE")
  (:eligible "ELIGIBLE"))

(smithy/sdk/shapes:define-type deployment-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-domain-auto-tunes-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeDomainAutoTunesRequest"))

(smithy/sdk/shapes:define-output describe-domain-auto-tunes-response
                                 common-lisp:nil
                                 ((auto-tunes :target-type auto-tune-list
                                   :member-name "AutoTunes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeDomainAutoTunesResponse"))

(smithy/sdk/shapes:define-input describe-domain-change-progress-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (change-id :target-type guid :member-name
                                  "ChangeId" :http-query "changeid"))
                                (:shape-name
                                 "DescribeDomainChangeProgressRequest"))

(smithy/sdk/shapes:define-output describe-domain-change-progress-response
                                 common-lisp:nil
                                 ((change-progress-status :target-type
                                   change-progress-status-details :member-name
                                   "ChangeProgressStatus"))
                                 (:shape-name
                                  "DescribeDomainChangeProgressResponse"))

(smithy/sdk/shapes:define-input describe-domain-config-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "DescribeDomainConfigRequest"))

(smithy/sdk/shapes:define-output describe-domain-config-response
                                 common-lisp:nil
                                 ((domain-config :target-type domain-config
                                   :required common-lisp:t :member-name
                                   "DomainConfig"))
                                 (:shape-name "DescribeDomainConfigResponse"))

(smithy/sdk/shapes:define-input describe-domain-health-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "DescribeDomainHealthRequest"))

(smithy/sdk/shapes:define-output describe-domain-health-response
                                 common-lisp:nil
                                 ((domain-state :target-type domain-state
                                   :member-name "DomainState")
                                  (availability-zone-count :target-type
                                   number-of-azs :member-name
                                   "AvailabilityZoneCount")
                                  (active-availability-zone-count :target-type
                                   number-of-azs :member-name
                                   "ActiveAvailabilityZoneCount")
                                  (stand-by-availability-zone-count
                                   :target-type number-of-azs :member-name
                                   "StandByAvailabilityZoneCount")
                                  (data-node-count :target-type number-of-nodes
                                   :member-name "DataNodeCount")
                                  (dedicated-master :target-type boolean
                                   :member-name "DedicatedMaster")
                                  (master-eligible-node-count :target-type
                                   number-of-nodes :member-name
                                   "MasterEligibleNodeCount")
                                  (warm-node-count :target-type number-of-nodes
                                   :member-name "WarmNodeCount")
                                  (master-node :target-type master-node-status
                                   :member-name "MasterNode")
                                  (cluster-health :target-type domain-health
                                   :member-name "ClusterHealth")
                                  (total-shards :target-type number-of-shards
                                   :member-name "TotalShards")
                                  (total-un-assigned-shards :target-type
                                   number-of-shards :member-name
                                   "TotalUnAssignedShards")
                                  (environment-information :target-type
                                   environment-info-list :member-name
                                   "EnvironmentInformation"))
                                 (:shape-name "DescribeDomainHealthResponse"))

(smithy/sdk/shapes:define-input describe-domain-nodes-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "DescribeDomainNodesRequest"))

(smithy/sdk/shapes:define-output describe-domain-nodes-response common-lisp:nil
                                 ((domain-nodes-status-list :target-type
                                   domain-nodes-status-list :member-name
                                   "DomainNodesStatusList"))
                                 (:shape-name "DescribeDomainNodesResponse"))

(smithy/sdk/shapes:define-input describe-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "DescribeDomainRequest"))

(smithy/sdk/shapes:define-output describe-domain-response common-lisp:nil
                                 ((domain-status :target-type domain-status
                                   :required common-lisp:t :member-name
                                   "DomainStatus"))
                                 (:shape-name "DescribeDomainResponse"))

(smithy/sdk/shapes:define-input describe-domains-request common-lisp:nil
                                ((domain-names :target-type domain-name-list
                                  :required common-lisp:t :member-name
                                  "DomainNames"))
                                (:shape-name "DescribeDomainsRequest"))

(smithy/sdk/shapes:define-output describe-domains-response common-lisp:nil
                                 ((domain-status-list :target-type
                                   domain-status-list :required common-lisp:t
                                   :member-name "DomainStatusList"))
                                 (:shape-name "DescribeDomainsResponse"))

(smithy/sdk/shapes:define-input describe-dry-run-progress-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (dry-run-id :target-type guid :member-name
                                  "DryRunId" :http-query "dryRunId")
                                 (load-dry-run-config :target-type boolean
                                  :member-name "LoadDryRunConfig" :http-query
                                  "loadDryRunConfig"))
                                (:shape-name "DescribeDryRunProgressRequest"))

(smithy/sdk/shapes:define-output describe-dry-run-progress-response
                                 common-lisp:nil
                                 ((dry-run-progress-status :target-type
                                   dry-run-progress-status :member-name
                                   "DryRunProgressStatus")
                                  (dry-run-config :target-type domain-status
                                   :member-name "DryRunConfig")
                                  (dry-run-results :target-type dry-run-results
                                   :member-name "DryRunResults"))
                                 (:shape-name "DescribeDryRunProgressResponse"))

(smithy/sdk/shapes:define-input describe-inbound-connections-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeInboundConnectionsRequest"))

(smithy/sdk/shapes:define-output describe-inbound-connections-response
                                 common-lisp:nil
                                 ((connections :target-type inbound-connections
                                   :member-name "Connections")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeInboundConnectionsResponse"))

(smithy/sdk/shapes:define-input describe-instance-type-limits-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :member-name "DomainName" :http-query
                                  "domainName")
                                 (instance-type :target-type
                                  open-search-partition-instance-type :required
                                  common-lisp:t :member-name "InstanceType"
                                  :http-label common-lisp:t)
                                 (engine-version :target-type version-string
                                  :required common-lisp:t :member-name
                                  "EngineVersion" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeInstanceTypeLimitsRequest"))

(smithy/sdk/shapes:define-output describe-instance-type-limits-response
                                 common-lisp:nil
                                 ((limits-by-role :target-type limits-by-role
                                   :member-name "LimitsByRole"))
                                 (:shape-name
                                  "DescribeInstanceTypeLimitsResponse"))

(smithy/sdk/shapes:define-input describe-outbound-connections-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeOutboundConnectionsRequest"))

(smithy/sdk/shapes:define-output describe-outbound-connections-response
                                 common-lisp:nil
                                 ((connections :target-type
                                   outbound-connections :member-name
                                   "Connections")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeOutboundConnectionsResponse"))

(smithy/sdk/shapes:define-structure describe-packages-filter common-lisp:nil
                                    ((name :target-type
                                      describe-packages-filter-name
                                      :member-name "Name")
                                     (value :target-type
                                      describe-packages-filter-values
                                      :member-name "Value"))
                                    (:shape-name "DescribePackagesFilter"))

(smithy/sdk/shapes:define-list describe-packages-filter-list :member
                               describe-packages-filter)

(smithy/sdk/shapes:define-enum describe-packages-filter-name
    common-lisp:nil
  (:package-id "PackageID")
  (:package-name "PackageName")
  (:package-status "PackageStatus")
  (:package-type "PackageType")
  (:engine-version "EngineVersion")
  (:package-owner "PackageOwner"))

(smithy/sdk/shapes:define-type describe-packages-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list describe-packages-filter-values :member
                               describe-packages-filter-value)

(smithy/sdk/shapes:define-input describe-packages-request common-lisp:nil
                                ((filters :target-type
                                  describe-packages-filter-list :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribePackagesRequest"))

(smithy/sdk/shapes:define-output describe-packages-response common-lisp:nil
                                 ((package-details-list :target-type
                                   package-details-list :member-name
                                   "PackageDetailsList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribePackagesResponse"))

(smithy/sdk/shapes:define-input describe-reserved-instance-offerings-request
                                common-lisp:nil
                                ((reserved-instance-offering-id :target-type
                                  guid :member-name
                                  "ReservedInstanceOfferingId" :http-query
                                  "offeringId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "DescribeReservedInstanceOfferingsRequest"))

(smithy/sdk/shapes:define-output describe-reserved-instance-offerings-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (reserved-instance-offerings :target-type
                                   reserved-instance-offering-list :member-name
                                   "ReservedInstanceOfferings"))
                                 (:shape-name
                                  "DescribeReservedInstanceOfferingsResponse"))

(smithy/sdk/shapes:define-input describe-reserved-instances-request
                                common-lisp:nil
                                ((reserved-instance-id :target-type guid
                                  :member-name "ReservedInstanceId" :http-query
                                  "reservationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "DescribeReservedInstancesRequest"))

(smithy/sdk/shapes:define-output describe-reserved-instances-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (reserved-instances :target-type
                                   reserved-instance-list :member-name
                                   "ReservedInstances"))
                                 (:shape-name
                                  "DescribeReservedInstancesResponse"))

(smithy/sdk/shapes:define-input describe-vpc-endpoints-request common-lisp:nil
                                ((vpc-endpoint-ids :target-type
                                  vpc-endpoint-id-list :required common-lisp:t
                                  :member-name "VpcEndpointIds"))
                                (:shape-name "DescribeVpcEndpointsRequest"))

(smithy/sdk/shapes:define-output describe-vpc-endpoints-response
                                 common-lisp:nil
                                 ((vpc-endpoints :target-type vpc-endpoints
                                   :required common-lisp:t :member-name
                                   "VpcEndpoints")
                                  (vpc-endpoint-errors :target-type
                                   vpc-endpoint-error-list :required
                                   common-lisp:t :member-name
                                   "VpcEndpointErrors"))
                                 (:shape-name "DescribeVpcEndpointsResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure direct-query-data-source common-lisp:nil
                                    ((data-source-name :target-type
                                      direct-query-data-source-name
                                      :member-name "DataSourceName")
                                     (data-source-type :target-type
                                      direct-query-data-source-type
                                      :member-name "DataSourceType")
                                     (description :target-type
                                      direct-query-data-source-description
                                      :member-name "Description")
                                     (open-search-arns :target-type
                                      direct-query-open-search-arnlist
                                      :member-name "OpenSearchArns")
                                     (data-source-arn :target-type string
                                      :member-name "DataSourceArn")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "DirectQueryDataSource"))

(smithy/sdk/shapes:define-type direct-query-data-source-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list direct-query-data-source-list :member
                               direct-query-data-source)

(smithy/sdk/shapes:define-type direct-query-data-source-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type direct-query-data-source-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union direct-query-data-source-type common-lisp:nil
                                ((cloud-watch-log :target-type
                                  cloud-watch-direct-query-data-source
                                  :member-name "CloudWatchLog")
                                 (security-lake :target-type
                                  security-lake-direct-query-data-source
                                  :member-name "SecurityLake"))
                                (:shape-name "DirectQueryDataSourceType"))

(smithy/sdk/shapes:define-list direct-query-open-search-arnlist :member arn)

(smithy/sdk/shapes:define-type disable-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error disabled-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DisabledOperationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input dissociate-package-request common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "DissociatePackageRequest"))

(smithy/sdk/shapes:define-output dissociate-package-response common-lisp:nil
                                 ((domain-package-details :target-type
                                   domain-package-details :member-name
                                   "DomainPackageDetails"))
                                 (:shape-name "DissociatePackageResponse"))

(smithy/sdk/shapes:define-input dissociate-packages-request common-lisp:nil
                                ((package-list :target-type package-idlist
                                  :required common-lisp:t :member-name
                                  "PackageList")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "DissociatePackagesRequest"))

(smithy/sdk/shapes:define-output dissociate-packages-response common-lisp:nil
                                 ((domain-package-details-list :target-type
                                   domain-package-details-list :member-name
                                   "DomainPackageDetailsList"))
                                 (:shape-name "DissociatePackagesResponse"))

(smithy/sdk/shapes:define-type domain-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-config common-lisp:nil
                                    ((engine-version :target-type
                                      version-status :member-name
                                      "EngineVersion")
                                     (cluster-config :target-type
                                      cluster-config-status :member-name
                                      "ClusterConfig")
                                     (ebsoptions :target-type ebsoptions-status
                                      :member-name "EBSOptions")
                                     (access-policies :target-type
                                      access-policies-status :member-name
                                      "AccessPolicies")
                                     (ipaddress-type :target-type
                                      ipaddress-type-status :member-name
                                      "IPAddressType")
                                     (snapshot-options :target-type
                                      snapshot-options-status :member-name
                                      "SnapshotOptions")
                                     (vpcoptions :target-type
                                      vpcderived-info-status :member-name
                                      "VPCOptions")
                                     (cognito-options :target-type
                                      cognito-options-status :member-name
                                      "CognitoOptions")
                                     (encryption-at-rest-options :target-type
                                      encryption-at-rest-options-status
                                      :member-name "EncryptionAtRestOptions")
                                     (node-to-node-encryption-options
                                      :target-type
                                      node-to-node-encryption-options-status
                                      :member-name
                                      "NodeToNodeEncryptionOptions")
                                     (advanced-options :target-type
                                      advanced-options-status :member-name
                                      "AdvancedOptions")
                                     (log-publishing-options :target-type
                                      log-publishing-options-status
                                      :member-name "LogPublishingOptions")
                                     (domain-endpoint-options :target-type
                                      domain-endpoint-options-status
                                      :member-name "DomainEndpointOptions")
                                     (advanced-security-options :target-type
                                      advanced-security-options-status
                                      :member-name "AdvancedSecurityOptions")
                                     (identity-center-options :target-type
                                      identity-center-options-status
                                      :member-name "IdentityCenterOptions")
                                     (auto-tune-options :target-type
                                      auto-tune-options-status :member-name
                                      "AutoTuneOptions")
                                     (change-progress-details :target-type
                                      change-progress-details :member-name
                                      "ChangeProgressDetails")
                                     (off-peak-window-options :target-type
                                      off-peak-window-options-status
                                      :member-name "OffPeakWindowOptions")
                                     (software-update-options :target-type
                                      software-update-options-status
                                      :member-name "SoftwareUpdateOptions")
                                     (modifying-properties :target-type
                                      modifying-properties-list :member-name
                                      "ModifyingProperties")
                                     (aimloptions :target-type
                                      aimloptions-status :member-name
                                      "AIMLOptions"))
                                    (:shape-name "DomainConfig"))

(smithy/sdk/shapes:define-structure domain-endpoint-options common-lisp:nil
                                    ((enforce-https :target-type boolean
                                      :member-name "EnforceHTTPS")
                                     (tlssecurity-policy :target-type
                                      tlssecurity-policy :member-name
                                      "TLSSecurityPolicy")
                                     (custom-endpoint-enabled :target-type
                                      boolean :member-name
                                      "CustomEndpointEnabled")
                                     (custom-endpoint :target-type
                                      domain-name-fqdn :member-name
                                      "CustomEndpoint")
                                     (custom-endpoint-certificate-arn
                                      :target-type arn :member-name
                                      "CustomEndpointCertificateArn"))
                                    (:shape-name "DomainEndpointOptions"))

(smithy/sdk/shapes:define-structure domain-endpoint-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      domain-endpoint-options :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "DomainEndpointOptionsStatus"))

(smithy/sdk/shapes:define-enum domain-health
    common-lisp:nil
  (:red "Red")
  (:yellow "Yellow")
  (:green "Green")
  (:not-available "NotAvailable"))

(smithy/sdk/shapes:define-type domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-info common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (engine-type :target-type engine-type
                                      :member-name "EngineType"))
                                    (:shape-name "DomainInfo"))

(smithy/sdk/shapes:define-list domain-info-list :member domain-info)

(smithy/sdk/shapes:define-structure domain-information-container
                                    common-lisp:nil
                                    ((awsdomain-information :target-type
                                      awsdomain-information :member-name
                                      "AWSDomainInformation"))
                                    (:shape-name "DomainInformationContainer"))

(smithy/sdk/shapes:define-structure domain-maintenance-details common-lisp:nil
                                    ((maintenance-id :target-type request-id
                                      :member-name "MaintenanceId")
                                     (domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (action :target-type maintenance-type
                                      :member-name "Action")
                                     (node-id :target-type node-id :member-name
                                      "NodeId")
                                     (status :target-type maintenance-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      maintenance-status-message :member-name
                                      "StatusMessage")
                                     (created-at :target-type update-timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type update-timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "DomainMaintenanceDetails"))

(smithy/sdk/shapes:define-list domain-maintenance-list :member
                               domain-maintenance-details)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name-fqdn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-name-list :member domain-name)

(smithy/sdk/shapes:define-structure domain-nodes-status common-lisp:nil
                                    ((node-id :target-type node-id :member-name
                                      "NodeId")
                                     (node-type :target-type node-type
                                      :member-name "NodeType")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "AvailabilityZone")
                                     (instance-type :target-type
                                      open-search-partition-instance-type
                                      :member-name "InstanceType")
                                     (node-status :target-type node-status
                                      :member-name "NodeStatus")
                                     (storage-type :target-type
                                      storage-type-name :member-name
                                      "StorageType")
                                     (storage-volume-type :target-type
                                      volume-type :member-name
                                      "StorageVolumeType")
                                     (storage-size :target-type volume-size
                                      :member-name "StorageSize"))
                                    (:shape-name "DomainNodesStatus"))

(smithy/sdk/shapes:define-list domain-nodes-status-list :member
                               domain-nodes-status)

(smithy/sdk/shapes:define-structure domain-package-details common-lisp:nil
                                    ((package-id :target-type package-id
                                      :member-name "PackageID")
                                     (package-name :target-type package-name
                                      :member-name "PackageName")
                                     (package-type :target-type package-type
                                      :member-name "PackageType")
                                     (last-updated :target-type last-updated
                                      :member-name "LastUpdated")
                                     (domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (domain-package-status :target-type
                                      domain-package-status :member-name
                                      "DomainPackageStatus")
                                     (package-version :target-type
                                      package-version :member-name
                                      "PackageVersion")
                                     (prerequisite-package-idlist :target-type
                                      package-idlist :member-name
                                      "PrerequisitePackageIDList")
                                     (reference-path :target-type
                                      reference-path :member-name
                                      "ReferencePath")
                                     (error-details :target-type error-details
                                      :member-name "ErrorDetails")
                                     (association-configuration :target-type
                                      package-association-configuration
                                      :member-name "AssociationConfiguration"))
                                    (:shape-name "DomainPackageDetails"))

(smithy/sdk/shapes:define-list domain-package-details-list :member
                               domain-package-details)

(smithy/sdk/shapes:define-enum domain-package-status
    common-lisp:nil
  (:associating "ASSOCIATING")
  (:association-failed "ASSOCIATION_FAILED")
  (:active "ACTIVE")
  (:dissociating "DISSOCIATING")
  (:dissociation-failed "DISSOCIATION_FAILED"))

(smithy/sdk/shapes:define-enum domain-processing-status-type
    common-lisp:nil
  (:creating "Creating")
  (:active "Active")
  (:modifying "Modifying")
  (:upgrading "UpgradingEngineVersion")
  (:updating "UpdatingServiceSoftware")
  (:isolated "Isolated")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-enum domain-state
    common-lisp:nil
  (:active "Active")
  (:processing "Processing")
  (:not-available "NotAvailable"))

(smithy/sdk/shapes:define-structure domain-status common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "DomainId")
                                     (domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "ARN")
                                     (created :target-type boolean :member-name
                                      "Created")
                                     (deleted :target-type boolean :member-name
                                      "Deleted")
                                     (endpoint :target-type service-url
                                      :member-name "Endpoint")
                                     (endpoint-v2 :target-type service-url
                                      :member-name "EndpointV2")
                                     (endpoints :target-type endpoints-map
                                      :member-name "Endpoints")
                                     (domain-endpoint-v2hosted-zone-id
                                      :target-type hosted-zone-id :member-name
                                      "DomainEndpointV2HostedZoneId")
                                     (processing :target-type boolean
                                      :member-name "Processing")
                                     (upgrade-processing :target-type boolean
                                      :member-name "UpgradeProcessing")
                                     (engine-version :target-type
                                      version-string :member-name
                                      "EngineVersion")
                                     (cluster-config :target-type
                                      cluster-config :required common-lisp:t
                                      :member-name "ClusterConfig")
                                     (ebsoptions :target-type ebsoptions
                                      :member-name "EBSOptions")
                                     (access-policies :target-type
                                      policy-document :member-name
                                      "AccessPolicies")
                                     (ipaddress-type :target-type
                                      ipaddress-type :member-name
                                      "IPAddressType")
                                     (snapshot-options :target-type
                                      snapshot-options :member-name
                                      "SnapshotOptions")
                                     (vpcoptions :target-type vpcderived-info
                                      :member-name "VPCOptions")
                                     (cognito-options :target-type
                                      cognito-options :member-name
                                      "CognitoOptions")
                                     (encryption-at-rest-options :target-type
                                      encryption-at-rest-options :member-name
                                      "EncryptionAtRestOptions")
                                     (node-to-node-encryption-options
                                      :target-type
                                      node-to-node-encryption-options
                                      :member-name
                                      "NodeToNodeEncryptionOptions")
                                     (advanced-options :target-type
                                      advanced-options :member-name
                                      "AdvancedOptions")
                                     (log-publishing-options :target-type
                                      log-publishing-options :member-name
                                      "LogPublishingOptions")
                                     (service-software-options :target-type
                                      service-software-options :member-name
                                      "ServiceSoftwareOptions")
                                     (domain-endpoint-options :target-type
                                      domain-endpoint-options :member-name
                                      "DomainEndpointOptions")
                                     (advanced-security-options :target-type
                                      advanced-security-options :member-name
                                      "AdvancedSecurityOptions")
                                     (identity-center-options :target-type
                                      identity-center-options :member-name
                                      "IdentityCenterOptions")
                                     (auto-tune-options :target-type
                                      auto-tune-options-output :member-name
                                      "AutoTuneOptions")
                                     (change-progress-details :target-type
                                      change-progress-details :member-name
                                      "ChangeProgressDetails")
                                     (off-peak-window-options :target-type
                                      off-peak-window-options :member-name
                                      "OffPeakWindowOptions")
                                     (software-update-options :target-type
                                      software-update-options :member-name
                                      "SoftwareUpdateOptions")
                                     (domain-processing-status :target-type
                                      domain-processing-status-type
                                      :member-name "DomainProcessingStatus")
                                     (modifying-properties :target-type
                                      modifying-properties-list :member-name
                                      "ModifyingProperties")
                                     (aimloptions :target-type
                                      aimloptions-output :member-name
                                      "AIMLOptions"))
                                    (:shape-name "DomainStatus"))

(smithy/sdk/shapes:define-list domain-status-list :member domain-status)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type dry-run smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum dry-run-mode
    common-lisp:nil
  (:basic "Basic")
  (:verbose "Verbose"))

(smithy/sdk/shapes:define-structure dry-run-progress-status common-lisp:nil
                                    ((dry-run-id :target-type guid :required
                                      common-lisp:t :member-name "DryRunId")
                                     (dry-run-status :target-type string
                                      :required common-lisp:t :member-name
                                      "DryRunStatus")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (update-date :target-type string :required
                                      common-lisp:t :member-name "UpdateDate")
                                     (validation-failures :target-type
                                      validation-failures :member-name
                                      "ValidationFailures"))
                                    (:shape-name "DryRunProgressStatus"))

(smithy/sdk/shapes:define-structure dry-run-results common-lisp:nil
                                    ((deployment-type :target-type
                                      deployment-type :member-name
                                      "DeploymentType")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "DryRunResults"))

(smithy/sdk/shapes:define-structure duration common-lisp:nil
                                    ((value :target-type duration-value
                                      :member-name "Value")
                                     (unit :target-type time-unit :member-name
                                      "Unit"))
                                    (:shape-name "Duration"))

(smithy/sdk/shapes:define-type duration-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure ebsoptions common-lisp:nil
                                    ((ebsenabled :target-type boolean
                                      :member-name "EBSEnabled")
                                     (volume-type :target-type volume-type
                                      :member-name "VolumeType")
                                     (volume-size :target-type integer-class
                                      :member-name "VolumeSize")
                                     (iops :target-type integer-class
                                      :member-name "Iops")
                                     (throughput :target-type integer-class
                                      :member-name "Throughput"))
                                    (:shape-name "EBSOptions"))

(smithy/sdk/shapes:define-structure ebsoptions-status common-lisp:nil
                                    ((options :target-type ebsoptions :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "EBSOptionsStatus"))

(smithy/sdk/shapes:define-structure encryption-at-rest-options common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name "EncryptionAtRestOptions"))

(smithy/sdk/shapes:define-structure encryption-at-rest-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      encryption-at-rest-options :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name
                                     "EncryptionAtRestOptionsStatus"))

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map endpoints-map :key string :value service-url)

(smithy/sdk/shapes:define-enum engine-type
    common-lisp:nil
  (:open-search "OpenSearch")
  (:elasticsearch "Elasticsearch"))

(smithy/sdk/shapes:define-type engine-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment-info common-lisp:nil
                                    ((availability-zone-information
                                      :target-type availability-zone-info-list
                                      :member-name
                                      "AvailabilityZoneInformation"))
                                    (:shape-name "EnvironmentInfo"))

(smithy/sdk/shapes:define-list environment-info-list :member environment-info)

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((error-type :target-type error-type
                                      :member-name "ErrorType")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :member-name "Name")
                                     (values :target-type value-string-list
                                      :member-name "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type guid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guidlist :member guid)

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-output get-application-response common-lisp:nil
                                 ((id :target-type id :member-name "id")
                                  (arn :target-type arn :member-name "arn")
                                  (name :target-type application-name
                                   :member-name "name")
                                  (endpoint :target-type string :member-name
                                   "endpoint")
                                  (status :target-type application-status
                                   :member-name "status")
                                  (iam-identity-center-options :target-type
                                   iam-identity-center-options :member-name
                                   "iamIdentityCenterOptions")
                                  (data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (app-configs :target-type app-configs
                                   :member-name "appConfigs")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-input get-compatible-versions-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :member-name "DomainName" :http-query
                                  "domainName"))
                                (:shape-name "GetCompatibleVersionsRequest"))

(smithy/sdk/shapes:define-output get-compatible-versions-response
                                 common-lisp:nil
                                 ((compatible-versions :target-type
                                   compatible-versions-list :member-name
                                   "CompatibleVersions"))
                                 (:shape-name "GetCompatibleVersionsResponse"))

(smithy/sdk/shapes:define-input get-data-source-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (name :target-type data-source-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDataSourceRequest"))

(smithy/sdk/shapes:define-output get-data-source-response common-lisp:nil
                                 ((data-source-type :target-type
                                   data-source-type :member-name
                                   "DataSourceType")
                                  (name :target-type data-source-name
                                   :member-name "Name")
                                  (description :target-type
                                   data-source-description :member-name
                                   "Description")
                                  (status :target-type data-source-status
                                   :member-name "Status"))
                                 (:shape-name "GetDataSourceResponse"))

(smithy/sdk/shapes:define-input get-direct-query-data-source-request
                                common-lisp:nil
                                ((data-source-name :target-type
                                  direct-query-data-source-name :required
                                  common-lisp:t :member-name "DataSourceName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDirectQueryDataSourceRequest"))

(smithy/sdk/shapes:define-output get-direct-query-data-source-response
                                 common-lisp:nil
                                 ((data-source-name :target-type
                                   direct-query-data-source-name :member-name
                                   "DataSourceName")
                                  (data-source-type :target-type
                                   direct-query-data-source-type :member-name
                                   "DataSourceType")
                                  (description :target-type
                                   direct-query-data-source-description
                                   :member-name "Description")
                                  (open-search-arns :target-type
                                   direct-query-open-search-arnlist
                                   :member-name "OpenSearchArns")
                                  (data-source-arn :target-type string
                                   :member-name "DataSourceArn"))
                                 (:shape-name
                                  "GetDirectQueryDataSourceResponse"))

(smithy/sdk/shapes:define-input get-domain-maintenance-status-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (maintenance-id :target-type request-id
                                  :required common-lisp:t :member-name
                                  "MaintenanceId" :http-query "maintenanceId"))
                                (:shape-name
                                 "GetDomainMaintenanceStatusRequest"))

(smithy/sdk/shapes:define-output get-domain-maintenance-status-response
                                 common-lisp:nil
                                 ((status :target-type maintenance-status
                                   :member-name "Status")
                                  (status-message :target-type
                                   maintenance-status-message :member-name
                                   "StatusMessage")
                                  (node-id :target-type node-id :member-name
                                   "NodeId")
                                  (action :target-type maintenance-type
                                   :member-name "Action")
                                  (created-at :target-type update-timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type update-timestamp
                                   :member-name "UpdatedAt"))
                                 (:shape-name
                                  "GetDomainMaintenanceStatusResponse"))

(smithy/sdk/shapes:define-input get-package-version-history-request
                                common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetPackageVersionHistoryRequest"))

(smithy/sdk/shapes:define-output get-package-version-history-response
                                 common-lisp:nil
                                 ((package-id :target-type package-id
                                   :member-name "PackageID")
                                  (package-version-history-list :target-type
                                   package-version-history-list :member-name
                                   "PackageVersionHistoryList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetPackageVersionHistoryResponse"))

(smithy/sdk/shapes:define-input get-upgrade-history-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetUpgradeHistoryRequest"))

(smithy/sdk/shapes:define-output get-upgrade-history-response common-lisp:nil
                                 ((upgrade-histories :target-type
                                   upgrade-history-list :member-name
                                   "UpgradeHistories")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetUpgradeHistoryResponse"))

(smithy/sdk/shapes:define-input get-upgrade-status-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "GetUpgradeStatusRequest"))

(smithy/sdk/shapes:define-output get-upgrade-status-response common-lisp:nil
                                 ((upgrade-step :target-type upgrade-step
                                   :member-name "UpgradeStep")
                                  (step-status :target-type upgrade-status
                                   :member-name "StepStatus")
                                  (upgrade-name :target-type upgrade-name
                                   :member-name "UpgradeName"))
                                 (:shape-name "GetUpgradeStatusResponse"))

(smithy/sdk/shapes:define-type hosted-zone-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iamfederation-options-input common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (subject-key :target-type
                                      iamfederation-subject-key :member-name
                                      "SubjectKey")
                                     (roles-key :target-type
                                      iamfederation-roles-key :member-name
                                      "RolesKey"))
                                    (:shape-name "IAMFederationOptionsInput"))

(smithy/sdk/shapes:define-structure iamfederation-options-output
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (subject-key :target-type
                                      iamfederation-subject-key :member-name
                                      "SubjectKey")
                                     (roles-key :target-type
                                      iamfederation-roles-key :member-name
                                      "RolesKey"))
                                    (:shape-name "IAMFederationOptionsOutput"))

(smithy/sdk/shapes:define-type iamfederation-roles-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iamfederation-subject-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ipaddress-type
    common-lisp:nil
  (:ipv4 "ipv4")
  (:dualstack "dualstack"))

(smithy/sdk/shapes:define-structure ipaddress-type-status common-lisp:nil
                                    ((options :target-type ipaddress-type
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "IPAddressTypeStatus"))

(smithy/sdk/shapes:define-structure iam-identity-center-options common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled")
                                     (iam-identity-center-instance-arn
                                      :target-type arn :member-name
                                      "iamIdentityCenterInstanceArn")
                                     (iam-role-for-identity-center-application-arn
                                      :target-type role-arn :member-name
                                      "iamRoleForIdentityCenterApplicationArn")
                                     (iam-identity-center-application-arn
                                      :target-type arn :member-name
                                      "iamIdentityCenterApplicationArn"))
                                    (:shape-name "IamIdentityCenterOptions"))

(smithy/sdk/shapes:define-structure iam-identity-center-options-input
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled")
                                     (iam-identity-center-instance-arn
                                      :target-type arn :member-name
                                      "iamIdentityCenterInstanceArn")
                                     (iam-role-for-identity-center-application-arn
                                      :target-type role-arn :member-name
                                      "iamRoleForIdentityCenterApplicationArn"))
                                    (:shape-name
                                     "IamIdentityCenterOptionsInput"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-center-options common-lisp:nil
                                    ((enabled-apiaccess :target-type boolean
                                      :member-name "EnabledAPIAccess")
                                     (identity-center-instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "IdentityCenterInstanceARN")
                                     (subject-key :target-type
                                      subject-key-id-coption :member-name
                                      "SubjectKey")
                                     (roles-key :target-type
                                      roles-key-id-coption :member-name
                                      "RolesKey")
                                     (identity-center-application-arn
                                      :target-type
                                      identity-center-application-arn
                                      :member-name
                                      "IdentityCenterApplicationARN")
                                     (identity-store-id :target-type
                                      identity-store-id :member-name
                                      "IdentityStoreId"))
                                    (:shape-name "IdentityCenterOptions"))

(smithy/sdk/shapes:define-structure identity-center-options-input
                                    common-lisp:nil
                                    ((enabled-apiaccess :target-type boolean
                                      :member-name "EnabledAPIAccess")
                                     (identity-center-instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "IdentityCenterInstanceARN")
                                     (subject-key :target-type
                                      subject-key-id-coption :member-name
                                      "SubjectKey")
                                     (roles-key :target-type
                                      roles-key-id-coption :member-name
                                      "RolesKey"))
                                    (:shape-name "IdentityCenterOptionsInput"))

(smithy/sdk/shapes:define-structure identity-center-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      identity-center-options :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "IdentityCenterOptionsStatus"))

(smithy/sdk/shapes:define-type identity-pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inbound-connection common-lisp:nil
                                    ((local-domain-info :target-type
                                      domain-information-container :member-name
                                      "LocalDomainInfo")
                                     (remote-domain-info :target-type
                                      domain-information-container :member-name
                                      "RemoteDomainInfo")
                                     (connection-id :target-type connection-id
                                      :member-name "ConnectionId")
                                     (connection-status :target-type
                                      inbound-connection-status :member-name
                                      "ConnectionStatus")
                                     (connection-mode :target-type
                                      connection-mode :member-name
                                      "ConnectionMode"))
                                    (:shape-name "InboundConnection"))

(smithy/sdk/shapes:define-structure inbound-connection-status common-lisp:nil
                                    ((status-code :target-type
                                      inbound-connection-status-code
                                      :member-name "StatusCode")
                                     (message :target-type
                                      connection-status-message :member-name
                                      "Message"))
                                    (:shape-name "InboundConnectionStatus"))

(smithy/sdk/shapes:define-enum inbound-connection-status-code
    common-lisp:nil
  (:pending-acceptance "PENDING_ACCEPTANCE")
  (:approved "APPROVED")
  (:provisioning "PROVISIONING")
  (:active "ACTIVE")
  (:rejecting "REJECTING")
  (:rejected "REJECTED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list inbound-connections :member inbound-connection)

(smithy/sdk/shapes:define-enum initiated-by
    common-lisp:nil
  (:customer "CUSTOMER")
  (:service "SERVICE"))

(smithy/sdk/shapes:define-type instance-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure instance-count-limits common-lisp:nil
                                    ((minimum-instance-count :target-type
                                      minimum-instance-count :member-name
                                      "MinimumInstanceCount")
                                     (maximum-instance-count :target-type
                                      maximum-instance-count :member-name
                                      "MaximumInstanceCount"))
                                    (:shape-name "InstanceCountLimits"))

(smithy/sdk/shapes:define-structure instance-limits common-lisp:nil
                                    ((instance-count-limits :target-type
                                      instance-count-limits :member-name
                                      "InstanceCountLimits"))
                                    (:shape-name "InstanceLimits"))

(smithy/sdk/shapes:define-type instance-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-role-list :member instance-role)

(smithy/sdk/shapes:define-structure instance-type-details common-lisp:nil
                                    ((instance-type :target-type
                                      open-search-partition-instance-type
                                      :member-name "InstanceType")
                                     (encryption-enabled :target-type boolean
                                      :member-name "EncryptionEnabled")
                                     (cognito-enabled :target-type boolean
                                      :member-name "CognitoEnabled")
                                     (app-logs-enabled :target-type boolean
                                      :member-name "AppLogsEnabled")
                                     (advanced-security-enabled :target-type
                                      boolean :member-name
                                      "AdvancedSecurityEnabled")
                                     (warm-enabled :target-type boolean
                                      :member-name "WarmEnabled")
                                     (instance-role :target-type
                                      instance-role-list :member-name
                                      "InstanceRole")
                                     (availability-zones :target-type
                                      availability-zone-list :member-name
                                      "AvailabilityZones"))
                                    (:shape-name "InstanceTypeDetails"))

(smithy/sdk/shapes:define-list instance-type-details-list :member
                               instance-type-details)

(smithy/sdk/shapes:define-type instance-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-class smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-pagination-token-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidPaginationTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-type-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTypeException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type issue smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list issues :member issue)

(smithy/sdk/shapes:define-structure jwtoptions-input common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (subject-key :target-type subject-key
                                      :member-name "SubjectKey")
                                     (roles-key :target-type roles-key
                                      :member-name "RolesKey")
                                     (public-key :target-type string
                                      :member-name "PublicKey"))
                                    (:shape-name "JWTOptionsInput"))

(smithy/sdk/shapes:define-structure jwtoptions-output common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (subject-key :target-type string
                                      :member-name "SubjectKey")
                                     (roles-key :target-type string
                                      :member-name "RolesKey")
                                     (public-key :target-type string
                                      :member-name "PublicKey"))
                                    (:shape-name "JWTOptionsOutput"))

(smithy/sdk/shapes:define-structure key-store-access-option common-lisp:nil
                                    ((key-access-role-arn :target-type role-arn
                                      :member-name "KeyAccessRoleArn")
                                     (key-store-access-enabled :target-type
                                      boolean :required common-lisp:t
                                      :member-name "KeyStoreAccessEnabled"))
                                    (:shape-name "KeyStoreAccessOption"))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type license-filepath smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type limit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list limit-value-list :member limit-value)

(smithy/sdk/shapes:define-structure limits common-lisp:nil
                                    ((storage-types :target-type
                                      storage-type-list :member-name
                                      "StorageTypes")
                                     (instance-limits :target-type
                                      instance-limits :member-name
                                      "InstanceLimits")
                                     (additional-limits :target-type
                                      additional-limit-list :member-name
                                      "AdditionalLimits"))
                                    (:shape-name "Limits"))

(smithy/sdk/shapes:define-map limits-by-role :key instance-role :value limits)

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (statuses :target-type application-statuses
                                  :member-name "statuses" :http-query
                                  "statuses")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((application-summaries :target-type
                                   application-summaries :member-name
                                   "ApplicationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-data-sources-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "ListDataSourcesRequest"))

(smithy/sdk/shapes:define-output list-data-sources-response common-lisp:nil
                                 ((data-sources :target-type data-source-list
                                   :member-name "DataSources"))
                                 (:shape-name "ListDataSourcesResponse"))

(smithy/sdk/shapes:define-input list-direct-query-data-sources-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken"))
                                (:shape-name
                                 "ListDirectQueryDataSourcesRequest"))

(smithy/sdk/shapes:define-output list-direct-query-data-sources-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (direct-query-data-sources :target-type
                                   direct-query-data-source-list :member-name
                                   "DirectQueryDataSources"))
                                 (:shape-name
                                  "ListDirectQueryDataSourcesResponse"))

(smithy/sdk/shapes:define-input list-domain-maintenances-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (action :target-type maintenance-type
                                  :member-name "Action" :http-query "action")
                                 (status :target-type maintenance-status
                                  :member-name "Status" :http-query "status")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDomainMaintenancesRequest"))

(smithy/sdk/shapes:define-output list-domain-maintenances-response
                                 common-lisp:nil
                                 ((domain-maintenances :target-type
                                   domain-maintenance-list :member-name
                                   "DomainMaintenances")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDomainMaintenancesResponse"))

(smithy/sdk/shapes:define-input list-domain-names-request common-lisp:nil
                                ((engine-type :target-type engine-type
                                  :member-name "EngineType" :http-query
                                  "engineType"))
                                (:shape-name "ListDomainNamesRequest"))

(smithy/sdk/shapes:define-output list-domain-names-response common-lisp:nil
                                 ((domain-names :target-type domain-info-list
                                   :member-name "DomainNames"))
                                 (:shape-name "ListDomainNamesResponse"))

(smithy/sdk/shapes:define-input list-domains-for-package-request
                                common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDomainsForPackageRequest"))

(smithy/sdk/shapes:define-output list-domains-for-package-response
                                 common-lisp:nil
                                 ((domain-package-details-list :target-type
                                   domain-package-details-list :member-name
                                   "DomainPackageDetailsList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDomainsForPackageResponse"))

(smithy/sdk/shapes:define-input list-instance-type-details-request
                                common-lisp:nil
                                ((engine-version :target-type version-string
                                  :required common-lisp:t :member-name
                                  "EngineVersion" :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :member-name "DomainName" :http-query
                                  "domainName")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (retrieve-azs :target-type boolean
                                  :member-name "RetrieveAZs" :http-query
                                  "retrieveAZs")
                                 (instance-type :target-type
                                  instance-type-string :member-name
                                  "InstanceType" :http-query "instanceType"))
                                (:shape-name "ListInstanceTypeDetailsRequest"))

(smithy/sdk/shapes:define-output list-instance-type-details-response
                                 common-lisp:nil
                                 ((instance-type-details :target-type
                                   instance-type-details-list :member-name
                                   "InstanceTypeDetails")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListInstanceTypeDetailsResponse"))

(smithy/sdk/shapes:define-input list-packages-for-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPackagesForDomainRequest"))

(smithy/sdk/shapes:define-output list-packages-for-domain-response
                                 common-lisp:nil
                                 ((domain-package-details-list :target-type
                                   domain-package-details-list :member-name
                                   "DomainPackageDetailsList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPackagesForDomainResponse"))

(smithy/sdk/shapes:define-input list-scheduled-actions-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListScheduledActionsRequest"))

(smithy/sdk/shapes:define-output list-scheduled-actions-response
                                 common-lisp:nil
                                 ((scheduled-actions :target-type
                                   scheduled-actions-list :member-name
                                   "ScheduledActions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListScheduledActionsResponse"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "ARN" :http-query "arn"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-input list-versions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListVersionsRequest"))

(smithy/sdk/shapes:define-output list-versions-response common-lisp:nil
                                 ((versions :target-type version-list
                                   :member-name "Versions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListVersionsResponse"))

(smithy/sdk/shapes:define-input list-vpc-endpoint-access-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListVpcEndpointAccessRequest"))

(smithy/sdk/shapes:define-output list-vpc-endpoint-access-response
                                 common-lisp:nil
                                 ((authorized-principal-list :target-type
                                   authorized-principal-list :required
                                   common-lisp:t :member-name
                                   "AuthorizedPrincipalList")
                                  (next-token :target-type next-token :required
                                   common-lisp:t :member-name "NextToken"))
                                 (:shape-name "ListVpcEndpointAccessResponse"))

(smithy/sdk/shapes:define-input list-vpc-endpoints-for-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListVpcEndpointsForDomainRequest"))

(smithy/sdk/shapes:define-output list-vpc-endpoints-for-domain-response
                                 common-lisp:nil
                                 ((vpc-endpoint-summary-list :target-type
                                   vpc-endpoint-summary-list :required
                                   common-lisp:t :member-name
                                   "VpcEndpointSummaryList")
                                  (next-token :target-type next-token :required
                                   common-lisp:t :member-name "NextToken"))
                                 (:shape-name
                                  "ListVpcEndpointsForDomainResponse"))

(smithy/sdk/shapes:define-input list-vpc-endpoints-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListVpcEndpointsRequest"))

(smithy/sdk/shapes:define-output list-vpc-endpoints-response common-lisp:nil
                                 ((vpc-endpoint-summary-list :target-type
                                   vpc-endpoint-summary-list :required
                                   common-lisp:t :member-name
                                   "VpcEndpointSummaryList")
                                  (next-token :target-type next-token :required
                                   common-lisp:t :member-name "NextToken"))
                                 (:shape-name "ListVpcEndpointsResponse"))

(smithy/sdk/shapes:define-structure log-publishing-option common-lisp:nil
                                    ((cloud-watch-logs-log-group-arn
                                      :target-type
                                      cloud-watch-logs-log-group-arn
                                      :member-name "CloudWatchLogsLogGroupArn")
                                     (enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "LogPublishingOption"))

(smithy/sdk/shapes:define-map log-publishing-options :key log-type :value
                              log-publishing-option)

(smithy/sdk/shapes:define-structure log-publishing-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      log-publishing-options :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :member-name "Status"))
                                    (:shape-name "LogPublishingOptionsStatus"))

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:index-slow-logs "INDEX_SLOW_LOGS")
  (:search-slow-logs "SEARCH_SLOW_LOGS")
  (:es-application-logs "ES_APPLICATION_LOGS")
  (:audit-logs "AUDIT_LOGS"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum maintenance-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-type maintenance-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum maintenance-type
    common-lisp:nil
  (:reboot-node "REBOOT_NODE")
  (:restart-search-process "RESTART_SEARCH_PROCESS")
  (:restart-dashboard "RESTART_DASHBOARD"))

(smithy/sdk/shapes:define-enum master-node-status
    common-lisp:nil
  (:available "Available")
  (:un-available "UnAvailable"))

(smithy/sdk/shapes:define-structure master-user-options common-lisp:nil
                                    ((master-user-arn :target-type arn
                                      :member-name "MasterUserARN")
                                     (master-user-name :target-type username
                                      :member-name "MasterUserName")
                                     (master-user-password :target-type
                                      password :member-name
                                      "MasterUserPassword"))
                                    (:shape-name "MasterUserOptions"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-instance-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum-instance-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure modifying-properties common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (active-value :target-type string
                                      :member-name "ActiveValue")
                                     (pending-value :target-type string
                                      :member-name "PendingValue")
                                     (value-type :target-type
                                      property-value-type :member-name
                                      "ValueType"))
                                    (:shape-name "ModifyingProperties"))

(smithy/sdk/shapes:define-list modifying-properties-list :member
                               modifying-properties)

(smithy/sdk/shapes:define-enum natural-language-query-generation-current-state
    common-lisp:nil
  (:not-enabled "NOT_ENABLED")
  (:enable-complete "ENABLE_COMPLETE")
  (:enable-in-progress "ENABLE_IN_PROGRESS")
  (:enable-failed "ENABLE_FAILED")
  (:disable-complete "DISABLE_COMPLETE")
  (:disable-in-progress "DISABLE_IN_PROGRESS")
  (:disable-failed "DISABLE_FAILED"))

(smithy/sdk/shapes:define-enum natural-language-query-generation-desired-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure
 natural-language-query-generation-options-input common-lisp:nil
 ((desired-state :target-type natural-language-query-generation-desired-state
   :member-name "DesiredState"))
 (:shape-name "NaturalLanguageQueryGenerationOptionsInput"))

(smithy/sdk/shapes:define-structure
 natural-language-query-generation-options-output common-lisp:nil
 ((desired-state :target-type natural-language-query-generation-desired-state
   :member-name "DesiredState")
  (current-state :target-type natural-language-query-generation-current-state
   :member-name "CurrentState"))
 (:shape-name "NaturalLanguageQueryGenerationOptionsOutput"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-config common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (type :target-type
                                      open-search-partition-instance-type
                                      :member-name "Type")
                                     (count :target-type integer-class
                                      :member-name "Count"))
                                    (:shape-name "NodeConfig"))

(smithy/sdk/shapes:define-type node-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-option common-lisp:nil
                                    ((node-type :target-type
                                      node-options-node-type :member-name
                                      "NodeType")
                                     (node-config :target-type node-config
                                      :member-name "NodeConfig"))
                                    (:shape-name "NodeOption"))

(smithy/sdk/shapes:define-list node-options-list :member node-option)

(smithy/sdk/shapes:define-enum node-options-node-type
    common-lisp:nil
  (:coordinator "coordinator"))

(smithy/sdk/shapes:define-enum node-status
    common-lisp:nil
  (:active "Active")
  (:stand-by "StandBy")
  (:not-available "NotAvailable"))

(smithy/sdk/shapes:define-structure node-to-node-encryption-options
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "NodeToNodeEncryptionOptions"))

(smithy/sdk/shapes:define-structure node-to-node-encryption-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      node-to-node-encryption-options :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name
                                     "NodeToNodeEncryptionOptionsStatus"))

(smithy/sdk/shapes:define-enum node-type
    common-lisp:nil
  (:data "Data")
  (:ultrawarm "Ultrawarm")
  (:master "Master"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-of-azs smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-of-nodes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-of-shards smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure off-peak-window common-lisp:nil
                                    ((window-start-time :target-type
                                      window-start-time :member-name
                                      "WindowStartTime"))
                                    (:shape-name "OffPeakWindow"))

(smithy/sdk/shapes:define-structure off-peak-window-options common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (off-peak-window :target-type
                                      off-peak-window :member-name
                                      "OffPeakWindow"))
                                    (:shape-name "OffPeakWindowOptions"))

(smithy/sdk/shapes:define-structure off-peak-window-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      off-peak-window-options :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :member-name "Status"))
                                    (:shape-name "OffPeakWindowOptionsStatus"))

(smithy/sdk/shapes:define-enum open-search-partition-instance-type
    common-lisp:nil
  (:m3-medium-search "m3.medium.search")
  (:m3-large-search "m3.large.search")
  (:m3-xlarge-search "m3.xlarge.search")
  (:m3-2xlarge-search "m3.2xlarge.search")
  (:m4-large-search "m4.large.search")
  (:m4-xlarge-search "m4.xlarge.search")
  (:m4-2xlarge-search "m4.2xlarge.search")
  (:m4-4xlarge-search "m4.4xlarge.search")
  (:m4-10xlarge-search "m4.10xlarge.search")
  (:m5-large-search "m5.large.search")
  (:m5-xlarge-search "m5.xlarge.search")
  (:m5-2xlarge-search "m5.2xlarge.search")
  (:m5-4xlarge-search "m5.4xlarge.search")
  (:m5-12xlarge-search "m5.12xlarge.search")
  (:m5-24xlarge-search "m5.24xlarge.search")
  (:r5-large-search "r5.large.search")
  (:r5-xlarge-search "r5.xlarge.search")
  (:r5-2xlarge-search "r5.2xlarge.search")
  (:r5-4xlarge-search "r5.4xlarge.search")
  (:r5-12xlarge-search "r5.12xlarge.search")
  (:r5-24xlarge-search "r5.24xlarge.search")
  (:c5-large-search "c5.large.search")
  (:c5-xlarge-search "c5.xlarge.search")
  (:c5-2xlarge-search "c5.2xlarge.search")
  (:c5-4xlarge-search "c5.4xlarge.search")
  (:c5-9xlarge-search "c5.9xlarge.search")
  (:c5-18xlarge-search "c5.18xlarge.search")
  (:t3-nano-search "t3.nano.search")
  (:t3-micro-search "t3.micro.search")
  (:t3-small-search "t3.small.search")
  (:t3-medium-search "t3.medium.search")
  (:t3-large-search "t3.large.search")
  (:t3-xlarge-search "t3.xlarge.search")
  (:t3-2xlarge-search "t3.2xlarge.search")
  (:or1-medium-search "or1.medium.search")
  (:or1-large-search "or1.large.search")
  (:or1-xlarge-search "or1.xlarge.search")
  (:or1-2xlarge-search "or1.2xlarge.search")
  (:or1-4xlarge-search "or1.4xlarge.search")
  (:or1-8xlarge-search "or1.8xlarge.search")
  (:or1-12xlarge-search "or1.12xlarge.search")
  (:or1-16xlarge-search "or1.16xlarge.search")
  (:ultrawarm1-medium-search "ultrawarm1.medium.search")
  (:ultrawarm1-large-search "ultrawarm1.large.search")
  (:ultrawarm1-xlarge-search "ultrawarm1.xlarge.search")
  (:t2-micro-search "t2.micro.search")
  (:t2-small-search "t2.small.search")
  (:t2-medium-search "t2.medium.search")
  (:r3-large-search "r3.large.search")
  (:r3-xlarge-search "r3.xlarge.search")
  (:r3-2xlarge-search "r3.2xlarge.search")
  (:r3-4xlarge-search "r3.4xlarge.search")
  (:r3-8xlarge-search "r3.8xlarge.search")
  (:i2-xlarge-search "i2.xlarge.search")
  (:i2-2xlarge-search "i2.2xlarge.search")
  (:d2-xlarge-search "d2.xlarge.search")
  (:d2-2xlarge-search "d2.2xlarge.search")
  (:d2-4xlarge-search "d2.4xlarge.search")
  (:d2-8xlarge-search "d2.8xlarge.search")
  (:c4-large-search "c4.large.search")
  (:c4-xlarge-search "c4.xlarge.search")
  (:c4-2xlarge-search "c4.2xlarge.search")
  (:c4-4xlarge-search "c4.4xlarge.search")
  (:c4-8xlarge-search "c4.8xlarge.search")
  (:r4-large-search "r4.large.search")
  (:r4-xlarge-search "r4.xlarge.search")
  (:r4-2xlarge-search "r4.2xlarge.search")
  (:r4-4xlarge-search "r4.4xlarge.search")
  (:r4-8xlarge-search "r4.8xlarge.search")
  (:r4-16xlarge-search "r4.16xlarge.search")
  (:i3-large-search "i3.large.search")
  (:i3-xlarge-search "i3.xlarge.search")
  (:i3-2xlarge-search "i3.2xlarge.search")
  (:i3-4xlarge-search "i3.4xlarge.search")
  (:i3-8xlarge-search "i3.8xlarge.search")
  (:i3-16xlarge-search "i3.16xlarge.search")
  (:r6g-large-search "r6g.large.search")
  (:r6g-xlarge-search "r6g.xlarge.search")
  (:r6g-2xlarge-search "r6g.2xlarge.search")
  (:r6g-4xlarge-search "r6g.4xlarge.search")
  (:r6g-8xlarge-search "r6g.8xlarge.search")
  (:r6g-12xlarge-search "r6g.12xlarge.search")
  (:m6g-large-search "m6g.large.search")
  (:m6g-xlarge-search "m6g.xlarge.search")
  (:m6g-2xlarge-search "m6g.2xlarge.search")
  (:m6g-4xlarge-search "m6g.4xlarge.search")
  (:m6g-8xlarge-search "m6g.8xlarge.search")
  (:m6g-12xlarge-search "m6g.12xlarge.search")
  (:c6g-large-search "c6g.large.search")
  (:c6g-xlarge-search "c6g.xlarge.search")
  (:c6g-2xlarge-search "c6g.2xlarge.search")
  (:c6g-4xlarge-search "c6g.4xlarge.search")
  (:c6g-8xlarge-search "c6g.8xlarge.search")
  (:c6g-12xlarge-search "c6g.12xlarge.search")
  (:r6gd-large-search "r6gd.large.search")
  (:r6gd-xlarge-search "r6gd.xlarge.search")
  (:r6gd-2xlarge-search "r6gd.2xlarge.search")
  (:r6gd-4xlarge-search "r6gd.4xlarge.search")
  (:r6gd-8xlarge-search "r6gd.8xlarge.search")
  (:r6gd-12xlarge-search "r6gd.12xlarge.search")
  (:r6gd-16xlarge-search "r6gd.16xlarge.search")
  (:t4g-small-search "t4g.small.search")
  (:t4g-medium-search "t4g.medium.search"))

(smithy/sdk/shapes:define-enum open-search-warm-partition-instance-type
    common-lisp:nil
  (:ultrawarm1-medium-search "ultrawarm1.medium.search")
  (:ultrawarm1-large-search "ultrawarm1.large.search")
  (:ultrawarm1-xlarge-search "ultrawarm1.xlarge.search"))

(smithy/sdk/shapes:define-enum option-state
    common-lisp:nil
  (:requires-index-documents "RequiresIndexDocuments")
  (:processing "Processing")
  (:active "Active"))

(smithy/sdk/shapes:define-structure option-status common-lisp:nil
                                    ((creation-date :target-type
                                      update-timestamp :required common-lisp:t
                                      :member-name "CreationDate")
                                     (update-date :target-type update-timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateDate")
                                     (update-version :target-type uint-value
                                      :member-name "UpdateVersion")
                                     (state :target-type option-state :required
                                      common-lisp:t :member-name "State")
                                     (pending-deletion :target-type boolean
                                      :member-name "PendingDeletion"))
                                    (:shape-name "OptionStatus"))

(smithy/sdk/shapes:define-structure outbound-connection common-lisp:nil
                                    ((local-domain-info :target-type
                                      domain-information-container :member-name
                                      "LocalDomainInfo")
                                     (remote-domain-info :target-type
                                      domain-information-container :member-name
                                      "RemoteDomainInfo")
                                     (connection-id :target-type connection-id
                                      :member-name "ConnectionId")
                                     (connection-alias :target-type
                                      connection-alias :member-name
                                      "ConnectionAlias")
                                     (connection-status :target-type
                                      outbound-connection-status :member-name
                                      "ConnectionStatus")
                                     (connection-mode :target-type
                                      connection-mode :member-name
                                      "ConnectionMode")
                                     (connection-properties :target-type
                                      connection-properties :member-name
                                      "ConnectionProperties"))
                                    (:shape-name "OutboundConnection"))

(smithy/sdk/shapes:define-structure outbound-connection-status common-lisp:nil
                                    ((status-code :target-type
                                      outbound-connection-status-code
                                      :member-name "StatusCode")
                                     (message :target-type
                                      connection-status-message :member-name
                                      "Message"))
                                    (:shape-name "OutboundConnectionStatus"))

(smithy/sdk/shapes:define-enum outbound-connection-status-code
    common-lisp:nil
  (:validating "VALIDATING")
  (:validation-failed "VALIDATION_FAILED")
  (:pending-acceptance "PENDING_ACCEPTANCE")
  (:approved "APPROVED")
  (:provisioning "PROVISIONING")
  (:active "ACTIVE")
  (:rejecting "REJECTING")
  (:rejected "REJECTED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list outbound-connections :member outbound-connection)

(smithy/sdk/shapes:define-enum overall-change-status
    common-lisp:nil
  (:pending "PENDING")
  (:processing "PROCESSING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-association-configuration
                                    common-lisp:nil
                                    ((key-store-access-option :target-type
                                      key-store-access-option :member-name
                                      "KeyStoreAccessOption"))
                                    (:shape-name
                                     "PackageAssociationConfiguration"))

(smithy/sdk/shapes:define-structure package-configuration common-lisp:nil
                                    ((license-requirement :target-type
                                      requirement-level :required common-lisp:t
                                      :member-name "LicenseRequirement")
                                     (license-filepath :target-type
                                      license-filepath :member-name
                                      "LicenseFilepath")
                                     (configuration-requirement :target-type
                                      requirement-level :required common-lisp:t
                                      :member-name "ConfigurationRequirement")
                                     (requires-restart-for-configuration-update
                                      :target-type boolean :member-name
                                      "RequiresRestartForConfigurationUpdate"))
                                    (:shape-name "PackageConfiguration"))

(smithy/sdk/shapes:define-type package-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-details common-lisp:nil
                                    ((package-id :target-type package-id
                                      :member-name "PackageID")
                                     (package-name :target-type package-name
                                      :member-name "PackageName")
                                     (package-type :target-type package-type
                                      :member-name "PackageType")
                                     (package-description :target-type
                                      package-description :member-name
                                      "PackageDescription")
                                     (package-status :target-type
                                      package-status :member-name
                                      "PackageStatus")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type last-updated
                                      :member-name "LastUpdatedAt")
                                     (available-package-version :target-type
                                      package-version :member-name
                                      "AvailablePackageVersion")
                                     (error-details :target-type error-details
                                      :member-name "ErrorDetails")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "EngineVersion")
                                     (available-plugin-properties :target-type
                                      plugin-properties :member-name
                                      "AvailablePluginProperties")
                                     (available-package-configuration
                                      :target-type package-configuration
                                      :member-name
                                      "AvailablePackageConfiguration")
                                     (allow-listed-user-list :target-type
                                      package-user-list :member-name
                                      "AllowListedUserList")
                                     (package-owner :target-type package-owner
                                      :member-name "PackageOwner")
                                     (package-vending-options :target-type
                                      package-vending-options :member-name
                                      "PackageVendingOptions")
                                     (package-encryption-options :target-type
                                      package-encryption-options :member-name
                                      "PackageEncryptionOptions"))
                                    (:shape-name "PackageDetails"))

(smithy/sdk/shapes:define-structure package-details-for-association
                                    common-lisp:nil
                                    ((package-id :target-type package-id
                                      :required common-lisp:t :member-name
                                      "PackageID")
                                     (prerequisite-package-idlist :target-type
                                      package-idlist :member-name
                                      "PrerequisitePackageIDList")
                                     (association-configuration :target-type
                                      package-association-configuration
                                      :member-name "AssociationConfiguration"))
                                    (:shape-name
                                     "PackageDetailsForAssociation"))

(smithy/sdk/shapes:define-list package-details-for-association-list :member
                               package-details-for-association)

(smithy/sdk/shapes:define-list package-details-list :member package-details)

(smithy/sdk/shapes:define-structure package-encryption-options common-lisp:nil
                                    ((kms-key-identifier :target-type
                                      kms-key-id :member-name
                                      "KmsKeyIdentifier")
                                     (encryption-enabled :target-type boolean
                                      :required common-lisp:t :member-name
                                      "EncryptionEnabled"))
                                    (:shape-name "PackageEncryptionOptions"))

(smithy/sdk/shapes:define-type package-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list package-idlist :member package-id)

(smithy/sdk/shapes:define-type package-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum package-scope-operation-enum
    common-lisp:nil
  (:add "ADD")
  (:override "OVERRIDE")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-structure package-source common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :member-name "S3BucketName")
                                     (s3key :target-type s3key :member-name
                                      "S3Key"))
                                    (:shape-name "PackageSource"))

(smithy/sdk/shapes:define-enum package-status
    common-lisp:nil
  (:copying "COPYING")
  (:copy-failed "COPY_FAILED")
  (:validating "VALIDATING")
  (:validation-failed "VALIDATION_FAILED")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-enum package-type
    common-lisp:nil
  (:txt-dictionary "TXT-DICTIONARY")
  (:zip-plugin "ZIP-PLUGIN")
  (:package-license "PACKAGE-LICENSE")
  (:package-config "PACKAGE-CONFIG"))

(smithy/sdk/shapes:define-type package-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list package-user-list :member package-user)

(smithy/sdk/shapes:define-structure package-vending-options common-lisp:nil
                                    ((vending-enabled :target-type boolean
                                      :required common-lisp:t :member-name
                                      "VendingEnabled"))
                                    (:shape-name "PackageVendingOptions"))

(smithy/sdk/shapes:define-type package-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-version-history common-lisp:nil
                                    ((package-version :target-type
                                      package-version :member-name
                                      "PackageVersion")
                                     (commit-message :target-type
                                      commit-message :member-name
                                      "CommitMessage")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt")
                                     (plugin-properties :target-type
                                      plugin-properties :member-name
                                      "PluginProperties")
                                     (package-configuration :target-type
                                      package-configuration :member-name
                                      "PackageConfiguration"))
                                    (:shape-name "PackageVersionHistory"))

(smithy/sdk/shapes:define-list package-version-history-list :member
                               package-version-history)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-class-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure plugin-properties common-lisp:nil
                                    ((name :target-type plugin-name
                                      :member-name "Name")
                                     (description :target-type
                                      plugin-description :member-name
                                      "Description")
                                     (version :target-type plugin-version
                                      :member-name "Version")
                                     (class-name :target-type plugin-class-name
                                      :member-name "ClassName")
                                     (uncompressed-size-in-bytes :target-type
                                      uncompressed-plugin-size-in-bytes
                                      :member-name "UncompressedSizeInBytes"))
                                    (:shape-name "PluginProperties"))

(smithy/sdk/shapes:define-type plugin-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum principal-type
    common-lisp:nil
  (:aws-account "AWS_ACCOUNT")
  (:aws-service "AWS_SERVICE"))

(smithy/sdk/shapes:define-enum property-value-type
    common-lisp:nil
  (:plain-text "PLAIN_TEXT")
  (:stringified-json "STRINGIFIED_JSON"))

(smithy/sdk/shapes:define-input purchase-reserved-instance-offering-request
                                common-lisp:nil
                                ((reserved-instance-offering-id :target-type
                                  guid :required common-lisp:t :member-name
                                  "ReservedInstanceOfferingId")
                                 (reservation-name :target-type
                                  reservation-token :required common-lisp:t
                                  :member-name "ReservationName")
                                 (instance-count :target-type instance-count
                                  :member-name "InstanceCount"))
                                (:shape-name
                                 "PurchaseReservedInstanceOfferingRequest"))

(smithy/sdk/shapes:define-output purchase-reserved-instance-offering-response
                                 common-lisp:nil
                                 ((reserved-instance-id :target-type guid
                                   :member-name "ReservedInstanceId")
                                  (reservation-name :target-type
                                   reservation-token :member-name
                                   "ReservationName"))
                                 (:shape-name
                                  "PurchaseReservedInstanceOfferingResponse"))

(smithy/sdk/shapes:define-structure recurring-charge common-lisp:nil
                                    ((recurring-charge-amount :target-type
                                      double :member-name
                                      "RecurringChargeAmount")
                                     (recurring-charge-frequency :target-type
                                      string :member-name
                                      "RecurringChargeFrequency"))
                                    (:shape-name "RecurringCharge"))

(smithy/sdk/shapes:define-list recurring-charge-list :member
                               (recurring-charge :xml-name "RecurringCharge"))

(smithy/sdk/shapes:define-type reference-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reject-inbound-connection-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t))
                                (:shape-name "RejectInboundConnectionRequest"))

(smithy/sdk/shapes:define-output reject-inbound-connection-response
                                 common-lisp:nil
                                 ((connection :target-type inbound-connection
                                   :member-name "Connection"))
                                 (:shape-name
                                  "RejectInboundConnectionResponse"))

(smithy/sdk/shapes:define-input remove-tags-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "ARN")
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsRequest"))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum requirement-level
    common-lisp:nil
  (:required "REQUIRED")
  (:optional "OPTIONAL")
  (:none "NONE"))

(smithy/sdk/shapes:define-type reservation-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reserved-instance common-lisp:nil
                                    ((reservation-name :target-type
                                      reservation-token :member-name
                                      "ReservationName")
                                     (reserved-instance-id :target-type guid
                                      :member-name "ReservedInstanceId")
                                     (billing-subscription-id :target-type long
                                      :member-name "BillingSubscriptionId")
                                     (reserved-instance-offering-id
                                      :target-type string :member-name
                                      "ReservedInstanceOfferingId")
                                     (instance-type :target-type
                                      open-search-partition-instance-type
                                      :member-name "InstanceType")
                                     (start-time :target-type update-timestamp
                                      :member-name "StartTime")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (instance-count :target-type integer
                                      :member-name "InstanceCount")
                                     (state :target-type string :member-name
                                      "State")
                                     (payment-option :target-type
                                      reserved-instance-payment-option
                                      :member-name "PaymentOption")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name "ReservedInstance"))

(smithy/sdk/shapes:define-list reserved-instance-list :member reserved-instance)

(smithy/sdk/shapes:define-structure reserved-instance-offering common-lisp:nil
                                    ((reserved-instance-offering-id
                                      :target-type guid :member-name
                                      "ReservedInstanceOfferingId")
                                     (instance-type :target-type
                                      open-search-partition-instance-type
                                      :member-name "InstanceType")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (payment-option :target-type
                                      reserved-instance-payment-option
                                      :member-name "PaymentOption")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name "ReservedInstanceOffering"))

(smithy/sdk/shapes:define-list reserved-instance-offering-list :member
                               (reserved-instance-offering :xml-name
                                "ReservedInstanceOffering"))

(smithy/sdk/shapes:define-enum reserved-instance-payment-option
    common-lisp:nil
  (:all-upfront "ALL_UPFRONT")
  (:partial-upfront "PARTIAL_UPFRONT")
  (:no-upfront "NO_UPFRONT"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input revoke-vpc-endpoint-access-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (account :target-type awsaccount :member-name
                                  "Account")
                                 (service :target-type awsservice-principal
                                  :member-name "Service"))
                                (:shape-name "RevokeVpcEndpointAccessRequest"))

(smithy/sdk/shapes:define-output revoke-vpc-endpoint-access-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RevokeVpcEndpointAccessResponse"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type roles-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum roles-key-id-coption
    common-lisp:nil
  (:group-name "GroupName")
  (:group-id "GroupId"))

(smithy/sdk/shapes:define-enum rollback-on-disable
    common-lisp:nil
  (:no-rollback "NO_ROLLBACK")
  (:default-rollback "DEFAULT_ROLLBACK"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3glue-data-catalog common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "S3GlueDataCatalog"))

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3vectors-engine common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "S3VectorsEngine"))

(smithy/sdk/shapes:define-type samlentity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure samlidp common-lisp:nil
                                    ((metadata-content :target-type
                                      samlmetadata :required common-lisp:t
                                      :member-name "MetadataContent")
                                     (entity-id :target-type samlentity-id
                                      :required common-lisp:t :member-name
                                      "EntityId"))
                                    (:shape-name "SAMLIdp"))

(smithy/sdk/shapes:define-type samlmetadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure samloptions-input common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (idp :target-type samlidp :member-name
                                      "Idp")
                                     (master-user-name :target-type username
                                      :member-name "MasterUserName")
                                     (master-backend-role :target-type
                                      backend-role :member-name
                                      "MasterBackendRole")
                                     (subject-key :target-type string
                                      :member-name "SubjectKey")
                                     (roles-key :target-type string
                                      :member-name "RolesKey")
                                     (session-timeout-minutes :target-type
                                      integer-class :member-name
                                      "SessionTimeoutMinutes"))
                                    (:shape-name "SAMLOptionsInput"))

(smithy/sdk/shapes:define-structure samloptions-output common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (idp :target-type samlidp :member-name
                                      "Idp")
                                     (subject-key :target-type string
                                      :member-name "SubjectKey")
                                     (roles-key :target-type string
                                      :member-name "RolesKey")
                                     (session-timeout-minutes :target-type
                                      integer-class :member-name
                                      "SessionTimeoutMinutes"))
                                    (:shape-name "SAMLOptionsOutput"))

(smithy/sdk/shapes:define-enum schedule-at
    common-lisp:nil
  (:now "NOW")
  (:timestamp "TIMESTAMP")
  (:off-peak-window "OFF_PEAK_WINDOW"))

(smithy/sdk/shapes:define-structure scheduled-action common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (type :target-type action-type :required
                                      common-lisp:t :member-name "Type")
                                     (severity :target-type action-severity
                                      :required common-lisp:t :member-name
                                      "Severity")
                                     (scheduled-time :target-type long
                                      :required common-lisp:t :member-name
                                      "ScheduledTime")
                                     (description :target-type string
                                      :member-name "Description")
                                     (scheduled-by :target-type scheduled-by
                                      :member-name "ScheduledBy")
                                     (status :target-type action-status
                                      :member-name "Status")
                                     (mandatory :target-type boolean
                                      :member-name "Mandatory")
                                     (cancellable :target-type boolean
                                      :member-name "Cancellable"))
                                    (:shape-name "ScheduledAction"))

(smithy/sdk/shapes:define-list scheduled-actions-list :member scheduled-action)

(smithy/sdk/shapes:define-enum scheduled-auto-tune-action-type
    common-lisp:nil
  (:jvm-heap-size-tuning "JVM_HEAP_SIZE_TUNING")
  (:jvm-young-gen-tuning "JVM_YOUNG_GEN_TUNING"))

(smithy/sdk/shapes:define-type scheduled-auto-tune-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scheduled-auto-tune-details common-lisp:nil
                                    ((date :target-type auto-tune-date
                                      :member-name "Date")
                                     (action-type :target-type
                                      scheduled-auto-tune-action-type
                                      :member-name "ActionType")
                                     (action :target-type
                                      scheduled-auto-tune-description
                                      :member-name "Action")
                                     (severity :target-type
                                      scheduled-auto-tune-severity-type
                                      :member-name "Severity"))
                                    (:shape-name "ScheduledAutoTuneDetails"))

(smithy/sdk/shapes:define-enum scheduled-auto-tune-severity-type
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum scheduled-by
    common-lisp:nil
  (:customer "CUSTOMER")
  (:system "SYSTEM"))

(smithy/sdk/shapes:define-structure security-lake-direct-query-data-source
                                    common-lisp:nil
                                    ((role-arn :target-type
                                      direct-query-data-source-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn"))
                                    (:shape-name
                                     "SecurityLakeDirectQueryDataSource"))

(smithy/sdk/shapes:define-structure service-software-options common-lisp:nil
                                    ((current-version :target-type string
                                      :member-name "CurrentVersion")
                                     (new-version :target-type string
                                      :member-name "NewVersion")
                                     (update-available :target-type boolean
                                      :member-name "UpdateAvailable")
                                     (cancellable :target-type boolean
                                      :member-name "Cancellable")
                                     (update-status :target-type
                                      deployment-status :member-name
                                      "UpdateStatus")
                                     (description :target-type string
                                      :member-name "Description")
                                     (automated-update-date :target-type
                                      deployment-close-date-time-stamp
                                      :member-name "AutomatedUpdateDate")
                                     (optional-deployment :target-type boolean
                                      :member-name "OptionalDeployment"))
                                    (:shape-name "ServiceSoftwareOptions"))

(smithy/sdk/shapes:define-type service-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum skip-unavailable-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list slot-list :member long)

(smithy/sdk/shapes:define-error slot-not-available-exception common-lisp:nil
                                ((slot-suggestions :target-type slot-list
                                  :member-name "SlotSuggestions")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "SlotNotAvailableException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure snapshot-options common-lisp:nil
                                    ((automated-snapshot-start-hour
                                      :target-type integer-class :member-name
                                      "AutomatedSnapshotStartHour"))
                                    (:shape-name "SnapshotOptions"))

(smithy/sdk/shapes:define-structure snapshot-options-status common-lisp:nil
                                    ((options :target-type snapshot-options
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "SnapshotOptionsStatus"))

(smithy/sdk/shapes:define-structure software-update-options common-lisp:nil
                                    ((auto-software-update-enabled :target-type
                                      boolean :member-name
                                      "AutoSoftwareUpdateEnabled"))
                                    (:shape-name "SoftwareUpdateOptions"))

(smithy/sdk/shapes:define-structure software-update-options-status
                                    common-lisp:nil
                                    ((options :target-type
                                      software-update-options :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :member-name "Status"))
                                    (:shape-name "SoftwareUpdateOptionsStatus"))

(smithy/sdk/shapes:define-type start-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input start-domain-maintenance-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (action :target-type maintenance-type
                                  :required common-lisp:t :member-name
                                  "Action")
                                 (node-id :target-type node-id :member-name
                                  "NodeId"))
                                (:shape-name "StartDomainMaintenanceRequest"))

(smithy/sdk/shapes:define-output start-domain-maintenance-response
                                 common-lisp:nil
                                 ((maintenance-id :target-type request-id
                                   :member-name "MaintenanceId"))
                                 (:shape-name "StartDomainMaintenanceResponse"))

(smithy/sdk/shapes:define-input start-service-software-update-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (schedule-at :target-type schedule-at
                                  :member-name "ScheduleAt")
                                 (desired-start-time :target-type long
                                  :member-name "DesiredStartTime"))
                                (:shape-name
                                 "StartServiceSoftwareUpdateRequest"))

(smithy/sdk/shapes:define-output start-service-software-update-response
                                 common-lisp:nil
                                 ((service-software-options :target-type
                                   service-software-options :member-name
                                   "ServiceSoftwareOptions"))
                                 (:shape-name
                                  "StartServiceSoftwareUpdateResponse"))

(smithy/sdk/shapes:define-type start-time-hours smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type start-time-minutes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type start-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type storage-sub-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-type common-lisp:nil
                                    ((storage-type-name :target-type
                                      storage-type-name :member-name
                                      "StorageTypeName")
                                     (storage-sub-type-name :target-type
                                      storage-sub-type-name :member-name
                                      "StorageSubTypeName")
                                     (storage-type-limits :target-type
                                      storage-type-limit-list :member-name
                                      "StorageTypeLimits"))
                                    (:shape-name "StorageType"))

(smithy/sdk/shapes:define-structure storage-type-limit common-lisp:nil
                                    ((limit-name :target-type limit-name
                                      :member-name "LimitName")
                                     (limit-values :target-type
                                      limit-value-list :member-name
                                      "LimitValues"))
                                    (:shape-name "StorageTypeLimit"))

(smithy/sdk/shapes:define-list storage-type-limit-list :member
                               storage-type-limit)

(smithy/sdk/shapes:define-list storage-type-list :member storage-type)

(smithy/sdk/shapes:define-type storage-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subject-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum subject-key-id-coption
    common-lisp:nil
  (:user-name "UserName")
  (:user-id "UserId")
  (:email "Email"))

(smithy/sdk/shapes:define-enum tlssecurity-policy
    common-lisp:nil
  (:policy-min-tls-1-0-2019-07 "Policy-Min-TLS-1-0-2019-07")
  (:policy-min-tls-1-2-2019-07 "Policy-Min-TLS-1-2-2019-07")
  (:policy-min-tls-1-2-pfs-2023-10 "Policy-Min-TLS-1-2-PFS-2023-10"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum time-unit
    common-lisp:nil
  (:hours "HOURS"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type total-number-of-stages
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uint-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uncompressed-plugin-size-in-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t)
                                 (data-sources :target-type data-sources
                                  :member-name "dataSources")
                                 (app-configs :target-type app-configs
                                  :member-name "appConfigs"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 ((id :target-type id :member-name "id")
                                  (name :target-type application-name
                                   :member-name "name")
                                  (arn :target-type arn :member-name "arn")
                                  (data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (iam-identity-center-options :target-type
                                   iam-identity-center-options :member-name
                                   "iamIdentityCenterOptions")
                                  (app-configs :target-type app-configs
                                   :member-name "appConfigs")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-input update-data-source-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (name :target-type data-source-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (data-source-type :target-type
                                  data-source-type :required common-lisp:t
                                  :member-name "DataSourceType")
                                 (description :target-type
                                  data-source-description :member-name
                                  "Description")
                                 (status :target-type data-source-status
                                  :member-name "Status"))
                                (:shape-name "UpdateDataSourceRequest"))

(smithy/sdk/shapes:define-output update-data-source-response common-lisp:nil
                                 ((message :target-type string :member-name
                                   "Message"))
                                 (:shape-name "UpdateDataSourceResponse"))

(smithy/sdk/shapes:define-input update-direct-query-data-source-request
                                common-lisp:nil
                                ((data-source-name :target-type
                                  direct-query-data-source-name :required
                                  common-lisp:t :member-name "DataSourceName"
                                  :http-label common-lisp:t)
                                 (data-source-type :target-type
                                  direct-query-data-source-type :required
                                  common-lisp:t :member-name "DataSourceType")
                                 (description :target-type
                                  direct-query-data-source-description
                                  :member-name "Description")
                                 (open-search-arns :target-type
                                  direct-query-open-search-arnlist :required
                                  common-lisp:t :member-name "OpenSearchArns"))
                                (:shape-name
                                 "UpdateDirectQueryDataSourceRequest"))

(smithy/sdk/shapes:define-output update-direct-query-data-source-response
                                 common-lisp:nil
                                 ((data-source-arn :target-type string
                                   :member-name "DataSourceArn"))
                                 (:shape-name
                                  "UpdateDirectQueryDataSourceResponse"))

(smithy/sdk/shapes:define-input update-domain-config-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (cluster-config :target-type cluster-config
                                  :member-name "ClusterConfig")
                                 (ebsoptions :target-type ebsoptions
                                  :member-name "EBSOptions")
                                 (snapshot-options :target-type
                                  snapshot-options :member-name
                                  "SnapshotOptions")
                                 (vpcoptions :target-type vpcoptions
                                  :member-name "VPCOptions")
                                 (cognito-options :target-type cognito-options
                                  :member-name "CognitoOptions")
                                 (advanced-options :target-type
                                  advanced-options :member-name
                                  "AdvancedOptions")
                                 (access-policies :target-type policy-document
                                  :member-name "AccessPolicies")
                                 (ipaddress-type :target-type ipaddress-type
                                  :member-name "IPAddressType")
                                 (log-publishing-options :target-type
                                  log-publishing-options :member-name
                                  "LogPublishingOptions")
                                 (encryption-at-rest-options :target-type
                                  encryption-at-rest-options :member-name
                                  "EncryptionAtRestOptions")
                                 (domain-endpoint-options :target-type
                                  domain-endpoint-options :member-name
                                  "DomainEndpointOptions")
                                 (node-to-node-encryption-options :target-type
                                  node-to-node-encryption-options :member-name
                                  "NodeToNodeEncryptionOptions")
                                 (advanced-security-options :target-type
                                  advanced-security-options-input :member-name
                                  "AdvancedSecurityOptions")
                                 (identity-center-options :target-type
                                  identity-center-options-input :member-name
                                  "IdentityCenterOptions")
                                 (auto-tune-options :target-type
                                  auto-tune-options :member-name
                                  "AutoTuneOptions")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun")
                                 (dry-run-mode :target-type dry-run-mode
                                  :member-name "DryRunMode")
                                 (off-peak-window-options :target-type
                                  off-peak-window-options :member-name
                                  "OffPeakWindowOptions")
                                 (software-update-options :target-type
                                  software-update-options :member-name
                                  "SoftwareUpdateOptions")
                                 (aimloptions :target-type aimloptions-input
                                  :member-name "AIMLOptions"))
                                (:shape-name "UpdateDomainConfigRequest"))

(smithy/sdk/shapes:define-output update-domain-config-response common-lisp:nil
                                 ((domain-config :target-type domain-config
                                   :required common-lisp:t :member-name
                                   "DomainConfig")
                                  (dry-run-results :target-type dry-run-results
                                   :member-name "DryRunResults")
                                  (dry-run-progress-status :target-type
                                   dry-run-progress-status :member-name
                                   "DryRunProgressStatus"))
                                 (:shape-name "UpdateDomainConfigResponse"))

(smithy/sdk/shapes:define-input update-package-request common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID")
                                 (package-source :target-type package-source
                                  :required common-lisp:t :member-name
                                  "PackageSource")
                                 (package-description :target-type
                                  package-description :member-name
                                  "PackageDescription")
                                 (commit-message :target-type commit-message
                                  :member-name "CommitMessage")
                                 (package-configuration :target-type
                                  package-configuration :member-name
                                  "PackageConfiguration")
                                 (package-encryption-options :target-type
                                  package-encryption-options :member-name
                                  "PackageEncryptionOptions"))
                                (:shape-name "UpdatePackageRequest"))

(smithy/sdk/shapes:define-output update-package-response common-lisp:nil
                                 ((package-details :target-type package-details
                                   :member-name "PackageDetails"))
                                 (:shape-name "UpdatePackageResponse"))

(smithy/sdk/shapes:define-input update-package-scope-request common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID")
                                 (operation :target-type
                                  package-scope-operation-enum :required
                                  common-lisp:t :member-name "Operation")
                                 (package-user-list :target-type
                                  package-user-list :required common-lisp:t
                                  :member-name "PackageUserList"))
                                (:shape-name "UpdatePackageScopeRequest"))

(smithy/sdk/shapes:define-output update-package-scope-response common-lisp:nil
                                 ((package-id :target-type package-id
                                   :member-name "PackageID")
                                  (operation :target-type
                                   package-scope-operation-enum :member-name
                                   "Operation")
                                  (package-user-list :target-type
                                   package-user-list :member-name
                                   "PackageUserList"))
                                 (:shape-name "UpdatePackageScopeResponse"))

(smithy/sdk/shapes:define-input update-scheduled-action-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (action-id :target-type string :required
                                  common-lisp:t :member-name "ActionID")
                                 (action-type :target-type action-type
                                  :required common-lisp:t :member-name
                                  "ActionType")
                                 (schedule-at :target-type schedule-at
                                  :required common-lisp:t :member-name
                                  "ScheduleAt")
                                 (desired-start-time :target-type long
                                  :member-name "DesiredStartTime"))
                                (:shape-name "UpdateScheduledActionRequest"))

(smithy/sdk/shapes:define-output update-scheduled-action-response
                                 common-lisp:nil
                                 ((scheduled-action :target-type
                                   scheduled-action :member-name
                                   "ScheduledAction"))
                                 (:shape-name "UpdateScheduledActionResponse"))

(smithy/sdk/shapes:define-type update-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input update-vpc-endpoint-request common-lisp:nil
                                ((vpc-endpoint-id :target-type vpc-endpoint-id
                                  :required common-lisp:t :member-name
                                  "VpcEndpointId")
                                 (vpc-options :target-type vpcoptions :required
                                  common-lisp:t :member-name "VpcOptions"))
                                (:shape-name "UpdateVpcEndpointRequest"))

(smithy/sdk/shapes:define-output update-vpc-endpoint-response common-lisp:nil
                                 ((vpc-endpoint :target-type vpc-endpoint
                                   :required common-lisp:t :member-name
                                   "VpcEndpoint"))
                                 (:shape-name "UpdateVpcEndpointResponse"))

(smithy/sdk/shapes:define-input upgrade-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (target-version :target-type version-string
                                  :required common-lisp:t :member-name
                                  "TargetVersion")
                                 (perform-check-only :target-type boolean
                                  :member-name "PerformCheckOnly")
                                 (advanced-options :target-type
                                  advanced-options :member-name
                                  "AdvancedOptions"))
                                (:shape-name "UpgradeDomainRequest"))

(smithy/sdk/shapes:define-output upgrade-domain-response common-lisp:nil
                                 ((upgrade-id :target-type string :member-name
                                   "UpgradeId")
                                  (domain-name :target-type domain-name
                                   :member-name "DomainName")
                                  (target-version :target-type version-string
                                   :member-name "TargetVersion")
                                  (perform-check-only :target-type boolean
                                   :member-name "PerformCheckOnly")
                                  (advanced-options :target-type
                                   advanced-options :member-name
                                   "AdvancedOptions")
                                  (change-progress-details :target-type
                                   change-progress-details :member-name
                                   "ChangeProgressDetails"))
                                 (:shape-name "UpgradeDomainResponse"))

(smithy/sdk/shapes:define-structure upgrade-history common-lisp:nil
                                    ((upgrade-name :target-type upgrade-name
                                      :member-name "UpgradeName")
                                     (start-timestamp :target-type
                                      start-timestamp :member-name
                                      "StartTimestamp")
                                     (upgrade-status :target-type
                                      upgrade-status :member-name
                                      "UpgradeStatus")
                                     (steps-list :target-type
                                      upgrade-steps-list :member-name
                                      "StepsList"))
                                    (:shape-name "UpgradeHistory"))

(smithy/sdk/shapes:define-list upgrade-history-list :member upgrade-history)

(smithy/sdk/shapes:define-type upgrade-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum upgrade-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:succeeded-with-issues "SUCCEEDED_WITH_ISSUES")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum upgrade-step
    common-lisp:nil
  (:pre-upgrade-check "PRE_UPGRADE_CHECK")
  (:snapshot "SNAPSHOT")
  (:upgrade "UPGRADE"))

(smithy/sdk/shapes:define-structure upgrade-step-item common-lisp:nil
                                    ((upgrade-step :target-type upgrade-step
                                      :member-name "UpgradeStep")
                                     (upgrade-step-status :target-type
                                      upgrade-status :member-name
                                      "UpgradeStepStatus")
                                     (issues :target-type issues :member-name
                                      "Issues")
                                     (progress-percent :target-type double
                                      :member-name "ProgressPercent"))
                                    (:shape-name "UpgradeStepItem"))

(smithy/sdk/shapes:define-list upgrade-steps-list :member upgrade-step-item)

(smithy/sdk/shapes:define-type user-pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpcderived-info common-lisp:nil
                                    ((vpcid :target-type string :member-name
                                      "VPCId")
                                     (subnet-ids :target-type string-list
                                      :member-name "SubnetIds")
                                     (availability-zones :target-type
                                      string-list :member-name
                                      "AvailabilityZones")
                                     (security-group-ids :target-type
                                      string-list :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VPCDerivedInfo"))

(smithy/sdk/shapes:define-structure vpcderived-info-status common-lisp:nil
                                    ((options :target-type vpcderived-info
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "VPCDerivedInfoStatus"))

(smithy/sdk/shapes:define-structure vpcoptions common-lisp:nil
                                    ((subnet-ids :target-type string-list
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      string-list :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VPCOptions"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-failure common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "ValidationFailure"))

(smithy/sdk/shapes:define-list validation-failures :member validation-failure)

(smithy/sdk/shapes:define-list value-string-list :member non-empty-string)

(smithy/sdk/shapes:define-list version-list :member version-string)

(smithy/sdk/shapes:define-structure version-status common-lisp:nil
                                    ((options :target-type version-string
                                      :required common-lisp:t :member-name
                                      "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "VersionStatus"))

(smithy/sdk/shapes:define-type version-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type volume-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum volume-type
    common-lisp:nil
  (:standard "standard")
  (:gp2 "gp2")
  (:io1 "io1")
  (:gp3 "gp3"))

(smithy/sdk/shapes:define-structure vpc-endpoint common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "VpcEndpointId")
                                     (vpc-endpoint-owner :target-type
                                      awsaccount :member-name
                                      "VpcEndpointOwner")
                                     (domain-arn :target-type domain-arn
                                      :member-name "DomainArn")
                                     (vpc-options :target-type vpcderived-info
                                      :member-name "VpcOptions")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "Status")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint"))
                                    (:shape-name "VpcEndpoint"))

(smithy/sdk/shapes:define-structure vpc-endpoint-error common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "VpcEndpointId")
                                     (error-code :target-type
                                      vpc-endpoint-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "VpcEndpointError"))

(smithy/sdk/shapes:define-enum vpc-endpoint-error-code
    common-lisp:nil
  (:endpoint-not-found "ENDPOINT_NOT_FOUND")
  (:server-error "SERVER_ERROR"))

(smithy/sdk/shapes:define-list vpc-endpoint-error-list :member
                               vpc-endpoint-error)

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-endpoint-id-list :member vpc-endpoint-id)

(smithy/sdk/shapes:define-enum vpc-endpoint-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure vpc-endpoint-summary common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "VpcEndpointId")
                                     (vpc-endpoint-owner :target-type string
                                      :member-name "VpcEndpointOwner")
                                     (domain-arn :target-type domain-arn
                                      :member-name "DomainArn")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "Status"))
                                    (:shape-name "VpcEndpointSummary"))

(smithy/sdk/shapes:define-list vpc-endpoint-summary-list :member
                               vpc-endpoint-summary)

(smithy/sdk/shapes:define-list vpc-endpoints :member vpc-endpoint)

(smithy/sdk/shapes:define-structure window-start-time common-lisp:nil
                                    ((hours :target-type start-time-hours
                                      :required common-lisp:t :member-name
                                      "Hours")
                                     (minutes :target-type start-time-minutes
                                      :required common-lisp:t :member-name
                                      "Minutes"))
                                    (:shape-name "WindowStartTime"))

(smithy/sdk/shapes:define-structure zone-awareness-config common-lisp:nil
                                    ((availability-zone-count :target-type
                                      integer-class :member-name
                                      "AvailabilityZoneCount"))
                                    (:shape-name "ZoneAwarenessConfig"))

(smithy/sdk/shapes:define-enum zone-status
    common-lisp:nil
  (:active "Active")
  (:stand-by "StandBy")
  (:not-available "NotAvailable"))

(smithy/sdk/operation:define-operation accept-inbound-connection :shape-name
                                       "AcceptInboundConnection" :input
                                       accept-inbound-connection-request
                                       :output
                                       accept-inbound-connection-response
                                       :errors
                                       (disabled-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri
                                       "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept"
                                       :code 200)

(smithy/sdk/operation:define-operation add-data-source :shape-name
                                       "AddDataSource" :input
                                       add-data-source-request :output
                                       add-data-source-response :errors
                                       (base-exception
                                        dependency-failure-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/dataSource"
                                       :code 200)

(smithy/sdk/operation:define-operation add-direct-query-data-source :shape-name
                                       "AddDirectQueryDataSource" :input
                                       add-direct-query-data-source-request
                                       :output
                                       add-direct-query-data-source-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/directQueryDataSource"
                                       :code 200)

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-request :output
                                       common-lisp:null :errors
                                       (base-exception internal-exception
                                        limit-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/2021-01-01/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-package :shape-name
                                       "AssociatePackage" :input
                                       associate-package-request :output
                                       associate-package-response :errors
                                       (access-denied-exception base-exception
                                        conflict-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/associate/{PackageID}/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-packages :shape-name
                                       "AssociatePackages" :input
                                       associate-packages-request :output
                                       associate-packages-response :errors
                                       (base-exception conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/associateMultiple"
                                       :code 200)

(smithy/sdk/operation:define-operation authorize-vpc-endpoint-access
                                       :shape-name "AuthorizeVpcEndpointAccess"
                                       :input
                                       authorize-vpc-endpoint-access-request
                                       :output
                                       authorize-vpc-endpoint-access-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-domain-config-change :shape-name
                                       "CancelDomainConfigChange" :input
                                       cancel-domain-config-change-request
                                       :output
                                       cancel-domain-config-change-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/config/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-service-software-update
                                       :shape-name
                                       "CancelServiceSoftwareUpdate" :input
                                       cancel-service-software-update-request
                                       :output
                                       cancel-service-software-update-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception base-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/application"
                                       :code 200)

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain" :code
                                       200)

(smithy/sdk/operation:define-operation create-outbound-connection :shape-name
                                       "CreateOutboundConnection" :input
                                       create-outbound-connection-request
                                       :output
                                       create-outbound-connection-response
                                       :errors
                                       (disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/cc/outboundConnection"
                                       :code 200)

(smithy/sdk/operation:define-operation create-package :shape-name
                                       "CreatePackage" :input
                                       create-package-request :output
                                       create-package-response :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages" :code 200)

(smithy/sdk/operation:define-operation create-vpc-endpoint :shape-name
                                       "CreateVpcEndpoint" :input
                                       create-vpc-endpoint-request :output
                                       create-vpc-endpoint-response :errors
                                       (base-exception conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/vpcEndpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (access-denied-exception base-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/application/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-source :shape-name
                                       "DeleteDataSource" :input
                                       delete-data-source-request :output
                                       delete-data-source-response :errors
                                       (base-exception
                                        dependency-failure-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-direct-query-data-source
                                       :shape-name
                                       "DeleteDirectQueryDataSource" :input
                                       delete-direct-query-data-source-request
                                       :output common-lisp:null :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-inbound-connection :shape-name
                                       "DeleteInboundConnection" :input
                                       delete-inbound-connection-request
                                       :output
                                       delete-inbound-connection-response
                                       :errors
                                       (disabled-operation-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-outbound-connection :shape-name
                                       "DeleteOutboundConnection" :input
                                       delete-outbound-connection-request
                                       :output
                                       delete-outbound-connection-response
                                       :errors
                                       (disabled-operation-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-package :shape-name
                                       "DeletePackage" :input
                                       delete-package-request :output
                                       delete-package-response :errors
                                       (access-denied-exception base-exception
                                        conflict-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/packages/{PackageID}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-vpc-endpoint :shape-name
                                       "DeleteVpcEndpoint" :input
                                       delete-vpc-endpoint-request :output
                                       delete-vpc-endpoint-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain :shape-name
                                       "DescribeDomain" :input
                                       describe-domain-request :output
                                       describe-domain-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain-auto-tunes :shape-name
                                       "DescribeDomainAutoTunes" :input
                                       describe-domain-auto-tunes-request
                                       :output
                                       describe-domain-auto-tunes-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/autoTunes"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain-change-progress
                                       :shape-name
                                       "DescribeDomainChangeProgress" :input
                                       describe-domain-change-progress-request
                                       :output
                                       describe-domain-change-progress-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/progress"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain-config :shape-name
                                       "DescribeDomainConfig" :input
                                       describe-domain-config-request :output
                                       describe-domain-config-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain-health :shape-name
                                       "DescribeDomainHealth" :input
                                       describe-domain-health-request :output
                                       describe-domain-health-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/health"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain-nodes :shape-name
                                       "DescribeDomainNodes" :input
                                       describe-domain-nodes-request :output
                                       describe-domain-nodes-response :errors
                                       (base-exception
                                        dependency-failure-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/nodes"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domains :shape-name
                                       "DescribeDomains" :input
                                       describe-domains-request :output
                                       describe-domains-response :errors
                                       (base-exception internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain-info"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-dry-run-progress :shape-name
                                       "DescribeDryRunProgress" :input
                                       describe-dry-run-progress-request
                                       :output
                                       describe-dry-run-progress-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/dryRun"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-inbound-connections :shape-name
                                       "DescribeInboundConnections" :input
                                       describe-inbound-connections-request
                                       :output
                                       describe-inbound-connections-response
                                       :errors
                                       (disabled-operation-exception
                                        invalid-pagination-token-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/cc/inboundConnection/search"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-instance-type-limits
                                       :shape-name "DescribeInstanceTypeLimits"
                                       :input
                                       describe-instance-type-limits-request
                                       :output
                                       describe-instance-type-limits-response
                                       :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-outbound-connections
                                       :shape-name
                                       "DescribeOutboundConnections" :input
                                       describe-outbound-connections-request
                                       :output
                                       describe-outbound-connections-response
                                       :errors
                                       (disabled-operation-exception
                                        invalid-pagination-token-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/cc/outboundConnection/search"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-packages :shape-name
                                       "DescribePackages" :input
                                       describe-packages-request :output
                                       describe-packages-response :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/describe" :code
                                       200)

(smithy/sdk/operation:define-operation describe-reserved-instance-offerings
                                       :shape-name
                                       "DescribeReservedInstanceOfferings"
                                       :input
                                       describe-reserved-instance-offerings-request
                                       :output
                                       describe-reserved-instance-offerings-response
                                       :errors
                                       (disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/reservedInstanceOfferings"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-reserved-instances :shape-name
                                       "DescribeReservedInstances" :input
                                       describe-reserved-instances-request
                                       :output
                                       describe-reserved-instances-response
                                       :errors
                                       (disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/reservedInstances"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-vpc-endpoints :shape-name
                                       "DescribeVpcEndpoints" :input
                                       describe-vpc-endpoints-request :output
                                       describe-vpc-endpoints-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/vpcEndpoints/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation dissociate-package :shape-name
                                       "DissociatePackage" :input
                                       dissociate-package-request :output
                                       dissociate-package-response :errors
                                       (access-denied-exception base-exception
                                        conflict-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation dissociate-packages :shape-name
                                       "DissociatePackages" :input
                                       dissociate-packages-request :output
                                       dissociate-packages-response :errors
                                       (base-exception conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/dissociateMultiple"
                                       :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (access-denied-exception base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/application/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-compatible-versions :shape-name
                                       "GetCompatibleVersions" :input
                                       get-compatible-versions-request :output
                                       get-compatible-versions-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/compatibleVersions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-source :shape-name
                                       "GetDataSource" :input
                                       get-data-source-request :output
                                       get-data-source-response :errors
                                       (base-exception
                                        dependency-failure-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-direct-query-data-source :shape-name
                                       "GetDirectQueryDataSource" :input
                                       get-direct-query-data-source-request
                                       :output
                                       get-direct-query-data-source-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-maintenance-status
                                       :shape-name "GetDomainMaintenanceStatus"
                                       :input
                                       get-domain-maintenance-status-request
                                       :output
                                       get-domain-maintenance-status-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance"
                                       :code 200)

(smithy/sdk/operation:define-operation get-package-version-history :shape-name
                                       "GetPackageVersionHistory" :input
                                       get-package-version-history-request
                                       :output
                                       get-package-version-history-response
                                       :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/packages/{PackageID}/history"
                                       :code 200)

(smithy/sdk/operation:define-operation get-upgrade-history :shape-name
                                       "GetUpgradeHistory" :input
                                       get-upgrade-history-request :output
                                       get-upgrade-history-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history"
                                       :code 200)

(smithy/sdk/operation:define-operation get-upgrade-status :shape-name
                                       "GetUpgradeStatus" :input
                                       get-upgrade-status-request :output
                                       get-upgrade-status-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (access-denied-exception base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/list-applications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-sources :shape-name
                                       "ListDataSources" :input
                                       list-data-sources-request :output
                                       list-data-sources-response :errors
                                       (base-exception
                                        dependency-failure-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/dataSource"
                                       :code 200)

(smithy/sdk/operation:define-operation list-direct-query-data-sources
                                       :shape-name "ListDirectQueryDataSources"
                                       :input
                                       list-direct-query-data-sources-request
                                       :output
                                       list-direct-query-data-sources-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/directQueryDataSource"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-maintenances :shape-name
                                       "ListDomainMaintenances" :input
                                       list-domain-maintenances-request :output
                                       list-domain-maintenances-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-names :shape-name
                                       "ListDomainNames" :input
                                       list-domain-names-request :output
                                       list-domain-names-response :errors
                                       (base-exception validation-exception)
                                       :method "GET" :uri "/2021-01-01/domain"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domains-for-package :shape-name
                                       "ListDomainsForPackage" :input
                                       list-domains-for-package-request :output
                                       list-domains-for-package-response
                                       :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/packages/{PackageID}/domains"
                                       :code 200)

(smithy/sdk/operation:define-operation list-instance-type-details :shape-name
                                       "ListInstanceTypeDetails" :input
                                       list-instance-type-details-request
                                       :output
                                       list-instance-type-details-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-packages-for-domain :shape-name
                                       "ListPackagesForDomain" :input
                                       list-packages-for-domain-request :output
                                       list-packages-for-domain-response
                                       :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/domain/{DomainName}/packages"
                                       :code 200)

(smithy/sdk/operation:define-operation list-scheduled-actions :shape-name
                                       "ListScheduledActions" :input
                                       list-scheduled-actions-request :output
                                       list-scheduled-actions-response :errors
                                       (base-exception internal-exception
                                        invalid-pagination-token-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/2021-01-01/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation list-versions :shape-name "ListVersions"
                                       :input list-versions-request :output
                                       list-versions-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/versions" :code
                                       200)

(smithy/sdk/operation:define-operation list-vpc-endpoint-access :shape-name
                                       "ListVpcEndpointAccess" :input
                                       list-vpc-endpoint-access-request :output
                                       list-vpc-endpoint-access-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vpc-endpoints :shape-name
                                       "ListVpcEndpoints" :input
                                       list-vpc-endpoints-request :output
                                       list-vpc-endpoints-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/vpcEndpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vpc-endpoints-for-domain
                                       :shape-name "ListVpcEndpointsForDomain"
                                       :input
                                       list-vpc-endpoints-for-domain-request
                                       :output
                                       list-vpc-endpoints-for-domain-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation purchase-reserved-instance-offering
                                       :shape-name
                                       "PurchaseReservedInstanceOffering"
                                       :input
                                       purchase-reserved-instance-offering-request
                                       :output
                                       purchase-reserved-instance-offering-response
                                       :errors
                                       (disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/purchaseReservedInstanceOffering"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-inbound-connection :shape-name
                                       "RejectInboundConnection" :input
                                       reject-inbound-connection-request
                                       :output
                                       reject-inbound-connection-response
                                       :errors
                                       (disabled-operation-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri
                                       "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-request :output
                                       common-lisp:null :errors
                                       (base-exception internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/tags-removal" :code 200)

(smithy/sdk/operation:define-operation revoke-vpc-endpoint-access :shape-name
                                       "RevokeVpcEndpointAccess" :input
                                       revoke-vpc-endpoint-access-request
                                       :output
                                       revoke-vpc-endpoint-access-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess"
                                       :code 200)

(smithy/sdk/operation:define-operation start-domain-maintenance :shape-name
                                       "StartDomainMaintenance" :input
                                       start-domain-maintenance-request :output
                                       start-domain-maintenance-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance"
                                       :code 200)

(smithy/sdk/operation:define-operation start-service-software-update
                                       :shape-name "StartServiceSoftwareUpdate"
                                       :input
                                       start-service-software-update-request
                                       :output
                                       start-service-software-update-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/serviceSoftwareUpdate/start"
                                       :code 200)

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (access-denied-exception base-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2021-01-01/opensearch/application/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-source :shape-name
                                       "UpdateDataSource" :input
                                       update-data-source-request :output
                                       update-data-source-response :errors
                                       (base-exception
                                        dependency-failure-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-direct-query-data-source
                                       :shape-name
                                       "UpdateDirectQueryDataSource" :input
                                       update-direct-query-data-source-request
                                       :output
                                       update-direct-query-data-source-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-config :shape-name
                                       "UpdateDomainConfig" :input
                                       update-domain-config-request :output
                                       update-domain-config-response :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-package :shape-name
                                       "UpdatePackage" :input
                                       update-package-request :output
                                       update-package-response :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/update" :code 200)

(smithy/sdk/operation:define-operation update-package-scope :shape-name
                                       "UpdatePackageScope" :input
                                       update-package-scope-request :output
                                       update-package-scope-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/packages/updateScope" :code
                                       200)

(smithy/sdk/operation:define-operation update-scheduled-action :shape-name
                                       "UpdateScheduledAction" :input
                                       update-scheduled-action-request :output
                                       update-scheduled-action-response :errors
                                       (base-exception conflict-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        slot-not-available-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-vpc-endpoint :shape-name
                                       "UpdateVpcEndpoint" :input
                                       update-vpc-endpoint-request :output
                                       update-vpc-endpoint-response :errors
                                       (base-exception conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/vpcEndpoints/update"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-domain :shape-name
                                       "UpgradeDomain" :input
                                       upgrade-domain-request :output
                                       upgrade-domain-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2021-01-01/opensearch/upgradeDomain"
                                       :code 200)
