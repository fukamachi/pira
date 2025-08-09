(uiop/package:define-package #:pira/elasticsearch-service (:use)
                             (:export #:arn #:awsaccount
                              #:accept-inbound-cross-cluster-search-connection
                              #:access-policies-status #:add-tags
                              #:additional-limit #:additional-limit-list
                              #:advanced-options #:advanced-options-status
                              #:advanced-security-options
                              #:advanced-security-options-input
                              #:advanced-security-options-status
                              #:amazon-elasticsearch-service2015
                              #:associate-package
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
                              #:backend-role #:boolean
                              #:cancel-domain-config-change
                              #:cancel-elasticsearch-service-software-update
                              #:cancelled-change-property
                              #:cancelled-change-property-list
                              #:change-progress-details #:change-progress-stage
                              #:change-progress-stage-list
                              #:change-progress-stage-name
                              #:change-progress-stage-status
                              #:change-progress-status-details #:client-token
                              #:cloud-watch-logs-log-group-arn
                              #:cognito-options #:cognito-options-status
                              #:cold-storage-options #:commit-message
                              #:compatible-elasticsearch-versions-list
                              #:compatible-versions-map #:config-change-status
                              #:connection-alias #:create-elasticsearch-domain
                              #:create-outbound-cross-cluster-search-connection
                              #:create-package #:create-vpc-endpoint
                              #:created-at #:cross-cluster-search-connection-id
                              #:cross-cluster-search-connection-status-message
                              #:delete-elasticsearch-domain
                              #:delete-elasticsearch-service-role
                              #:delete-inbound-cross-cluster-search-connection
                              #:delete-outbound-cross-cluster-search-connection
                              #:delete-package #:delete-vpc-endpoint
                              #:deployment-close-date-time-stamp
                              #:deployment-status #:deployment-type
                              #:describe-domain-auto-tunes
                              #:describe-domain-change-progress
                              #:describe-elasticsearch-domain
                              #:describe-elasticsearch-domain-config
                              #:describe-elasticsearch-domains
                              #:describe-elasticsearch-instance-type-limits
                              #:describe-inbound-cross-cluster-search-connections
                              #:describe-outbound-cross-cluster-search-connections
                              #:describe-packages #:describe-packages-filter
                              #:describe-packages-filter-list
                              #:describe-packages-filter-name
                              #:describe-packages-filter-value
                              #:describe-packages-filter-values
                              #:describe-reserved-elasticsearch-instance-offerings
                              #:describe-reserved-elasticsearch-instances
                              #:describe-vpc-endpoints #:description
                              #:disable-timestamp #:dissociate-package
                              #:domain-arn #:domain-endpoint-options
                              #:domain-endpoint-options-status #:domain-id
                              #:domain-info #:domain-info-list
                              #:domain-information #:domain-name
                              #:domain-name-fqdn #:domain-name-list
                              #:domain-package-details
                              #:domain-package-details-list
                              #:domain-package-status
                              #:domain-processing-status-type #:double
                              #:dry-run #:dry-run-results #:duration
                              #:duration-value #:ebsoptions #:ebsoptions-status
                              #:espartition-instance-type
                              #:eswarm-partition-instance-type
                              #:elasticsearch-cluster-config
                              #:elasticsearch-cluster-config-status
                              #:elasticsearch-domain-config
                              #:elasticsearch-domain-status
                              #:elasticsearch-domain-status-list
                              #:elasticsearch-instance-type-list
                              #:elasticsearch-version-list
                              #:elasticsearch-version-status
                              #:elasticsearch-version-string
                              #:encryption-at-rest-options
                              #:encryption-at-rest-options-status #:endpoint
                              #:endpoints-map #:engine-type #:error-details
                              #:error-message #:error-type #:filter
                              #:filter-list #:guid #:guidlist
                              #:get-compatible-elasticsearch-versions
                              #:get-package-version-history
                              #:get-upgrade-history #:get-upgrade-status
                              #:identity-pool-id
                              #:inbound-cross-cluster-search-connection
                              #:inbound-cross-cluster-search-connection-status
                              #:inbound-cross-cluster-search-connection-status-code
                              #:inbound-cross-cluster-search-connections
                              #:initiated-by #:instance-count
                              #:instance-count-limits #:instance-limits
                              #:instance-role #:integer #:integer-class #:issue
                              #:issues #:kms-key-id #:last-updated #:limit-name
                              #:limit-value #:limit-value-list #:limits
                              #:limits-by-role #:list-domain-names
                              #:list-domains-for-package
                              #:list-elasticsearch-instance-types
                              #:list-elasticsearch-versions
                              #:list-packages-for-domain #:list-tags
                              #:list-vpc-endpoint-access #:list-vpc-endpoints
                              #:list-vpc-endpoints-for-domain
                              #:log-publishing-option #:log-publishing-options
                              #:log-publishing-options-status #:log-type
                              #:master-user-options #:max-results
                              #:maximum-instance-count #:message
                              #:minimum-instance-count #:modifying-properties
                              #:modifying-properties-list #:next-token
                              #:node-to-node-encryption-options
                              #:node-to-node-encryption-options-status
                              #:non-empty-string #:option-state #:option-status
                              #:outbound-cross-cluster-search-connection
                              #:outbound-cross-cluster-search-connection-status
                              #:outbound-cross-cluster-search-connection-status-code
                              #:outbound-cross-cluster-search-connections
                              #:overall-change-status #:owner-id
                              #:package-description #:package-details
                              #:package-details-list #:package-id
                              #:package-name #:package-source #:package-status
                              #:package-type #:package-version
                              #:package-version-history
                              #:package-version-history-list #:password
                              #:policy-document #:principal-type
                              #:property-value-type
                              #:purchase-reserved-elasticsearch-instance-offering
                              #:recurring-charge #:recurring-charge-list
                              #:reference-path #:region
                              #:reject-inbound-cross-cluster-search-connection
                              #:remove-tags #:reservation-token
                              #:reserved-elasticsearch-instance
                              #:reserved-elasticsearch-instance-list
                              #:reserved-elasticsearch-instance-offering
                              #:reserved-elasticsearch-instance-offering-list
                              #:reserved-elasticsearch-instance-payment-option
                              #:revoke-vpc-endpoint-access #:role-arn
                              #:rollback-on-disable #:s3bucket-name #:s3key
                              #:samlentity-id #:samlidp #:samlmetadata
                              #:samloptions-input #:samloptions-output
                              #:scheduled-auto-tune-action-type
                              #:scheduled-auto-tune-description
                              #:scheduled-auto-tune-details
                              #:scheduled-auto-tune-severity-type
                              #:service-software-options #:service-url
                              #:snapshot-options #:snapshot-options-status
                              #:start-at
                              #:start-elasticsearch-service-software-update
                              #:start-timestamp #:storage-sub-type-name
                              #:storage-type #:storage-type-limit
                              #:storage-type-limit-list #:storage-type-list
                              #:storage-type-name #:string #:string-list
                              #:tlssecurity-policy #:tag #:tag-key #:tag-list
                              #:tag-value #:time-unit #:total-number-of-stages
                              #:uint-value #:update-elasticsearch-domain-config
                              #:update-package #:update-timestamp
                              #:update-vpc-endpoint
                              #:upgrade-elasticsearch-domain #:upgrade-history
                              #:upgrade-history-list #:upgrade-name
                              #:upgrade-status #:upgrade-step
                              #:upgrade-step-item #:upgrade-steps-list
                              #:user-pool-id #:username #:vpcderived-info
                              #:vpcderived-info-status #:vpcoptions
                              #:value-string-list #:volume-type #:vpc-endpoint
                              #:vpc-endpoint-error #:vpc-endpoint-error-code
                              #:vpc-endpoint-error-list #:vpc-endpoint-id
                              #:vpc-endpoint-id-list #:vpc-endpoint-status
                              #:vpc-endpoint-summary
                              #:vpc-endpoint-summary-list #:vpc-endpoints
                              #:zone-awareness-config))
(common-lisp:in-package #:pira/elasticsearch-service)

(smithy/sdk/service:define-service amazon-elasticsearch-service2015 :shape-name
                                   "AmazonElasticsearchService2015" :version
                                   "2015-01-01" :title
                                   "Amazon Elasticsearch Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://es.amazonaws.com/doc/2015-01-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Elasticsearch Service")
                                      ("arnNamespace" . "es")
                                      ("cloudFormationName" . "Elasticsearch")
                                      ("cloudTrailEventSource"
                                       . "elasticsearchservice.amazonaws.com")
                                      ("docId" . "es-2015-01-01")
                                      ("endpointPrefix" . "es"))
                                     ("aws.auth#sigv4" ("name" . "es"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type awsaccount smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 accept-inbound-cross-cluster-search-connection-request common-lisp:nil
 ((cross-cluster-search-connection-id :target-type
   cross-cluster-search-connection-id :required common-lisp:t :member-name
   "CrossClusterSearchConnectionId" :http-label common-lisp:t))
 (:shape-name "AcceptInboundCrossClusterSearchConnectionRequest"))

(smithy/sdk/shapes:define-output
 accept-inbound-cross-cluster-search-connection-response common-lisp:nil
 ((cross-cluster-search-connection :target-type
   inbound-cross-cluster-search-connection :member-name
   "CrossClusterSearchConnection"))
 (:shape-name "AcceptInboundCrossClusterSearchConnectionResponse"))

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

(smithy/sdk/shapes:define-input associate-package-request common-lisp:nil
                                ((package-id :target-type package-id :required
                                  common-lisp:t :member-name "PackageID"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name "AssociatePackageRequest"))

(smithy/sdk/shapes:define-output associate-package-response common-lisp:nil
                                 ((domain-package-details :target-type
                                   domain-package-details :member-name
                                   "DomainPackageDetails"))
                                 (:shape-name "AssociatePackageResponse"))

(smithy/sdk/shapes:define-input authorize-vpc-endpoint-access-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (account :target-type awsaccount :required
                                  common-lisp:t :member-name "Account"))
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
                                      :member-name "MaintenanceSchedules"))
                                    (:shape-name "AutoTuneOptions"))

(smithy/sdk/shapes:define-structure auto-tune-options-input common-lisp:nil
                                    ((desired-state :target-type
                                      auto-tune-desired-state :member-name
                                      "DesiredState")
                                     (maintenance-schedules :target-type
                                      auto-tune-maintenance-schedule-list
                                      :member-name "MaintenanceSchedules"))
                                    (:shape-name "AutoTuneOptionsInput"))

(smithy/sdk/shapes:define-structure auto-tune-options-output common-lisp:nil
                                    ((state :target-type auto-tune-state
                                      :member-name "State")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
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
                                 ((dry-run :target-type dry-run :member-name
                                   "DryRun")
                                  (cancelled-change-ids :target-type guidlist
                                   :member-name "CancelledChangeIds")
                                  (cancelled-change-properties :target-type
                                   cancelled-change-property-list :member-name
                                   "CancelledChangeProperties"))
                                 (:shape-name
                                  "CancelDomainConfigChangeResponse"))

(smithy/sdk/shapes:define-input
 cancel-elasticsearch-service-software-update-request common-lisp:nil
 ((domain-name :target-type domain-name :required common-lisp:t :member-name
   "DomainName"))
 (:shape-name "CancelElasticsearchServiceSoftwareUpdateRequest"))

(smithy/sdk/shapes:define-output
 cancel-elasticsearch-service-software-update-response common-lisp:nil
 ((service-software-options :target-type service-software-options :member-name
   "ServiceSoftwareOptions"))
 (:shape-name "CancelElasticsearchServiceSoftwareUpdateResponse"))

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
                                     (start-time :target-type update-timestamp
                                      :member-name "StartTime")
                                     (last-updated-time :target-type
                                      update-timestamp :member-name
                                      "LastUpdatedTime")
                                     (initiated-by :target-type initiated-by
                                      :member-name "InitiatedBy"))
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
                                     (config-change-status :target-type
                                      config-change-status :member-name
                                      "ConfigChangeStatus")
                                     (last-updated-time :target-type
                                      update-timestamp :member-name
                                      "LastUpdatedTime")
                                     (initiated-by :target-type initiated-by
                                      :member-name "InitiatedBy"))
                                    (:shape-name "ChangeProgressStatusDetails"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-logs-log-group-arn
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-list compatible-elasticsearch-versions-list :member
                               compatible-versions-map)

(smithy/sdk/shapes:define-structure compatible-versions-map common-lisp:nil
                                    ((source-version :target-type
                                      elasticsearch-version-string :member-name
                                      "SourceVersion")
                                     (target-versions :target-type
                                      elasticsearch-version-list :member-name
                                      "TargetVersions"))
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

(smithy/sdk/shapes:define-input create-elasticsearch-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (elasticsearch-version :target-type
                                  elasticsearch-version-string :member-name
                                  "ElasticsearchVersion")
                                 (elasticsearch-cluster-config :target-type
                                  elasticsearch-cluster-config :member-name
                                  "ElasticsearchClusterConfig")
                                 (ebsoptions :target-type ebsoptions
                                  :member-name "EBSOptions")
                                 (access-policies :target-type policy-document
                                  :member-name "AccessPolicies")
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
                                 (auto-tune-options :target-type
                                  auto-tune-options-input :member-name
                                  "AutoTuneOptions")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name
                                 "CreateElasticsearchDomainRequest"))

(smithy/sdk/shapes:define-output create-elasticsearch-domain-response
                                 common-lisp:nil
                                 ((domain-status :target-type
                                   elasticsearch-domain-status :member-name
                                   "DomainStatus"))
                                 (:shape-name
                                  "CreateElasticsearchDomainResponse"))

(smithy/sdk/shapes:define-input
 create-outbound-cross-cluster-search-connection-request common-lisp:nil
 ((source-domain-info :target-type domain-information :required common-lisp:t
   :member-name "SourceDomainInfo")
  (destination-domain-info :target-type domain-information :required
   common-lisp:t :member-name "DestinationDomainInfo")
  (connection-alias :target-type connection-alias :required common-lisp:t
   :member-name "ConnectionAlias"))
 (:shape-name "CreateOutboundCrossClusterSearchConnectionRequest"))

(smithy/sdk/shapes:define-output
 create-outbound-cross-cluster-search-connection-response common-lisp:nil
 ((source-domain-info :target-type domain-information :member-name
   "SourceDomainInfo")
  (destination-domain-info :target-type domain-information :member-name
   "DestinationDomainInfo")
  (connection-alias :target-type connection-alias :member-name
   "ConnectionAlias")
  (connection-status :target-type
   outbound-cross-cluster-search-connection-status :member-name
   "ConnectionStatus")
  (cross-cluster-search-connection-id :target-type
   cross-cluster-search-connection-id :member-name
   "CrossClusterSearchConnectionId"))
 (:shape-name "CreateOutboundCrossClusterSearchConnectionResponse"))

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
                                  "PackageSource"))
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

(smithy/sdk/shapes:define-type cross-cluster-search-connection-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cross-cluster-search-connection-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-elasticsearch-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteElasticsearchDomainRequest"))

(smithy/sdk/shapes:define-output delete-elasticsearch-domain-response
                                 common-lisp:nil
                                 ((domain-status :target-type
                                   elasticsearch-domain-status :member-name
                                   "DomainStatus"))
                                 (:shape-name
                                  "DeleteElasticsearchDomainResponse"))

(smithy/sdk/shapes:define-input
 delete-inbound-cross-cluster-search-connection-request common-lisp:nil
 ((cross-cluster-search-connection-id :target-type
   cross-cluster-search-connection-id :required common-lisp:t :member-name
   "CrossClusterSearchConnectionId" :http-label common-lisp:t))
 (:shape-name "DeleteInboundCrossClusterSearchConnectionRequest"))

(smithy/sdk/shapes:define-output
 delete-inbound-cross-cluster-search-connection-response common-lisp:nil
 ((cross-cluster-search-connection :target-type
   inbound-cross-cluster-search-connection :member-name
   "CrossClusterSearchConnection"))
 (:shape-name "DeleteInboundCrossClusterSearchConnectionResponse"))

(smithy/sdk/shapes:define-input
 delete-outbound-cross-cluster-search-connection-request common-lisp:nil
 ((cross-cluster-search-connection-id :target-type
   cross-cluster-search-connection-id :required common-lisp:t :member-name
   "CrossClusterSearchConnectionId" :http-label common-lisp:t))
 (:shape-name "DeleteOutboundCrossClusterSearchConnectionRequest"))

(smithy/sdk/shapes:define-output
 delete-outbound-cross-cluster-search-connection-response common-lisp:nil
 ((cross-cluster-search-connection :target-type
   outbound-cross-cluster-search-connection :member-name
   "CrossClusterSearchConnection"))
 (:shape-name "DeleteOutboundCrossClusterSearchConnectionResponse"))

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

(smithy/sdk/shapes:define-input describe-elasticsearch-domain-config-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeElasticsearchDomainConfigRequest"))

(smithy/sdk/shapes:define-output describe-elasticsearch-domain-config-response
                                 common-lisp:nil
                                 ((domain-config :target-type
                                   elasticsearch-domain-config :required
                                   common-lisp:t :member-name "DomainConfig"))
                                 (:shape-name
                                  "DescribeElasticsearchDomainConfigResponse"))

(smithy/sdk/shapes:define-input describe-elasticsearch-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeElasticsearchDomainRequest"))

(smithy/sdk/shapes:define-output describe-elasticsearch-domain-response
                                 common-lisp:nil
                                 ((domain-status :target-type
                                   elasticsearch-domain-status :required
                                   common-lisp:t :member-name "DomainStatus"))
                                 (:shape-name
                                  "DescribeElasticsearchDomainResponse"))

(smithy/sdk/shapes:define-input describe-elasticsearch-domains-request
                                common-lisp:nil
                                ((domain-names :target-type domain-name-list
                                  :required common-lisp:t :member-name
                                  "DomainNames"))
                                (:shape-name
                                 "DescribeElasticsearchDomainsRequest"))

(smithy/sdk/shapes:define-output describe-elasticsearch-domains-response
                                 common-lisp:nil
                                 ((domain-status-list :target-type
                                   elasticsearch-domain-status-list :required
                                   common-lisp:t :member-name
                                   "DomainStatusList"))
                                 (:shape-name
                                  "DescribeElasticsearchDomainsResponse"))

(smithy/sdk/shapes:define-input
 describe-elasticsearch-instance-type-limits-request common-lisp:nil
 ((domain-name :target-type domain-name :member-name "DomainName" :http-query
   "domainName")
  (instance-type :target-type espartition-instance-type :required common-lisp:t
   :member-name "InstanceType" :http-label common-lisp:t)
  (elasticsearch-version :target-type elasticsearch-version-string :required
   common-lisp:t :member-name "ElasticsearchVersion" :http-label
   common-lisp:t))
 (:shape-name "DescribeElasticsearchInstanceTypeLimitsRequest"))

(smithy/sdk/shapes:define-output
 describe-elasticsearch-instance-type-limits-response common-lisp:nil
 ((limits-by-role :target-type limits-by-role :member-name "LimitsByRole"))
 (:shape-name "DescribeElasticsearchInstanceTypeLimitsResponse"))

(smithy/sdk/shapes:define-input
 describe-inbound-cross-cluster-search-connections-request common-lisp:nil
 ((filters :target-type filter-list :member-name "Filters")
  (max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeInboundCrossClusterSearchConnectionsRequest"))

(smithy/sdk/shapes:define-output
 describe-inbound-cross-cluster-search-connections-response common-lisp:nil
 ((cross-cluster-search-connections :target-type
   inbound-cross-cluster-search-connections :member-name
   "CrossClusterSearchConnections")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeInboundCrossClusterSearchConnectionsResponse"))

(smithy/sdk/shapes:define-input
 describe-outbound-cross-cluster-search-connections-request common-lisp:nil
 ((filters :target-type filter-list :member-name "Filters")
  (max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeOutboundCrossClusterSearchConnectionsRequest"))

(smithy/sdk/shapes:define-output
 describe-outbound-cross-cluster-search-connections-response common-lisp:nil
 ((cross-cluster-search-connections :target-type
   outbound-cross-cluster-search-connections :member-name
   "CrossClusterSearchConnections")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeOutboundCrossClusterSearchConnectionsResponse"))

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
  (:package-status "PackageStatus"))

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

(smithy/sdk/shapes:define-input
 describe-reserved-elasticsearch-instance-offerings-request common-lisp:nil
 ((reserved-elasticsearch-instance-offering-id :target-type guid :member-name
   "ReservedElasticsearchInstanceOfferingId" :http-query "offeringId")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "nextToken"))
 (:shape-name "DescribeReservedElasticsearchInstanceOfferingsRequest"))

(smithy/sdk/shapes:define-output
 describe-reserved-elasticsearch-instance-offerings-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (reserved-elasticsearch-instance-offerings :target-type
   reserved-elasticsearch-instance-offering-list :member-name
   "ReservedElasticsearchInstanceOfferings"))
 (:shape-name "DescribeReservedElasticsearchInstanceOfferingsResponse"))

(smithy/sdk/shapes:define-input
 describe-reserved-elasticsearch-instances-request common-lisp:nil
 ((reserved-elasticsearch-instance-id :target-type guid :member-name
   "ReservedElasticsearchInstanceId" :http-query "reservationId")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "nextToken"))
 (:shape-name "DescribeReservedElasticsearchInstancesRequest"))

(smithy/sdk/shapes:define-output
 describe-reserved-elasticsearch-instances-response common-lisp:nil
 ((next-token :target-type string :member-name "NextToken")
  (reserved-elasticsearch-instances :target-type
   reserved-elasticsearch-instance-list :member-name
   "ReservedElasticsearchInstances"))
 (:shape-name "DescribeReservedElasticsearchInstancesResponse"))

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

(smithy/sdk/shapes:define-type domain-arn smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-info common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (engine-type :target-type engine-type
                                      :member-name "EngineType"))
                                    (:shape-name "DomainInfo"))

(smithy/sdk/shapes:define-list domain-info-list :member domain-info)

(smithy/sdk/shapes:define-structure domain-information common-lisp:nil
                                    ((owner-id :target-type owner-id
                                      :member-name "OwnerId")
                                     (domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (region :target-type region :member-name
                                      "Region"))
                                    (:shape-name "DomainInformation"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name-fqdn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-name-list :member domain-name)

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
                                     (reference-path :target-type
                                      reference-path :member-name
                                      "ReferencePath")
                                     (error-details :target-type error-details
                                      :member-name "ErrorDetails"))
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

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type dry-run smithy/sdk/smithy-types:boolean)

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

(smithy/sdk/shapes:define-enum espartition-instance-type
    common-lisp:nil
  (:m3-medium-elasticsearch "m3.medium.elasticsearch")
  (:m3-large-elasticsearch "m3.large.elasticsearch")
  (:m3-xlarge-elasticsearch "m3.xlarge.elasticsearch")
  (:m3-2xlarge-elasticsearch "m3.2xlarge.elasticsearch")
  (:m4-large-elasticsearch "m4.large.elasticsearch")
  (:m4-xlarge-elasticsearch "m4.xlarge.elasticsearch")
  (:m4-2xlarge-elasticsearch "m4.2xlarge.elasticsearch")
  (:m4-4xlarge-elasticsearch "m4.4xlarge.elasticsearch")
  (:m4-10xlarge-elasticsearch "m4.10xlarge.elasticsearch")
  (:m5-large-elasticsearch "m5.large.elasticsearch")
  (:m5-xlarge-elasticsearch "m5.xlarge.elasticsearch")
  (:m5-2xlarge-elasticsearch "m5.2xlarge.elasticsearch")
  (:m5-4xlarge-elasticsearch "m5.4xlarge.elasticsearch")
  (:m5-12xlarge-elasticsearch "m5.12xlarge.elasticsearch")
  (:r5-large-elasticsearch "r5.large.elasticsearch")
  (:r5-xlarge-elasticsearch "r5.xlarge.elasticsearch")
  (:r5-2xlarge-elasticsearch "r5.2xlarge.elasticsearch")
  (:r5-4xlarge-elasticsearch "r5.4xlarge.elasticsearch")
  (:r5-12xlarge-elasticsearch "r5.12xlarge.elasticsearch")
  (:c5-large-elasticsearch "c5.large.elasticsearch")
  (:c5-xlarge-elasticsearch "c5.xlarge.elasticsearch")
  (:c5-2xlarge-elasticsearch "c5.2xlarge.elasticsearch")
  (:c5-4xlarge-elasticsearch "c5.4xlarge.elasticsearch")
  (:c5-9xlarge-elasticsearch "c5.9xlarge.elasticsearch")
  (:c5-18xlarge-elasticsearch "c5.18xlarge.elasticsearch")
  (:ultrawarm1-medium-elasticsearch "ultrawarm1.medium.elasticsearch")
  (:ultrawarm1-large-elasticsearch "ultrawarm1.large.elasticsearch")
  (:t2-micro-elasticsearch "t2.micro.elasticsearch")
  (:t2-small-elasticsearch "t2.small.elasticsearch")
  (:t2-medium-elasticsearch "t2.medium.elasticsearch")
  (:r3-large-elasticsearch "r3.large.elasticsearch")
  (:r3-xlarge-elasticsearch "r3.xlarge.elasticsearch")
  (:r3-2xlarge-elasticsearch "r3.2xlarge.elasticsearch")
  (:r3-4xlarge-elasticsearch "r3.4xlarge.elasticsearch")
  (:r3-8xlarge-elasticsearch "r3.8xlarge.elasticsearch")
  (:i2-xlarge-elasticsearch "i2.xlarge.elasticsearch")
  (:i2-2xlarge-elasticsearch "i2.2xlarge.elasticsearch")
  (:d2-xlarge-elasticsearch "d2.xlarge.elasticsearch")
  (:d2-2xlarge-elasticsearch "d2.2xlarge.elasticsearch")
  (:d2-4xlarge-elasticsearch "d2.4xlarge.elasticsearch")
  (:d2-8xlarge-elasticsearch "d2.8xlarge.elasticsearch")
  (:c4-large-elasticsearch "c4.large.elasticsearch")
  (:c4-xlarge-elasticsearch "c4.xlarge.elasticsearch")
  (:c4-2xlarge-elasticsearch "c4.2xlarge.elasticsearch")
  (:c4-4xlarge-elasticsearch "c4.4xlarge.elasticsearch")
  (:c4-8xlarge-elasticsearch "c4.8xlarge.elasticsearch")
  (:r4-large-elasticsearch "r4.large.elasticsearch")
  (:r4-xlarge-elasticsearch "r4.xlarge.elasticsearch")
  (:r4-2xlarge-elasticsearch "r4.2xlarge.elasticsearch")
  (:r4-4xlarge-elasticsearch "r4.4xlarge.elasticsearch")
  (:r4-8xlarge-elasticsearch "r4.8xlarge.elasticsearch")
  (:r4-16xlarge-elasticsearch "r4.16xlarge.elasticsearch")
  (:i3-large-elasticsearch "i3.large.elasticsearch")
  (:i3-xlarge-elasticsearch "i3.xlarge.elasticsearch")
  (:i3-2xlarge-elasticsearch "i3.2xlarge.elasticsearch")
  (:i3-4xlarge-elasticsearch "i3.4xlarge.elasticsearch")
  (:i3-8xlarge-elasticsearch "i3.8xlarge.elasticsearch")
  (:i3-16xlarge-elasticsearch "i3.16xlarge.elasticsearch"))

(smithy/sdk/shapes:define-enum eswarm-partition-instance-type
    common-lisp:nil
  (:ultrawarm1-medium-elasticsearch "ultrawarm1.medium.elasticsearch")
  (:ultrawarm1-large-elasticsearch "ultrawarm1.large.elasticsearch"))

(smithy/sdk/shapes:define-structure elasticsearch-cluster-config
                                    common-lisp:nil
                                    ((instance-type :target-type
                                      espartition-instance-type :member-name
                                      "InstanceType")
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
                                      espartition-instance-type :member-name
                                      "DedicatedMasterType")
                                     (dedicated-master-count :target-type
                                      integer-class :member-name
                                      "DedicatedMasterCount")
                                     (warm-enabled :target-type boolean
                                      :member-name "WarmEnabled")
                                     (warm-type :target-type
                                      eswarm-partition-instance-type
                                      :member-name "WarmType")
                                     (warm-count :target-type integer-class
                                      :member-name "WarmCount")
                                     (cold-storage-options :target-type
                                      cold-storage-options :member-name
                                      "ColdStorageOptions"))
                                    (:shape-name "ElasticsearchClusterConfig"))

(smithy/sdk/shapes:define-structure elasticsearch-cluster-config-status
                                    common-lisp:nil
                                    ((options :target-type
                                      elasticsearch-cluster-config :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name
                                     "ElasticsearchClusterConfigStatus"))

(smithy/sdk/shapes:define-structure elasticsearch-domain-config common-lisp:nil
                                    ((elasticsearch-version :target-type
                                      elasticsearch-version-status :member-name
                                      "ElasticsearchVersion")
                                     (elasticsearch-cluster-config :target-type
                                      elasticsearch-cluster-config-status
                                      :member-name
                                      "ElasticsearchClusterConfig")
                                     (ebsoptions :target-type ebsoptions-status
                                      :member-name "EBSOptions")
                                     (access-policies :target-type
                                      access-policies-status :member-name
                                      "AccessPolicies")
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
                                     (auto-tune-options :target-type
                                      auto-tune-options-status :member-name
                                      "AutoTuneOptions")
                                     (change-progress-details :target-type
                                      change-progress-details :member-name
                                      "ChangeProgressDetails")
                                     (modifying-properties :target-type
                                      modifying-properties-list :member-name
                                      "ModifyingProperties"))
                                    (:shape-name "ElasticsearchDomainConfig"))

(smithy/sdk/shapes:define-structure elasticsearch-domain-status common-lisp:nil
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
                                     (endpoints :target-type endpoints-map
                                      :member-name "Endpoints")
                                     (processing :target-type boolean
                                      :member-name "Processing")
                                     (upgrade-processing :target-type boolean
                                      :member-name "UpgradeProcessing")
                                     (elasticsearch-version :target-type
                                      elasticsearch-version-string :member-name
                                      "ElasticsearchVersion")
                                     (elasticsearch-cluster-config :target-type
                                      elasticsearch-cluster-config :required
                                      common-lisp:t :member-name
                                      "ElasticsearchClusterConfig")
                                     (ebsoptions :target-type ebsoptions
                                      :member-name "EBSOptions")
                                     (access-policies :target-type
                                      policy-document :member-name
                                      "AccessPolicies")
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
                                     (auto-tune-options :target-type
                                      auto-tune-options-output :member-name
                                      "AutoTuneOptions")
                                     (change-progress-details :target-type
                                      change-progress-details :member-name
                                      "ChangeProgressDetails")
                                     (domain-processing-status :target-type
                                      domain-processing-status-type
                                      :member-name "DomainProcessingStatus")
                                     (modifying-properties :target-type
                                      modifying-properties-list :member-name
                                      "ModifyingProperties"))
                                    (:shape-name "ElasticsearchDomainStatus"))

(smithy/sdk/shapes:define-list elasticsearch-domain-status-list :member
                               elasticsearch-domain-status)

(smithy/sdk/shapes:define-list elasticsearch-instance-type-list :member
                               espartition-instance-type)

(smithy/sdk/shapes:define-list elasticsearch-version-list :member
                               elasticsearch-version-string)

(smithy/sdk/shapes:define-structure elasticsearch-version-status
                                    common-lisp:nil
                                    ((options :target-type
                                      elasticsearch-version-string :required
                                      common-lisp:t :member-name "Options")
                                     (status :target-type option-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "ElasticsearchVersionStatus"))

(smithy/sdk/shapes:define-type elasticsearch-version-string
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-input get-compatible-elasticsearch-versions-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :member-name "DomainName" :http-query
                                  "domainName"))
                                (:shape-name
                                 "GetCompatibleElasticsearchVersionsRequest"))

(smithy/sdk/shapes:define-output get-compatible-elasticsearch-versions-response
                                 common-lisp:nil
                                 ((compatible-elasticsearch-versions
                                   :target-type
                                   compatible-elasticsearch-versions-list
                                   :member-name
                                   "CompatibleElasticsearchVersions"))
                                 (:shape-name
                                  "GetCompatibleElasticsearchVersionsResponse"))

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

(smithy/sdk/shapes:define-type identity-pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inbound-cross-cluster-search-connection
                                    common-lisp:nil
                                    ((source-domain-info :target-type
                                      domain-information :member-name
                                      "SourceDomainInfo")
                                     (destination-domain-info :target-type
                                      domain-information :member-name
                                      "DestinationDomainInfo")
                                     (cross-cluster-search-connection-id
                                      :target-type
                                      cross-cluster-search-connection-id
                                      :member-name
                                      "CrossClusterSearchConnectionId")
                                     (connection-status :target-type
                                      inbound-cross-cluster-search-connection-status
                                      :member-name "ConnectionStatus"))
                                    (:shape-name
                                     "InboundCrossClusterSearchConnection"))

(smithy/sdk/shapes:define-structure
 inbound-cross-cluster-search-connection-status common-lisp:nil
 ((status-code :target-type inbound-cross-cluster-search-connection-status-code
   :member-name "StatusCode")
  (message :target-type cross-cluster-search-connection-status-message
   :member-name "Message"))
 (:shape-name "InboundCrossClusterSearchConnectionStatus"))

(smithy/sdk/shapes:define-enum inbound-cross-cluster-search-connection-status-code
    common-lisp:nil
  (:pending-acceptance "PENDING_ACCEPTANCE")
  (:approved "APPROVED")
  (:rejecting "REJECTING")
  (:rejected "REJECTED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list inbound-cross-cluster-search-connections :member
                               inbound-cross-cluster-search-connection)

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

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated smithy/sdk/smithy-types:timestamp)

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

(smithy/sdk/shapes:define-input list-elasticsearch-instance-types-request
                                common-lisp:nil
                                ((elasticsearch-version :target-type
                                  elasticsearch-version-string :required
                                  common-lisp:t :member-name
                                  "ElasticsearchVersion" :http-label
                                  common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :member-name "DomainName" :http-query
                                  "domainName")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListElasticsearchInstanceTypesRequest"))

(smithy/sdk/shapes:define-output list-elasticsearch-instance-types-response
                                 common-lisp:nil
                                 ((elasticsearch-instance-types :target-type
                                   elasticsearch-instance-type-list
                                   :member-name "ElasticsearchInstanceTypes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListElasticsearchInstanceTypesResponse"))

(smithy/sdk/shapes:define-input list-elasticsearch-versions-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListElasticsearchVersionsRequest"))

(smithy/sdk/shapes:define-output list-elasticsearch-versions-response
                                 common-lisp:nil
                                 ((elasticsearch-versions :target-type
                                   elasticsearch-version-list :member-name
                                   "ElasticsearchVersions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListElasticsearchVersionsResponse"))

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

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "ARN" :http-query "arn"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsResponse"))

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

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure outbound-cross-cluster-search-connection
                                    common-lisp:nil
                                    ((source-domain-info :target-type
                                      domain-information :member-name
                                      "SourceDomainInfo")
                                     (destination-domain-info :target-type
                                      domain-information :member-name
                                      "DestinationDomainInfo")
                                     (cross-cluster-search-connection-id
                                      :target-type
                                      cross-cluster-search-connection-id
                                      :member-name
                                      "CrossClusterSearchConnectionId")
                                     (connection-alias :target-type
                                      connection-alias :member-name
                                      "ConnectionAlias")
                                     (connection-status :target-type
                                      outbound-cross-cluster-search-connection-status
                                      :member-name "ConnectionStatus"))
                                    (:shape-name
                                     "OutboundCrossClusterSearchConnection"))

(smithy/sdk/shapes:define-structure
 outbound-cross-cluster-search-connection-status common-lisp:nil
 ((status-code :target-type
   outbound-cross-cluster-search-connection-status-code :member-name
   "StatusCode")
  (message :target-type cross-cluster-search-connection-status-message
   :member-name "Message"))
 (:shape-name "OutboundCrossClusterSearchConnectionStatus"))

(smithy/sdk/shapes:define-enum outbound-cross-cluster-search-connection-status-code
    common-lisp:nil
  (:pending-acceptance "PENDING_ACCEPTANCE")
  (:validating "VALIDATING")
  (:validation-failed "VALIDATION_FAILED")
  (:provisioning "PROVISIONING")
  (:active "ACTIVE")
  (:rejected "REJECTED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list outbound-cross-cluster-search-connections
                               :member outbound-cross-cluster-search-connection)

(smithy/sdk/shapes:define-enum overall-change-status
    common-lisp:nil
  (:pending "PENDING")
  (:processing "PROCESSING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type owner-id smithy/sdk/smithy-types:string)

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
                                      :member-name "ErrorDetails"))
                                    (:shape-name "PackageDetails"))

(smithy/sdk/shapes:define-list package-details-list :member package-details)

(smithy/sdk/shapes:define-type package-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-name smithy/sdk/smithy-types:string)

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
  (:txt-dictionary "TXT-DICTIONARY"))

(smithy/sdk/shapes:define-type package-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-version-history common-lisp:nil
                                    ((package-version :target-type
                                      package-version :member-name
                                      "PackageVersion")
                                     (commit-message :target-type
                                      commit-message :member-name
                                      "CommitMessage")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt"))
                                    (:shape-name "PackageVersionHistory"))

(smithy/sdk/shapes:define-list package-version-history-list :member
                               package-version-history)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum principal-type
    common-lisp:nil
  (:aws-account "AWS_ACCOUNT")
  (:aws-service "AWS_SERVICE"))

(smithy/sdk/shapes:define-enum property-value-type
    common-lisp:nil
  (:plain-text "PLAIN_TEXT")
  (:stringified-json "STRINGIFIED_JSON"))

(smithy/sdk/shapes:define-input
 purchase-reserved-elasticsearch-instance-offering-request common-lisp:nil
 ((reserved-elasticsearch-instance-offering-id :target-type guid :required
   common-lisp:t :member-name "ReservedElasticsearchInstanceOfferingId")
  (reservation-name :target-type reservation-token :required common-lisp:t
   :member-name "ReservationName")
  (instance-count :target-type instance-count :member-name "InstanceCount"))
 (:shape-name "PurchaseReservedElasticsearchInstanceOfferingRequest"))

(smithy/sdk/shapes:define-output
 purchase-reserved-elasticsearch-instance-offering-response common-lisp:nil
 ((reserved-elasticsearch-instance-id :target-type guid :member-name
   "ReservedElasticsearchInstanceId")
  (reservation-name :target-type reservation-token :member-name
   "ReservationName"))
 (:shape-name "PurchaseReservedElasticsearchInstanceOfferingResponse"))

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

(smithy/sdk/shapes:define-input
 reject-inbound-cross-cluster-search-connection-request common-lisp:nil
 ((cross-cluster-search-connection-id :target-type
   cross-cluster-search-connection-id :required common-lisp:t :member-name
   "CrossClusterSearchConnectionId" :http-label common-lisp:t))
 (:shape-name "RejectInboundCrossClusterSearchConnectionRequest"))

(smithy/sdk/shapes:define-output
 reject-inbound-cross-cluster-search-connection-response common-lisp:nil
 ((cross-cluster-search-connection :target-type
   inbound-cross-cluster-search-connection :member-name
   "CrossClusterSearchConnection"))
 (:shape-name "RejectInboundCrossClusterSearchConnectionResponse"))

(smithy/sdk/shapes:define-input remove-tags-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "ARN")
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsRequest"))

(smithy/sdk/shapes:define-type reservation-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reserved-elasticsearch-instance
                                    common-lisp:nil
                                    ((reservation-name :target-type
                                      reservation-token :member-name
                                      "ReservationName")
                                     (reserved-elasticsearch-instance-id
                                      :target-type guid :member-name
                                      "ReservedElasticsearchInstanceId")
                                     (reserved-elasticsearch-instance-offering-id
                                      :target-type string :member-name
                                      "ReservedElasticsearchInstanceOfferingId")
                                     (elasticsearch-instance-type :target-type
                                      espartition-instance-type :member-name
                                      "ElasticsearchInstanceType")
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
                                     (elasticsearch-instance-count :target-type
                                      integer :member-name
                                      "ElasticsearchInstanceCount")
                                     (state :target-type string :member-name
                                      "State")
                                     (payment-option :target-type
                                      reserved-elasticsearch-instance-payment-option
                                      :member-name "PaymentOption")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name
                                     "ReservedElasticsearchInstance"))

(smithy/sdk/shapes:define-list reserved-elasticsearch-instance-list :member
                               reserved-elasticsearch-instance)

(smithy/sdk/shapes:define-structure reserved-elasticsearch-instance-offering
                                    common-lisp:nil
                                    ((reserved-elasticsearch-instance-offering-id
                                      :target-type guid :member-name
                                      "ReservedElasticsearchInstanceOfferingId")
                                     (elasticsearch-instance-type :target-type
                                      espartition-instance-type :member-name
                                      "ElasticsearchInstanceType")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (payment-option :target-type
                                      reserved-elasticsearch-instance-payment-option
                                      :member-name "PaymentOption")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges"))
                                    (:shape-name
                                     "ReservedElasticsearchInstanceOffering"))

(smithy/sdk/shapes:define-list reserved-elasticsearch-instance-offering-list
                               :member
                               (reserved-elasticsearch-instance-offering
                                :xml-name
                                "ReservedElasticsearchInstanceOffering"))

(smithy/sdk/shapes:define-enum reserved-elasticsearch-instance-payment-option
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
                                 (account :target-type awsaccount :required
                                  common-lisp:t :member-name "Account"))
                                (:shape-name "RevokeVpcEndpointAccessRequest"))

(smithy/sdk/shapes:define-output revoke-vpc-endpoint-access-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RevokeVpcEndpointAccessResponse"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rollback-on-disable
    common-lisp:nil
  (:no-rollback "NO_ROLLBACK")
  (:default-rollback "DEFAULT_ROLLBACK"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type start-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input
 start-elasticsearch-service-software-update-request common-lisp:nil
 ((domain-name :target-type domain-name :required common-lisp:t :member-name
   "DomainName"))
 (:shape-name "StartElasticsearchServiceSoftwareUpdateRequest"))

(smithy/sdk/shapes:define-output
 start-elasticsearch-service-software-update-response common-lisp:nil
 ((service-software-options :target-type service-software-options :member-name
   "ServiceSoftwareOptions"))
 (:shape-name "StartElasticsearchServiceSoftwareUpdateResponse"))

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

(smithy/sdk/shapes:define-type total-number-of-stages
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uint-value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input update-elasticsearch-domain-config-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName" :http-label common-lisp:t)
                                 (elasticsearch-cluster-config :target-type
                                  elasticsearch-cluster-config :member-name
                                  "ElasticsearchClusterConfig")
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
                                 (log-publishing-options :target-type
                                  log-publishing-options :member-name
                                  "LogPublishingOptions")
                                 (domain-endpoint-options :target-type
                                  domain-endpoint-options :member-name
                                  "DomainEndpointOptions")
                                 (advanced-security-options :target-type
                                  advanced-security-options-input :member-name
                                  "AdvancedSecurityOptions")
                                 (node-to-node-encryption-options :target-type
                                  node-to-node-encryption-options :member-name
                                  "NodeToNodeEncryptionOptions")
                                 (encryption-at-rest-options :target-type
                                  encryption-at-rest-options :member-name
                                  "EncryptionAtRestOptions")
                                 (auto-tune-options :target-type
                                  auto-tune-options :member-name
                                  "AutoTuneOptions")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun"))
                                (:shape-name
                                 "UpdateElasticsearchDomainConfigRequest"))

(smithy/sdk/shapes:define-output update-elasticsearch-domain-config-response
                                 common-lisp:nil
                                 ((domain-config :target-type
                                   elasticsearch-domain-config :required
                                   common-lisp:t :member-name "DomainConfig")
                                  (dry-run-results :target-type dry-run-results
                                   :member-name "DryRunResults"))
                                 (:shape-name
                                  "UpdateElasticsearchDomainConfigResponse"))

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
                                  :member-name "CommitMessage"))
                                (:shape-name "UpdatePackageRequest"))

(smithy/sdk/shapes:define-output update-package-response common-lisp:nil
                                 ((package-details :target-type package-details
                                   :member-name "PackageDetails"))
                                 (:shape-name "UpdatePackageResponse"))

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

(smithy/sdk/shapes:define-input upgrade-elasticsearch-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (target-version :target-type
                                  elasticsearch-version-string :required
                                  common-lisp:t :member-name "TargetVersion")
                                 (perform-check-only :target-type boolean
                                  :member-name "PerformCheckOnly"))
                                (:shape-name
                                 "UpgradeElasticsearchDomainRequest"))

(smithy/sdk/shapes:define-output upgrade-elasticsearch-domain-response
                                 common-lisp:nil
                                 ((domain-name :target-type domain-name
                                   :member-name "DomainName")
                                  (target-version :target-type
                                   elasticsearch-version-string :member-name
                                   "TargetVersion")
                                  (perform-check-only :target-type boolean
                                   :member-name "PerformCheckOnly")
                                  (change-progress-details :target-type
                                   change-progress-details :member-name
                                   "ChangeProgressDetails"))
                                 (:shape-name
                                  "UpgradeElasticsearchDomainResponse"))

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

(smithy/sdk/shapes:define-list value-string-list :member non-empty-string)

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

(smithy/sdk/shapes:define-structure zone-awareness-config common-lisp:nil
                                    ((availability-zone-count :target-type
                                      integer-class :member-name
                                      "AvailabilityZoneCount"))
                                    (:shape-name "ZoneAwarenessConfig"))

(smithy/sdk/operation:define-operation
 accept-inbound-cross-cluster-search-connection :shape-name
 "AcceptInboundCrossClusterSearchConnection" :input
 accept-inbound-cross-cluster-search-connection-request :output
 accept-inbound-cross-cluster-search-connection-response :errors
 (disabled-operation-exception limit-exceeded-exception
  resource-not-found-exception)
 :method "PUT" :uri
 "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/accept"
 :code 200)

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-request :output
                                       common-lisp:null :errors
                                       (base-exception internal-exception
                                        limit-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/2015-01-01/tags"
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
                                       "/2015-01-01/packages/associate/{PackageID}/{DomainName}"
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
                                       "/2015-01-01/es/domain/{DomainName}/authorizeVpcEndpointAccess"
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
                                       "/2015-01-01/es/domain/{DomainName}/config/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation
 cancel-elasticsearch-service-software-update :shape-name
 "CancelElasticsearchServiceSoftwareUpdate" :input
 cancel-elasticsearch-service-software-update-request :output
 cancel-elasticsearch-service-software-update-response :errors
 (base-exception internal-exception resource-not-found-exception
  validation-exception)
 :method "POST" :uri "/2015-01-01/es/serviceSoftwareUpdate/cancel" :code 200)

(smithy/sdk/operation:define-operation create-elasticsearch-domain :shape-name
                                       "CreateElasticsearchDomain" :input
                                       create-elasticsearch-domain-request
                                       :output
                                       create-elasticsearch-domain-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/es/domain" :code 200)

(smithy/sdk/operation:define-operation
 create-outbound-cross-cluster-search-connection :shape-name
 "CreateOutboundCrossClusterSearchConnection" :input
 create-outbound-cross-cluster-search-connection-request :output
 create-outbound-cross-cluster-search-connection-response :errors
 (disabled-operation-exception internal-exception limit-exceeded-exception
  resource-already-exists-exception)
 :method "POST" :uri "/2015-01-01/es/ccs/outboundConnection" :code 200)

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
                                       "/2015-01-01/packages" :code 200)

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
                                       "/2015-01-01/es/vpcEndpoints" :code 200)

(smithy/sdk/operation:define-operation delete-elasticsearch-domain :shape-name
                                       "DeleteElasticsearchDomain" :input
                                       delete-elasticsearch-domain-request
                                       :output
                                       delete-elasticsearch-domain-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2015-01-01/es/domain/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-elasticsearch-service-role
                                       :shape-name
                                       "DeleteElasticsearchServiceRole" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (base-exception internal-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2015-01-01/es/role" :code 200)

(smithy/sdk/operation:define-operation
 delete-inbound-cross-cluster-search-connection :shape-name
 "DeleteInboundCrossClusterSearchConnection" :input
 delete-inbound-cross-cluster-search-connection-request :output
 delete-inbound-cross-cluster-search-connection-response :errors
 (disabled-operation-exception resource-not-found-exception) :method "DELETE"
 :uri "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}"
 :code 200)

(smithy/sdk/operation:define-operation
 delete-outbound-cross-cluster-search-connection :shape-name
 "DeleteOutboundCrossClusterSearchConnection" :input
 delete-outbound-cross-cluster-search-connection-request :output
 delete-outbound-cross-cluster-search-connection-response :errors
 (disabled-operation-exception resource-not-found-exception) :method "DELETE"
 :uri "/2015-01-01/es/ccs/outboundConnection/{CrossClusterSearchConnectionId}"
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
                                       "/2015-01-01/packages/{PackageID}" :code
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
                                       "/2015-01-01/es/vpcEndpoints/{VpcEndpointId}"
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
                                       "/2015-01-01/es/domain/{DomainName}/autoTunes"
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
                                       "/2015-01-01/es/domain/{DomainName}/progress"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-elasticsearch-domain
                                       :shape-name
                                       "DescribeElasticsearchDomain" :input
                                       describe-elasticsearch-domain-request
                                       :output
                                       describe-elasticsearch-domain-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-01-01/es/domain/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-elasticsearch-domain-config
                                       :shape-name
                                       "DescribeElasticsearchDomainConfig"
                                       :input
                                       describe-elasticsearch-domain-config-request
                                       :output
                                       describe-elasticsearch-domain-config-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-01-01/es/domain/{DomainName}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-elasticsearch-domains
                                       :shape-name
                                       "DescribeElasticsearchDomains" :input
                                       describe-elasticsearch-domains-request
                                       :output
                                       describe-elasticsearch-domains-response
                                       :errors
                                       (base-exception internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/es/domain-info" :code 200)

(smithy/sdk/operation:define-operation
 describe-elasticsearch-instance-type-limits :shape-name
 "DescribeElasticsearchInstanceTypeLimits" :input
 describe-elasticsearch-instance-type-limits-request :output
 describe-elasticsearch-instance-type-limits-response :errors
 (base-exception internal-exception invalid-type-exception
  limit-exceeded-exception resource-not-found-exception validation-exception)
 :method "GET" :uri
 "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}"
 :code 200)

(smithy/sdk/operation:define-operation
 describe-inbound-cross-cluster-search-connections :shape-name
 "DescribeInboundCrossClusterSearchConnections" :input
 describe-inbound-cross-cluster-search-connections-request :output
 describe-inbound-cross-cluster-search-connections-response :errors
 (disabled-operation-exception invalid-pagination-token-exception) :method
 "POST" :uri "/2015-01-01/es/ccs/inboundConnection/search" :code 200)

(smithy/sdk/operation:define-operation
 describe-outbound-cross-cluster-search-connections :shape-name
 "DescribeOutboundCrossClusterSearchConnections" :input
 describe-outbound-cross-cluster-search-connections-request :output
 describe-outbound-cross-cluster-search-connections-response :errors
 (disabled-operation-exception invalid-pagination-token-exception) :method
 "POST" :uri "/2015-01-01/es/ccs/outboundConnection/search" :code 200)

(smithy/sdk/operation:define-operation describe-packages :shape-name
                                       "DescribePackages" :input
                                       describe-packages-request :output
                                       describe-packages-response :errors
                                       (access-denied-exception base-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/packages/describe" :code
                                       200)

(smithy/sdk/operation:define-operation
 describe-reserved-elasticsearch-instance-offerings :shape-name
 "DescribeReservedElasticsearchInstanceOfferings" :input
 describe-reserved-elasticsearch-instance-offerings-request :output
 describe-reserved-elasticsearch-instance-offerings-response :errors
 (disabled-operation-exception internal-exception resource-not-found-exception
  validation-exception)
 :method "GET" :uri "/2015-01-01/es/reservedInstanceOfferings" :code 200)

(smithy/sdk/operation:define-operation
 describe-reserved-elasticsearch-instances :shape-name
 "DescribeReservedElasticsearchInstances" :input
 describe-reserved-elasticsearch-instances-request :output
 describe-reserved-elasticsearch-instances-response :errors
 (disabled-operation-exception internal-exception resource-not-found-exception
  validation-exception)
 :method "GET" :uri "/2015-01-01/es/reservedInstances" :code 200)

(smithy/sdk/operation:define-operation describe-vpc-endpoints :shape-name
                                       "DescribeVpcEndpoints" :input
                                       describe-vpc-endpoints-request :output
                                       describe-vpc-endpoints-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/es/vpcEndpoints/describe"
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
                                       "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-compatible-elasticsearch-versions
                                       :shape-name
                                       "GetCompatibleElasticsearchVersions"
                                       :input
                                       get-compatible-elasticsearch-versions-request
                                       :output
                                       get-compatible-elasticsearch-versions-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-01-01/es/compatibleVersions"
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
                                       "/2015-01-01/packages/{PackageID}/history"
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
                                       "/2015-01-01/es/upgradeDomain/{DomainName}/history"
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
                                       "/2015-01-01/es/upgradeDomain/{DomainName}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-names :shape-name
                                       "ListDomainNames" :input
                                       list-domain-names-request :output
                                       list-domain-names-response :errors
                                       (base-exception validation-exception)
                                       :method "GET" :uri "/2015-01-01/domain"
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
                                       "/2015-01-01/packages/{PackageID}/domains"
                                       :code 200)

(smithy/sdk/operation:define-operation list-elasticsearch-instance-types
                                       :shape-name
                                       "ListElasticsearchInstanceTypes" :input
                                       list-elasticsearch-instance-types-request
                                       :output
                                       list-elasticsearch-instance-types-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-elasticsearch-versions :shape-name
                                       "ListElasticsearchVersions" :input
                                       list-elasticsearch-versions-request
                                       :output
                                       list-elasticsearch-versions-response
                                       :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-01-01/es/versions" :code 200)

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
                                       "/2015-01-01/domain/{DomainName}/packages"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (base-exception internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/2015-01-01/tags"
                                       :code 200)

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
                                       "/2015-01-01/es/domain/{DomainName}/listVpcEndpointAccess"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vpc-endpoints :shape-name
                                       "ListVpcEndpoints" :input
                                       list-vpc-endpoints-request :output
                                       list-vpc-endpoints-response :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception)
                                       :method "GET" :uri
                                       "/2015-01-01/es/vpcEndpoints" :code 200)

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
                                       "/2015-01-01/es/domain/{DomainName}/vpcEndpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation
 purchase-reserved-elasticsearch-instance-offering :shape-name
 "PurchaseReservedElasticsearchInstanceOffering" :input
 purchase-reserved-elasticsearch-instance-offering-request :output
 purchase-reserved-elasticsearch-instance-offering-response :errors
 (disabled-operation-exception internal-exception limit-exceeded-exception
  resource-already-exists-exception resource-not-found-exception
  validation-exception)
 :method "POST" :uri "/2015-01-01/es/purchaseReservedInstanceOffering" :code
 200)

(smithy/sdk/operation:define-operation
 reject-inbound-cross-cluster-search-connection :shape-name
 "RejectInboundCrossClusterSearchConnection" :input
 reject-inbound-cross-cluster-search-connection-request :output
 reject-inbound-cross-cluster-search-connection-response :errors
 (disabled-operation-exception resource-not-found-exception) :method "PUT" :uri
 "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/reject"
 :code 200)

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-request :output
                                       common-lisp:null :errors
                                       (base-exception internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/tags-removal" :code 200)

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
                                       "/2015-01-01/es/domain/{DomainName}/revokeVpcEndpointAccess"
                                       :code 200)

(smithy/sdk/operation:define-operation
 start-elasticsearch-service-software-update :shape-name
 "StartElasticsearchServiceSoftwareUpdate" :input
 start-elasticsearch-service-software-update-request :output
 start-elasticsearch-service-software-update-response :errors
 (base-exception internal-exception resource-not-found-exception
  validation-exception)
 :method "POST" :uri "/2015-01-01/es/serviceSoftwareUpdate/start" :code 200)

(smithy/sdk/operation:define-operation update-elasticsearch-domain-config
                                       :shape-name
                                       "UpdateElasticsearchDomainConfig" :input
                                       update-elasticsearch-domain-config-request
                                       :output
                                       update-elasticsearch-domain-config-response
                                       :errors
                                       (base-exception internal-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/es/domain/{DomainName}/config"
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
                                       "/2015-01-01/packages/update" :code 200)

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
                                       "/2015-01-01/es/vpcEndpoints/update"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-elasticsearch-domain :shape-name
                                       "UpgradeElasticsearchDomain" :input
                                       upgrade-elasticsearch-domain-request
                                       :output
                                       upgrade-elasticsearch-domain-response
                                       :errors
                                       (base-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-01-01/es/upgradeDomain" :code 200)
