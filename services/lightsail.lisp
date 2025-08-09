(uiop/package:define-package #:pira/lightsail (:use)
                             (:export #:access-direction #:access-key
                              #:access-key-last-used #:access-key-list
                              #:access-receiver-list #:access-rules
                              #:access-type #:account-level-bpa-sync
                              #:account-level-bpa-sync-status #:add-on
                              #:add-on-list #:add-on-request
                              #:add-on-request-list #:add-on-type #:alarm
                              #:alarm-state #:alarms-list #:allocate-static-ip
                              #:app-category #:app-category-list
                              #:attach-certificate-to-distribution
                              #:attach-disk #:attach-instances-to-load-balancer
                              #:attach-load-balancer-tls-certificate
                              #:attach-static-ip #:attached-disk
                              #:attached-disk-list #:attached-disk-map
                              #:auto-mount-status
                              #:auto-snapshot-add-on-request
                              #:auto-snapshot-date #:auto-snapshot-details
                              #:auto-snapshot-details-list
                              #:auto-snapshot-status #:availability-zone
                              #:availability-zone-list #:bpastatus-message
                              #:base64 #:behavior-enum #:blueprint
                              #:blueprint-list #:blueprint-type #:bucket
                              #:bucket-access-log-config
                              #:bucket-access-log-prefix #:bucket-bundle
                              #:bucket-bundle-list #:bucket-list
                              #:bucket-metric-name #:bucket-name #:bucket-state
                              #:bundle #:bundle-list #:cache-behavior
                              #:cache-behavior-list #:cache-behavior-per-path
                              #:cache-settings #:certificate
                              #:certificate-domain-validation-status
                              #:certificate-name #:certificate-provider
                              #:certificate-status #:certificate-status-list
                              #:certificate-summary #:certificate-summary-list
                              #:close-instance-public-ports
                              #:cloud-formation-stack-record
                              #:cloud-formation-stack-record-list
                              #:cloud-formation-stack-record-source-info
                              #:cloud-formation-stack-record-source-info-list
                              #:cloud-formation-stack-record-source-type
                              #:comparison-operator #:contact-method
                              #:contact-method-status
                              #:contact-method-verification-protocol
                              #:contact-methods-list #:contact-protocol
                              #:contact-protocols-list #:container
                              #:container-image #:container-image-list
                              #:container-label #:container-map
                              #:container-name #:container-service
                              #:container-service-deployment
                              #:container-service-deployment-list
                              #:container-service-deployment-request
                              #:container-service-deployment-state
                              #:container-service-ecrimage-puller-role
                              #:container-service-ecrimage-puller-role-request
                              #:container-service-endpoint
                              #:container-service-health-check-config
                              #:container-service-list
                              #:container-service-log-event
                              #:container-service-log-event-list
                              #:container-service-metadata-entry
                              #:container-service-metadata-entry-list
                              #:container-service-metric-name
                              #:container-service-name
                              #:container-service-power
                              #:container-service-power-list
                              #:container-service-power-name
                              #:container-service-protocol
                              #:container-service-public-domains
                              #:container-service-public-domains-list
                              #:container-service-registry-login
                              #:container-service-scale
                              #:container-service-state
                              #:container-service-state-detail
                              #:container-service-state-detail-code
                              #:cookie-object #:copy-snapshot #:cost-estimate
                              #:cost-estimates #:create-bucket
                              #:create-bucket-access-key #:create-certificate
                              #:create-cloud-formation-stack
                              #:create-contact-method
                              #:create-container-service
                              #:create-container-service-deployment
                              #:create-container-service-registry-login
                              #:create-disk #:create-disk-from-snapshot
                              #:create-disk-snapshot #:create-distribution
                              #:create-domain #:create-domain-entry
                              #:create-guisession-access-details
                              #:create-instance-snapshot #:create-instances
                              #:create-instances-from-snapshot
                              #:create-key-pair #:create-load-balancer
                              #:create-load-balancer-tls-certificate
                              #:create-relational-database
                              #:create-relational-database-from-snapshot
                              #:create-relational-database-snapshot #:currency
                              #:delete-alarm #:delete-auto-snapshot
                              #:delete-bucket #:delete-bucket-access-key
                              #:delete-certificate #:delete-contact-method
                              #:delete-container-image
                              #:delete-container-service #:delete-disk
                              #:delete-disk-snapshot #:delete-distribution
                              #:delete-domain #:delete-domain-entry
                              #:delete-instance #:delete-instance-snapshot
                              #:delete-key-pair #:delete-known-host-keys
                              #:delete-load-balancer
                              #:delete-load-balancer-tls-certificate
                              #:delete-relational-database
                              #:delete-relational-database-snapshot
                              #:destination-info
                              #:detach-certificate-from-distribution
                              #:detach-disk
                              #:detach-instances-from-load-balancer
                              #:detach-static-ip #:disable-add-on #:disk
                              #:disk-info #:disk-info-list #:disk-list
                              #:disk-map #:disk-map-list #:disk-snapshot
                              #:disk-snapshot-info #:disk-snapshot-list
                              #:disk-snapshot-state #:disk-state
                              #:distribution-bundle #:distribution-bundle-list
                              #:distribution-list #:distribution-metric-name
                              #:dns-record-creation-state
                              #:dns-record-creation-state-code #:domain
                              #:domain-entry #:domain-entry-list
                              #:domain-entry-options
                              #:domain-entry-options-keys #:domain-entry-type
                              #:domain-list #:domain-name #:domain-name-list
                              #:domain-validation-record
                              #:domain-validation-record-list
                              #:download-default-key-pair #:eligible-to-renew
                              #:email-address #:enable-add-on
                              #:endpoint-request #:environment
                              #:estimate-by-time #:estimates-by-time
                              #:export-snapshot #:export-snapshot-record
                              #:export-snapshot-record-list
                              #:export-snapshot-record-source-info
                              #:export-snapshot-record-source-type
                              #:forward-values #:get-active-names #:get-alarms
                              #:get-auto-snapshots #:get-blueprints
                              #:get-bucket-access-keys #:get-bucket-bundles
                              #:get-bucket-metric-data #:get-buckets
                              #:get-bundles #:get-certificates
                              #:get-cloud-formation-stack-records
                              #:get-contact-methods #:get-container-apimetadata
                              #:get-container-images #:get-container-log
                              #:get-container-service-deployments
                              #:get-container-service-metric-data
                              #:get-container-service-powers
                              #:get-container-services #:get-cost-estimate
                              #:get-disk #:get-disk-snapshot
                              #:get-disk-snapshots #:get-disks
                              #:get-distribution-bundles
                              #:get-distribution-latest-cache-reset
                              #:get-distribution-metric-data
                              #:get-distributions #:get-domain #:get-domains
                              #:get-export-snapshot-records #:get-instance
                              #:get-instance-access-details
                              #:get-instance-metric-data
                              #:get-instance-port-states
                              #:get-instance-snapshot #:get-instance-snapshots
                              #:get-instance-state #:get-instances
                              #:get-key-pair #:get-key-pairs
                              #:get-load-balancer
                              #:get-load-balancer-metric-data
                              #:get-load-balancer-tls-certificates
                              #:get-load-balancer-tls-policies
                              #:get-load-balancers #:get-operation
                              #:get-operations #:get-operations-for-resource
                              #:get-regions #:get-relational-database
                              #:get-relational-database-blueprints
                              #:get-relational-database-bundles
                              #:get-relational-database-events
                              #:get-relational-database-log-events
                              #:get-relational-database-log-streams
                              #:get-relational-database-master-user-password
                              #:get-relational-database-metric-data
                              #:get-relational-database-parameters
                              #:get-relational-database-snapshot
                              #:get-relational-database-snapshots
                              #:get-relational-databases #:get-setup-history
                              #:get-static-ip #:get-static-ips #:header-enum
                              #:header-forward-list #:header-object
                              #:host-key-attributes #:host-keys-list
                              #:http-endpoint #:http-protocol-ipv6
                              #:http-tokens #:iamaccess-key-id
                              #:import-key-pair #:in-use-resource-count
                              #:include-certificate-details #:input-origin
                              #:instance #:instance-access-details
                              #:instance-access-protocol #:instance-entry
                              #:instance-entry-list #:instance-hardware
                              #:instance-health-reason #:instance-health-state
                              #:instance-health-summary
                              #:instance-health-summary-list #:instance-list
                              #:instance-metadata-options
                              #:instance-metadata-state #:instance-metric-name
                              #:instance-networking #:instance-platform
                              #:instance-platform-list #:instance-port-info
                              #:instance-port-info-list #:instance-port-state
                              #:instance-port-state-list #:instance-snapshot
                              #:instance-snapshot-info #:instance-snapshot-list
                              #:instance-snapshot-state #:instance-state
                              #:ip-address #:ip-address-type #:ipv6address
                              #:ipv6address-list #:is-vpc-peered #:iso-date
                              #:issuer-ca #:key-algorithm #:key-pair
                              #:key-pair-list #:lightsail-distribution
                              #:lightsail-20161128 #:load-balancer
                              #:load-balancer-attribute-name
                              #:load-balancer-configuration-options
                              #:load-balancer-list #:load-balancer-metric-name
                              #:load-balancer-protocol #:load-balancer-state
                              #:load-balancer-tls-certificate
                              #:load-balancer-tls-certificate-dns-record-creation-state
                              #:load-balancer-tls-certificate-dns-record-creation-state-code
                              #:load-balancer-tls-certificate-domain-status
                              #:load-balancer-tls-certificate-domain-validation-option
                              #:load-balancer-tls-certificate-domain-validation-option-list
                              #:load-balancer-tls-certificate-domain-validation-record
                              #:load-balancer-tls-certificate-domain-validation-record-list
                              #:load-balancer-tls-certificate-failure-reason
                              #:load-balancer-tls-certificate-list
                              #:load-balancer-tls-certificate-renewal-status
                              #:load-balancer-tls-certificate-renewal-summary
                              #:load-balancer-tls-certificate-revocation-reason
                              #:load-balancer-tls-certificate-status
                              #:load-balancer-tls-certificate-summary
                              #:load-balancer-tls-certificate-summary-list
                              #:load-balancer-tls-policy
                              #:load-balancer-tls-policy-list #:log-event
                              #:log-event-list #:metric-datapoint
                              #:metric-datapoint-list #:metric-name
                              #:metric-period #:metric-statistic
                              #:metric-statistic-list #:metric-unit
                              #:monitored-resource-info #:monthly-transfer
                              #:name-servers-update-state
                              #:name-servers-update-state-code
                              #:network-protocol #:non-empty-string
                              #:notification-trigger-list
                              #:open-instance-public-ports #:operation
                              #:operation-list #:operation-status
                              #:operation-type #:origin
                              #:origin-protocol-policy-enum #:partner-id-list
                              #:password-data #:peer-vpc
                              #:pending-maintenance-action
                              #:pending-maintenance-action-list
                              #:pending-modified-relational-database-values
                              #:port #:port-access-type #:port-info
                              #:port-info-list #:port-info-source-type
                              #:port-list #:port-map #:port-state
                              #:pricing-unit #:private-registry-access
                              #:private-registry-access-request #:put-alarm
                              #:put-instance-public-ports #:query-string-object
                              #:r53hosted-zone-deletion-state
                              #:r53hosted-zone-deletion-state-code
                              #:reboot-instance #:reboot-relational-database
                              #:record-state #:region #:region-list
                              #:region-name #:register-container-image
                              #:registered-domain-delegation-info
                              #:relational-database
                              #:relational-database-blueprint
                              #:relational-database-blueprint-list
                              #:relational-database-bundle
                              #:relational-database-bundle-list
                              #:relational-database-endpoint
                              #:relational-database-engine
                              #:relational-database-event
                              #:relational-database-event-list
                              #:relational-database-hardware
                              #:relational-database-list
                              #:relational-database-metric-name
                              #:relational-database-parameter
                              #:relational-database-parameter-list
                              #:relational-database-password-version
                              #:relational-database-snapshot
                              #:relational-database-snapshot-list
                              #:release-static-ip #:renewal-status
                              #:renewal-status-reason #:renewal-summary
                              #:request-failure-reason
                              #:reset-distribution-cache #:resource-arn
                              #:resource-bucket-access
                              #:resource-budget-estimate #:resource-location
                              #:resource-name #:resource-name-list
                              #:resource-receiving-access #:resource-record
                              #:resource-type #:resources-budget-estimate
                              #:revocation-reason
                              #:send-contact-method-verification
                              #:sensitive-non-empty-string #:sensitive-string
                              #:serial-number #:session #:sessions
                              #:set-ip-address-type
                              #:set-resource-access-for-bucket
                              #:setup-domain-name #:setup-domain-name-list
                              #:setup-execution-details
                              #:setup-execution-details-list #:setup-history
                              #:setup-history-page-token
                              #:setup-history-resource #:setup-instance-https
                              #:setup-request #:setup-status #:start-guisession
                              #:start-instance #:start-relational-database
                              #:static-ip #:static-ip-list #:status
                              #:status-type #:stop-guisession #:stop-instance
                              #:stop-instance-on-idle-request
                              #:stop-relational-database #:string-list
                              #:string-max256 #:subject-alternative-name-list
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:test-alarm
                              #:time-of-day #:time-period #:treat-missing-data
                              #:unpeer-vpc #:untag-resource #:update-bucket
                              #:update-bucket-bundle #:update-container-service
                              #:update-distribution
                              #:update-distribution-bundle
                              #:update-domain-entry
                              #:update-instance-metadata-options
                              #:update-load-balancer-attribute
                              #:update-relational-database
                              #:update-relational-database-parameters
                              #:viewer-minimum-tls-protocol-version-enum
                              #:boolean #:double #:float #:integer #:long
                              #:setup-history-list #:string #:timestamp))
(common-lisp:in-package #:pira/lightsail)

(smithy/sdk/service:define-service lightsail-20161128 :shape-name
                                   "Lightsail_20161128" :version "2016-11-28"
                                   :title "Amazon Lightsail" :traits
                                   '(("aws.api#service" ("sdkId" . "Lightsail")
                                      ("arnNamespace" . "lightsail")
                                      ("cloudFormationName" . "Lightsail")
                                      ("cloudTrailEventSource"
                                       . "lightsail.amazonaws.com")
                                      ("endpointPrefix" . "lightsail"))
                                     ("aws.auth#sigv4" ("name" . "lightsail"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum access-direction
    common-lisp:nil
  (:inbound "inbound")
  (:outbound "outbound"))

(smithy/sdk/shapes:define-structure access-key common-lisp:nil
                                    ((access-key-id :target-type
                                      iamaccess-key-id :member-name
                                      "accessKeyId")
                                     (secret-access-key :target-type
                                      non-empty-string :member-name
                                      "secretAccessKey")
                                     (status :target-type status-type
                                      :member-name "status")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (last-used :target-type
                                      access-key-last-used :member-name
                                      "lastUsed"))
                                    (:shape-name "AccessKey"))

(smithy/sdk/shapes:define-structure access-key-last-used common-lisp:nil
                                    ((last-used-date :target-type iso-date
                                      :member-name "lastUsedDate")
                                     (region :target-type string :member-name
                                      "region")
                                     (service-name :target-type string
                                      :member-name "serviceName"))
                                    (:shape-name "AccessKeyLastUsed"))

(smithy/sdk/shapes:define-list access-key-list :member access-key)

(smithy/sdk/shapes:define-list access-receiver-list :member
                               resource-receiving-access)

(smithy/sdk/shapes:define-structure access-rules common-lisp:nil
                                    ((get-object :target-type access-type
                                      :member-name "getObject")
                                     (allow-public-overrides :target-type
                                      boolean :member-name
                                      "allowPublicOverrides"))
                                    (:shape-name "AccessRules"))

(smithy/sdk/shapes:define-enum access-type
    common-lisp:nil
  (:public "public")
  (:private "private"))

(smithy/sdk/shapes:define-structure account-level-bpa-sync common-lisp:nil
                                    ((status :target-type
                                      account-level-bpa-sync-status
                                      :member-name "status")
                                     (last-synced-at :target-type iso-date
                                      :member-name "lastSyncedAt")
                                     (message :target-type bpastatus-message
                                      :member-name "message")
                                     (bpa-impacts-lightsail :target-type
                                      boolean :member-name
                                      "bpaImpactsLightsail"))
                                    (:shape-name "AccountLevelBpaSync"))

(smithy/sdk/shapes:define-enum account-level-bpa-sync-status
    common-lisp:nil
  (:in-sync "InSync")
  (:failed "Failed")
  (:never-synced "NeverSynced")
  (:defaulted "Defaulted"))

(smithy/sdk/shapes:define-error account-setup-in-progress-exception
                                common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "AccountSetupInProgressException")
                                (:error-code 428))

(smithy/sdk/shapes:define-structure add-on common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (status :target-type string :member-name
                                      "status")
                                     (snapshot-time-of-day :target-type
                                      time-of-day :member-name
                                      "snapshotTimeOfDay")
                                     (next-snapshot-time-of-day :target-type
                                      time-of-day :member-name
                                      "nextSnapshotTimeOfDay")
                                     (threshold :target-type string
                                      :member-name "threshold")
                                     (duration :target-type string :member-name
                                      "duration"))
                                    (:shape-name "AddOn"))

(smithy/sdk/shapes:define-list add-on-list :member add-on)

(smithy/sdk/shapes:define-structure add-on-request common-lisp:nil
                                    ((add-on-type :target-type add-on-type
                                      :required common-lisp:t :member-name
                                      "addOnType")
                                     (auto-snapshot-add-on-request :target-type
                                      auto-snapshot-add-on-request :member-name
                                      "autoSnapshotAddOnRequest")
                                     (stop-instance-on-idle-request
                                      :target-type
                                      stop-instance-on-idle-request
                                      :member-name
                                      "stopInstanceOnIdleRequest"))
                                    (:shape-name "AddOnRequest"))

(smithy/sdk/shapes:define-list add-on-request-list :member add-on-request)

(smithy/sdk/shapes:define-enum add-on-type
    common-lisp:nil
  (:auto-snapshot "AutoSnapshot")
  (:stop-instance-on-idle "StopInstanceOnIdle"))

(smithy/sdk/shapes:define-structure alarm common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (monitored-resource-info :target-type
                                      monitored-resource-info :member-name
                                      "monitoredResourceInfo")
                                     (comparison-operator :target-type
                                      comparison-operator :member-name
                                      "comparisonOperator")
                                     (evaluation-periods :target-type integer
                                      :member-name "evaluationPeriods")
                                     (period :target-type metric-period
                                      :member-name "period")
                                     (threshold :target-type double
                                      :member-name "threshold")
                                     (datapoints-to-alarm :target-type integer
                                      :member-name "datapointsToAlarm")
                                     (treat-missing-data :target-type
                                      treat-missing-data :member-name
                                      "treatMissingData")
                                     (statistic :target-type metric-statistic
                                      :member-name "statistic")
                                     (metric-name :target-type metric-name
                                      :member-name "metricName")
                                     (state :target-type alarm-state
                                      :member-name "state")
                                     (unit :target-type metric-unit
                                      :member-name "unit")
                                     (contact-protocols :target-type
                                      contact-protocols-list :member-name
                                      "contactProtocols")
                                     (notification-triggers :target-type
                                      notification-trigger-list :member-name
                                      "notificationTriggers")
                                     (notification-enabled :target-type boolean
                                      :member-name "notificationEnabled"))
                                    (:shape-name "Alarm"))

(smithy/sdk/shapes:define-enum alarm-state
    common-lisp:nil
  (:ok "OK")
  (:alarm "ALARM")
  (:insufficient-data "INSUFFICIENT_DATA"))

(smithy/sdk/shapes:define-list alarms-list :member alarm)

(smithy/sdk/shapes:define-input allocate-static-ip-request common-lisp:nil
                                ((static-ip-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "staticIpName"))
                                (:shape-name "AllocateStaticIpRequest"))

(smithy/sdk/shapes:define-output allocate-static-ip-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "AllocateStaticIpResult"))

(smithy/sdk/shapes:define-enum app-category
    common-lisp:nil
  (:lf-r "LfR"))

(smithy/sdk/shapes:define-list app-category-list :member app-category)

(smithy/sdk/shapes:define-input attach-certificate-to-distribution-request
                                common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "distributionName")
                                 (certificate-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "certificateName"))
                                (:shape-name
                                 "AttachCertificateToDistributionRequest"))

(smithy/sdk/shapes:define-output attach-certificate-to-distribution-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name
                                  "AttachCertificateToDistributionResult"))

(smithy/sdk/shapes:define-input attach-disk-request common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskName")
                                 (instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (disk-path :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "diskPath")
                                 (auto-mounting :target-type boolean
                                  :member-name "autoMounting"))
                                (:shape-name "AttachDiskRequest"))

(smithy/sdk/shapes:define-output attach-disk-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "AttachDiskResult"))

(smithy/sdk/shapes:define-input attach-instances-to-load-balancer-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (instance-names :target-type
                                  resource-name-list :required common-lisp:t
                                  :member-name "instanceNames"))
                                (:shape-name
                                 "AttachInstancesToLoadBalancerRequest"))

(smithy/sdk/shapes:define-output attach-instances-to-load-balancer-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "AttachInstancesToLoadBalancerResult"))

(smithy/sdk/shapes:define-input attach-load-balancer-tls-certificate-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (certificate-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "certificateName"))
                                (:shape-name
                                 "AttachLoadBalancerTlsCertificateRequest"))

(smithy/sdk/shapes:define-output attach-load-balancer-tls-certificate-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "AttachLoadBalancerTlsCertificateResult"))

(smithy/sdk/shapes:define-input attach-static-ip-request common-lisp:nil
                                ((static-ip-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "staticIpName")
                                 (instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "AttachStaticIpRequest"))

(smithy/sdk/shapes:define-output attach-static-ip-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "AttachStaticIpResult"))

(smithy/sdk/shapes:define-structure attached-disk common-lisp:nil
                                    ((path :target-type string :member-name
                                      "path")
                                     (size-in-gb :target-type integer
                                      :member-name "sizeInGb"))
                                    (:shape-name "AttachedDisk"))

(smithy/sdk/shapes:define-list attached-disk-list :member attached-disk)

(smithy/sdk/shapes:define-map attached-disk-map :key resource-name :value
                              disk-map-list)

(smithy/sdk/shapes:define-enum auto-mount-status
    common-lisp:nil
  (:failed "Failed")
  (:pending "Pending")
  (:mounted "Mounted")
  (:not-mounted "NotMounted"))

(smithy/sdk/shapes:define-structure auto-snapshot-add-on-request
                                    common-lisp:nil
                                    ((snapshot-time-of-day :target-type
                                      time-of-day :member-name
                                      "snapshotTimeOfDay"))
                                    (:shape-name "AutoSnapshotAddOnRequest"))

(smithy/sdk/shapes:define-type auto-snapshot-date
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-snapshot-details common-lisp:nil
                                    ((date :target-type string :member-name
                                      "date")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (status :target-type auto-snapshot-status
                                      :member-name "status")
                                     (from-attached-disks :target-type
                                      attached-disk-list :member-name
                                      "fromAttachedDisks"))
                                    (:shape-name "AutoSnapshotDetails"))

(smithy/sdk/shapes:define-list auto-snapshot-details-list :member
                               auto-snapshot-details)

(smithy/sdk/shapes:define-enum auto-snapshot-status
    common-lisp:nil
  (:success "Success")
  (:failed "Failed")
  (:in-progress "InProgress")
  (:not-found "NotFound"))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((zone-name :target-type non-empty-string
                                      :member-name "zoneName")
                                     (state :target-type non-empty-string
                                      :member-name "state"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zone-list :member availability-zone)

(smithy/sdk/shapes:define-enum bpastatus-message
    common-lisp:nil
  (:defaulted-for-slr-missing "DEFAULTED_FOR_SLR_MISSING")
  (:sync-on-hold "SYNC_ON_HOLD")
  (:defaulted-for-slr-missing-on-hold "DEFAULTED_FOR_SLR_MISSING_ON_HOLD")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-type base64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum behavior-enum
    common-lisp:nil
  (:dont-cache-setting "dont-cache")
  (:cache-setting "cache"))

(smithy/sdk/shapes:define-structure blueprint common-lisp:nil
                                    ((blueprint-id :target-type
                                      non-empty-string :member-name
                                      "blueprintId")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (group :target-type non-empty-string
                                      :member-name "group")
                                     (type :target-type blueprint-type
                                      :member-name "type")
                                     (description :target-type string
                                      :member-name "description")
                                     (is-active :target-type boolean
                                      :member-name "isActive")
                                     (min-power :target-type integer
                                      :member-name "minPower")
                                     (version :target-type string :member-name
                                      "version")
                                     (version-code :target-type string
                                      :member-name "versionCode")
                                     (product-url :target-type string
                                      :member-name "productUrl")
                                     (license-url :target-type string
                                      :member-name "licenseUrl")
                                     (platform :target-type instance-platform
                                      :member-name "platform")
                                     (app-category :target-type app-category
                                      :member-name "appCategory"))
                                    (:shape-name "Blueprint"))

(smithy/sdk/shapes:define-list blueprint-list :member blueprint)

(smithy/sdk/shapes:define-enum blueprint-type
    common-lisp:nil
  (:os "os")
  (:app "app"))

(smithy/sdk/shapes:define-structure bucket common-lisp:nil
                                    ((resource-type :target-type
                                      non-empty-string :member-name
                                      "resourceType")
                                     (access-rules :target-type access-rules
                                      :member-name "accessRules")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (bundle-id :target-type non-empty-string
                                      :member-name "bundleId")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (url :target-type non-empty-string
                                      :member-name "url")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (name :target-type bucket-name
                                      :member-name "name")
                                     (support-code :target-type
                                      non-empty-string :member-name
                                      "supportCode")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (object-versioning :target-type
                                      non-empty-string :member-name
                                      "objectVersioning")
                                     (able-to-update-bundle :target-type
                                      boolean :member-name
                                      "ableToUpdateBundle")
                                     (readonly-access-accounts :target-type
                                      partner-id-list :member-name
                                      "readonlyAccessAccounts")
                                     (resources-receiving-access :target-type
                                      access-receiver-list :member-name
                                      "resourcesReceivingAccess")
                                     (state :target-type bucket-state
                                      :member-name "state")
                                     (access-log-config :target-type
                                      bucket-access-log-config :member-name
                                      "accessLogConfig"))
                                    (:shape-name "Bucket"))

(smithy/sdk/shapes:define-structure bucket-access-log-config common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (destination :target-type bucket-name
                                      :member-name "destination")
                                     (prefix :target-type
                                      bucket-access-log-prefix :member-name
                                      "prefix"))
                                    (:shape-name "BucketAccessLogConfig"))

(smithy/sdk/shapes:define-type bucket-access-log-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bucket-bundle common-lisp:nil
                                    ((bundle-id :target-type non-empty-string
                                      :member-name "bundleId")
                                     (name :target-type non-empty-string
                                      :member-name "name")
                                     (price :target-type float :member-name
                                      "price")
                                     (storage-per-month-in-gb :target-type
                                      integer :member-name
                                      "storagePerMonthInGb")
                                     (transfer-per-month-in-gb :target-type
                                      integer :member-name
                                      "transferPerMonthInGb")
                                     (is-active :target-type boolean
                                      :member-name "isActive"))
                                    (:shape-name "BucketBundle"))

(smithy/sdk/shapes:define-list bucket-bundle-list :member bucket-bundle)

(smithy/sdk/shapes:define-list bucket-list :member bucket)

(smithy/sdk/shapes:define-enum bucket-metric-name
    common-lisp:nil
  (:bucket-size-bytes "BucketSizeBytes")
  (:number-of-objects "NumberOfObjects"))

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bucket-state common-lisp:nil
                                    ((code :target-type non-empty-string
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "BucketState"))

(smithy/sdk/shapes:define-structure bundle common-lisp:nil
                                    ((price :target-type float :member-name
                                      "price")
                                     (cpu-count :target-type integer
                                      :member-name "cpuCount")
                                     (disk-size-in-gb :target-type integer
                                      :member-name "diskSizeInGb")
                                     (bundle-id :target-type non-empty-string
                                      :member-name "bundleId")
                                     (instance-type :target-type string
                                      :member-name "instanceType")
                                     (is-active :target-type boolean
                                      :member-name "isActive")
                                     (name :target-type string :member-name
                                      "name")
                                     (power :target-type integer :member-name
                                      "power")
                                     (ram-size-in-gb :target-type float
                                      :member-name "ramSizeInGb")
                                     (transfer-per-month-in-gb :target-type
                                      integer :member-name
                                      "transferPerMonthInGb")
                                     (supported-platforms :target-type
                                      instance-platform-list :member-name
                                      "supportedPlatforms")
                                     (supported-app-categories :target-type
                                      app-category-list :member-name
                                      "supportedAppCategories")
                                     (public-ipv4address-count :target-type
                                      integer :member-name
                                      "publicIpv4AddressCount"))
                                    (:shape-name "Bundle"))

(smithy/sdk/shapes:define-list bundle-list :member bundle)

(smithy/sdk/shapes:define-structure cache-behavior common-lisp:nil
                                    ((behavior :target-type behavior-enum
                                      :member-name "behavior"))
                                    (:shape-name "CacheBehavior"))

(smithy/sdk/shapes:define-list cache-behavior-list :member
                               cache-behavior-per-path)

(smithy/sdk/shapes:define-structure cache-behavior-per-path common-lisp:nil
                                    ((path :target-type string :member-name
                                      "path")
                                     (behavior :target-type behavior-enum
                                      :member-name "behavior"))
                                    (:shape-name "CacheBehaviorPerPath"))

(smithy/sdk/shapes:define-structure cache-settings common-lisp:nil
                                    ((default-ttl :target-type long
                                      :member-name "defaultTTL")
                                     (minimum-ttl :target-type long
                                      :member-name "minimumTTL")
                                     (maximum-ttl :target-type long
                                      :member-name "maximumTTL")
                                     (allowed-httpmethods :target-type
                                      non-empty-string :member-name
                                      "allowedHTTPMethods")
                                     (cached-httpmethods :target-type
                                      non-empty-string :member-name
                                      "cachedHTTPMethods")
                                     (forwarded-cookies :target-type
                                      cookie-object :member-name
                                      "forwardedCookies")
                                     (forwarded-headers :target-type
                                      header-object :member-name
                                      "forwardedHeaders")
                                     (forwarded-query-strings :target-type
                                      query-string-object :member-name
                                      "forwardedQueryStrings"))
                                    (:shape-name "CacheSettings"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((arn :target-type non-empty-string
                                      :member-name "arn")
                                     (name :target-type certificate-name
                                      :member-name "name")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (status :target-type certificate-status
                                      :member-name "status")
                                     (serial-number :target-type serial-number
                                      :member-name "serialNumber")
                                     (subject-alternative-names :target-type
                                      subject-alternative-name-list
                                      :member-name "subjectAlternativeNames")
                                     (domain-validation-records :target-type
                                      domain-validation-record-list
                                      :member-name "domainValidationRecords")
                                     (request-failure-reason :target-type
                                      request-failure-reason :member-name
                                      "requestFailureReason")
                                     (in-use-resource-count :target-type
                                      in-use-resource-count :member-name
                                      "inUseResourceCount")
                                     (key-algorithm :target-type key-algorithm
                                      :member-name "keyAlgorithm")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (issued-at :target-type iso-date
                                      :member-name "issuedAt")
                                     (issuer-ca :target-type issuer-ca
                                      :member-name "issuerCA")
                                     (not-before :target-type iso-date
                                      :member-name "notBefore")
                                     (not-after :target-type iso-date
                                      :member-name "notAfter")
                                     (eligible-to-renew :target-type
                                      eligible-to-renew :member-name
                                      "eligibleToRenew")
                                     (renewal-summary :target-type
                                      renewal-summary :member-name
                                      "renewalSummary")
                                     (revoked-at :target-type iso-date
                                      :member-name "revokedAt")
                                     (revocation-reason :target-type
                                      revocation-reason :member-name
                                      "revocationReason")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (support-code :target-type string
                                      :member-name "supportCode"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-enum certificate-domain-validation-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:failed "FAILED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-type certificate-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum certificate-provider
    common-lisp:nil
  (:lets-encrypt "LetsEncrypt"))

(smithy/sdk/shapes:define-enum certificate-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:issued "ISSUED")
  (:inactive "INACTIVE")
  (:expired "EXPIRED")
  (:validation-timed-out "VALIDATION_TIMED_OUT")
  (:revoked "REVOKED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list certificate-status-list :member
                               certificate-status)

(smithy/sdk/shapes:define-structure certificate-summary common-lisp:nil
                                    ((certificate-arn :target-type
                                      non-empty-string :member-name
                                      "certificateArn")
                                     (certificate-name :target-type
                                      certificate-name :member-name
                                      "certificateName")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (certificate-detail :target-type
                                      certificate :member-name
                                      "certificateDetail")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CertificateSummary"))

(smithy/sdk/shapes:define-list certificate-summary-list :member
                               certificate-summary)

(smithy/sdk/shapes:define-input close-instance-public-ports-request
                                common-lisp:nil
                                ((port-info :target-type port-info :required
                                  common-lisp:t :member-name "portInfo")
                                 (instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "CloseInstancePublicPortsRequest"))

(smithy/sdk/shapes:define-output close-instance-public-ports-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "CloseInstancePublicPortsResult"))

(smithy/sdk/shapes:define-structure cloud-formation-stack-record
                                    common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (state :target-type record-state
                                      :member-name "state")
                                     (source-info :target-type
                                      cloud-formation-stack-record-source-info-list
                                      :member-name "sourceInfo")
                                     (destination-info :target-type
                                      destination-info :member-name
                                      "destinationInfo"))
                                    (:shape-name "CloudFormationStackRecord"))

(smithy/sdk/shapes:define-list cloud-formation-stack-record-list :member
                               cloud-formation-stack-record)

(smithy/sdk/shapes:define-structure cloud-formation-stack-record-source-info
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      cloud-formation-stack-record-source-type
                                      :member-name "resourceType")
                                     (name :target-type non-empty-string
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn"))
                                    (:shape-name
                                     "CloudFormationStackRecordSourceInfo"))

(smithy/sdk/shapes:define-list cloud-formation-stack-record-source-info-list
                               :member cloud-formation-stack-record-source-info)

(smithy/sdk/shapes:define-enum cloud-formation-stack-record-source-type
    common-lisp:nil
  (:export-snapshot-record "ExportSnapshotRecord"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater-than-or-equal-to-threshold "GreaterThanOrEqualToThreshold")
  (:greater-than-threshold "GreaterThanThreshold")
  (:less-than-threshold "LessThanThreshold")
  (:less-than-or-equal-to-threshold "LessThanOrEqualToThreshold"))

(smithy/sdk/shapes:define-structure contact-method common-lisp:nil
                                    ((contact-endpoint :target-type
                                      non-empty-string :member-name
                                      "contactEndpoint")
                                     (status :target-type contact-method-status
                                      :member-name "status")
                                     (protocol :target-type contact-protocol
                                      :member-name "protocol")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (support-code :target-type string
                                      :member-name "supportCode"))
                                    (:shape-name "ContactMethod"))

(smithy/sdk/shapes:define-enum contact-method-status
    common-lisp:nil
  (:pending-verification "PendingVerification")
  (:valid "Valid")
  (:invalid "Invalid"))

(smithy/sdk/shapes:define-enum contact-method-verification-protocol
    common-lisp:nil
  (:email "Email"))

(smithy/sdk/shapes:define-list contact-methods-list :member contact-method)

(smithy/sdk/shapes:define-enum contact-protocol
    common-lisp:nil
  (:email "Email")
  (:sms "SMS"))

(smithy/sdk/shapes:define-list contact-protocols-list :member contact-protocol)

(smithy/sdk/shapes:define-structure container common-lisp:nil
                                    ((image :target-type string :member-name
                                      "image")
                                     (command :target-type string-list
                                      :member-name "command")
                                     (environment :target-type environment
                                      :member-name "environment")
                                     (ports :target-type port-map :member-name
                                      "ports"))
                                    (:shape-name "Container"))

(smithy/sdk/shapes:define-structure container-image common-lisp:nil
                                    ((image :target-type string :member-name
                                      "image")
                                     (digest :target-type string :member-name
                                      "digest")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt"))
                                    (:shape-name "ContainerImage"))

(smithy/sdk/shapes:define-list container-image-list :member container-image)

(smithy/sdk/shapes:define-type container-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map container-map :key container-name :value
                              container)

(smithy/sdk/shapes:define-type container-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-service common-lisp:nil
                                    ((container-service-name :target-type
                                      container-service-name :member-name
                                      "containerServiceName")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (power :target-type
                                      container-service-power-name :member-name
                                      "power")
                                     (power-id :target-type string :member-name
                                      "powerId")
                                     (state :target-type
                                      container-service-state :member-name
                                      "state")
                                     (state-detail :target-type
                                      container-service-state-detail
                                      :member-name "stateDetail")
                                     (scale :target-type
                                      container-service-scale :member-name
                                      "scale")
                                     (current-deployment :target-type
                                      container-service-deployment :member-name
                                      "currentDeployment")
                                     (next-deployment :target-type
                                      container-service-deployment :member-name
                                      "nextDeployment")
                                     (is-disabled :target-type boolean
                                      :member-name "isDisabled")
                                     (principal-arn :target-type string
                                      :member-name "principalArn")
                                     (private-domain-name :target-type string
                                      :member-name "privateDomainName")
                                     (public-domain-names :target-type
                                      container-service-public-domains
                                      :member-name "publicDomainNames")
                                     (url :target-type string :member-name
                                      "url")
                                     (private-registry-access :target-type
                                      private-registry-access :member-name
                                      "privateRegistryAccess"))
                                    (:shape-name "ContainerService"))

(smithy/sdk/shapes:define-structure container-service-deployment
                                    common-lisp:nil
                                    ((version :target-type integer :member-name
                                      "version")
                                     (state :target-type
                                      container-service-deployment-state
                                      :member-name "state")
                                     (containers :target-type container-map
                                      :member-name "containers")
                                     (public-endpoint :target-type
                                      container-service-endpoint :member-name
                                      "publicEndpoint")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt"))
                                    (:shape-name "ContainerServiceDeployment"))

(smithy/sdk/shapes:define-list container-service-deployment-list :member
                               container-service-deployment)

(smithy/sdk/shapes:define-structure container-service-deployment-request
                                    common-lisp:nil
                                    ((containers :target-type container-map
                                      :member-name "containers")
                                     (public-endpoint :target-type
                                      endpoint-request :member-name
                                      "publicEndpoint"))
                                    (:shape-name
                                     "ContainerServiceDeploymentRequest"))

(smithy/sdk/shapes:define-enum container-service-deployment-state
    common-lisp:nil
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure container-service-ecrimage-puller-role
                                    common-lisp:nil
                                    ((is-active :target-type boolean
                                      :member-name "isActive")
                                     (principal-arn :target-type string
                                      :member-name "principalArn"))
                                    (:shape-name
                                     "ContainerServiceECRImagePullerRole"))

(smithy/sdk/shapes:define-structure
 container-service-ecrimage-puller-role-request common-lisp:nil
 ((is-active :target-type boolean :member-name "isActive"))
 (:shape-name "ContainerServiceECRImagePullerRoleRequest"))

(smithy/sdk/shapes:define-structure container-service-endpoint common-lisp:nil
                                    ((container-name :target-type string
                                      :member-name "containerName")
                                     (container-port :target-type integer
                                      :member-name "containerPort")
                                     (health-check :target-type
                                      container-service-health-check-config
                                      :member-name "healthCheck"))
                                    (:shape-name "ContainerServiceEndpoint"))

(smithy/sdk/shapes:define-structure container-service-health-check-config
                                    common-lisp:nil
                                    ((healthy-threshold :target-type integer
                                      :member-name "healthyThreshold")
                                     (unhealthy-threshold :target-type integer
                                      :member-name "unhealthyThreshold")
                                     (timeout-seconds :target-type integer
                                      :member-name "timeoutSeconds")
                                     (interval-seconds :target-type integer
                                      :member-name "intervalSeconds")
                                     (path :target-type string :member-name
                                      "path")
                                     (success-codes :target-type string
                                      :member-name "successCodes"))
                                    (:shape-name
                                     "ContainerServiceHealthCheckConfig"))

(smithy/sdk/shapes:define-list container-service-list :member container-service)

(smithy/sdk/shapes:define-structure container-service-log-event common-lisp:nil
                                    ((created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "ContainerServiceLogEvent"))

(smithy/sdk/shapes:define-list container-service-log-event-list :member
                               container-service-log-event)

(smithy/sdk/shapes:define-map container-service-metadata-entry :key string
                              :value string)

(smithy/sdk/shapes:define-list container-service-metadata-entry-list :member
                               container-service-metadata-entry)

(smithy/sdk/shapes:define-enum container-service-metric-name
    common-lisp:nil
  (:cpuutilization "CPUUtilization")
  (:memory-utilization "MemoryUtilization"))

(smithy/sdk/shapes:define-type container-service-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-service-power common-lisp:nil
                                    ((power-id :target-type string :member-name
                                      "powerId")
                                     (price :target-type float :member-name
                                      "price")
                                     (cpu-count :target-type float :member-name
                                      "cpuCount")
                                     (ram-size-in-gb :target-type float
                                      :member-name "ramSizeInGb")
                                     (name :target-type string :member-name
                                      "name")
                                     (is-active :target-type boolean
                                      :member-name "isActive"))
                                    (:shape-name "ContainerServicePower"))

(smithy/sdk/shapes:define-list container-service-power-list :member
                               container-service-power)

(smithy/sdk/shapes:define-enum container-service-power-name
    common-lisp:nil
  (:nano "nano")
  (:micro "micro")
  (:small "small")
  (:medium "medium")
  (:large "large")
  (:xlarge "xlarge"))

(smithy/sdk/shapes:define-enum container-service-protocol
    common-lisp:nil
  (:http "HTTP")
  (:https "HTTPS")
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-map container-service-public-domains :key string
                              :value container-service-public-domains-list)

(smithy/sdk/shapes:define-list container-service-public-domains-list :member
                               string)

(smithy/sdk/shapes:define-structure container-service-registry-login
                                    common-lisp:nil
                                    ((username :target-type string :member-name
                                      "username")
                                     (password :target-type string :member-name
                                      "password")
                                     (expires-at :target-type iso-date
                                      :member-name "expiresAt")
                                     (registry :target-type string :member-name
                                      "registry"))
                                    (:shape-name
                                     "ContainerServiceRegistryLogin"))

(smithy/sdk/shapes:define-type container-service-scale
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum container-service-state
    common-lisp:nil
  (:pending "PENDING")
  (:ready "READY")
  (:running "RUNNING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:disabled "DISABLED")
  (:deploying "DEPLOYING"))

(smithy/sdk/shapes:define-structure container-service-state-detail
                                    common-lisp:nil
                                    ((code :target-type
                                      container-service-state-detail-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "ContainerServiceStateDetail"))

(smithy/sdk/shapes:define-enum container-service-state-detail-code
    common-lisp:nil
  (:creating-system-resources "CREATING_SYSTEM_RESOURCES")
  (:creating-network-infrastructure "CREATING_NETWORK_INFRASTRUCTURE")
  (:provisioning-certificate "PROVISIONING_CERTIFICATE")
  (:provisioning-service "PROVISIONING_SERVICE")
  (:creating-deployment "CREATING_DEPLOYMENT")
  (:evaluating-health-check "EVALUATING_HEALTH_CHECK")
  (:activating-deployment "ACTIVATING_DEPLOYMENT")
  (:certificate-limit-exceeded "CERTIFICATE_LIMIT_EXCEEDED")
  (:unknown-error "UNKNOWN_ERROR"))

(smithy/sdk/shapes:define-output container-services-list-result common-lisp:nil
                                 ((container-services :target-type
                                   container-service-list :member-name
                                   "containerServices"))
                                 (:shape-name "ContainerServicesListResult"))

(smithy/sdk/shapes:define-structure cookie-object common-lisp:nil
                                    ((option :target-type forward-values
                                      :member-name "option")
                                     (cookies-allow-list :target-type
                                      string-list :member-name
                                      "cookiesAllowList"))
                                    (:shape-name "CookieObject"))

(smithy/sdk/shapes:define-input copy-snapshot-request common-lisp:nil
                                ((source-snapshot-name :target-type
                                  resource-name :member-name
                                  "sourceSnapshotName")
                                 (source-resource-name :target-type string
                                  :member-name "sourceResourceName")
                                 (restore-date :target-type string :member-name
                                  "restoreDate")
                                 (use-latest-restorable-auto-snapshot
                                  :target-type boolean :member-name
                                  "useLatestRestorableAutoSnapshot")
                                 (target-snapshot-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "targetSnapshotName")
                                 (source-region :target-type region-name
                                  :required common-lisp:t :member-name
                                  "sourceRegion"))
                                (:shape-name "CopySnapshotRequest"))

(smithy/sdk/shapes:define-output copy-snapshot-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CopySnapshotResult"))

(smithy/sdk/shapes:define-structure cost-estimate common-lisp:nil
                                    ((usage-type :target-type non-empty-string
                                      :member-name "usageType")
                                     (results-by-time :target-type
                                      estimates-by-time :member-name
                                      "resultsByTime"))
                                    (:shape-name "CostEstimate"))

(smithy/sdk/shapes:define-list cost-estimates :member cost-estimate)

(smithy/sdk/shapes:define-input create-bucket-access-key-request
                                common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName"))
                                (:shape-name "CreateBucketAccessKeyRequest"))

(smithy/sdk/shapes:define-output create-bucket-access-key-result
                                 common-lisp:nil
                                 ((access-key :target-type access-key
                                   :member-name "accessKey")
                                  (operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateBucketAccessKeyResult"))

(smithy/sdk/shapes:define-input create-bucket-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (bundle-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "bundleId")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (enable-object-versioning :target-type boolean
                                  :member-name "enableObjectVersioning"))
                                (:shape-name "CreateBucketRequest"))

(smithy/sdk/shapes:define-output create-bucket-result common-lisp:nil
                                 ((bucket :target-type bucket :member-name
                                   "bucket")
                                  (operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateBucketResult"))

(smithy/sdk/shapes:define-input create-certificate-request common-lisp:nil
                                ((certificate-name :target-type
                                  certificate-name :required common-lisp:t
                                  :member-name "certificateName")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (subject-alternative-names :target-type
                                  subject-alternative-name-list :member-name
                                  "subjectAlternativeNames")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateCertificateRequest"))

(smithy/sdk/shapes:define-output create-certificate-result common-lisp:nil
                                 ((certificate :target-type certificate-summary
                                   :member-name "certificate")
                                  (operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateCertificateResult"))

(smithy/sdk/shapes:define-input create-cloud-formation-stack-request
                                common-lisp:nil
                                ((instances :target-type instance-entry-list
                                  :required common-lisp:t :member-name
                                  "instances"))
                                (:shape-name
                                 "CreateCloudFormationStackRequest"))

(smithy/sdk/shapes:define-output create-cloud-formation-stack-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "CreateCloudFormationStackResult"))

(smithy/sdk/shapes:define-input create-contact-method-request common-lisp:nil
                                ((protocol :target-type contact-protocol
                                  :required common-lisp:t :member-name
                                  "protocol")
                                 (contact-endpoint :target-type string-max256
                                  :required common-lisp:t :member-name
                                  "contactEndpoint"))
                                (:shape-name "CreateContactMethodRequest"))

(smithy/sdk/shapes:define-output create-contact-method-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateContactMethodResult"))

(smithy/sdk/shapes:define-input create-container-service-deployment-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t)
                                 (containers :target-type container-map
                                  :member-name "containers")
                                 (public-endpoint :target-type endpoint-request
                                  :member-name "publicEndpoint"))
                                (:shape-name
                                 "CreateContainerServiceDeploymentRequest"))

(smithy/sdk/shapes:define-output create-container-service-deployment-result
                                 common-lisp:nil
                                 ((container-service :target-type
                                   container-service :member-name
                                   "containerService"))
                                 (:shape-name
                                  "CreateContainerServiceDeploymentResult"))

(smithy/sdk/shapes:define-input create-container-service-registry-login-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "CreateContainerServiceRegistryLoginRequest"))

(smithy/sdk/shapes:define-output create-container-service-registry-login-result
                                 common-lisp:nil
                                 ((registry-login :target-type
                                   container-service-registry-login
                                   :member-name "registryLogin"))
                                 (:shape-name
                                  "CreateContainerServiceRegistryLoginResult"))

(smithy/sdk/shapes:define-input create-container-service-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName")
                                 (power :target-type
                                  container-service-power-name :required
                                  common-lisp:t :member-name "power")
                                 (scale :target-type container-service-scale
                                  :required common-lisp:t :member-name "scale")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (public-domain-names :target-type
                                  container-service-public-domains :member-name
                                  "publicDomainNames")
                                 (deployment :target-type
                                  container-service-deployment-request
                                  :member-name "deployment")
                                 (private-registry-access :target-type
                                  private-registry-access-request :member-name
                                  "privateRegistryAccess"))
                                (:shape-name "CreateContainerServiceRequest"))

(smithy/sdk/shapes:define-output create-container-service-result
                                 common-lisp:nil
                                 ((container-service :target-type
                                   container-service :member-name
                                   "containerService"))
                                 (:shape-name "CreateContainerServiceResult"))

(smithy/sdk/shapes:define-input create-disk-from-snapshot-request
                                common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskName")
                                 (disk-snapshot-name :target-type resource-name
                                  :member-name "diskSnapshotName")
                                 (availability-zone :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "availabilityZone")
                                 (size-in-gb :target-type integer :required
                                  common-lisp:t :member-name "sizeInGb")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (add-ons :target-type add-on-request-list
                                  :member-name "addOns")
                                 (source-disk-name :target-type string
                                  :member-name "sourceDiskName")
                                 (restore-date :target-type string :member-name
                                  "restoreDate")
                                 (use-latest-restorable-auto-snapshot
                                  :target-type boolean :member-name
                                  "useLatestRestorableAutoSnapshot"))
                                (:shape-name "CreateDiskFromSnapshotRequest"))

(smithy/sdk/shapes:define-output create-disk-from-snapshot-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateDiskFromSnapshotResult"))

(smithy/sdk/shapes:define-input create-disk-request common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskName")
                                 (availability-zone :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "availabilityZone")
                                 (size-in-gb :target-type integer :required
                                  common-lisp:t :member-name "sizeInGb")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (add-ons :target-type add-on-request-list
                                  :member-name "addOns"))
                                (:shape-name "CreateDiskRequest"))

(smithy/sdk/shapes:define-output create-disk-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateDiskResult"))

(smithy/sdk/shapes:define-input create-disk-snapshot-request common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :member-name "diskName")
                                 (disk-snapshot-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskSnapshotName")
                                 (instance-name :target-type resource-name
                                  :member-name "instanceName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateDiskSnapshotRequest"))

(smithy/sdk/shapes:define-output create-disk-snapshot-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateDiskSnapshotResult"))

(smithy/sdk/shapes:define-input create-distribution-request common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "distributionName")
                                 (origin :target-type input-origin :required
                                  common-lisp:t :member-name "origin")
                                 (default-cache-behavior :target-type
                                  cache-behavior :required common-lisp:t
                                  :member-name "defaultCacheBehavior")
                                 (cache-behavior-settings :target-type
                                  cache-settings :member-name
                                  "cacheBehaviorSettings")
                                 (cache-behaviors :target-type
                                  cache-behavior-list :member-name
                                  "cacheBehaviors")
                                 (bundle-id :target-type string :required
                                  common-lisp:t :member-name "bundleId")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "ipAddressType")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (certificate-name :target-type resource-name
                                  :member-name "certificateName")
                                 (viewer-minimum-tls-protocol-version
                                  :target-type
                                  viewer-minimum-tls-protocol-version-enum
                                  :member-name
                                  "viewerMinimumTlsProtocolVersion"))
                                (:shape-name "CreateDistributionRequest"))

(smithy/sdk/shapes:define-output create-distribution-result common-lisp:nil
                                 ((distribution :target-type
                                   lightsail-distribution :member-name
                                   "distribution")
                                  (operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "CreateDistributionResult"))

(smithy/sdk/shapes:define-input create-domain-entry-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (domain-entry :target-type domain-entry
                                  :required common-lisp:t :member-name
                                  "domainEntry"))
                                (:shape-name "CreateDomainEntryRequest"))

(smithy/sdk/shapes:define-output create-domain-entry-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "CreateDomainEntryResult"))

(smithy/sdk/shapes:define-input create-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-output create-domain-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "CreateDomainResult"))

(smithy/sdk/shapes:define-input create-guisession-access-details-request
                                common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName"))
                                (:shape-name
                                 "CreateGUISessionAccessDetailsRequest"))

(smithy/sdk/shapes:define-output create-guisession-access-details-result
                                 common-lisp:nil
                                 ((resource-name :target-type resource-name
                                   :member-name "resourceName")
                                  (status :target-type status :member-name
                                   "status")
                                  (percentage-complete :target-type integer
                                   :member-name "percentageComplete")
                                  (failure-reason :target-type string
                                   :member-name "failureReason")
                                  (sessions :target-type sessions :member-name
                                   "sessions"))
                                 (:shape-name
                                  "CreateGUISessionAccessDetailsResult"))

(smithy/sdk/shapes:define-input create-instance-snapshot-request
                                common-lisp:nil
                                ((instance-snapshot-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "instanceSnapshotName")
                                 (instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateInstanceSnapshotRequest"))

(smithy/sdk/shapes:define-output create-instance-snapshot-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateInstanceSnapshotResult"))

(smithy/sdk/shapes:define-input create-instances-from-snapshot-request
                                common-lisp:nil
                                ((instance-names :target-type string-list
                                  :required common-lisp:t :member-name
                                  "instanceNames")
                                 (attached-disk-mapping :target-type
                                  attached-disk-map :member-name
                                  "attachedDiskMapping")
                                 (availability-zone :target-type string
                                  :required common-lisp:t :member-name
                                  "availabilityZone")
                                 (instance-snapshot-name :target-type
                                  resource-name :member-name
                                  "instanceSnapshotName")
                                 (bundle-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "bundleId")
                                 (user-data :target-type string :member-name
                                  "userData")
                                 (key-pair-name :target-type resource-name
                                  :member-name "keyPairName")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (add-ons :target-type add-on-request-list
                                  :member-name "addOns")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "ipAddressType")
                                 (source-instance-name :target-type string
                                  :member-name "sourceInstanceName")
                                 (restore-date :target-type string :member-name
                                  "restoreDate")
                                 (use-latest-restorable-auto-snapshot
                                  :target-type boolean :member-name
                                  "useLatestRestorableAutoSnapshot"))
                                (:shape-name
                                 "CreateInstancesFromSnapshotRequest"))

(smithy/sdk/shapes:define-output create-instances-from-snapshot-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "CreateInstancesFromSnapshotResult"))

(smithy/sdk/shapes:define-input create-instances-request common-lisp:nil
                                ((instance-names :target-type string-list
                                  :required common-lisp:t :member-name
                                  "instanceNames")
                                 (availability-zone :target-type string
                                  :required common-lisp:t :member-name
                                  "availabilityZone")
                                 (custom-image-name :target-type resource-name
                                  :member-name "customImageName")
                                 (blueprint-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "blueprintId")
                                 (bundle-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "bundleId")
                                 (user-data :target-type string :member-name
                                  "userData")
                                 (key-pair-name :target-type resource-name
                                  :member-name "keyPairName")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (add-ons :target-type add-on-request-list
                                  :member-name "addOns")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "ipAddressType"))
                                (:shape-name "CreateInstancesRequest"))

(smithy/sdk/shapes:define-output create-instances-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateInstancesResult"))

(smithy/sdk/shapes:define-input create-key-pair-request common-lisp:nil
                                ((key-pair-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "keyPairName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateKeyPairRequest"))

(smithy/sdk/shapes:define-output create-key-pair-result common-lisp:nil
                                 ((key-pair :target-type key-pair :member-name
                                   "keyPair")
                                  (public-key-base64 :target-type base64
                                   :member-name "publicKeyBase64")
                                  (private-key-base64 :target-type base64
                                   :member-name "privateKeyBase64")
                                  (operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "CreateKeyPairResult"))

(smithy/sdk/shapes:define-input create-load-balancer-request common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (instance-port :target-type port :required
                                  common-lisp:t :member-name "instancePort")
                                 (health-check-path :target-type string
                                  :member-name "healthCheckPath")
                                 (certificate-name :target-type resource-name
                                  :member-name "certificateName")
                                 (certificate-domain-name :target-type
                                  domain-name :member-name
                                  "certificateDomainName")
                                 (certificate-alternative-names :target-type
                                  domain-name-list :member-name
                                  "certificateAlternativeNames")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "ipAddressType")
                                 (tls-policy-name :target-type string
                                  :member-name "tlsPolicyName"))
                                (:shape-name "CreateLoadBalancerRequest"))

(smithy/sdk/shapes:define-output create-load-balancer-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateLoadBalancerResult"))

(smithy/sdk/shapes:define-input create-load-balancer-tls-certificate-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (certificate-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "certificateName")
                                 (certificate-domain-name :target-type
                                  domain-name :required common-lisp:t
                                  :member-name "certificateDomainName")
                                 (certificate-alternative-names :target-type
                                  domain-name-list :member-name
                                  "certificateAlternativeNames")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateLoadBalancerTlsCertificateRequest"))

(smithy/sdk/shapes:define-output create-load-balancer-tls-certificate-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "CreateLoadBalancerTlsCertificateResult"))

(smithy/sdk/shapes:define-input
 create-relational-database-from-snapshot-request common-lisp:nil
 ((relational-database-name :target-type resource-name :required common-lisp:t
   :member-name "relationalDatabaseName")
  (availability-zone :target-type string :member-name "availabilityZone")
  (publicly-accessible :target-type boolean :member-name "publiclyAccessible")
  (relational-database-snapshot-name :target-type resource-name :member-name
   "relationalDatabaseSnapshotName")
  (relational-database-bundle-id :target-type string :member-name
   "relationalDatabaseBundleId")
  (source-relational-database-name :target-type resource-name :member-name
   "sourceRelationalDatabaseName")
  (restore-time :target-type iso-date :member-name "restoreTime")
  (use-latest-restorable-time :target-type boolean :member-name
   "useLatestRestorableTime")
  (tags :target-type tag-list :member-name "tags"))
 (:shape-name "CreateRelationalDatabaseFromSnapshotRequest"))

(smithy/sdk/shapes:define-output
 create-relational-database-from-snapshot-result common-lisp:nil
 ((operations :target-type operation-list :member-name "operations"))
 (:shape-name "CreateRelationalDatabaseFromSnapshotResult"))

(smithy/sdk/shapes:define-input create-relational-database-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (availability-zone :target-type string
                                  :member-name "availabilityZone")
                                 (relational-database-blueprint-id :target-type
                                  string :required common-lisp:t :member-name
                                  "relationalDatabaseBlueprintId")
                                 (relational-database-bundle-id :target-type
                                  string :required common-lisp:t :member-name
                                  "relationalDatabaseBundleId")
                                 (master-database-name :target-type string
                                  :required common-lisp:t :member-name
                                  "masterDatabaseName")
                                 (master-username :target-type string :required
                                  common-lisp:t :member-name "masterUsername")
                                 (master-user-password :target-type
                                  sensitive-string :member-name
                                  "masterUserPassword")
                                 (preferred-backup-window :target-type string
                                  :member-name "preferredBackupWindow")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "preferredMaintenanceWindow")
                                 (publicly-accessible :target-type boolean
                                  :member-name "publiclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output create-relational-database-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "CreateRelationalDatabaseResult"))

(smithy/sdk/shapes:define-input create-relational-database-snapshot-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (relational-database-snapshot-name
                                  :target-type resource-name :required
                                  common-lisp:t :member-name
                                  "relationalDatabaseSnapshotName")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateRelationalDatabaseSnapshotRequest"))

(smithy/sdk/shapes:define-output create-relational-database-snapshot-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "CreateRelationalDatabaseSnapshotResult"))

(smithy/sdk/shapes:define-enum currency
    common-lisp:nil
  (:usd "USD"))

(smithy/sdk/shapes:define-input delete-alarm-request common-lisp:nil
                                ((alarm-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "alarmName"))
                                (:shape-name "DeleteAlarmRequest"))

(smithy/sdk/shapes:define-output delete-alarm-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteAlarmResult"))

(smithy/sdk/shapes:define-input delete-auto-snapshot-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (date :target-type auto-snapshot-date
                                  :required common-lisp:t :member-name "date"))
                                (:shape-name "DeleteAutoSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-auto-snapshot-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteAutoSnapshotResult"))

(smithy/sdk/shapes:define-input delete-bucket-access-key-request
                                common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (access-key-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "accessKeyId"))
                                (:shape-name "DeleteBucketAccessKeyRequest"))

(smithy/sdk/shapes:define-output delete-bucket-access-key-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteBucketAccessKeyResult"))

(smithy/sdk/shapes:define-input delete-bucket-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (force-delete :target-type boolean
                                  :member-name "forceDelete"))
                                (:shape-name "DeleteBucketRequest"))

(smithy/sdk/shapes:define-output delete-bucket-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteBucketResult"))

(smithy/sdk/shapes:define-input delete-certificate-request common-lisp:nil
                                ((certificate-name :target-type
                                  certificate-name :required common-lisp:t
                                  :member-name "certificateName"))
                                (:shape-name "DeleteCertificateRequest"))

(smithy/sdk/shapes:define-output delete-certificate-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteCertificateResult"))

(smithy/sdk/shapes:define-input delete-contact-method-request common-lisp:nil
                                ((protocol :target-type contact-protocol
                                  :required common-lisp:t :member-name
                                  "protocol"))
                                (:shape-name "DeleteContactMethodRequest"))

(smithy/sdk/shapes:define-output delete-contact-method-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteContactMethodResult"))

(smithy/sdk/shapes:define-input delete-container-image-request common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t)
                                 (image :target-type string :required
                                  common-lisp:t :member-name "image"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteContainerImageRequest"))

(smithy/sdk/shapes:define-output delete-container-image-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContainerImageResult"))

(smithy/sdk/shapes:define-input delete-container-service-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteContainerServiceRequest"))

(smithy/sdk/shapes:define-output delete-container-service-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteContainerServiceResult"))

(smithy/sdk/shapes:define-input delete-disk-request common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskName")
                                 (force-delete-add-ons :target-type boolean
                                  :member-name "forceDeleteAddOns"))
                                (:shape-name "DeleteDiskRequest"))

(smithy/sdk/shapes:define-output delete-disk-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteDiskResult"))

(smithy/sdk/shapes:define-input delete-disk-snapshot-request common-lisp:nil
                                ((disk-snapshot-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskSnapshotName"))
                                (:shape-name "DeleteDiskSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-disk-snapshot-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteDiskSnapshotResult"))

(smithy/sdk/shapes:define-input delete-distribution-request common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :member-name "distributionName"))
                                (:shape-name "DeleteDistributionRequest"))

(smithy/sdk/shapes:define-output delete-distribution-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "DeleteDistributionResult"))

(smithy/sdk/shapes:define-input delete-domain-entry-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (domain-entry :target-type domain-entry
                                  :required common-lisp:t :member-name
                                  "domainEntry"))
                                (:shape-name "DeleteDomainEntryRequest"))

(smithy/sdk/shapes:define-output delete-domain-entry-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "DeleteDomainEntryResult"))

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName"))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-output delete-domain-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "DeleteDomainResult"))

(smithy/sdk/shapes:define-input delete-instance-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (force-delete-add-ons :target-type boolean
                                  :member-name "forceDeleteAddOns"))
                                (:shape-name "DeleteInstanceRequest"))

(smithy/sdk/shapes:define-output delete-instance-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteInstanceResult"))

(smithy/sdk/shapes:define-input delete-instance-snapshot-request
                                common-lisp:nil
                                ((instance-snapshot-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "instanceSnapshotName"))
                                (:shape-name "DeleteInstanceSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-instance-snapshot-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteInstanceSnapshotResult"))

(smithy/sdk/shapes:define-input delete-key-pair-request common-lisp:nil
                                ((key-pair-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "keyPairName")
                                 (expected-fingerprint :target-type string
                                  :member-name "expectedFingerprint"))
                                (:shape-name "DeleteKeyPairRequest"))

(smithy/sdk/shapes:define-output delete-key-pair-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "DeleteKeyPairResult"))

(smithy/sdk/shapes:define-input delete-known-host-keys-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "DeleteKnownHostKeysRequest"))

(smithy/sdk/shapes:define-output delete-known-host-keys-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteKnownHostKeysResult"))

(smithy/sdk/shapes:define-input delete-load-balancer-request common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName"))
                                (:shape-name "DeleteLoadBalancerRequest"))

(smithy/sdk/shapes:define-output delete-load-balancer-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteLoadBalancerResult"))

(smithy/sdk/shapes:define-input delete-load-balancer-tls-certificate-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (certificate-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "certificateName")
                                 (force :target-type boolean :member-name
                                  "force"))
                                (:shape-name
                                 "DeleteLoadBalancerTlsCertificateRequest"))

(smithy/sdk/shapes:define-output delete-load-balancer-tls-certificate-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "DeleteLoadBalancerTlsCertificateResult"))

(smithy/sdk/shapes:define-input delete-relational-database-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (skip-final-snapshot :target-type boolean
                                  :member-name "skipFinalSnapshot")
                                 (final-relational-database-snapshot-name
                                  :target-type resource-name :member-name
                                  "finalRelationalDatabaseSnapshotName"))
                                (:shape-name "DeleteRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output delete-relational-database-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DeleteRelationalDatabaseResult"))

(smithy/sdk/shapes:define-input delete-relational-database-snapshot-request
                                common-lisp:nil
                                ((relational-database-snapshot-name
                                  :target-type resource-name :required
                                  common-lisp:t :member-name
                                  "relationalDatabaseSnapshotName"))
                                (:shape-name
                                 "DeleteRelationalDatabaseSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-relational-database-snapshot-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "DeleteRelationalDatabaseSnapshotResult"))

(smithy/sdk/shapes:define-structure destination-info common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (service :target-type non-empty-string
                                      :member-name "service"))
                                    (:shape-name "DestinationInfo"))

(smithy/sdk/shapes:define-input detach-certificate-from-distribution-request
                                common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "distributionName"))
                                (:shape-name
                                 "DetachCertificateFromDistributionRequest"))

(smithy/sdk/shapes:define-output detach-certificate-from-distribution-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name
                                  "DetachCertificateFromDistributionResult"))

(smithy/sdk/shapes:define-input detach-disk-request common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskName"))
                                (:shape-name "DetachDiskRequest"))

(smithy/sdk/shapes:define-output detach-disk-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DetachDiskResult"))

(smithy/sdk/shapes:define-input detach-instances-from-load-balancer-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (instance-names :target-type
                                  resource-name-list :required common-lisp:t
                                  :member-name "instanceNames"))
                                (:shape-name
                                 "DetachInstancesFromLoadBalancerRequest"))

(smithy/sdk/shapes:define-output detach-instances-from-load-balancer-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "DetachInstancesFromLoadBalancerResult"))

(smithy/sdk/shapes:define-input detach-static-ip-request common-lisp:nil
                                ((static-ip-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "staticIpName"))
                                (:shape-name "DetachStaticIpRequest"))

(smithy/sdk/shapes:define-output detach-static-ip-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DetachStaticIpResult"))

(smithy/sdk/shapes:define-input disable-add-on-request common-lisp:nil
                                ((add-on-type :target-type add-on-type
                                  :required common-lisp:t :member-name
                                  "addOnType")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName"))
                                (:shape-name "DisableAddOnRequest"))

(smithy/sdk/shapes:define-output disable-add-on-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "DisableAddOnResult"))

(smithy/sdk/shapes:define-structure disk common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (add-ons :target-type add-on-list
                                      :member-name "addOns")
                                     (size-in-gb :target-type integer
                                      :member-name "sizeInGb")
                                     (is-system-disk :target-type boolean
                                      :member-name "isSystemDisk")
                                     (iops :target-type integer :member-name
                                      "iops")
                                     (path :target-type string :member-name
                                      "path")
                                     (state :target-type disk-state
                                      :member-name "state")
                                     (attached-to :target-type resource-name
                                      :member-name "attachedTo")
                                     (is-attached :target-type boolean
                                      :member-name "isAttached")
                                     (attachment-state :target-type string
                                      :member-name "attachmentState")
                                     (gb-in-use :target-type integer
                                      :member-name "gbInUse")
                                     (auto-mount-status :target-type
                                      auto-mount-status :member-name
                                      "autoMountStatus"))
                                    (:shape-name "Disk"))

(smithy/sdk/shapes:define-structure disk-info common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (path :target-type non-empty-string
                                      :member-name "path")
                                     (size-in-gb :target-type integer
                                      :member-name "sizeInGb")
                                     (is-system-disk :target-type boolean
                                      :member-name "isSystemDisk"))
                                    (:shape-name "DiskInfo"))

(smithy/sdk/shapes:define-list disk-info-list :member disk-info)

(smithy/sdk/shapes:define-list disk-list :member disk)

(smithy/sdk/shapes:define-structure disk-map common-lisp:nil
                                    ((original-disk-path :target-type
                                      non-empty-string :member-name
                                      "originalDiskPath")
                                     (new-disk-name :target-type resource-name
                                      :member-name "newDiskName"))
                                    (:shape-name "DiskMap"))

(smithy/sdk/shapes:define-list disk-map-list :member disk-map)

(smithy/sdk/shapes:define-structure disk-snapshot common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (size-in-gb :target-type integer
                                      :member-name "sizeInGb")
                                     (state :target-type disk-snapshot-state
                                      :member-name "state")
                                     (progress :target-type string :member-name
                                      "progress")
                                     (from-disk-name :target-type resource-name
                                      :member-name "fromDiskName")
                                     (from-disk-arn :target-type
                                      non-empty-string :member-name
                                      "fromDiskArn")
                                     (from-instance-name :target-type
                                      resource-name :member-name
                                      "fromInstanceName")
                                     (from-instance-arn :target-type
                                      non-empty-string :member-name
                                      "fromInstanceArn")
                                     (is-from-auto-snapshot :target-type
                                      boolean :member-name
                                      "isFromAutoSnapshot"))
                                    (:shape-name "DiskSnapshot"))

(smithy/sdk/shapes:define-structure disk-snapshot-info common-lisp:nil
                                    ((size-in-gb :target-type integer
                                      :member-name "sizeInGb"))
                                    (:shape-name "DiskSnapshotInfo"))

(smithy/sdk/shapes:define-list disk-snapshot-list :member disk-snapshot)

(smithy/sdk/shapes:define-enum disk-snapshot-state
    common-lisp:nil
  (:pending "pending")
  (:completed "completed")
  (:error "error")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-enum disk-state
    common-lisp:nil
  (:pending "pending")
  (:error "error")
  (:available "available")
  (:in-use "in-use")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-structure distribution-bundle common-lisp:nil
                                    ((bundle-id :target-type string
                                      :member-name "bundleId")
                                     (name :target-type string :member-name
                                      "name")
                                     (price :target-type float :member-name
                                      "price")
                                     (transfer-per-month-in-gb :target-type
                                      integer :member-name
                                      "transferPerMonthInGb")
                                     (is-active :target-type boolean
                                      :member-name "isActive"))
                                    (:shape-name "DistributionBundle"))

(smithy/sdk/shapes:define-list distribution-bundle-list :member
                               distribution-bundle)

(smithy/sdk/shapes:define-list distribution-list :member lightsail-distribution)

(smithy/sdk/shapes:define-enum distribution-metric-name
    common-lisp:nil
  (:requests "Requests")
  (:bytes-downloaded "BytesDownloaded")
  (:bytes-uploaded "BytesUploaded")
  (:total-error-rate "TotalErrorRate")
  (:http4xx-error-rate "Http4xxErrorRate")
  (:http5xx-error-rate "Http5xxErrorRate"))

(smithy/sdk/shapes:define-structure dns-record-creation-state common-lisp:nil
                                    ((code :target-type
                                      dns-record-creation-state-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "DnsRecordCreationState"))

(smithy/sdk/shapes:define-enum dns-record-creation-state-code
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:started "STARTED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure domain common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (domain-entries :target-type
                                      domain-entry-list :member-name
                                      "domainEntries")
                                     (registered-domain-delegation-info
                                      :target-type
                                      registered-domain-delegation-info
                                      :member-name
                                      "registeredDomainDelegationInfo"))
                                    (:shape-name "Domain"))

(smithy/sdk/shapes:define-structure domain-entry common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (name :target-type domain-name
                                      :member-name "name")
                                     (target :target-type string :member-name
                                      "target")
                                     (is-alias :target-type boolean
                                      :member-name "isAlias")
                                     (type :target-type domain-entry-type
                                      :member-name "type")
                                     (options :target-type domain-entry-options
                                      :member-name "options"))
                                    (:shape-name "DomainEntry"))

(smithy/sdk/shapes:define-list domain-entry-list :member domain-entry)

(smithy/sdk/shapes:define-map domain-entry-options :key
                              domain-entry-options-keys :value string)

(smithy/sdk/shapes:define-type domain-entry-options-keys
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-entry-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-list :member domain)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-name-list :member domain-name)

(smithy/sdk/shapes:define-structure domain-validation-record common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (resource-record :target-type
                                      resource-record :member-name
                                      "resourceRecord")
                                     (dns-record-creation-state :target-type
                                      dns-record-creation-state :member-name
                                      "dnsRecordCreationState")
                                     (validation-status :target-type
                                      certificate-domain-validation-status
                                      :member-name "validationStatus"))
                                    (:shape-name "DomainValidationRecord"))

(smithy/sdk/shapes:define-list domain-validation-record-list :member
                               domain-validation-record)

(smithy/sdk/shapes:define-input download-default-key-pair-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DownloadDefaultKeyPairRequest"))

(smithy/sdk/shapes:define-output download-default-key-pair-result
                                 common-lisp:nil
                                 ((public-key-base64 :target-type base64
                                   :member-name "publicKeyBase64")
                                  (private-key-base64 :target-type base64
                                   :member-name "privateKeyBase64")
                                  (created-at :target-type iso-date
                                   :member-name "createdAt"))
                                 (:shape-name "DownloadDefaultKeyPairResult"))

(smithy/sdk/shapes:define-type eligible-to-renew smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-add-on-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (add-on-request :target-type add-on-request
                                  :required common-lisp:t :member-name
                                  "addOnRequest"))
                                (:shape-name "EnableAddOnRequest"))

(smithy/sdk/shapes:define-output enable-add-on-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "EnableAddOnResult"))

(smithy/sdk/shapes:define-structure endpoint-request common-lisp:nil
                                    ((container-name :target-type string
                                      :required common-lisp:t :member-name
                                      "containerName")
                                     (container-port :target-type integer
                                      :required common-lisp:t :member-name
                                      "containerPort")
                                     (health-check :target-type
                                      container-service-health-check-config
                                      :member-name "healthCheck"))
                                    (:shape-name "EndpointRequest"))

(smithy/sdk/shapes:define-map environment :key string :value string)

(smithy/sdk/shapes:define-structure estimate-by-time common-lisp:nil
                                    ((usage-cost :target-type double
                                      :member-name "usageCost")
                                     (pricing-unit :target-type pricing-unit
                                      :member-name "pricingUnit")
                                     (unit :target-type double :member-name
                                      "unit")
                                     (currency :target-type currency
                                      :member-name "currency")
                                     (time-period :target-type time-period
                                      :member-name "timePeriod"))
                                    (:shape-name "EstimateByTime"))

(smithy/sdk/shapes:define-list estimates-by-time :member estimate-by-time)

(smithy/sdk/shapes:define-structure export-snapshot-record common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (state :target-type record-state
                                      :member-name "state")
                                     (source-info :target-type
                                      export-snapshot-record-source-info
                                      :member-name "sourceInfo")
                                     (destination-info :target-type
                                      destination-info :member-name
                                      "destinationInfo"))
                                    (:shape-name "ExportSnapshotRecord"))

(smithy/sdk/shapes:define-list export-snapshot-record-list :member
                               export-snapshot-record)

(smithy/sdk/shapes:define-structure export-snapshot-record-source-info
                                    common-lisp:nil
                                    ((resource-type :target-type
                                      export-snapshot-record-source-type
                                      :member-name "resourceType")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (name :target-type non-empty-string
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (from-resource-name :target-type
                                      non-empty-string :member-name
                                      "fromResourceName")
                                     (from-resource-arn :target-type
                                      non-empty-string :member-name
                                      "fromResourceArn")
                                     (instance-snapshot-info :target-type
                                      instance-snapshot-info :member-name
                                      "instanceSnapshotInfo")
                                     (disk-snapshot-info :target-type
                                      disk-snapshot-info :member-name
                                      "diskSnapshotInfo"))
                                    (:shape-name
                                     "ExportSnapshotRecordSourceInfo"))

(smithy/sdk/shapes:define-enum export-snapshot-record-source-type
    common-lisp:nil
  (:instance-snapshot "InstanceSnapshot")
  (:disk-snapshot "DiskSnapshot"))

(smithy/sdk/shapes:define-input export-snapshot-request common-lisp:nil
                                ((source-snapshot-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "sourceSnapshotName"))
                                (:shape-name "ExportSnapshotRequest"))

(smithy/sdk/shapes:define-output export-snapshot-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "ExportSnapshotResult"))

(smithy/sdk/shapes:define-enum forward-values
    common-lisp:nil
  (:none "none")
  (:allow-list "allow-list")
  (:all "all"))

(smithy/sdk/shapes:define-input get-active-names-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetActiveNamesRequest"))

(smithy/sdk/shapes:define-output get-active-names-result common-lisp:nil
                                 ((active-names :target-type string-list
                                   :member-name "activeNames")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetActiveNamesResult"))

(smithy/sdk/shapes:define-input get-alarms-request common-lisp:nil
                                ((alarm-name :target-type resource-name
                                  :member-name "alarmName")
                                 (page-token :target-type string :member-name
                                  "pageToken")
                                 (monitored-resource-name :target-type
                                  resource-name :member-name
                                  "monitoredResourceName"))
                                (:shape-name "GetAlarmsRequest"))

(smithy/sdk/shapes:define-output get-alarms-result common-lisp:nil
                                 ((alarms :target-type alarms-list :member-name
                                   "alarms")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetAlarmsResult"))

(smithy/sdk/shapes:define-input get-auto-snapshots-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName"))
                                (:shape-name "GetAutoSnapshotsRequest"))

(smithy/sdk/shapes:define-output get-auto-snapshots-result common-lisp:nil
                                 ((resource-name :target-type resource-name
                                   :member-name "resourceName")
                                  (resource-type :target-type resource-type
                                   :member-name "resourceType")
                                  (auto-snapshots :target-type
                                   auto-snapshot-details-list :member-name
                                   "autoSnapshots"))
                                 (:shape-name "GetAutoSnapshotsResult"))

(smithy/sdk/shapes:define-input get-blueprints-request common-lisp:nil
                                ((include-inactive :target-type boolean
                                  :member-name "includeInactive")
                                 (page-token :target-type string :member-name
                                  "pageToken")
                                 (app-category :target-type app-category
                                  :member-name "appCategory"))
                                (:shape-name "GetBlueprintsRequest"))

(smithy/sdk/shapes:define-output get-blueprints-result common-lisp:nil
                                 ((blueprints :target-type blueprint-list
                                   :member-name "blueprints")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetBlueprintsResult"))

(smithy/sdk/shapes:define-input get-bucket-access-keys-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName"))
                                (:shape-name "GetBucketAccessKeysRequest"))

(smithy/sdk/shapes:define-output get-bucket-access-keys-result common-lisp:nil
                                 ((access-keys :target-type access-key-list
                                   :member-name "accessKeys"))
                                 (:shape-name "GetBucketAccessKeysResult"))

(smithy/sdk/shapes:define-input get-bucket-bundles-request common-lisp:nil
                                ((include-inactive :target-type boolean
                                  :member-name "includeInactive"))
                                (:shape-name "GetBucketBundlesRequest"))

(smithy/sdk/shapes:define-output get-bucket-bundles-result common-lisp:nil
                                 ((bundles :target-type bucket-bundle-list
                                   :member-name "bundles"))
                                 (:shape-name "GetBucketBundlesResult"))

(smithy/sdk/shapes:define-input get-bucket-metric-data-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (metric-name :target-type bucket-metric-name
                                  :required common-lisp:t :member-name
                                  "metricName")
                                 (start-time :target-type iso-date :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type iso-date :required
                                  common-lisp:t :member-name "endTime")
                                 (period :target-type metric-period :required
                                  common-lisp:t :member-name "period")
                                 (statistics :target-type metric-statistic-list
                                  :required common-lisp:t :member-name
                                  "statistics")
                                 (unit :target-type metric-unit :required
                                  common-lisp:t :member-name "unit"))
                                (:shape-name "GetBucketMetricDataRequest"))

(smithy/sdk/shapes:define-output get-bucket-metric-data-result common-lisp:nil
                                 ((metric-name :target-type bucket-metric-name
                                   :member-name "metricName")
                                  (metric-data :target-type
                                   metric-datapoint-list :member-name
                                   "metricData"))
                                 (:shape-name "GetBucketMetricDataResult"))

(smithy/sdk/shapes:define-input get-buckets-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :member-name "bucketName")
                                 (page-token :target-type string :member-name
                                  "pageToken")
                                 (include-connected-resources :target-type
                                  boolean :member-name
                                  "includeConnectedResources"))
                                (:shape-name "GetBucketsRequest"))

(smithy/sdk/shapes:define-output get-buckets-result common-lisp:nil
                                 ((buckets :target-type bucket-list
                                   :member-name "buckets")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken")
                                  (account-level-bpa-sync :target-type
                                   account-level-bpa-sync :member-name
                                   "accountLevelBpaSync"))
                                 (:shape-name "GetBucketsResult"))

(smithy/sdk/shapes:define-input get-bundles-request common-lisp:nil
                                ((include-inactive :target-type boolean
                                  :member-name "includeInactive")
                                 (page-token :target-type string :member-name
                                  "pageToken")
                                 (app-category :target-type app-category
                                  :member-name "appCategory"))
                                (:shape-name "GetBundlesRequest"))

(smithy/sdk/shapes:define-output get-bundles-result common-lisp:nil
                                 ((bundles :target-type bundle-list
                                   :member-name "bundles")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetBundlesResult"))

(smithy/sdk/shapes:define-input get-certificates-request common-lisp:nil
                                ((certificate-statuses :target-type
                                  certificate-status-list :member-name
                                  "certificateStatuses")
                                 (include-certificate-details :target-type
                                  include-certificate-details :member-name
                                  "includeCertificateDetails")
                                 (certificate-name :target-type
                                  certificate-name :member-name
                                  "certificateName")
                                 (page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetCertificatesRequest"))

(smithy/sdk/shapes:define-output get-certificates-result common-lisp:nil
                                 ((certificates :target-type
                                   certificate-summary-list :member-name
                                   "certificates")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetCertificatesResult"))

(smithy/sdk/shapes:define-input get-cloud-formation-stack-records-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetCloudFormationStackRecordsRequest"))

(smithy/sdk/shapes:define-output get-cloud-formation-stack-records-result
                                 common-lisp:nil
                                 ((cloud-formation-stack-records :target-type
                                   cloud-formation-stack-record-list
                                   :member-name "cloudFormationStackRecords")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetCloudFormationStackRecordsResult"))

(smithy/sdk/shapes:define-input get-contact-methods-request common-lisp:nil
                                ((protocols :target-type contact-protocols-list
                                  :member-name "protocols"))
                                (:shape-name "GetContactMethodsRequest"))

(smithy/sdk/shapes:define-output get-contact-methods-result common-lisp:nil
                                 ((contact-methods :target-type
                                   contact-methods-list :member-name
                                   "contactMethods"))
                                 (:shape-name "GetContactMethodsResult"))

(smithy/sdk/shapes:define-input get-container-apimetadata-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetContainerAPIMetadataRequest"))

(smithy/sdk/shapes:define-output get-container-apimetadata-result
                                 common-lisp:nil
                                 ((metadata :target-type
                                   container-service-metadata-entry-list
                                   :member-name "metadata"))
                                 (:shape-name "GetContainerAPIMetadataResult"))

(smithy/sdk/shapes:define-input get-container-images-request common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetContainerImagesRequest"))

(smithy/sdk/shapes:define-output get-container-images-result common-lisp:nil
                                 ((container-images :target-type
                                   container-image-list :member-name
                                   "containerImages"))
                                 (:shape-name "GetContainerImagesResult"))

(smithy/sdk/shapes:define-input get-container-log-request common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t)
                                 (container-name :target-type string :required
                                  common-lisp:t :member-name "containerName"
                                  :http-label common-lisp:t)
                                 (start-time :target-type iso-date :member-name
                                  "startTime" :http-query "startTime")
                                 (end-time :target-type iso-date :member-name
                                  "endTime" :http-query "endTime")
                                 (filter-pattern :target-type string
                                  :member-name "filterPattern" :http-query
                                  "filterPattern")
                                 (page-token :target-type string :member-name
                                  "pageToken" :http-query "pageToken"))
                                (:shape-name "GetContainerLogRequest"))

(smithy/sdk/shapes:define-output get-container-log-result common-lisp:nil
                                 ((log-events :target-type
                                   container-service-log-event-list
                                   :member-name "logEvents")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetContainerLogResult"))

(smithy/sdk/shapes:define-input get-container-service-deployments-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetContainerServiceDeploymentsRequest"))

(smithy/sdk/shapes:define-output get-container-service-deployments-result
                                 common-lisp:nil
                                 ((deployments :target-type
                                   container-service-deployment-list
                                   :member-name "deployments"))
                                 (:shape-name
                                  "GetContainerServiceDeploymentsResult"))

(smithy/sdk/shapes:define-input get-container-service-metric-data-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t)
                                 (metric-name :target-type
                                  container-service-metric-name :required
                                  common-lisp:t :member-name "metricName"
                                  :http-query "metricName")
                                 (start-time :target-type iso-date :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type iso-date :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (period :target-type metric-period :required
                                  common-lisp:t :member-name "period"
                                  :http-query "period")
                                 (statistics :target-type metric-statistic-list
                                  :required common-lisp:t :member-name
                                  "statistics" :http-query "statistics"))
                                (:shape-name
                                 "GetContainerServiceMetricDataRequest"))

(smithy/sdk/shapes:define-output get-container-service-metric-data-result
                                 common-lisp:nil
                                 ((metric-name :target-type
                                   container-service-metric-name :member-name
                                   "metricName")
                                  (metric-data :target-type
                                   metric-datapoint-list :member-name
                                   "metricData"))
                                 (:shape-name
                                  "GetContainerServiceMetricDataResult"))

(smithy/sdk/shapes:define-input get-container-service-powers-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetContainerServicePowersRequest"))

(smithy/sdk/shapes:define-output get-container-service-powers-result
                                 common-lisp:nil
                                 ((powers :target-type
                                   container-service-power-list :member-name
                                   "powers"))
                                 (:shape-name
                                  "GetContainerServicePowersResult"))

(smithy/sdk/shapes:define-input get-container-services-request common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :member-name
                                  "serviceName" :http-query "serviceName"))
                                (:shape-name "GetContainerServicesRequest"))

(smithy/sdk/shapes:define-input get-cost-estimate-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (start-time :target-type iso-date :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type iso-date :required
                                  common-lisp:t :member-name "endTime"))
                                (:shape-name "GetCostEstimateRequest"))

(smithy/sdk/shapes:define-output get-cost-estimate-result common-lisp:nil
                                 ((resources-budget-estimate :target-type
                                   resources-budget-estimate :member-name
                                   "resourcesBudgetEstimate"))
                                 (:shape-name "GetCostEstimateResult"))

(smithy/sdk/shapes:define-input get-disk-request common-lisp:nil
                                ((disk-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskName"))
                                (:shape-name "GetDiskRequest"))

(smithy/sdk/shapes:define-output get-disk-result common-lisp:nil
                                 ((disk :target-type disk :member-name "disk"))
                                 (:shape-name "GetDiskResult"))

(smithy/sdk/shapes:define-input get-disk-snapshot-request common-lisp:nil
                                ((disk-snapshot-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "diskSnapshotName"))
                                (:shape-name "GetDiskSnapshotRequest"))

(smithy/sdk/shapes:define-output get-disk-snapshot-result common-lisp:nil
                                 ((disk-snapshot :target-type disk-snapshot
                                   :member-name "diskSnapshot"))
                                 (:shape-name "GetDiskSnapshotResult"))

(smithy/sdk/shapes:define-input get-disk-snapshots-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetDiskSnapshotsRequest"))

(smithy/sdk/shapes:define-output get-disk-snapshots-result common-lisp:nil
                                 ((disk-snapshots :target-type
                                   disk-snapshot-list :member-name
                                   "diskSnapshots")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetDiskSnapshotsResult"))

(smithy/sdk/shapes:define-input get-disks-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetDisksRequest"))

(smithy/sdk/shapes:define-output get-disks-result common-lisp:nil
                                 ((disks :target-type disk-list :member-name
                                   "disks")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetDisksResult"))

(smithy/sdk/shapes:define-input get-distribution-bundles-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetDistributionBundlesRequest"))

(smithy/sdk/shapes:define-output get-distribution-bundles-result
                                 common-lisp:nil
                                 ((bundles :target-type
                                   distribution-bundle-list :member-name
                                   "bundles"))
                                 (:shape-name "GetDistributionBundlesResult"))

(smithy/sdk/shapes:define-input get-distribution-latest-cache-reset-request
                                common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :member-name "distributionName"))
                                (:shape-name
                                 "GetDistributionLatestCacheResetRequest"))

(smithy/sdk/shapes:define-output get-distribution-latest-cache-reset-result
                                 common-lisp:nil
                                 ((status :target-type string :member-name
                                   "status")
                                  (create-time :target-type iso-date
                                   :member-name "createTime"))
                                 (:shape-name
                                  "GetDistributionLatestCacheResetResult"))

(smithy/sdk/shapes:define-input get-distribution-metric-data-request
                                common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "distributionName")
                                 (metric-name :target-type
                                  distribution-metric-name :required
                                  common-lisp:t :member-name "metricName")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime")
                                 (period :target-type metric-period :required
                                  common-lisp:t :member-name "period")
                                 (unit :target-type metric-unit :required
                                  common-lisp:t :member-name "unit")
                                 (statistics :target-type metric-statistic-list
                                  :required common-lisp:t :member-name
                                  "statistics"))
                                (:shape-name
                                 "GetDistributionMetricDataRequest"))

(smithy/sdk/shapes:define-output get-distribution-metric-data-result
                                 common-lisp:nil
                                 ((metric-name :target-type
                                   distribution-metric-name :member-name
                                   "metricName")
                                  (metric-data :target-type
                                   metric-datapoint-list :member-name
                                   "metricData"))
                                 (:shape-name
                                  "GetDistributionMetricDataResult"))

(smithy/sdk/shapes:define-input get-distributions-request common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :member-name "distributionName")
                                 (page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetDistributionsRequest"))

(smithy/sdk/shapes:define-output get-distributions-result common-lisp:nil
                                 ((distributions :target-type distribution-list
                                   :member-name "distributions")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetDistributionsResult"))

(smithy/sdk/shapes:define-input get-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName"))
                                (:shape-name "GetDomainRequest"))

(smithy/sdk/shapes:define-output get-domain-result common-lisp:nil
                                 ((domain :target-type domain :member-name
                                   "domain"))
                                 (:shape-name "GetDomainResult"))

(smithy/sdk/shapes:define-input get-domains-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetDomainsRequest"))

(smithy/sdk/shapes:define-output get-domains-result common-lisp:nil
                                 ((domains :target-type domain-list
                                   :member-name "domains")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetDomainsResult"))

(smithy/sdk/shapes:define-input get-export-snapshot-records-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetExportSnapshotRecordsRequest"))

(smithy/sdk/shapes:define-output get-export-snapshot-records-result
                                 common-lisp:nil
                                 ((export-snapshot-records :target-type
                                   export-snapshot-record-list :member-name
                                   "exportSnapshotRecords")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetExportSnapshotRecordsResult"))

(smithy/sdk/shapes:define-input get-instance-access-details-request
                                common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (protocol :target-type
                                  instance-access-protocol :member-name
                                  "protocol"))
                                (:shape-name "GetInstanceAccessDetailsRequest"))

(smithy/sdk/shapes:define-output get-instance-access-details-result
                                 common-lisp:nil
                                 ((access-details :target-type
                                   instance-access-details :member-name
                                   "accessDetails"))
                                 (:shape-name "GetInstanceAccessDetailsResult"))

(smithy/sdk/shapes:define-input get-instance-metric-data-request
                                common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (metric-name :target-type instance-metric-name
                                  :required common-lisp:t :member-name
                                  "metricName")
                                 (period :target-type metric-period :required
                                  common-lisp:t :member-name "period")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime")
                                 (unit :target-type metric-unit :required
                                  common-lisp:t :member-name "unit")
                                 (statistics :target-type metric-statistic-list
                                  :required common-lisp:t :member-name
                                  "statistics"))
                                (:shape-name "GetInstanceMetricDataRequest"))

(smithy/sdk/shapes:define-output get-instance-metric-data-result
                                 common-lisp:nil
                                 ((metric-name :target-type
                                   instance-metric-name :member-name
                                   "metricName")
                                  (metric-data :target-type
                                   metric-datapoint-list :member-name
                                   "metricData"))
                                 (:shape-name "GetInstanceMetricDataResult"))

(smithy/sdk/shapes:define-input get-instance-port-states-request
                                common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "GetInstancePortStatesRequest"))

(smithy/sdk/shapes:define-output get-instance-port-states-result
                                 common-lisp:nil
                                 ((port-states :target-type
                                   instance-port-state-list :member-name
                                   "portStates"))
                                 (:shape-name "GetInstancePortStatesResult"))

(smithy/sdk/shapes:define-input get-instance-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "GetInstanceRequest"))

(smithy/sdk/shapes:define-output get-instance-result common-lisp:nil
                                 ((instance :target-type instance :member-name
                                   "instance"))
                                 (:shape-name "GetInstanceResult"))

(smithy/sdk/shapes:define-input get-instance-snapshot-request common-lisp:nil
                                ((instance-snapshot-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "instanceSnapshotName"))
                                (:shape-name "GetInstanceSnapshotRequest"))

(smithy/sdk/shapes:define-output get-instance-snapshot-result common-lisp:nil
                                 ((instance-snapshot :target-type
                                   instance-snapshot :member-name
                                   "instanceSnapshot"))
                                 (:shape-name "GetInstanceSnapshotResult"))

(smithy/sdk/shapes:define-input get-instance-snapshots-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetInstanceSnapshotsRequest"))

(smithy/sdk/shapes:define-output get-instance-snapshots-result common-lisp:nil
                                 ((instance-snapshots :target-type
                                   instance-snapshot-list :member-name
                                   "instanceSnapshots")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetInstanceSnapshotsResult"))

(smithy/sdk/shapes:define-input get-instance-state-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "GetInstanceStateRequest"))

(smithy/sdk/shapes:define-output get-instance-state-result common-lisp:nil
                                 ((state :target-type instance-state
                                   :member-name "state"))
                                 (:shape-name "GetInstanceStateResult"))

(smithy/sdk/shapes:define-input get-instances-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetInstancesRequest"))

(smithy/sdk/shapes:define-output get-instances-result common-lisp:nil
                                 ((instances :target-type instance-list
                                   :member-name "instances")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetInstancesResult"))

(smithy/sdk/shapes:define-input get-key-pair-request common-lisp:nil
                                ((key-pair-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "keyPairName"))
                                (:shape-name "GetKeyPairRequest"))

(smithy/sdk/shapes:define-output get-key-pair-result common-lisp:nil
                                 ((key-pair :target-type key-pair :member-name
                                   "keyPair"))
                                 (:shape-name "GetKeyPairResult"))

(smithy/sdk/shapes:define-input get-key-pairs-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken")
                                 (include-default-key-pair :target-type boolean
                                  :member-name "includeDefaultKeyPair"))
                                (:shape-name "GetKeyPairsRequest"))

(smithy/sdk/shapes:define-output get-key-pairs-result common-lisp:nil
                                 ((key-pairs :target-type key-pair-list
                                   :member-name "keyPairs")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetKeyPairsResult"))

(smithy/sdk/shapes:define-input get-load-balancer-metric-data-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (metric-name :target-type
                                  load-balancer-metric-name :required
                                  common-lisp:t :member-name "metricName")
                                 (period :target-type metric-period :required
                                  common-lisp:t :member-name "period")
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime")
                                 (unit :target-type metric-unit :required
                                  common-lisp:t :member-name "unit")
                                 (statistics :target-type metric-statistic-list
                                  :required common-lisp:t :member-name
                                  "statistics"))
                                (:shape-name
                                 "GetLoadBalancerMetricDataRequest"))

(smithy/sdk/shapes:define-output get-load-balancer-metric-data-result
                                 common-lisp:nil
                                 ((metric-name :target-type
                                   load-balancer-metric-name :member-name
                                   "metricName")
                                  (metric-data :target-type
                                   metric-datapoint-list :member-name
                                   "metricData"))
                                 (:shape-name
                                  "GetLoadBalancerMetricDataResult"))

(smithy/sdk/shapes:define-input get-load-balancer-request common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName"))
                                (:shape-name "GetLoadBalancerRequest"))

(smithy/sdk/shapes:define-output get-load-balancer-result common-lisp:nil
                                 ((load-balancer :target-type load-balancer
                                   :member-name "loadBalancer"))
                                 (:shape-name "GetLoadBalancerResult"))

(smithy/sdk/shapes:define-input get-load-balancer-tls-certificates-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName"))
                                (:shape-name
                                 "GetLoadBalancerTlsCertificatesRequest"))

(smithy/sdk/shapes:define-output get-load-balancer-tls-certificates-result
                                 common-lisp:nil
                                 ((tls-certificates :target-type
                                   load-balancer-tls-certificate-list
                                   :member-name "tlsCertificates"))
                                 (:shape-name
                                  "GetLoadBalancerTlsCertificatesResult"))

(smithy/sdk/shapes:define-input get-load-balancer-tls-policies-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetLoadBalancerTlsPoliciesRequest"))

(smithy/sdk/shapes:define-output get-load-balancer-tls-policies-result
                                 common-lisp:nil
                                 ((tls-policies :target-type
                                   load-balancer-tls-policy-list :member-name
                                   "tlsPolicies")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetLoadBalancerTlsPoliciesResult"))

(smithy/sdk/shapes:define-input get-load-balancers-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetLoadBalancersRequest"))

(smithy/sdk/shapes:define-output get-load-balancers-result common-lisp:nil
                                 ((load-balancers :target-type
                                   load-balancer-list :member-name
                                   "loadBalancers")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetLoadBalancersResult"))

(smithy/sdk/shapes:define-input get-operation-request common-lisp:nil
                                ((operation-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "operationId"))
                                (:shape-name "GetOperationRequest"))

(smithy/sdk/shapes:define-output get-operation-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "GetOperationResult"))

(smithy/sdk/shapes:define-input get-operations-for-resource-request
                                common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetOperationsForResourceRequest"))

(smithy/sdk/shapes:define-output get-operations-for-resource-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations")
                                  (next-page-count :target-type string
                                   :member-name "nextPageCount")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetOperationsForResourceResult"))

(smithy/sdk/shapes:define-input get-operations-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetOperationsRequest"))

(smithy/sdk/shapes:define-output get-operations-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetOperationsResult"))

(smithy/sdk/shapes:define-input get-regions-request common-lisp:nil
                                ((include-availability-zones :target-type
                                  boolean :member-name
                                  "includeAvailabilityZones")
                                 (include-relational-database-availability-zones
                                  :target-type boolean :member-name
                                  "includeRelationalDatabaseAvailabilityZones"))
                                (:shape-name "GetRegionsRequest"))

(smithy/sdk/shapes:define-output get-regions-result common-lisp:nil
                                 ((regions :target-type region-list
                                   :member-name "regions"))
                                 (:shape-name "GetRegionsResult"))

(smithy/sdk/shapes:define-input get-relational-database-blueprints-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetRelationalDatabaseBlueprintsRequest"))

(smithy/sdk/shapes:define-output get-relational-database-blueprints-result
                                 common-lisp:nil
                                 ((blueprints :target-type
                                   relational-database-blueprint-list
                                   :member-name "blueprints")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetRelationalDatabaseBlueprintsResult"))

(smithy/sdk/shapes:define-input get-relational-database-bundles-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken")
                                 (include-inactive :target-type boolean
                                  :member-name "includeInactive"))
                                (:shape-name
                                 "GetRelationalDatabaseBundlesRequest"))

(smithy/sdk/shapes:define-output get-relational-database-bundles-result
                                 common-lisp:nil
                                 ((bundles :target-type
                                   relational-database-bundle-list :member-name
                                   "bundles")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetRelationalDatabaseBundlesResult"))

(smithy/sdk/shapes:define-input get-relational-database-events-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (duration-in-minutes :target-type integer
                                  :member-name "durationInMinutes")
                                 (page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetRelationalDatabaseEventsRequest"))

(smithy/sdk/shapes:define-output get-relational-database-events-result
                                 common-lisp:nil
                                 ((relational-database-events :target-type
                                   relational-database-event-list :member-name
                                   "relationalDatabaseEvents")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetRelationalDatabaseEventsResult"))

(smithy/sdk/shapes:define-input get-relational-database-log-events-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (log-stream-name :target-type string :required
                                  common-lisp:t :member-name "logStreamName")
                                 (start-time :target-type iso-date :member-name
                                  "startTime")
                                 (end-time :target-type iso-date :member-name
                                  "endTime")
                                 (start-from-head :target-type boolean
                                  :member-name "startFromHead")
                                 (page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetRelationalDatabaseLogEventsRequest"))

(smithy/sdk/shapes:define-output get-relational-database-log-events-result
                                 common-lisp:nil
                                 ((resource-log-events :target-type
                                   log-event-list :member-name
                                   "resourceLogEvents")
                                  (next-backward-token :target-type string
                                   :member-name "nextBackwardToken")
                                  (next-forward-token :target-type string
                                   :member-name "nextForwardToken"))
                                 (:shape-name
                                  "GetRelationalDatabaseLogEventsResult"))

(smithy/sdk/shapes:define-input get-relational-database-log-streams-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName"))
                                (:shape-name
                                 "GetRelationalDatabaseLogStreamsRequest"))

(smithy/sdk/shapes:define-output get-relational-database-log-streams-result
                                 common-lisp:nil
                                 ((log-streams :target-type string-list
                                   :member-name "logStreams"))
                                 (:shape-name
                                  "GetRelationalDatabaseLogStreamsResult"))

(smithy/sdk/shapes:define-input
 get-relational-database-master-user-password-request common-lisp:nil
 ((relational-database-name :target-type resource-name :required common-lisp:t
   :member-name "relationalDatabaseName")
  (password-version :target-type relational-database-password-version
   :member-name "passwordVersion"))
 (:shape-name "GetRelationalDatabaseMasterUserPasswordRequest"))

(smithy/sdk/shapes:define-output
 get-relational-database-master-user-password-result common-lisp:nil
 ((master-user-password :target-type sensitive-string :member-name
   "masterUserPassword")
  (created-at :target-type iso-date :member-name "createdAt"))
 (:shape-name "GetRelationalDatabaseMasterUserPasswordResult"))

(smithy/sdk/shapes:define-input get-relational-database-metric-data-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (metric-name :target-type
                                  relational-database-metric-name :required
                                  common-lisp:t :member-name "metricName")
                                 (period :target-type metric-period :required
                                  common-lisp:t :member-name "period")
                                 (start-time :target-type iso-date :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type iso-date :required
                                  common-lisp:t :member-name "endTime")
                                 (unit :target-type metric-unit :required
                                  common-lisp:t :member-name "unit")
                                 (statistics :target-type metric-statistic-list
                                  :required common-lisp:t :member-name
                                  "statistics"))
                                (:shape-name
                                 "GetRelationalDatabaseMetricDataRequest"))

(smithy/sdk/shapes:define-output get-relational-database-metric-data-result
                                 common-lisp:nil
                                 ((metric-name :target-type
                                   relational-database-metric-name :member-name
                                   "metricName")
                                  (metric-data :target-type
                                   metric-datapoint-list :member-name
                                   "metricData"))
                                 (:shape-name
                                  "GetRelationalDatabaseMetricDataResult"))

(smithy/sdk/shapes:define-input get-relational-database-parameters-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetRelationalDatabaseParametersRequest"))

(smithy/sdk/shapes:define-output get-relational-database-parameters-result
                                 common-lisp:nil
                                 ((parameters :target-type
                                   relational-database-parameter-list
                                   :member-name "parameters")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetRelationalDatabaseParametersResult"))

(smithy/sdk/shapes:define-input get-relational-database-request common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName"))
                                (:shape-name "GetRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output get-relational-database-result common-lisp:nil
                                 ((relational-database :target-type
                                   relational-database :member-name
                                   "relationalDatabase"))
                                 (:shape-name "GetRelationalDatabaseResult"))

(smithy/sdk/shapes:define-input get-relational-database-snapshot-request
                                common-lisp:nil
                                ((relational-database-snapshot-name
                                  :target-type resource-name :required
                                  common-lisp:t :member-name
                                  "relationalDatabaseSnapshotName"))
                                (:shape-name
                                 "GetRelationalDatabaseSnapshotRequest"))

(smithy/sdk/shapes:define-output get-relational-database-snapshot-result
                                 common-lisp:nil
                                 ((relational-database-snapshot :target-type
                                   relational-database-snapshot :member-name
                                   "relationalDatabaseSnapshot"))
                                 (:shape-name
                                  "GetRelationalDatabaseSnapshotResult"))

(smithy/sdk/shapes:define-input get-relational-database-snapshots-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name
                                 "GetRelationalDatabaseSnapshotsRequest"))

(smithy/sdk/shapes:define-output get-relational-database-snapshots-result
                                 common-lisp:nil
                                 ((relational-database-snapshots :target-type
                                   relational-database-snapshot-list
                                   :member-name "relationalDatabaseSnapshots")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name
                                  "GetRelationalDatabaseSnapshotsResult"))

(smithy/sdk/shapes:define-input get-relational-databases-request
                                common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetRelationalDatabasesRequest"))

(smithy/sdk/shapes:define-output get-relational-databases-result
                                 common-lisp:nil
                                 ((relational-databases :target-type
                                   relational-database-list :member-name
                                   "relationalDatabases")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetRelationalDatabasesResult"))

(smithy/sdk/shapes:define-input get-setup-history-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (page-token :target-type
                                  setup-history-page-token :member-name
                                  "pageToken"))
                                (:shape-name "GetSetupHistoryRequest"))

(smithy/sdk/shapes:define-output get-setup-history-result common-lisp:nil
                                 ((setup-history :target-type
                                   setup-history-list :member-name
                                   "setupHistory")
                                  (next-page-token :target-type
                                   setup-history-page-token :member-name
                                   "nextPageToken"))
                                 (:shape-name "GetSetupHistoryResult"))

(smithy/sdk/shapes:define-input get-static-ip-request common-lisp:nil
                                ((static-ip-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "staticIpName"))
                                (:shape-name "GetStaticIpRequest"))

(smithy/sdk/shapes:define-output get-static-ip-result common-lisp:nil
                                 ((static-ip :target-type static-ip
                                   :member-name "staticIp"))
                                 (:shape-name "GetStaticIpResult"))

(smithy/sdk/shapes:define-input get-static-ips-request common-lisp:nil
                                ((page-token :target-type string :member-name
                                  "pageToken"))
                                (:shape-name "GetStaticIpsRequest"))

(smithy/sdk/shapes:define-output get-static-ips-result common-lisp:nil
                                 ((static-ips :target-type static-ip-list
                                   :member-name "staticIps")
                                  (next-page-token :target-type string
                                   :member-name "nextPageToken"))
                                 (:shape-name "GetStaticIpsResult"))

(smithy/sdk/shapes:define-enum header-enum
    common-lisp:nil
  (:accept "Accept")
  (:accept-charset "Accept-Charset")
  (:accept-datetime "Accept-Datetime")
  (:accept-encoding "Accept-Encoding")
  (:accept-language "Accept-Language")
  (:authorization "Authorization")
  (:cloud-front-forwarded-proto "CloudFront-Forwarded-Proto")
  (:cloud-front-is-desktop-viewer "CloudFront-Is-Desktop-Viewer")
  (:cloud-front-is-mobile-viewer "CloudFront-Is-Mobile-Viewer")
  (:cloud-front-is-smart-tvviewer "CloudFront-Is-SmartTV-Viewer")
  (:cloud-front-is-tablet-viewer "CloudFront-Is-Tablet-Viewer")
  (:cloud-front-viewer-country "CloudFront-Viewer-Country")
  (:host "Host")
  (:origin "Origin")
  (:referer "Referer"))

(smithy/sdk/shapes:define-list header-forward-list :member header-enum)

(smithy/sdk/shapes:define-structure header-object common-lisp:nil
                                    ((option :target-type forward-values
                                      :member-name "option")
                                     (headers-allow-list :target-type
                                      header-forward-list :member-name
                                      "headersAllowList"))
                                    (:shape-name "HeaderObject"))

(smithy/sdk/shapes:define-structure host-key-attributes common-lisp:nil
                                    ((algorithm :target-type string
                                      :member-name "algorithm")
                                     (public-key :target-type string
                                      :member-name "publicKey")
                                     (witnessed-at :target-type iso-date
                                      :member-name "witnessedAt")
                                     (fingerprint-sha1 :target-type string
                                      :member-name "fingerprintSHA1")
                                     (fingerprint-sha256 :target-type string
                                      :member-name "fingerprintSHA256")
                                     (not-valid-before :target-type iso-date
                                      :member-name "notValidBefore")
                                     (not-valid-after :target-type iso-date
                                      :member-name "notValidAfter"))
                                    (:shape-name "HostKeyAttributes"))

(smithy/sdk/shapes:define-list host-keys-list :member host-key-attributes)

(smithy/sdk/shapes:define-enum http-endpoint
    common-lisp:nil
  (:disabled "disabled")
  (:enabled "enabled"))

(smithy/sdk/shapes:define-enum http-protocol-ipv6
    common-lisp:nil
  (:disabled "disabled")
  (:enabled "enabled"))

(smithy/sdk/shapes:define-enum http-tokens
    common-lisp:nil
  (:optional "optional")
  (:required "required"))

(smithy/sdk/shapes:define-type iamaccess-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-key-pair-request common-lisp:nil
                                ((key-pair-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "keyPairName")
                                 (public-key-base64 :target-type base64
                                  :required common-lisp:t :member-name
                                  "publicKeyBase64"))
                                (:shape-name "ImportKeyPairRequest"))

(smithy/sdk/shapes:define-output import-key-pair-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "ImportKeyPairResult"))

(smithy/sdk/shapes:define-type in-use-resource-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type include-certificate-details
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure input-origin common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (region-name :target-type region-name
                                      :member-name "regionName")
                                     (protocol-policy :target-type
                                      origin-protocol-policy-enum :member-name
                                      "protocolPolicy")
                                     (response-timeout :target-type integer
                                      :member-name "responseTimeout"))
                                    (:shape-name "InputOrigin"))

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (blueprint-id :target-type
                                      non-empty-string :member-name
                                      "blueprintId")
                                     (blueprint-name :target-type
                                      non-empty-string :member-name
                                      "blueprintName")
                                     (bundle-id :target-type non-empty-string
                                      :member-name "bundleId")
                                     (add-ons :target-type add-on-list
                                      :member-name "addOns")
                                     (is-static-ip :target-type boolean
                                      :member-name "isStaticIp")
                                     (private-ip-address :target-type
                                      ip-address :member-name
                                      "privateIpAddress")
                                     (public-ip-address :target-type ip-address
                                      :member-name "publicIpAddress")
                                     (ipv6addresses :target-type
                                      ipv6address-list :member-name
                                      "ipv6Addresses")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (hardware :target-type instance-hardware
                                      :member-name "hardware")
                                     (networking :target-type
                                      instance-networking :member-name
                                      "networking")
                                     (state :target-type instance-state
                                      :member-name "state")
                                     (username :target-type non-empty-string
                                      :member-name "username")
                                     (ssh-key-name :target-type resource-name
                                      :member-name "sshKeyName")
                                     (metadata-options :target-type
                                      instance-metadata-options :member-name
                                      "metadataOptions"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-structure instance-access-details common-lisp:nil
                                    ((cert-key :target-type string :member-name
                                      "certKey")
                                     (expires-at :target-type iso-date
                                      :member-name "expiresAt")
                                     (ip-address :target-type ip-address
                                      :member-name "ipAddress")
                                     (ipv6addresses :target-type
                                      ipv6address-list :member-name
                                      "ipv6Addresses")
                                     (password :target-type string :member-name
                                      "password")
                                     (password-data :target-type password-data
                                      :member-name "passwordData")
                                     (private-key :target-type string
                                      :member-name "privateKey")
                                     (protocol :target-type
                                      instance-access-protocol :member-name
                                      "protocol")
                                     (instance-name :target-type resource-name
                                      :member-name "instanceName")
                                     (username :target-type string :member-name
                                      "username")
                                     (host-keys :target-type host-keys-list
                                      :member-name "hostKeys"))
                                    (:shape-name "InstanceAccessDetails"))

(smithy/sdk/shapes:define-enum instance-access-protocol
    common-lisp:nil
  (:ssh "ssh")
  (:rdp "rdp"))

(smithy/sdk/shapes:define-structure instance-entry common-lisp:nil
                                    ((source-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "sourceName")
                                     (instance-type :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "instanceType")
                                     (port-info-source :target-type
                                      port-info-source-type :required
                                      common-lisp:t :member-name
                                      "portInfoSource")
                                     (user-data :target-type string
                                      :member-name "userData")
                                     (availability-zone :target-type string
                                      :required common-lisp:t :member-name
                                      "availabilityZone"))
                                    (:shape-name "InstanceEntry"))

(smithy/sdk/shapes:define-list instance-entry-list :member instance-entry)

(smithy/sdk/shapes:define-structure instance-hardware common-lisp:nil
                                    ((cpu-count :target-type integer
                                      :member-name "cpuCount")
                                     (disks :target-type disk-list :member-name
                                      "disks")
                                     (ram-size-in-gb :target-type float
                                      :member-name "ramSizeInGb"))
                                    (:shape-name "InstanceHardware"))

(smithy/sdk/shapes:define-enum instance-health-reason
    common-lisp:nil
  (:lb-registration-in-progress "Lb.RegistrationInProgress")
  (:lb-initial-health-checking "Lb.InitialHealthChecking")
  (:lb-internal-error "Lb.InternalError")
  (:instance-response-code-mismatch "Instance.ResponseCodeMismatch")
  (:instance-timeout "Instance.Timeout")
  (:instance-failed-health-checks "Instance.FailedHealthChecks")
  (:instance-not-registered "Instance.NotRegistered")
  (:instance-not-in-use "Instance.NotInUse")
  (:instance-deregistration-in-progress "Instance.DeregistrationInProgress")
  (:instance-invalid-state "Instance.InvalidState")
  (:instance-ip-unusable "Instance.IpUnusable"))

(smithy/sdk/shapes:define-enum instance-health-state
    common-lisp:nil
  (:initial "initial")
  (:healthy "healthy")
  (:unhealthy "unhealthy")
  (:unused "unused")
  (:draining "draining")
  (:unavailable "unavailable"))

(smithy/sdk/shapes:define-structure instance-health-summary common-lisp:nil
                                    ((instance-name :target-type resource-name
                                      :member-name "instanceName")
                                     (instance-health :target-type
                                      instance-health-state :member-name
                                      "instanceHealth")
                                     (instance-health-reason :target-type
                                      instance-health-reason :member-name
                                      "instanceHealthReason"))
                                    (:shape-name "InstanceHealthSummary"))

(smithy/sdk/shapes:define-list instance-health-summary-list :member
                               instance-health-summary)

(smithy/sdk/shapes:define-list instance-list :member instance)

(smithy/sdk/shapes:define-structure instance-metadata-options common-lisp:nil
                                    ((state :target-type
                                      instance-metadata-state :member-name
                                      "state")
                                     (http-tokens :target-type http-tokens
                                      :member-name "httpTokens")
                                     (http-endpoint :target-type http-endpoint
                                      :member-name "httpEndpoint")
                                     (http-put-response-hop-limit :target-type
                                      integer :member-name
                                      "httpPutResponseHopLimit")
                                     (http-protocol-ipv6 :target-type
                                      http-protocol-ipv6 :member-name
                                      "httpProtocolIpv6"))
                                    (:shape-name "InstanceMetadataOptions"))

(smithy/sdk/shapes:define-enum instance-metadata-state
    common-lisp:nil
  (:pending "pending")
  (:applied "applied"))

(smithy/sdk/shapes:define-enum instance-metric-name
    common-lisp:nil
  (:cpuutilization "CPUUtilization")
  (:network-in "NetworkIn")
  (:network-out "NetworkOut")
  (:status-check-failed "StatusCheckFailed")
  (:status-check-failed-instance "StatusCheckFailed_Instance")
  (:status-check-failed-system "StatusCheckFailed_System")
  (:burst-capacity-time "BurstCapacityTime")
  (:burst-capacity-percentage "BurstCapacityPercentage")
  (:metadata-no-token "MetadataNoToken"))

(smithy/sdk/shapes:define-structure instance-networking common-lisp:nil
                                    ((monthly-transfer :target-type
                                      monthly-transfer :member-name
                                      "monthlyTransfer")
                                     (ports :target-type
                                      instance-port-info-list :member-name
                                      "ports"))
                                    (:shape-name "InstanceNetworking"))

(smithy/sdk/shapes:define-enum instance-platform
    common-lisp:nil
  (:linux-unix "LINUX_UNIX")
  (:windows "WINDOWS"))

(smithy/sdk/shapes:define-list instance-platform-list :member instance-platform)

(smithy/sdk/shapes:define-structure instance-port-info common-lisp:nil
                                    ((from-port :target-type port :member-name
                                      "fromPort")
                                     (to-port :target-type port :member-name
                                      "toPort")
                                     (protocol :target-type network-protocol
                                      :member-name "protocol")
                                     (access-from :target-type string
                                      :member-name "accessFrom")
                                     (access-type :target-type port-access-type
                                      :member-name "accessType")
                                     (common-name :target-type string
                                      :member-name "commonName")
                                     (access-direction :target-type
                                      access-direction :member-name
                                      "accessDirection")
                                     (cidrs :target-type string-list
                                      :member-name "cidrs")
                                     (ipv6cidrs :target-type string-list
                                      :member-name "ipv6Cidrs")
                                     (cidr-list-aliases :target-type
                                      string-list :member-name
                                      "cidrListAliases"))
                                    (:shape-name "InstancePortInfo"))

(smithy/sdk/shapes:define-list instance-port-info-list :member
                               instance-port-info)

(smithy/sdk/shapes:define-structure instance-port-state common-lisp:nil
                                    ((from-port :target-type port :member-name
                                      "fromPort")
                                     (to-port :target-type port :member-name
                                      "toPort")
                                     (protocol :target-type network-protocol
                                      :member-name "protocol")
                                     (state :target-type port-state
                                      :member-name "state")
                                     (cidrs :target-type string-list
                                      :member-name "cidrs")
                                     (ipv6cidrs :target-type string-list
                                      :member-name "ipv6Cidrs")
                                     (cidr-list-aliases :target-type
                                      string-list :member-name
                                      "cidrListAliases"))
                                    (:shape-name "InstancePortState"))

(smithy/sdk/shapes:define-list instance-port-state-list :member
                               instance-port-state)

(smithy/sdk/shapes:define-structure instance-snapshot common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (state :target-type
                                      instance-snapshot-state :member-name
                                      "state")
                                     (progress :target-type string :member-name
                                      "progress")
                                     (from-attached-disks :target-type
                                      disk-list :member-name
                                      "fromAttachedDisks")
                                     (from-instance-name :target-type
                                      resource-name :member-name
                                      "fromInstanceName")
                                     (from-instance-arn :target-type
                                      non-empty-string :member-name
                                      "fromInstanceArn")
                                     (from-blueprint-id :target-type string
                                      :member-name "fromBlueprintId")
                                     (from-bundle-id :target-type string
                                      :member-name "fromBundleId")
                                     (is-from-auto-snapshot :target-type
                                      boolean :member-name
                                      "isFromAutoSnapshot")
                                     (size-in-gb :target-type integer
                                      :member-name "sizeInGb"))
                                    (:shape-name "InstanceSnapshot"))

(smithy/sdk/shapes:define-structure instance-snapshot-info common-lisp:nil
                                    ((from-bundle-id :target-type
                                      non-empty-string :member-name
                                      "fromBundleId")
                                     (from-blueprint-id :target-type
                                      non-empty-string :member-name
                                      "fromBlueprintId")
                                     (from-disk-info :target-type
                                      disk-info-list :member-name
                                      "fromDiskInfo"))
                                    (:shape-name "InstanceSnapshotInfo"))

(smithy/sdk/shapes:define-list instance-snapshot-list :member instance-snapshot)

(smithy/sdk/shapes:define-enum instance-snapshot-state
    common-lisp:nil
  (:pending "pending")
  (:error "error")
  (:available "available"))

(smithy/sdk/shapes:define-structure instance-state common-lisp:nil
                                    ((code :target-type integer :member-name
                                      "code")
                                     (name :target-type string :member-name
                                      "name"))
                                    (:shape-name "InstanceState"))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:dualstack "dualstack")
  (:ipv4 "ipv4")
  (:ipv6 "ipv6"))

(smithy/sdk/shapes:define-type ipv6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ipv6address-list :member ipv6address)

(smithy/sdk/shapes:define-input is-vpc-peered-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "IsVpcPeeredRequest"))

(smithy/sdk/shapes:define-output is-vpc-peered-result common-lisp:nil
                                 ((is-peered :target-type boolean :member-name
                                   "isPeered"))
                                 (:shape-name "IsVpcPeeredResult"))

(smithy/sdk/shapes:define-type iso-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type issuer-ca smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-algorithm smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-pair common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (fingerprint :target-type base64
                                      :member-name "fingerprint"))
                                    (:shape-name "KeyPair"))

(smithy/sdk/shapes:define-list key-pair-list :member key-pair)

(smithy/sdk/shapes:define-structure lightsail-distribution common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (alternative-domain-names :target-type
                                      string-list :member-name
                                      "alternativeDomainNames")
                                     (status :target-type string :member-name
                                      "status")
                                     (is-enabled :target-type boolean
                                      :member-name "isEnabled")
                                     (domain-name :target-type string
                                      :member-name "domainName")
                                     (bundle-id :target-type string
                                      :member-name "bundleId")
                                     (certificate-name :target-type
                                      resource-name :member-name
                                      "certificateName")
                                     (origin :target-type origin :member-name
                                      "origin")
                                     (origin-public-dns :target-type string
                                      :member-name "originPublicDNS")
                                     (default-cache-behavior :target-type
                                      cache-behavior :member-name
                                      "defaultCacheBehavior")
                                     (cache-behavior-settings :target-type
                                      cache-settings :member-name
                                      "cacheBehaviorSettings")
                                     (cache-behaviors :target-type
                                      cache-behavior-list :member-name
                                      "cacheBehaviors")
                                     (able-to-update-bundle :target-type
                                      boolean :member-name
                                      "ableToUpdateBundle")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (viewer-minimum-tls-protocol-version
                                      :target-type string :member-name
                                      "viewerMinimumTlsProtocolVersion"))
                                    (:shape-name "LightsailDistribution"))

(smithy/sdk/shapes:define-structure load-balancer common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (dns-name :target-type non-empty-string
                                      :member-name "dnsName")
                                     (state :target-type load-balancer-state
                                      :member-name "state")
                                     (protocol :target-type
                                      load-balancer-protocol :member-name
                                      "protocol")
                                     (public-ports :target-type port-list
                                      :member-name "publicPorts")
                                     (health-check-path :target-type
                                      non-empty-string :member-name
                                      "healthCheckPath")
                                     (instance-port :target-type integer
                                      :member-name "instancePort")
                                     (instance-health-summary :target-type
                                      instance-health-summary-list :member-name
                                      "instanceHealthSummary")
                                     (tls-certificate-summaries :target-type
                                      load-balancer-tls-certificate-summary-list
                                      :member-name "tlsCertificateSummaries")
                                     (configuration-options :target-type
                                      load-balancer-configuration-options
                                      :member-name "configurationOptions")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (https-redirection-enabled :target-type
                                      boolean :member-name
                                      "httpsRedirectionEnabled")
                                     (tls-policy-name :target-type
                                      resource-name :member-name
                                      "tlsPolicyName"))
                                    (:shape-name "LoadBalancer"))

(smithy/sdk/shapes:define-enum load-balancer-attribute-name
    common-lisp:nil
  (:health-check-path "HealthCheckPath")
  (:session-stickiness-enabled "SessionStickinessEnabled")
  (:session-stickiness-lb-cookie-duration-seconds
   "SessionStickiness_LB_CookieDurationSeconds")
  (:https-redirection-enabled "HttpsRedirectionEnabled")
  (:tls-policy-name "TlsPolicyName"))

(smithy/sdk/shapes:define-map load-balancer-configuration-options :key
                              load-balancer-attribute-name :value string)

(smithy/sdk/shapes:define-list load-balancer-list :member load-balancer)

(smithy/sdk/shapes:define-enum load-balancer-metric-name
    common-lisp:nil
  (:client-tlsnegotiation-error-count "ClientTLSNegotiationErrorCount")
  (:healthy-host-count "HealthyHostCount")
  (:unhealthy-host-count "UnhealthyHostCount")
  (:httpcode-lb-4xx-count "HTTPCode_LB_4XX_Count")
  (:httpcode-lb-5xx-count "HTTPCode_LB_5XX_Count")
  (:httpcode-instance-2xx-count "HTTPCode_Instance_2XX_Count")
  (:httpcode-instance-3xx-count "HTTPCode_Instance_3XX_Count")
  (:httpcode-instance-4xx-count "HTTPCode_Instance_4XX_Count")
  (:httpcode-instance-5xx-count "HTTPCode_Instance_5XX_Count")
  (:instance-response-time "InstanceResponseTime")
  (:rejected-connection-count "RejectedConnectionCount")
  (:request-count "RequestCount"))

(smithy/sdk/shapes:define-enum load-balancer-protocol
    common-lisp:nil
  (:http-https "HTTP_HTTPS")
  (:http "HTTP"))

(smithy/sdk/shapes:define-enum load-balancer-state
    common-lisp:nil
  (:active "active")
  (:provisioning "provisioning")
  (:active-impaired "active_impaired")
  (:failed "failed")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-structure load-balancer-tls-certificate
                                    common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (load-balancer-name :target-type
                                      resource-name :member-name
                                      "loadBalancerName")
                                     (is-attached :target-type boolean
                                      :member-name "isAttached")
                                     (status :target-type
                                      load-balancer-tls-certificate-status
                                      :member-name "status")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (domain-validation-records :target-type
                                      load-balancer-tls-certificate-domain-validation-record-list
                                      :member-name "domainValidationRecords")
                                     (failure-reason :target-type
                                      load-balancer-tls-certificate-failure-reason
                                      :member-name "failureReason")
                                     (issued-at :target-type iso-date
                                      :member-name "issuedAt")
                                     (issuer :target-type non-empty-string
                                      :member-name "issuer")
                                     (key-algorithm :target-type
                                      non-empty-string :member-name
                                      "keyAlgorithm")
                                     (not-after :target-type iso-date
                                      :member-name "notAfter")
                                     (not-before :target-type iso-date
                                      :member-name "notBefore")
                                     (renewal-summary :target-type
                                      load-balancer-tls-certificate-renewal-summary
                                      :member-name "renewalSummary")
                                     (revocation-reason :target-type
                                      load-balancer-tls-certificate-revocation-reason
                                      :member-name "revocationReason")
                                     (revoked-at :target-type iso-date
                                      :member-name "revokedAt")
                                     (serial :target-type non-empty-string
                                      :member-name "serial")
                                     (signature-algorithm :target-type
                                      non-empty-string :member-name
                                      "signatureAlgorithm")
                                     (subject :target-type non-empty-string
                                      :member-name "subject")
                                     (subject-alternative-names :target-type
                                      string-list :member-name
                                      "subjectAlternativeNames"))
                                    (:shape-name "LoadBalancerTlsCertificate"))

(smithy/sdk/shapes:define-structure
 load-balancer-tls-certificate-dns-record-creation-state common-lisp:nil
 ((code :target-type
   load-balancer-tls-certificate-dns-record-creation-state-code :member-name
   "code")
  (message :target-type string :member-name "message"))
 (:shape-name "LoadBalancerTlsCertificateDnsRecordCreationState"))

(smithy/sdk/shapes:define-enum load-balancer-tls-certificate-dns-record-creation-state-code
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:started "STARTED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum load-balancer-tls-certificate-domain-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:failed "FAILED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-structure
 load-balancer-tls-certificate-domain-validation-option common-lisp:nil
 ((domain-name :target-type domain-name :member-name "domainName")
  (validation-status :target-type load-balancer-tls-certificate-domain-status
   :member-name "validationStatus"))
 (:shape-name "LoadBalancerTlsCertificateDomainValidationOption"))

(smithy/sdk/shapes:define-list
 load-balancer-tls-certificate-domain-validation-option-list :member
 load-balancer-tls-certificate-domain-validation-option)

(smithy/sdk/shapes:define-structure
 load-balancer-tls-certificate-domain-validation-record common-lisp:nil
 ((name :target-type non-empty-string :member-name "name")
  (type :target-type non-empty-string :member-name "type")
  (value :target-type non-empty-string :member-name "value")
  (validation-status :target-type load-balancer-tls-certificate-domain-status
   :member-name "validationStatus")
  (domain-name :target-type domain-name :member-name "domainName")
  (dns-record-creation-state :target-type
   load-balancer-tls-certificate-dns-record-creation-state :member-name
   "dnsRecordCreationState"))
 (:shape-name "LoadBalancerTlsCertificateDomainValidationRecord"))

(smithy/sdk/shapes:define-list
 load-balancer-tls-certificate-domain-validation-record-list :member
 load-balancer-tls-certificate-domain-validation-record)

(smithy/sdk/shapes:define-enum load-balancer-tls-certificate-failure-reason
    common-lisp:nil
  (:no-available-contacts "NO_AVAILABLE_CONTACTS")
  (:additional-verification-required "ADDITIONAL_VERIFICATION_REQUIRED")
  (:domain-not-allowed "DOMAIN_NOT_ALLOWED")
  (:invalid-public-domain "INVALID_PUBLIC_DOMAIN")
  (:other "OTHER"))

(smithy/sdk/shapes:define-list load-balancer-tls-certificate-list :member
                               load-balancer-tls-certificate)

(smithy/sdk/shapes:define-enum load-balancer-tls-certificate-renewal-status
    common-lisp:nil
  (:pending-auto-renewal "PENDING_AUTO_RENEWAL")
  (:pending-validation "PENDING_VALIDATION")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure
 load-balancer-tls-certificate-renewal-summary common-lisp:nil
 ((renewal-status :target-type load-balancer-tls-certificate-renewal-status
   :member-name "renewalStatus")
  (domain-validation-options :target-type
   load-balancer-tls-certificate-domain-validation-option-list :member-name
   "domainValidationOptions"))
 (:shape-name "LoadBalancerTlsCertificateRenewalSummary"))

(smithy/sdk/shapes:define-enum load-balancer-tls-certificate-revocation-reason
    common-lisp:nil
  (:unspecified "UNSPECIFIED")
  (:key-compromise "KEY_COMPROMISE")
  (:ca-compromise "CA_COMPROMISE")
  (:affiliation-changed "AFFILIATION_CHANGED")
  (:superceded "SUPERCEDED")
  (:cessation-of-operation "CESSATION_OF_OPERATION")
  (:certificate-hold "CERTIFICATE_HOLD")
  (:remove-from-crl "REMOVE_FROM_CRL")
  (:privilege-withdrawn "PRIVILEGE_WITHDRAWN")
  (:aacompromise "A_A_COMPROMISE"))

(smithy/sdk/shapes:define-enum load-balancer-tls-certificate-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:issued "ISSUED")
  (:inactive "INACTIVE")
  (:expired "EXPIRED")
  (:validation-timed-out "VALIDATION_TIMED_OUT")
  (:revoked "REVOKED")
  (:failed "FAILED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure load-balancer-tls-certificate-summary
                                    common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (is-attached :target-type boolean
                                      :member-name "isAttached"))
                                    (:shape-name
                                     "LoadBalancerTlsCertificateSummary"))

(smithy/sdk/shapes:define-list load-balancer-tls-certificate-summary-list
                               :member load-balancer-tls-certificate-summary)

(smithy/sdk/shapes:define-structure load-balancer-tls-policy common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (is-default :target-type boolean
                                      :member-name "isDefault")
                                     (description :target-type string
                                      :member-name "description")
                                     (protocols :target-type string-list
                                      :member-name "protocols")
                                     (ciphers :target-type string-list
                                      :member-name "ciphers"))
                                    (:shape-name "LoadBalancerTlsPolicy"))

(smithy/sdk/shapes:define-list load-balancer-tls-policy-list :member
                               load-balancer-tls-policy)

(smithy/sdk/shapes:define-structure log-event common-lisp:nil
                                    ((created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "LogEvent"))

(smithy/sdk/shapes:define-list log-event-list :member log-event)

(smithy/sdk/shapes:define-structure metric-datapoint common-lisp:nil
                                    ((average :target-type double :member-name
                                      "average")
                                     (maximum :target-type double :member-name
                                      "maximum")
                                     (minimum :target-type double :member-name
                                      "minimum")
                                     (sample-count :target-type double
                                      :member-name "sampleCount")
                                     (sum :target-type double :member-name
                                      "sum")
                                     (timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (unit :target-type metric-unit
                                      :member-name "unit"))
                                    (:shape-name "MetricDatapoint"))

(smithy/sdk/shapes:define-list metric-datapoint-list :member metric-datapoint)

(smithy/sdk/shapes:define-enum metric-name
    common-lisp:nil
  (:cpuutilization "CPUUtilization")
  (:network-in "NetworkIn")
  (:network-out "NetworkOut")
  (:status-check-failed "StatusCheckFailed")
  (:status-check-failed-instance "StatusCheckFailed_Instance")
  (:status-check-failed-system "StatusCheckFailed_System")
  (:client-tlsnegotiation-error-count "ClientTLSNegotiationErrorCount")
  (:healthy-host-count "HealthyHostCount")
  (:unhealthy-host-count "UnhealthyHostCount")
  (:httpcode-lb-4xx-count "HTTPCode_LB_4XX_Count")
  (:httpcode-lb-5xx-count "HTTPCode_LB_5XX_Count")
  (:httpcode-instance-2xx-count "HTTPCode_Instance_2XX_Count")
  (:httpcode-instance-3xx-count "HTTPCode_Instance_3XX_Count")
  (:httpcode-instance-4xx-count "HTTPCode_Instance_4XX_Count")
  (:httpcode-instance-5xx-count "HTTPCode_Instance_5XX_Count")
  (:instance-response-time "InstanceResponseTime")
  (:rejected-connection-count "RejectedConnectionCount")
  (:request-count "RequestCount")
  (:database-connections "DatabaseConnections")
  (:disk-queue-depth "DiskQueueDepth")
  (:free-storage-space "FreeStorageSpace")
  (:network-receive-throughput "NetworkReceiveThroughput")
  (:network-transmit-throughput "NetworkTransmitThroughput")
  (:burst-capacity-time "BurstCapacityTime")
  (:burst-capacity-percentage "BurstCapacityPercentage"))

(smithy/sdk/shapes:define-type metric-period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metric-statistic
    common-lisp:nil
  (:minimum "Minimum")
  (:maximum "Maximum")
  (:sum "Sum")
  (:average "Average")
  (:sample-count "SampleCount"))

(smithy/sdk/shapes:define-list metric-statistic-list :member metric-statistic)

(smithy/sdk/shapes:define-enum metric-unit
    common-lisp:nil
  (:seconds "Seconds")
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:bytes "Bytes")
  (:kilobytes "Kilobytes")
  (:megabytes "Megabytes")
  (:gigabytes "Gigabytes")
  (:terabytes "Terabytes")
  (:bits "Bits")
  (:kilobits "Kilobits")
  (:megabits "Megabits")
  (:gigabits "Gigabits")
  (:terabits "Terabits")
  (:percent "Percent")
  (:count "Count")
  (:bytes-second "Bytes/Second")
  (:kilobytes-second "Kilobytes/Second")
  (:megabytes-second "Megabytes/Second")
  (:gigabytes-second "Gigabytes/Second")
  (:terabytes-second "Terabytes/Second")
  (:bits-second "Bits/Second")
  (:kilobits-second "Kilobits/Second")
  (:megabits-second "Megabits/Second")
  (:gigabits-second "Gigabits/Second")
  (:terabits-second "Terabits/Second")
  (:count-second "Count/Second")
  (:none "None"))

(smithy/sdk/shapes:define-structure monitored-resource-info common-lisp:nil
                                    ((arn :target-type resource-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType"))
                                    (:shape-name "MonitoredResourceInfo"))

(smithy/sdk/shapes:define-structure monthly-transfer common-lisp:nil
                                    ((gb-per-month-allocated :target-type
                                      integer :member-name
                                      "gbPerMonthAllocated"))
                                    (:shape-name "MonthlyTransfer"))

(smithy/sdk/shapes:define-structure name-servers-update-state common-lisp:nil
                                    ((code :target-type
                                      name-servers-update-state-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "NameServersUpdateState"))

(smithy/sdk/shapes:define-enum name-servers-update-state-code
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:pending "PENDING")
  (:failed "FAILED")
  (:started "STARTED"))

(smithy/sdk/shapes:define-enum network-protocol
    common-lisp:nil
  (:tcp "tcp")
  (:all "all")
  (:udp "udp")
  (:icmp "icmp")
  (:icmpv6 "icmpv6"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list notification-trigger-list :member alarm-state)

(smithy/sdk/shapes:define-input open-instance-public-ports-request
                                common-lisp:nil
                                ((port-info :target-type port-info :required
                                  common-lisp:t :member-name "portInfo")
                                 (instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "OpenInstancePublicPortsRequest"))

(smithy/sdk/shapes:define-output open-instance-public-ports-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "OpenInstancePublicPortsResult"))

(smithy/sdk/shapes:define-structure operation common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :member-name "id")
                                     (resource-name :target-type resource-name
                                      :member-name "resourceName")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (is-terminal :target-type boolean
                                      :member-name "isTerminal")
                                     (operation-details :target-type string
                                      :member-name "operationDetails")
                                     (operation-type :target-type
                                      operation-type :member-name
                                      "operationType")
                                     (status :target-type operation-status
                                      :member-name "status")
                                     (status-changed-at :target-type iso-date
                                      :member-name "statusChangedAt")
                                     (error-code :target-type string
                                      :member-name "errorCode")
                                     (error-details :target-type string
                                      :member-name "errorDetails"))
                                    (:shape-name "Operation"))

(smithy/sdk/shapes:define-error operation-failure-exception common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "OperationFailureException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list operation-list :member operation)

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:not-started "NotStarted")
  (:started "Started")
  (:failed "Failed")
  (:completed "Completed")
  (:succeeded "Succeeded"))

(smithy/sdk/shapes:define-enum operation-type
    common-lisp:nil
  (:delete-known-host-keys "DeleteKnownHostKeys")
  (:delete-instance "DeleteInstance")
  (:create-instance "CreateInstance")
  (:stop-instance "StopInstance")
  (:start-instance "StartInstance")
  (:reboot-instance "RebootInstance")
  (:open-instance-public-ports "OpenInstancePublicPorts")
  (:put-instance-public-ports "PutInstancePublicPorts")
  (:close-instance-public-ports "CloseInstancePublicPorts")
  (:allocate-static-ip "AllocateStaticIp")
  (:release-static-ip "ReleaseStaticIp")
  (:attach-static-ip "AttachStaticIp")
  (:detach-static-ip "DetachStaticIp")
  (:update-domain-entry "UpdateDomainEntry")
  (:delete-domain-entry "DeleteDomainEntry")
  (:create-domain "CreateDomain")
  (:delete-domain "DeleteDomain")
  (:create-instance-snapshot "CreateInstanceSnapshot")
  (:delete-instance-snapshot "DeleteInstanceSnapshot")
  (:create-instances-from-snapshot "CreateInstancesFromSnapshot")
  (:create-load-balancer "CreateLoadBalancer")
  (:delete-load-balancer "DeleteLoadBalancer")
  (:attach-instances-to-load-balancer "AttachInstancesToLoadBalancer")
  (:detach-instances-from-load-balancer "DetachInstancesFromLoadBalancer")
  (:update-load-balancer-attribute "UpdateLoadBalancerAttribute")
  (:create-load-balancer-tls-certificate "CreateLoadBalancerTlsCertificate")
  (:delete-load-balancer-tls-certificate "DeleteLoadBalancerTlsCertificate")
  (:attach-load-balancer-tls-certificate "AttachLoadBalancerTlsCertificate")
  (:create-disk "CreateDisk")
  (:delete-disk "DeleteDisk")
  (:attach-disk "AttachDisk")
  (:detach-disk "DetachDisk")
  (:create-disk-snapshot "CreateDiskSnapshot")
  (:delete-disk-snapshot "DeleteDiskSnapshot")
  (:create-disk-from-snapshot "CreateDiskFromSnapshot")
  (:create-relational-database "CreateRelationalDatabase")
  (:update-relational-database "UpdateRelationalDatabase")
  (:delete-relational-database "DeleteRelationalDatabase")
  (:create-relational-database-from-snapshot
   "CreateRelationalDatabaseFromSnapshot")
  (:create-relational-database-snapshot "CreateRelationalDatabaseSnapshot")
  (:delete-relational-database-snapshot "DeleteRelationalDatabaseSnapshot")
  (:update-relational-database-parameters "UpdateRelationalDatabaseParameters")
  (:start-relational-database "StartRelationalDatabase")
  (:reboot-relational-database "RebootRelationalDatabase")
  (:stop-relational-database "StopRelationalDatabase")
  (:enable-add-on "EnableAddOn")
  (:disable-add-on "DisableAddOn")
  (:put-alarm "PutAlarm")
  (:get-alarms "GetAlarms")
  (:delete-alarm "DeleteAlarm")
  (:test-alarm "TestAlarm")
  (:create-contact-method "CreateContactMethod")
  (:get-contact-methods "GetContactMethods")
  (:send-contact-method-verification "SendContactMethodVerification")
  (:delete-contact-method "DeleteContactMethod")
  (:create-distribution "CreateDistribution")
  (:update-distribution "UpdateDistribution")
  (:delete-distribution "DeleteDistribution")
  (:reset-distribution-cache "ResetDistributionCache")
  (:attach-certificate-to-distribution "AttachCertificateToDistribution")
  (:detach-certificate-from-distribution "DetachCertificateFromDistribution")
  (:update-distribution-bundle "UpdateDistributionBundle")
  (:set-ip-address-type "SetIpAddressType")
  (:create-certificate "CreateCertificate")
  (:delete-certificate "DeleteCertificate")
  (:create-container-service "CreateContainerService")
  (:update-container-service "UpdateContainerService")
  (:delete-container-service "DeleteContainerService")
  (:create-container-service-deployment "CreateContainerServiceDeployment")
  (:create-container-service-registry-login
   "CreateContainerServiceRegistryLogin")
  (:register-container-image "RegisterContainerImage")
  (:delete-container-image "DeleteContainerImage")
  (:create-bucket "CreateBucket")
  (:delete-bucket "DeleteBucket")
  (:create-bucket-access-key "CreateBucketAccessKey")
  (:delete-bucket-access-key "DeleteBucketAccessKey")
  (:update-bucket-bundle "UpdateBucketBundle")
  (:update-bucket "UpdateBucket")
  (:set-resource-access-for-bucket "SetResourceAccessForBucket")
  (:update-instance-metadata-options "UpdateInstanceMetadataOptions")
  (:start-guisession "StartGUISession")
  (:stop-guisession "StopGUISession")
  (:setup-instance-https "SetupInstanceHttps"))

(smithy/sdk/shapes:define-structure origin common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (region-name :target-type region-name
                                      :member-name "regionName")
                                     (protocol-policy :target-type
                                      origin-protocol-policy-enum :member-name
                                      "protocolPolicy")
                                     (response-timeout :target-type integer
                                      :member-name "responseTimeout"))
                                    (:shape-name "Origin"))

(smithy/sdk/shapes:define-enum origin-protocol-policy-enum
    common-lisp:nil
  (:httponly "http-only")
  (:httpsonly "https-only"))

(smithy/sdk/shapes:define-list partner-id-list :member non-empty-string)

(smithy/sdk/shapes:define-structure password-data common-lisp:nil
                                    ((ciphertext :target-type string
                                      :member-name "ciphertext")
                                     (key-pair-name :target-type resource-name
                                      :member-name "keyPairName"))
                                    (:shape-name "PasswordData"))

(smithy/sdk/shapes:define-input peer-vpc-request common-lisp:nil
                                common-lisp:nil (:shape-name "PeerVpcRequest"))

(smithy/sdk/shapes:define-output peer-vpc-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "PeerVpcResult"))

(smithy/sdk/shapes:define-structure pending-maintenance-action common-lisp:nil
                                    ((action :target-type non-empty-string
                                      :member-name "action")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (current-apply-date :target-type iso-date
                                      :member-name "currentApplyDate"))
                                    (:shape-name "PendingMaintenanceAction"))

(smithy/sdk/shapes:define-list pending-maintenance-action-list :member
                               pending-maintenance-action)

(smithy/sdk/shapes:define-structure pending-modified-relational-database-values
                                    common-lisp:nil
                                    ((master-user-password :target-type string
                                      :member-name "masterUserPassword")
                                     (engine-version :target-type string
                                      :member-name "engineVersion")
                                     (backup-retention-enabled :target-type
                                      boolean :member-name
                                      "backupRetentionEnabled"))
                                    (:shape-name
                                     "PendingModifiedRelationalDatabaseValues"))

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum port-access-type
    common-lisp:nil
  (:public "Public")
  (:private "Private"))

(smithy/sdk/shapes:define-structure port-info common-lisp:nil
                                    ((from-port :target-type port :member-name
                                      "fromPort")
                                     (to-port :target-type port :member-name
                                      "toPort")
                                     (protocol :target-type network-protocol
                                      :member-name "protocol")
                                     (cidrs :target-type string-list
                                      :member-name "cidrs")
                                     (ipv6cidrs :target-type string-list
                                      :member-name "ipv6Cidrs")
                                     (cidr-list-aliases :target-type
                                      string-list :member-name
                                      "cidrListAliases"))
                                    (:shape-name "PortInfo"))

(smithy/sdk/shapes:define-list port-info-list :member port-info)

(smithy/sdk/shapes:define-enum port-info-source-type
    common-lisp:nil
  (:default "DEFAULT")
  (:instance "INSTANCE")
  (:none "NONE")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-list port-list :member port)

(smithy/sdk/shapes:define-map port-map :key string :value
                              container-service-protocol)

(smithy/sdk/shapes:define-enum port-state
    common-lisp:nil
  (:open "open")
  (:closed "closed"))

(smithy/sdk/shapes:define-enum pricing-unit
    common-lisp:nil
  (:gb "GB")
  (:hrs "Hrs")
  (:gbmo "GB-Mo")
  (:bundles "Bundles")
  (:queries "Queries"))

(smithy/sdk/shapes:define-structure private-registry-access common-lisp:nil
                                    ((ecr-image-puller-role :target-type
                                      container-service-ecrimage-puller-role
                                      :member-name "ecrImagePullerRole"))
                                    (:shape-name "PrivateRegistryAccess"))

(smithy/sdk/shapes:define-structure private-registry-access-request
                                    common-lisp:nil
                                    ((ecr-image-puller-role :target-type
                                      container-service-ecrimage-puller-role-request
                                      :member-name "ecrImagePullerRole"))
                                    (:shape-name
                                     "PrivateRegistryAccessRequest"))

(smithy/sdk/shapes:define-input put-alarm-request common-lisp:nil
                                ((alarm-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "alarmName")
                                 (metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "metricName")
                                 (monitored-resource-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "monitoredResourceName")
                                 (comparison-operator :target-type
                                  comparison-operator :required common-lisp:t
                                  :member-name "comparisonOperator")
                                 (threshold :target-type double :required
                                  common-lisp:t :member-name "threshold")
                                 (evaluation-periods :target-type integer
                                  :required common-lisp:t :member-name
                                  "evaluationPeriods")
                                 (datapoints-to-alarm :target-type integer
                                  :member-name "datapointsToAlarm")
                                 (treat-missing-data :target-type
                                  treat-missing-data :member-name
                                  "treatMissingData")
                                 (contact-protocols :target-type
                                  contact-protocols-list :member-name
                                  "contactProtocols")
                                 (notification-triggers :target-type
                                  notification-trigger-list :member-name
                                  "notificationTriggers")
                                 (notification-enabled :target-type boolean
                                  :member-name "notificationEnabled"))
                                (:shape-name "PutAlarmRequest"))

(smithy/sdk/shapes:define-output put-alarm-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "PutAlarmResult"))

(smithy/sdk/shapes:define-input put-instance-public-ports-request
                                common-lisp:nil
                                ((port-infos :target-type port-info-list
                                  :required common-lisp:t :member-name
                                  "portInfos")
                                 (instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "PutInstancePublicPortsRequest"))

(smithy/sdk/shapes:define-output put-instance-public-ports-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "PutInstancePublicPortsResult"))

(smithy/sdk/shapes:define-structure query-string-object common-lisp:nil
                                    ((option :target-type boolean :member-name
                                      "option")
                                     (query-strings-allow-list :target-type
                                      string-list :member-name
                                      "queryStringsAllowList"))
                                    (:shape-name "QueryStringObject"))

(smithy/sdk/shapes:define-structure r53hosted-zone-deletion-state
                                    common-lisp:nil
                                    ((code :target-type
                                      r53hosted-zone-deletion-state-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "R53HostedZoneDeletionState"))

(smithy/sdk/shapes:define-enum r53hosted-zone-deletion-state-code
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:pending "PENDING")
  (:failed "FAILED")
  (:started "STARTED"))

(smithy/sdk/shapes:define-input reboot-instance-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "RebootInstanceRequest"))

(smithy/sdk/shapes:define-output reboot-instance-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "RebootInstanceResult"))

(smithy/sdk/shapes:define-input reboot-relational-database-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName"))
                                (:shape-name "RebootRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output reboot-relational-database-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "RebootRelationalDatabaseResult"))

(smithy/sdk/shapes:define-enum record-state
    common-lisp:nil
  (:started "Started")
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure region common-lisp:nil
                                    ((continent-code :target-type string
                                      :member-name "continentCode")
                                     (description :target-type string
                                      :member-name "description")
                                     (display-name :target-type string
                                      :member-name "displayName")
                                     (name :target-type region-name
                                      :member-name "name")
                                     (availability-zones :target-type
                                      availability-zone-list :member-name
                                      "availabilityZones")
                                     (relational-database-availability-zones
                                      :target-type availability-zone-list
                                      :member-name
                                      "relationalDatabaseAvailabilityZones"))
                                    (:shape-name "Region"))

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-enum region-name
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:eu-central-1 "eu-central-1")
  (:ca-central-1 "ca-central-1")
  (:ap-south-1 "ap-south-1")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:eu-north-1 "eu-north-1")
  (:ap-southeast-3 "ap-southeast-3"))

(smithy/sdk/shapes:define-error region-setup-in-progress-exception
                                common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "RegionSetupInProgressException")
                                (:error-code 428))

(smithy/sdk/shapes:define-input register-container-image-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t)
                                 (label :target-type container-label :required
                                  common-lisp:t :member-name "label")
                                 (digest :target-type string :required
                                  common-lisp:t :member-name "digest"))
                                (:shape-name "RegisterContainerImageRequest"))

(smithy/sdk/shapes:define-output register-container-image-result
                                 common-lisp:nil
                                 ((container-image :target-type container-image
                                   :member-name "containerImage"))
                                 (:shape-name "RegisterContainerImageResult"))

(smithy/sdk/shapes:define-structure registered-domain-delegation-info
                                    common-lisp:nil
                                    ((name-servers-update-state :target-type
                                      name-servers-update-state :member-name
                                      "nameServersUpdateState")
                                     (r53hosted-zone-deletion-state
                                      :target-type
                                      r53hosted-zone-deletion-state
                                      :member-name
                                      "r53HostedZoneDeletionState"))
                                    (:shape-name
                                     "RegisteredDomainDelegationInfo"))

(smithy/sdk/shapes:define-structure relational-database common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (relational-database-blueprint-id
                                      :target-type non-empty-string
                                      :member-name
                                      "relationalDatabaseBlueprintId")
                                     (relational-database-bundle-id
                                      :target-type non-empty-string
                                      :member-name
                                      "relationalDatabaseBundleId")
                                     (master-database-name :target-type string
                                      :member-name "masterDatabaseName")
                                     (hardware :target-type
                                      relational-database-hardware :member-name
                                      "hardware")
                                     (state :target-type non-empty-string
                                      :member-name "state")
                                     (secondary-availability-zone :target-type
                                      string :member-name
                                      "secondaryAvailabilityZone")
                                     (backup-retention-enabled :target-type
                                      boolean :member-name
                                      "backupRetentionEnabled")
                                     (pending-modified-values :target-type
                                      pending-modified-relational-database-values
                                      :member-name "pendingModifiedValues")
                                     (engine :target-type non-empty-string
                                      :member-name "engine")
                                     (engine-version :target-type
                                      non-empty-string :member-name
                                      "engineVersion")
                                     (latest-restorable-time :target-type
                                      iso-date :member-name
                                      "latestRestorableTime")
                                     (master-username :target-type
                                      non-empty-string :member-name
                                      "masterUsername")
                                     (parameter-apply-status :target-type
                                      non-empty-string :member-name
                                      "parameterApplyStatus")
                                     (preferred-backup-window :target-type
                                      non-empty-string :member-name
                                      "preferredBackupWindow")
                                     (preferred-maintenance-window :target-type
                                      non-empty-string :member-name
                                      "preferredMaintenanceWindow")
                                     (publicly-accessible :target-type boolean
                                      :member-name "publiclyAccessible")
                                     (master-endpoint :target-type
                                      relational-database-endpoint :member-name
                                      "masterEndpoint")
                                     (pending-maintenance-actions :target-type
                                      pending-maintenance-action-list
                                      :member-name "pendingMaintenanceActions")
                                     (ca-certificate-identifier :target-type
                                      string :member-name
                                      "caCertificateIdentifier"))
                                    (:shape-name "RelationalDatabase"))

(smithy/sdk/shapes:define-structure relational-database-blueprint
                                    common-lisp:nil
                                    ((blueprint-id :target-type string
                                      :member-name "blueprintId")
                                     (engine :target-type
                                      relational-database-engine :member-name
                                      "engine")
                                     (engine-version :target-type string
                                      :member-name "engineVersion")
                                     (engine-description :target-type string
                                      :member-name "engineDescription")
                                     (engine-version-description :target-type
                                      string :member-name
                                      "engineVersionDescription")
                                     (is-engine-default :target-type boolean
                                      :member-name "isEngineDefault"))
                                    (:shape-name "RelationalDatabaseBlueprint"))

(smithy/sdk/shapes:define-list relational-database-blueprint-list :member
                               relational-database-blueprint)

(smithy/sdk/shapes:define-structure relational-database-bundle common-lisp:nil
                                    ((bundle-id :target-type string
                                      :member-name "bundleId")
                                     (name :target-type string :member-name
                                      "name")
                                     (price :target-type float :member-name
                                      "price")
                                     (ram-size-in-gb :target-type float
                                      :member-name "ramSizeInGb")
                                     (disk-size-in-gb :target-type integer
                                      :member-name "diskSizeInGb")
                                     (transfer-per-month-in-gb :target-type
                                      integer :member-name
                                      "transferPerMonthInGb")
                                     (cpu-count :target-type integer
                                      :member-name "cpuCount")
                                     (is-encrypted :target-type boolean
                                      :member-name "isEncrypted")
                                     (is-active :target-type boolean
                                      :member-name "isActive"))
                                    (:shape-name "RelationalDatabaseBundle"))

(smithy/sdk/shapes:define-list relational-database-bundle-list :member
                               relational-database-bundle)

(smithy/sdk/shapes:define-structure relational-database-endpoint
                                    common-lisp:nil
                                    ((port :target-type integer :member-name
                                      "port")
                                     (address :target-type non-empty-string
                                      :member-name "address"))
                                    (:shape-name "RelationalDatabaseEndpoint"))

(smithy/sdk/shapes:define-enum relational-database-engine
    common-lisp:nil
  (:mysql "mysql"))

(smithy/sdk/shapes:define-structure relational-database-event common-lisp:nil
                                    ((resource :target-type resource-name
                                      :member-name "resource")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (message :target-type string :member-name
                                      "message")
                                     (event-categories :target-type string-list
                                      :member-name "eventCategories"))
                                    (:shape-name "RelationalDatabaseEvent"))

(smithy/sdk/shapes:define-list relational-database-event-list :member
                               relational-database-event)

(smithy/sdk/shapes:define-structure relational-database-hardware
                                    common-lisp:nil
                                    ((cpu-count :target-type integer
                                      :member-name "cpuCount")
                                     (disk-size-in-gb :target-type integer
                                      :member-name "diskSizeInGb")
                                     (ram-size-in-gb :target-type float
                                      :member-name "ramSizeInGb"))
                                    (:shape-name "RelationalDatabaseHardware"))

(smithy/sdk/shapes:define-list relational-database-list :member
                               relational-database)

(smithy/sdk/shapes:define-enum relational-database-metric-name
    common-lisp:nil
  (:cpuutilization "CPUUtilization")
  (:database-connections "DatabaseConnections")
  (:disk-queue-depth "DiskQueueDepth")
  (:free-storage-space "FreeStorageSpace")
  (:network-receive-throughput "NetworkReceiveThroughput")
  (:network-transmit-throughput "NetworkTransmitThroughput"))

(smithy/sdk/shapes:define-structure relational-database-parameter
                                    common-lisp:nil
                                    ((allowed-values :target-type string
                                      :member-name "allowedValues")
                                     (apply-method :target-type string
                                      :member-name "applyMethod")
                                     (apply-type :target-type string
                                      :member-name "applyType")
                                     (data-type :target-type string
                                      :member-name "dataType")
                                     (description :target-type string
                                      :member-name "description")
                                     (is-modifiable :target-type boolean
                                      :member-name "isModifiable")
                                     (parameter-name :target-type string
                                      :member-name "parameterName")
                                     (parameter-value :target-type string
                                      :member-name "parameterValue"))
                                    (:shape-name "RelationalDatabaseParameter"))

(smithy/sdk/shapes:define-list relational-database-parameter-list :member
                               relational-database-parameter)

(smithy/sdk/shapes:define-enum relational-database-password-version
    common-lisp:nil
  (:current "CURRENT")
  (:previous "PREVIOUS")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-structure relational-database-snapshot
                                    common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (engine :target-type non-empty-string
                                      :member-name "engine")
                                     (engine-version :target-type
                                      non-empty-string :member-name
                                      "engineVersion")
                                     (size-in-gb :target-type integer
                                      :member-name "sizeInGb")
                                     (state :target-type non-empty-string
                                      :member-name "state")
                                     (from-relational-database-name
                                      :target-type non-empty-string
                                      :member-name
                                      "fromRelationalDatabaseName")
                                     (from-relational-database-arn :target-type
                                      non-empty-string :member-name
                                      "fromRelationalDatabaseArn")
                                     (from-relational-database-bundle-id
                                      :target-type string :member-name
                                      "fromRelationalDatabaseBundleId")
                                     (from-relational-database-blueprint-id
                                      :target-type string :member-name
                                      "fromRelationalDatabaseBlueprintId"))
                                    (:shape-name "RelationalDatabaseSnapshot"))

(smithy/sdk/shapes:define-list relational-database-snapshot-list :member
                               relational-database-snapshot)

(smithy/sdk/shapes:define-input release-static-ip-request common-lisp:nil
                                ((static-ip-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "staticIpName"))
                                (:shape-name "ReleaseStaticIpRequest"))

(smithy/sdk/shapes:define-output release-static-ip-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "ReleaseStaticIpResult"))

(smithy/sdk/shapes:define-enum renewal-status
    common-lisp:nil
  (:pending-auto-renewal "PendingAutoRenewal")
  (:pending-validation "PendingValidation")
  (:success "Success")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type renewal-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure renewal-summary common-lisp:nil
                                    ((domain-validation-records :target-type
                                      domain-validation-record-list
                                      :member-name "domainValidationRecords")
                                     (renewal-status :target-type
                                      renewal-status :member-name
                                      "renewalStatus")
                                     (renewal-status-reason :target-type
                                      renewal-status-reason :member-name
                                      "renewalStatusReason")
                                     (updated-at :target-type iso-date
                                      :member-name "updatedAt"))
                                    (:shape-name "RenewalSummary"))

(smithy/sdk/shapes:define-type request-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reset-distribution-cache-request
                                common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :member-name "distributionName"))
                                (:shape-name "ResetDistributionCacheRequest"))

(smithy/sdk/shapes:define-output reset-distribution-cache-result
                                 common-lisp:nil
                                 ((status :target-type string :member-name
                                   "status")
                                  (create-time :target-type iso-date
                                   :member-name "createTime")
                                  (operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "ResetDistributionCacheResult"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-bucket-access
    common-lisp:nil
  (:allow "allow")
  (:deny "deny"))

(smithy/sdk/shapes:define-structure resource-budget-estimate common-lisp:nil
                                    ((resource-name :target-type resource-name
                                      :member-name "resourceName")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (cost-estimates :target-type
                                      cost-estimates :member-name
                                      "costEstimates")
                                     (start-time :target-type iso-date
                                      :member-name "startTime")
                                     (end-time :target-type iso-date
                                      :member-name "endTime"))
                                    (:shape-name "ResourceBudgetEstimate"))

(smithy/sdk/shapes:define-structure resource-location common-lisp:nil
                                    ((availability-zone :target-type string
                                      :member-name "availabilityZone")
                                     (region-name :target-type region-name
                                      :member-name "regionName"))
                                    (:shape-name "ResourceLocation"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-name-list :member resource-name)

(smithy/sdk/shapes:define-structure resource-receiving-access common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :member-name "name")
                                     (resource-type :target-type
                                      non-empty-string :member-name
                                      "resourceType"))
                                    (:shape-name "ResourceReceivingAccess"))

(smithy/sdk/shapes:define-structure resource-record common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type string :member-name
                                      "type")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "ResourceRecord"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:container-service "ContainerService")
  (:instance "Instance")
  (:static-ip "StaticIp")
  (:key-pair "KeyPair")
  (:instance-snapshot "InstanceSnapshot")
  (:domain "Domain")
  (:peered-vpc "PeeredVpc")
  (:load-balancer "LoadBalancer")
  (:load-balancer-tls-certificate "LoadBalancerTlsCertificate")
  (:disk "Disk")
  (:disk-snapshot "DiskSnapshot")
  (:relational-database "RelationalDatabase")
  (:relational-database-snapshot "RelationalDatabaseSnapshot")
  (:export-snapshot-record "ExportSnapshotRecord")
  (:cloud-formation-stack-record "CloudFormationStackRecord")
  (:alarm "Alarm")
  (:contact-method "ContactMethod")
  (:distribution "Distribution")
  (:certificate "Certificate")
  (:bucket "Bucket"))

(smithy/sdk/shapes:define-list resources-budget-estimate :member
                               resource-budget-estimate)

(smithy/sdk/shapes:define-type revocation-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-contact-method-verification-request
                                common-lisp:nil
                                ((protocol :target-type
                                  contact-method-verification-protocol
                                  :required common-lisp:t :member-name
                                  "protocol"))
                                (:shape-name
                                 "SendContactMethodVerificationRequest"))

(smithy/sdk/shapes:define-output send-contact-method-verification-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "SendContactMethodVerificationResult"))

(smithy/sdk/shapes:define-type sensitive-non-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type serial-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :member-name "name")
                                     (url :target-type
                                      sensitive-non-empty-string :member-name
                                      "url")
                                     (is-primary :target-type boolean
                                      :member-name "isPrimary"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-list sessions :member session)

(smithy/sdk/shapes:define-input set-ip-address-type-request common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (ip-address-type :target-type ip-address-type
                                  :required common-lisp:t :member-name
                                  "ipAddressType")
                                 (accept-bundle-update :target-type boolean
                                  :member-name "acceptBundleUpdate"))
                                (:shape-name "SetIpAddressTypeRequest"))

(smithy/sdk/shapes:define-output set-ip-address-type-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "SetIpAddressTypeResult"))

(smithy/sdk/shapes:define-input set-resource-access-for-bucket-request
                                common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (access :target-type resource-bucket-access
                                  :required common-lisp:t :member-name
                                  "access"))
                                (:shape-name
                                 "SetResourceAccessForBucketRequest"))

(smithy/sdk/shapes:define-output set-resource-access-for-bucket-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "SetResourceAccessForBucketResult"))

(smithy/sdk/shapes:define-type setup-domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list setup-domain-name-list :member setup-domain-name)

(smithy/sdk/shapes:define-structure setup-execution-details common-lisp:nil
                                    ((command :target-type string :member-name
                                      "command")
                                     (date-time :target-type iso-date
                                      :member-name "dateTime")
                                     (name :target-type non-empty-string
                                      :member-name "name")
                                     (status :target-type setup-status
                                      :member-name "status")
                                     (standard-error :target-type string
                                      :member-name "standardError")
                                     (standard-output :target-type string
                                      :member-name "standardOutput")
                                     (version :target-type string :member-name
                                      "version"))
                                    (:shape-name "SetupExecutionDetails"))

(smithy/sdk/shapes:define-list setup-execution-details-list :member
                               setup-execution-details)

(smithy/sdk/shapes:define-structure setup-history common-lisp:nil
                                    ((operation-id :target-type
                                      non-empty-string :member-name
                                      "operationId")
                                     (request :target-type setup-request
                                      :member-name "request")
                                     (resource :target-type
                                      setup-history-resource :member-name
                                      "resource")
                                     (execution-details :target-type
                                      setup-execution-details-list :member-name
                                      "executionDetails")
                                     (status :target-type setup-status
                                      :member-name "status"))
                                    (:shape-name "SetupHistory"))

(smithy/sdk/shapes:define-type setup-history-page-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure setup-history-resource common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType"))
                                    (:shape-name "SetupHistoryResource"))

(smithy/sdk/shapes:define-input setup-instance-https-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "emailAddress")
                                 (domain-names :target-type
                                  setup-domain-name-list :required
                                  common-lisp:t :member-name "domainNames")
                                 (certificate-provider :target-type
                                  certificate-provider :required common-lisp:t
                                  :member-name "certificateProvider"))
                                (:shape-name "SetupInstanceHttpsRequest"))

(smithy/sdk/shapes:define-output setup-instance-https-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "SetupInstanceHttpsResult"))

(smithy/sdk/shapes:define-structure setup-request common-lisp:nil
                                    ((instance-name :target-type resource-name
                                      :member-name "instanceName")
                                     (domain-names :target-type
                                      setup-domain-name-list :member-name
                                      "domainNames")
                                     (certificate-provider :target-type
                                      certificate-provider :member-name
                                      "certificateProvider"))
                                    (:shape-name "SetupRequest"))

(smithy/sdk/shapes:define-enum setup-status
    common-lisp:nil
  (:succeeded "succeeded")
  (:failed "failed")
  (:in-progress "inProgress"))

(smithy/sdk/shapes:define-input start-guisession-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName"))
                                (:shape-name "StartGUISessionRequest"))

(smithy/sdk/shapes:define-output start-guisession-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "StartGUISessionResult"))

(smithy/sdk/shapes:define-input start-instance-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName"))
                                (:shape-name "StartInstanceRequest"))

(smithy/sdk/shapes:define-output start-instance-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "StartInstanceResult"))

(smithy/sdk/shapes:define-input start-relational-database-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName"))
                                (:shape-name "StartRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output start-relational-database-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "StartRelationalDatabaseResult"))

(smithy/sdk/shapes:define-structure static-ip common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type non-empty-string
                                      :member-name "arn")
                                     (support-code :target-type string
                                      :member-name "supportCode")
                                     (created-at :target-type iso-date
                                      :member-name "createdAt")
                                     (location :target-type resource-location
                                      :member-name "location")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (ip-address :target-type ip-address
                                      :member-name "ipAddress")
                                     (attached-to :target-type resource-name
                                      :member-name "attachedTo")
                                     (is-attached :target-type boolean
                                      :member-name "isAttached"))
                                    (:shape-name "StaticIp"))

(smithy/sdk/shapes:define-list static-ip-list :member static-ip)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:start-expired "startExpired")
  (:not-started "notStarted")
  (:started "started")
  (:starting "starting")
  (:stopped "stopped")
  (:stopping "stopping")
  (:setting-up-instance "settingUpInstance")
  (:failed-instance-creation "failedInstanceCreation")
  (:failed-starting-guisession "failedStartingGUISession")
  (:failed-stopping-guisession "failedStoppingGUISession"))

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive"))

(smithy/sdk/shapes:define-input stop-guisession-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName"))
                                (:shape-name "StopGUISessionRequest"))

(smithy/sdk/shapes:define-output stop-guisession-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "StopGUISessionResult"))

(smithy/sdk/shapes:define-structure stop-instance-on-idle-request
                                    common-lisp:nil
                                    ((threshold :target-type string
                                      :member-name "threshold")
                                     (duration :target-type string :member-name
                                      "duration"))
                                    (:shape-name "StopInstanceOnIdleRequest"))

(smithy/sdk/shapes:define-input stop-instance-request common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (force :target-type boolean :member-name
                                  "force"))
                                (:shape-name "StopInstanceRequest"))

(smithy/sdk/shapes:define-output stop-instance-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "StopInstanceResult"))

(smithy/sdk/shapes:define-input stop-relational-database-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (relational-database-snapshot-name
                                  :target-type resource-name :member-name
                                  "relationalDatabaseSnapshotName"))
                                (:shape-name "StopRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output stop-relational-database-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "StopRelationalDatabaseResult"))

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type string-max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subject-alternative-name-list :member
                               domain-name)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (resource-arn :target-type resource-arn
                                  :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-alarm-request common-lisp:nil
                                ((alarm-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "alarmName")
                                 (state :target-type alarm-state :required
                                  common-lisp:t :member-name "state"))
                                (:shape-name "TestAlarmRequest"))

(smithy/sdk/shapes:define-output test-alarm-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "TestAlarmResult"))

(smithy/sdk/shapes:define-type time-of-day smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-period common-lisp:nil
                                    ((start :target-type iso-date :member-name
                                      "start")
                                     (end :target-type iso-date :member-name
                                      "end"))
                                    (:shape-name "TimePeriod"))

(smithy/sdk/shapes:define-enum treat-missing-data
    common-lisp:nil
  (:breaching "breaching")
  (:not-breaching "notBreaching")
  (:ignore "ignore")
  (:missing "missing"))

(smithy/sdk/shapes:define-error unauthenticated-exception common-lisp:nil
                                ((code :target-type string :member-name "code")
                                 (docs :target-type string :member-name "docs")
                                 (message :target-type string :member-name
                                  "message")
                                 (tip :target-type string :member-name "tip"))
                                (:shape-name "UnauthenticatedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input unpeer-vpc-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "UnpeerVpcRequest"))

(smithy/sdk/shapes:define-output unpeer-vpc-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "UnpeerVpcResult"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "resourceName")
                                 (resource-arn :target-type resource-arn
                                  :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input update-bucket-bundle-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (bundle-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "bundleId"))
                                (:shape-name "UpdateBucketBundleRequest"))

(smithy/sdk/shapes:define-output update-bucket-bundle-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "UpdateBucketBundleResult"))

(smithy/sdk/shapes:define-input update-bucket-request common-lisp:nil
                                ((bucket-name :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "bucketName")
                                 (access-rules :target-type access-rules
                                  :member-name "accessRules")
                                 (versioning :target-type non-empty-string
                                  :member-name "versioning")
                                 (readonly-access-accounts :target-type
                                  partner-id-list :member-name
                                  "readonlyAccessAccounts")
                                 (access-log-config :target-type
                                  bucket-access-log-config :member-name
                                  "accessLogConfig"))
                                (:shape-name "UpdateBucketRequest"))

(smithy/sdk/shapes:define-output update-bucket-result common-lisp:nil
                                 ((bucket :target-type bucket :member-name
                                   "bucket")
                                  (operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "UpdateBucketResult"))

(smithy/sdk/shapes:define-input update-container-service-request
                                common-lisp:nil
                                ((service-name :target-type
                                  container-service-name :required
                                  common-lisp:t :member-name "serviceName"
                                  :http-label common-lisp:t)
                                 (power :target-type
                                  container-service-power-name :member-name
                                  "power")
                                 (scale :target-type container-service-scale
                                  :member-name "scale")
                                 (is-disabled :target-type boolean :member-name
                                  "isDisabled")
                                 (public-domain-names :target-type
                                  container-service-public-domains :member-name
                                  "publicDomainNames")
                                 (private-registry-access :target-type
                                  private-registry-access-request :member-name
                                  "privateRegistryAccess"))
                                (:shape-name "UpdateContainerServiceRequest"))

(smithy/sdk/shapes:define-output update-container-service-result
                                 common-lisp:nil
                                 ((container-service :target-type
                                   container-service :member-name
                                   "containerService"))
                                 (:shape-name "UpdateContainerServiceResult"))

(smithy/sdk/shapes:define-input update-distribution-bundle-request
                                common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :member-name "distributionName")
                                 (bundle-id :target-type string :member-name
                                  "bundleId"))
                                (:shape-name "UpdateDistributionBundleRequest"))

(smithy/sdk/shapes:define-output update-distribution-bundle-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "UpdateDistributionBundleResult"))

(smithy/sdk/shapes:define-input update-distribution-request common-lisp:nil
                                ((distribution-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "distributionName")
                                 (origin :target-type input-origin :member-name
                                  "origin")
                                 (default-cache-behavior :target-type
                                  cache-behavior :member-name
                                  "defaultCacheBehavior")
                                 (cache-behavior-settings :target-type
                                  cache-settings :member-name
                                  "cacheBehaviorSettings")
                                 (cache-behaviors :target-type
                                  cache-behavior-list :member-name
                                  "cacheBehaviors")
                                 (is-enabled :target-type boolean :member-name
                                  "isEnabled")
                                 (viewer-minimum-tls-protocol-version
                                  :target-type
                                  viewer-minimum-tls-protocol-version-enum
                                  :member-name
                                  "viewerMinimumTlsProtocolVersion")
                                 (certificate-name :target-type resource-name
                                  :member-name "certificateName")
                                 (use-default-certificate :target-type boolean
                                  :member-name "useDefaultCertificate"))
                                (:shape-name "UpdateDistributionRequest"))

(smithy/sdk/shapes:define-output update-distribution-result common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name "UpdateDistributionResult"))

(smithy/sdk/shapes:define-input update-domain-entry-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (domain-entry :target-type domain-entry
                                  :required common-lisp:t :member-name
                                  "domainEntry"))
                                (:shape-name "UpdateDomainEntryRequest"))

(smithy/sdk/shapes:define-output update-domain-entry-result common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "UpdateDomainEntryResult"))

(smithy/sdk/shapes:define-input update-instance-metadata-options-request
                                common-lisp:nil
                                ((instance-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "instanceName")
                                 (http-tokens :target-type http-tokens
                                  :member-name "httpTokens")
                                 (http-endpoint :target-type http-endpoint
                                  :member-name "httpEndpoint")
                                 (http-put-response-hop-limit :target-type
                                  integer :member-name
                                  "httpPutResponseHopLimit")
                                 (http-protocol-ipv6 :target-type
                                  http-protocol-ipv6 :member-name
                                  "httpProtocolIpv6"))
                                (:shape-name
                                 "UpdateInstanceMetadataOptionsRequest"))

(smithy/sdk/shapes:define-output update-instance-metadata-options-result
                                 common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "operation"))
                                 (:shape-name
                                  "UpdateInstanceMetadataOptionsResult"))

(smithy/sdk/shapes:define-input update-load-balancer-attribute-request
                                common-lisp:nil
                                ((load-balancer-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "loadBalancerName")
                                 (attribute-name :target-type
                                  load-balancer-attribute-name :required
                                  common-lisp:t :member-name "attributeName")
                                 (attribute-value :target-type string-max256
                                  :required common-lisp:t :member-name
                                  "attributeValue"))
                                (:shape-name
                                 "UpdateLoadBalancerAttributeRequest"))

(smithy/sdk/shapes:define-output update-load-balancer-attribute-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "UpdateLoadBalancerAttributeResult"))

(smithy/sdk/shapes:define-input update-relational-database-parameters-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (parameters :target-type
                                  relational-database-parameter-list :required
                                  common-lisp:t :member-name "parameters"))
                                (:shape-name
                                 "UpdateRelationalDatabaseParametersRequest"))

(smithy/sdk/shapes:define-output update-relational-database-parameters-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name
                                  "UpdateRelationalDatabaseParametersResult"))

(smithy/sdk/shapes:define-input update-relational-database-request
                                common-lisp:nil
                                ((relational-database-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "relationalDatabaseName")
                                 (master-user-password :target-type
                                  sensitive-string :member-name
                                  "masterUserPassword")
                                 (rotate-master-user-password :target-type
                                  boolean :member-name
                                  "rotateMasterUserPassword")
                                 (preferred-backup-window :target-type string
                                  :member-name "preferredBackupWindow")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "preferredMaintenanceWindow")
                                 (enable-backup-retention :target-type boolean
                                  :member-name "enableBackupRetention")
                                 (disable-backup-retention :target-type boolean
                                  :member-name "disableBackupRetention")
                                 (publicly-accessible :target-type boolean
                                  :member-name "publiclyAccessible")
                                 (apply-immediately :target-type boolean
                                  :member-name "applyImmediately")
                                 (ca-certificate-identifier :target-type string
                                  :member-name "caCertificateIdentifier")
                                 (relational-database-blueprint-id :target-type
                                  string :member-name
                                  "relationalDatabaseBlueprintId"))
                                (:shape-name "UpdateRelationalDatabaseRequest"))

(smithy/sdk/shapes:define-output update-relational-database-result
                                 common-lisp:nil
                                 ((operations :target-type operation-list
                                   :member-name "operations"))
                                 (:shape-name "UpdateRelationalDatabaseResult"))

(smithy/sdk/shapes:define-enum viewer-minimum-tls-protocol-version-enum
    common-lisp:nil
  (:tlsv11-2016 "TLSv1.1_2016")
  (:tlsv12-2018 "TLSv1.2_2018")
  (:tlsv12-2019 "TLSv1.2_2019")
  (:tlsv12-2021 "TLSv1.2_2021"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list setup-history-list :member setup-history)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation allocate-static-ip :shape-name
                                       "AllocateStaticIp" :input
                                       allocate-static-ip-request :output
                                       allocate-static-ip-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/AllocateStaticIp"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-certificate-to-distribution
                                       :shape-name
                                       "AttachCertificateToDistribution" :input
                                       attach-certificate-to-distribution-request
                                       :output
                                       attach-certificate-to-distribution-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/AttachCertificateToDistribution"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-disk :shape-name "AttachDisk"
                                       :input attach-disk-request :output
                                       attach-disk-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/AttachDisk" :code
                                       200)

(smithy/sdk/operation:define-operation attach-instances-to-load-balancer
                                       :shape-name
                                       "AttachInstancesToLoadBalancer" :input
                                       attach-instances-to-load-balancer-request
                                       :output
                                       attach-instances-to-load-balancer-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/AttachInstancesToLoadBalancer"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-load-balancer-tls-certificate
                                       :shape-name
                                       "AttachLoadBalancerTlsCertificate"
                                       :input
                                       attach-load-balancer-tls-certificate-request
                                       :output
                                       attach-load-balancer-tls-certificate-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/AttachLoadBalancerTlsCertificate"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-static-ip :shape-name
                                       "AttachStaticIp" :input
                                       attach-static-ip-request :output
                                       attach-static-ip-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/AttachStaticIp"
                                       :code 200)

(smithy/sdk/operation:define-operation close-instance-public-ports :shape-name
                                       "CloseInstancePublicPorts" :input
                                       close-instance-public-ports-request
                                       :output
                                       close-instance-public-ports-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CloseInstancePublicPorts"
                                       :code 200)

(smithy/sdk/operation:define-operation copy-snapshot :shape-name "CopySnapshot"
                                       :input copy-snapshot-request :output
                                       copy-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CopySnapshot" :code
                                       200)

(smithy/sdk/operation:define-operation create-bucket :shape-name "CreateBucket"
                                       :input create-bucket-request :output
                                       create-bucket-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateBucket" :code
                                       200)

(smithy/sdk/operation:define-operation create-bucket-access-key :shape-name
                                       "CreateBucketAccessKey" :input
                                       create-bucket-access-key-request :output
                                       create-bucket-access-key-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateBucketAccessKey"
                                       :code 200)

(smithy/sdk/operation:define-operation create-certificate :shape-name
                                       "CreateCertificate" :input
                                       create-certificate-request :output
                                       create-certificate-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateCertificate"
                                       :code 200)

(smithy/sdk/operation:define-operation create-cloud-formation-stack :shape-name
                                       "CreateCloudFormationStack" :input
                                       create-cloud-formation-stack-request
                                       :output
                                       create-cloud-formation-stack-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateCloudFormationStack"
                                       :code 200)

(smithy/sdk/operation:define-operation create-contact-method :shape-name
                                       "CreateContactMethod" :input
                                       create-contact-method-request :output
                                       create-contact-method-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateContactMethod"
                                       :code 200)

(smithy/sdk/operation:define-operation create-container-service :shape-name
                                       "CreateContainerService" :input
                                       create-container-service-request :output
                                       create-container-service-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/container-services"
                                       :code 201)

(smithy/sdk/operation:define-operation create-container-service-deployment
                                       :shape-name
                                       "CreateContainerServiceDeployment"
                                       :input
                                       create-container-service-deployment-request
                                       :output
                                       create-container-service-deployment-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/deployments"
                                       :code 201)

(smithy/sdk/operation:define-operation create-container-service-registry-login
                                       :shape-name
                                       "CreateContainerServiceRegistryLogin"
                                       :input
                                       create-container-service-registry-login-request
                                       :output
                                       create-container-service-registry-login-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/container-registry-login"
                                       :code 200)

(smithy/sdk/operation:define-operation create-disk :shape-name "CreateDisk"
                                       :input create-disk-request :output
                                       create-disk-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateDisk" :code
                                       200)

(smithy/sdk/operation:define-operation create-disk-from-snapshot :shape-name
                                       "CreateDiskFromSnapshot" :input
                                       create-disk-from-snapshot-request
                                       :output create-disk-from-snapshot-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateDiskFromSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation create-disk-snapshot :shape-name
                                       "CreateDiskSnapshot" :input
                                       create-disk-snapshot-request :output
                                       create-disk-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateDiskSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation create-distribution :shape-name
                                       "CreateDistribution" :input
                                       create-distribution-request :output
                                       create-distribution-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateDistribution"
                                       :code 200)

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateDomain" :code
                                       200)

(smithy/sdk/operation:define-operation create-domain-entry :shape-name
                                       "CreateDomainEntry" :input
                                       create-domain-entry-request :output
                                       create-domain-entry-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateDomainEntry"
                                       :code 200)

(smithy/sdk/operation:define-operation create-guisession-access-details
                                       :shape-name
                                       "CreateGUISessionAccessDetails" :input
                                       create-guisession-access-details-request
                                       :output
                                       create-guisession-access-details-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/create-gui-session-access-details"
                                       :code 200)

(smithy/sdk/operation:define-operation create-instance-snapshot :shape-name
                                       "CreateInstanceSnapshot" :input
                                       create-instance-snapshot-request :output
                                       create-instance-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateInstanceSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation create-instances :shape-name
                                       "CreateInstances" :input
                                       create-instances-request :output
                                       create-instances-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateInstances"
                                       :code 200)

(smithy/sdk/operation:define-operation create-instances-from-snapshot
                                       :shape-name
                                       "CreateInstancesFromSnapshot" :input
                                       create-instances-from-snapshot-request
                                       :output
                                       create-instances-from-snapshot-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateInstancesFromSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation create-key-pair :shape-name
                                       "CreateKeyPair" :input
                                       create-key-pair-request :output
                                       create-key-pair-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateKeyPair" :code
                                       200)

(smithy/sdk/operation:define-operation create-load-balancer :shape-name
                                       "CreateLoadBalancer" :input
                                       create-load-balancer-request :output
                                       create-load-balancer-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateLoadBalancer"
                                       :code 200)

(smithy/sdk/operation:define-operation create-load-balancer-tls-certificate
                                       :shape-name
                                       "CreateLoadBalancerTlsCertificate"
                                       :input
                                       create-load-balancer-tls-certificate-request
                                       :output
                                       create-load-balancer-tls-certificate-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateLoadBalancerTlsCertificate"
                                       :code 200)

(smithy/sdk/operation:define-operation create-relational-database :shape-name
                                       "CreateRelationalDatabase" :input
                                       create-relational-database-request
                                       :output
                                       create-relational-database-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation create-relational-database-from-snapshot
                                       :shape-name
                                       "CreateRelationalDatabaseFromSnapshot"
                                       :input
                                       create-relational-database-from-snapshot-request
                                       :output
                                       create-relational-database-from-snapshot-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateRelationalDatabaseFromSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation create-relational-database-snapshot
                                       :shape-name
                                       "CreateRelationalDatabaseSnapshot"
                                       :input
                                       create-relational-database-snapshot-request
                                       :output
                                       create-relational-database-snapshot-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/CreateRelationalDatabaseSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-alarm :shape-name "DeleteAlarm"
                                       :input delete-alarm-request :output
                                       delete-alarm-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "DELETE" :uri
                                       "/ls/api/2016-11-28/DeleteAlarm" :code
                                       200)

(smithy/sdk/operation:define-operation delete-auto-snapshot :shape-name
                                       "DeleteAutoSnapshot" :input
                                       delete-auto-snapshot-request :output
                                       delete-auto-snapshot-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteAutoSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-bucket :shape-name "DeleteBucket"
                                       :input delete-bucket-request :output
                                       delete-bucket-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteBucket" :code
                                       200)

(smithy/sdk/operation:define-operation delete-bucket-access-key :shape-name
                                       "DeleteBucketAccessKey" :input
                                       delete-bucket-access-key-request :output
                                       delete-bucket-access-key-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteBucketAccessKey"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-certificate :shape-name
                                       "DeleteCertificate" :input
                                       delete-certificate-request :output
                                       delete-certificate-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteCertificate"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-contact-method :shape-name
                                       "DeleteContactMethod" :input
                                       delete-contact-method-request :output
                                       delete-contact-method-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteContactMethod"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-container-image :shape-name
                                       "DeleteContainerImage" :input
                                       delete-container-image-request :output
                                       delete-container-image-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "DELETE" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/images/{image}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-container-service :shape-name
                                       "DeleteContainerService" :input
                                       delete-container-service-request :output
                                       delete-container-service-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "DELETE" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-disk :shape-name "DeleteDisk"
                                       :input delete-disk-request :output
                                       delete-disk-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteDisk" :code
                                       200)

(smithy/sdk/operation:define-operation delete-disk-snapshot :shape-name
                                       "DeleteDiskSnapshot" :input
                                       delete-disk-snapshot-request :output
                                       delete-disk-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteDiskSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-distribution :shape-name
                                       "DeleteDistribution" :input
                                       delete-distribution-request :output
                                       delete-distribution-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteDistribution"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteDomain" :code
                                       200)

(smithy/sdk/operation:define-operation delete-domain-entry :shape-name
                                       "DeleteDomainEntry" :input
                                       delete-domain-entry-request :output
                                       delete-domain-entry-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteDomainEntry"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-instance :shape-name
                                       "DeleteInstance" :input
                                       delete-instance-request :output
                                       delete-instance-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteInstance"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-instance-snapshot :shape-name
                                       "DeleteInstanceSnapshot" :input
                                       delete-instance-snapshot-request :output
                                       delete-instance-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteInstanceSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-key-pair :shape-name
                                       "DeleteKeyPair" :input
                                       delete-key-pair-request :output
                                       delete-key-pair-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteKeyPair" :code
                                       200)

(smithy/sdk/operation:define-operation delete-known-host-keys :shape-name
                                       "DeleteKnownHostKeys" :input
                                       delete-known-host-keys-request :output
                                       delete-known-host-keys-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteKnownHostKeys"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-load-balancer :shape-name
                                       "DeleteLoadBalancer" :input
                                       delete-load-balancer-request :output
                                       delete-load-balancer-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteLoadBalancer"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-load-balancer-tls-certificate
                                       :shape-name
                                       "DeleteLoadBalancerTlsCertificate"
                                       :input
                                       delete-load-balancer-tls-certificate-request
                                       :output
                                       delete-load-balancer-tls-certificate-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteLoadBalancerTlsCertificate"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-relational-database :shape-name
                                       "DeleteRelationalDatabase" :input
                                       delete-relational-database-request
                                       :output
                                       delete-relational-database-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-relational-database-snapshot
                                       :shape-name
                                       "DeleteRelationalDatabaseSnapshot"
                                       :input
                                       delete-relational-database-snapshot-request
                                       :output
                                       delete-relational-database-snapshot-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DeleteRelationalDatabaseSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-certificate-from-distribution
                                       :shape-name
                                       "DetachCertificateFromDistribution"
                                       :input
                                       detach-certificate-from-distribution-request
                                       :output
                                       detach-certificate-from-distribution-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DetachCertificateFromDistribution"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-disk :shape-name "DetachDisk"
                                       :input detach-disk-request :output
                                       detach-disk-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DetachDisk" :code
                                       200)

(smithy/sdk/operation:define-operation detach-instances-from-load-balancer
                                       :shape-name
                                       "DetachInstancesFromLoadBalancer" :input
                                       detach-instances-from-load-balancer-request
                                       :output
                                       detach-instances-from-load-balancer-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DetachInstancesFromLoadBalancer"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-static-ip :shape-name
                                       "DetachStaticIp" :input
                                       detach-static-ip-request :output
                                       detach-static-ip-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DetachStaticIp"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-add-on :shape-name
                                       "DisableAddOn" :input
                                       disable-add-on-request :output
                                       disable-add-on-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DisableAddOn" :code
                                       200)

(smithy/sdk/operation:define-operation download-default-key-pair :shape-name
                                       "DownloadDefaultKeyPair" :input
                                       download-default-key-pair-request
                                       :output download-default-key-pair-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/DownloadDefaultKeyPair"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-add-on :shape-name "EnableAddOn"
                                       :input enable-add-on-request :output
                                       enable-add-on-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/EnableAddOn" :code
                                       200)

(smithy/sdk/operation:define-operation export-snapshot :shape-name
                                       "ExportSnapshot" :input
                                       export-snapshot-request :output
                                       export-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/ExportSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation get-active-names :shape-name
                                       "GetActiveNames" :input
                                       get-active-names-request :output
                                       get-active-names-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetActiveNames"
                                       :code 200)

(smithy/sdk/operation:define-operation get-alarms :shape-name "GetAlarms"
                                       :input get-alarms-request :output
                                       get-alarms-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/GetAlarms" :code 200)

(smithy/sdk/operation:define-operation get-auto-snapshots :shape-name
                                       "GetAutoSnapshots" :input
                                       get-auto-snapshots-request :output
                                       get-auto-snapshots-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetAutoSnapshots"
                                       :code 200)

(smithy/sdk/operation:define-operation get-blueprints :shape-name
                                       "GetBlueprints" :input
                                       get-blueprints-request :output
                                       get-blueprints-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetBlueprints" :code
                                       200)

(smithy/sdk/operation:define-operation get-bucket-access-keys :shape-name
                                       "GetBucketAccessKeys" :input
                                       get-bucket-access-keys-request :output
                                       get-bucket-access-keys-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetBucketAccessKeys"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-bundles :shape-name
                                       "GetBucketBundles" :input
                                       get-bucket-bundles-request :output
                                       get-bucket-bundles-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetBucketBundles"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-metric-data :shape-name
                                       "GetBucketMetricData" :input
                                       get-bucket-metric-data-request :output
                                       get-bucket-metric-data-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetBucketMetricData"
                                       :code 200)

(smithy/sdk/operation:define-operation get-buckets :shape-name "GetBuckets"
                                       :input get-buckets-request :output
                                       get-buckets-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetBuckets" :code
                                       200)

(smithy/sdk/operation:define-operation get-bundles :shape-name "GetBundles"
                                       :input get-bundles-request :output
                                       get-bundles-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetBundles" :code
                                       200)

(smithy/sdk/operation:define-operation get-certificates :shape-name
                                       "GetCertificates" :input
                                       get-certificates-request :output
                                       get-certificates-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetCertificates"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cloud-formation-stack-records
                                       :shape-name
                                       "GetCloudFormationStackRecords" :input
                                       get-cloud-formation-stack-records-request
                                       :output
                                       get-cloud-formation-stack-records-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetCloudFormationStackRecords"
                                       :code 200)

(smithy/sdk/operation:define-operation get-contact-methods :shape-name
                                       "GetContactMethods" :input
                                       get-contact-methods-request :output
                                       get-contact-methods-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/GetContactMethods"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-apimetadata :shape-name
                                       "GetContainerAPIMetadata" :input
                                       get-container-apimetadata-request
                                       :output get-container-apimetadata-result
                                       :errors
                                       (access-denied-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-api-metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-images :shape-name
                                       "GetContainerImages" :input
                                       get-container-images-request :output
                                       get-container-images-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/images"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-log :shape-name
                                       "GetContainerLog" :input
                                       get-container-log-request :output
                                       get-container-log-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/containers/{containerName}/log"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-service-deployments
                                       :shape-name
                                       "GetContainerServiceDeployments" :input
                                       get-container-service-deployments-request
                                       :output
                                       get-container-service-deployments-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-service-metric-data
                                       :shape-name
                                       "GetContainerServiceMetricData" :input
                                       get-container-service-metric-data-request
                                       :output
                                       get-container-service-metric-data-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-service-powers :shape-name
                                       "GetContainerServicePowers" :input
                                       get-container-service-powers-request
                                       :output
                                       get-container-service-powers-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-service-powers"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-services :shape-name
                                       "GetContainerServices" :input
                                       get-container-services-request :output
                                       container-services-list-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/container-services"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cost-estimate :shape-name
                                       "GetCostEstimate" :input
                                       get-cost-estimate-request :output
                                       get-cost-estimate-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/budgettracker/getCostEstimate" :code
                                       200)

(smithy/sdk/operation:define-operation get-disk :shape-name "GetDisk" :input
                                       get-disk-request :output get-disk-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDisk" :code 200)

(smithy/sdk/operation:define-operation get-disk-snapshot :shape-name
                                       "GetDiskSnapshot" :input
                                       get-disk-snapshot-request :output
                                       get-disk-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDiskSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation get-disk-snapshots :shape-name
                                       "GetDiskSnapshots" :input
                                       get-disk-snapshots-request :output
                                       get-disk-snapshots-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDiskSnapshots"
                                       :code 200)

(smithy/sdk/operation:define-operation get-disks :shape-name "GetDisks" :input
                                       get-disks-request :output
                                       get-disks-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDisks" :code 200)

(smithy/sdk/operation:define-operation get-distribution-bundles :shape-name
                                       "GetDistributionBundles" :input
                                       get-distribution-bundles-request :output
                                       get-distribution-bundles-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDistributionBundles"
                                       :code 200)

(smithy/sdk/operation:define-operation get-distribution-latest-cache-reset
                                       :shape-name
                                       "GetDistributionLatestCacheReset" :input
                                       get-distribution-latest-cache-reset-request
                                       :output
                                       get-distribution-latest-cache-reset-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDistributionLatestCacheReset"
                                       :code 200)

(smithy/sdk/operation:define-operation get-distribution-metric-data :shape-name
                                       "GetDistributionMetricData" :input
                                       get-distribution-metric-data-request
                                       :output
                                       get-distribution-metric-data-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDistributionMetricData"
                                       :code 200)

(smithy/sdk/operation:define-operation get-distributions :shape-name
                                       "GetDistributions" :input
                                       get-distributions-request :output
                                       get-distributions-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDistributions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain :shape-name "GetDomain"
                                       :input get-domain-request :output
                                       get-domain-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDomain" :code 200)

(smithy/sdk/operation:define-operation get-domains :shape-name "GetDomains"
                                       :input get-domains-request :output
                                       get-domains-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetDomains" :code
                                       200)

(smithy/sdk/operation:define-operation get-export-snapshot-records :shape-name
                                       "GetExportSnapshotRecords" :input
                                       get-export-snapshot-records-request
                                       :output
                                       get-export-snapshot-records-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetExportSnapshotRecords"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance :shape-name "GetInstance"
                                       :input get-instance-request :output
                                       get-instance-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstance" :code
                                       200)

(smithy/sdk/operation:define-operation get-instance-access-details :shape-name
                                       "GetInstanceAccessDetails" :input
                                       get-instance-access-details-request
                                       :output
                                       get-instance-access-details-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstanceAccessDetails"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance-metric-data :shape-name
                                       "GetInstanceMetricData" :input
                                       get-instance-metric-data-request :output
                                       get-instance-metric-data-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstanceMetricData"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance-port-states :shape-name
                                       "GetInstancePortStates" :input
                                       get-instance-port-states-request :output
                                       get-instance-port-states-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstancePortStates"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance-snapshot :shape-name
                                       "GetInstanceSnapshot" :input
                                       get-instance-snapshot-request :output
                                       get-instance-snapshot-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstanceSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance-snapshots :shape-name
                                       "GetInstanceSnapshots" :input
                                       get-instance-snapshots-request :output
                                       get-instance-snapshots-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstanceSnapshots"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance-state :shape-name
                                       "GetInstanceState" :input
                                       get-instance-state-request :output
                                       get-instance-state-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstanceState"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instances :shape-name "GetInstances"
                                       :input get-instances-request :output
                                       get-instances-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetInstances" :code
                                       200)

(smithy/sdk/operation:define-operation get-key-pair :shape-name "GetKeyPair"
                                       :input get-key-pair-request :output
                                       get-key-pair-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetKeyPair" :code
                                       200)

(smithy/sdk/operation:define-operation get-key-pairs :shape-name "GetKeyPairs"
                                       :input get-key-pairs-request :output
                                       get-key-pairs-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetKeyPairs" :code
                                       200)

(smithy/sdk/operation:define-operation get-load-balancer :shape-name
                                       "GetLoadBalancer" :input
                                       get-load-balancer-request :output
                                       get-load-balancer-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetLoadBalancer"
                                       :code 200)

(smithy/sdk/operation:define-operation get-load-balancer-metric-data
                                       :shape-name "GetLoadBalancerMetricData"
                                       :input
                                       get-load-balancer-metric-data-request
                                       :output
                                       get-load-balancer-metric-data-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetLoadBalancerMetricData"
                                       :code 200)

(smithy/sdk/operation:define-operation get-load-balancer-tls-certificates
                                       :shape-name
                                       "GetLoadBalancerTlsCertificates" :input
                                       get-load-balancer-tls-certificates-request
                                       :output
                                       get-load-balancer-tls-certificates-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetLoadBalancerTlsCertificates"
                                       :code 200)

(smithy/sdk/operation:define-operation get-load-balancer-tls-policies
                                       :shape-name "GetLoadBalancerTlsPolicies"
                                       :input
                                       get-load-balancer-tls-policies-request
                                       :output
                                       get-load-balancer-tls-policies-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetLoadBalancerTlsPolicies"
                                       :code 200)

(smithy/sdk/operation:define-operation get-load-balancers :shape-name
                                       "GetLoadBalancers" :input
                                       get-load-balancers-request :output
                                       get-load-balancers-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetLoadBalancers"
                                       :code 200)

(smithy/sdk/operation:define-operation get-operation :shape-name "GetOperation"
                                       :input get-operation-request :output
                                       get-operation-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetOperation" :code
                                       200)

(smithy/sdk/operation:define-operation get-operations :shape-name
                                       "GetOperations" :input
                                       get-operations-request :output
                                       get-operations-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetOperations" :code
                                       200)

(smithy/sdk/operation:define-operation get-operations-for-resource :shape-name
                                       "GetOperationsForResource" :input
                                       get-operations-for-resource-request
                                       :output
                                       get-operations-for-resource-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetOperationsForResource"
                                       :code 200)

(smithy/sdk/operation:define-operation get-regions :shape-name "GetRegions"
                                       :input get-regions-request :output
                                       get-regions-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRegions" :code
                                       200)

(smithy/sdk/operation:define-operation get-relational-database :shape-name
                                       "GetRelationalDatabase" :input
                                       get-relational-database-request :output
                                       get-relational-database-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-blueprints
                                       :shape-name
                                       "GetRelationalDatabaseBlueprints" :input
                                       get-relational-database-blueprints-request
                                       :output
                                       get-relational-database-blueprints-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseBlueprints"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-bundles
                                       :shape-name
                                       "GetRelationalDatabaseBundles" :input
                                       get-relational-database-bundles-request
                                       :output
                                       get-relational-database-bundles-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseBundles"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-events
                                       :shape-name
                                       "GetRelationalDatabaseEvents" :input
                                       get-relational-database-events-request
                                       :output
                                       get-relational-database-events-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseEvents"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-log-events
                                       :shape-name
                                       "GetRelationalDatabaseLogEvents" :input
                                       get-relational-database-log-events-request
                                       :output
                                       get-relational-database-log-events-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseLogEvents"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-log-streams
                                       :shape-name
                                       "GetRelationalDatabaseLogStreams" :input
                                       get-relational-database-log-streams-request
                                       :output
                                       get-relational-database-log-streams-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseLogStreams"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-relational-database-master-user-password :shape-name
 "GetRelationalDatabaseMasterUserPassword" :input
 get-relational-database-master-user-password-request :output
 get-relational-database-master-user-password-result :errors
 (access-denied-exception account-setup-in-progress-exception
  invalid-input-exception not-found-exception operation-failure-exception
  region-setup-in-progress-exception service-exception
  unauthenticated-exception)
 :method "POST" :uri
 "/ls/api/2016-11-28/GetRelationalDatabaseMasterUserPassword" :code 200)

(smithy/sdk/operation:define-operation get-relational-database-metric-data
                                       :shape-name
                                       "GetRelationalDatabaseMetricData" :input
                                       get-relational-database-metric-data-request
                                       :output
                                       get-relational-database-metric-data-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseMetricData"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-parameters
                                       :shape-name
                                       "GetRelationalDatabaseParameters" :input
                                       get-relational-database-parameters-request
                                       :output
                                       get-relational-database-parameters-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseParameters"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-snapshot
                                       :shape-name
                                       "GetRelationalDatabaseSnapshot" :input
                                       get-relational-database-snapshot-request
                                       :output
                                       get-relational-database-snapshot-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseSnapshot"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-database-snapshots
                                       :shape-name
                                       "GetRelationalDatabaseSnapshots" :input
                                       get-relational-database-snapshots-request
                                       :output
                                       get-relational-database-snapshots-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabaseSnapshots"
                                       :code 200)

(smithy/sdk/operation:define-operation get-relational-databases :shape-name
                                       "GetRelationalDatabases" :input
                                       get-relational-databases-request :output
                                       get-relational-databases-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetRelationalDatabases"
                                       :code 200)

(smithy/sdk/operation:define-operation get-setup-history :shape-name
                                       "GetSetupHistory" :input
                                       get-setup-history-request :output
                                       get-setup-history-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/get-setup-history"
                                       :code 200)

(smithy/sdk/operation:define-operation get-static-ip :shape-name "GetStaticIp"
                                       :input get-static-ip-request :output
                                       get-static-ip-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetStaticIp" :code
                                       200)

(smithy/sdk/operation:define-operation get-static-ips :shape-name
                                       "GetStaticIps" :input
                                       get-static-ips-request :output
                                       get-static-ips-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/GetStaticIps" :code
                                       200)

(smithy/sdk/operation:define-operation import-key-pair :shape-name
                                       "ImportKeyPair" :input
                                       import-key-pair-request :output
                                       import-key-pair-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/ImportKeyPair" :code
                                       200)

(smithy/sdk/operation:define-operation is-vpc-peered :shape-name "IsVpcPeered"
                                       :input is-vpc-peered-request :output
                                       is-vpc-peered-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/IsVpcPeered" :code
                                       200)

(smithy/sdk/operation:define-operation open-instance-public-ports :shape-name
                                       "OpenInstancePublicPorts" :input
                                       open-instance-public-ports-request
                                       :output
                                       open-instance-public-ports-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/OpenInstancePublicPorts"
                                       :code 200)

(smithy/sdk/operation:define-operation peer-vpc :shape-name "PeerVpc" :input
                                       peer-vpc-request :output peer-vpc-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/PeerVpc" :code 200)

(smithy/sdk/operation:define-operation put-alarm :shape-name "PutAlarm" :input
                                       put-alarm-request :output
                                       put-alarm-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/PutAlarm" :code 200)

(smithy/sdk/operation:define-operation put-instance-public-ports :shape-name
                                       "PutInstancePublicPorts" :input
                                       put-instance-public-ports-request
                                       :output put-instance-public-ports-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/PutInstancePublicPorts"
                                       :code 200)

(smithy/sdk/operation:define-operation reboot-instance :shape-name
                                       "RebootInstance" :input
                                       reboot-instance-request :output
                                       reboot-instance-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/RebootInstance"
                                       :code 200)

(smithy/sdk/operation:define-operation reboot-relational-database :shape-name
                                       "RebootRelationalDatabase" :input
                                       reboot-relational-database-request
                                       :output
                                       reboot-relational-database-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/RebootRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation register-container-image :shape-name
                                       "RegisterContainerImage" :input
                                       register-container-image-request :output
                                       register-container-image-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}/images"
                                       :code 200)

(smithy/sdk/operation:define-operation release-static-ip :shape-name
                                       "ReleaseStaticIp" :input
                                       release-static-ip-request :output
                                       release-static-ip-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/ReleaseStaticIp"
                                       :code 200)

(smithy/sdk/operation:define-operation reset-distribution-cache :shape-name
                                       "ResetDistributionCache" :input
                                       reset-distribution-cache-request :output
                                       reset-distribution-cache-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/ResetDistributionCache"
                                       :code 200)

(smithy/sdk/operation:define-operation send-contact-method-verification
                                       :shape-name
                                       "SendContactMethodVerification" :input
                                       send-contact-method-verification-request
                                       :output
                                       send-contact-method-verification-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/SendContactMethodVerification"
                                       :code 200)

(smithy/sdk/operation:define-operation set-ip-address-type :shape-name
                                       "SetIpAddressType" :input
                                       set-ip-address-type-request :output
                                       set-ip-address-type-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/SetIpAddressType"
                                       :code 200)

(smithy/sdk/operation:define-operation set-resource-access-for-bucket
                                       :shape-name "SetResourceAccessForBucket"
                                       :input
                                       set-resource-access-for-bucket-request
                                       :output
                                       set-resource-access-for-bucket-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/SetResourceAccessForBucket"
                                       :code 200)

(smithy/sdk/operation:define-operation setup-instance-https :shape-name
                                       "SetupInstanceHttps" :input
                                       setup-instance-https-request :output
                                       setup-instance-https-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/setup-instance-https"
                                       :code 200)

(smithy/sdk/operation:define-operation start-guisession :shape-name
                                       "StartGUISession" :input
                                       start-guisession-request :output
                                       start-guisession-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/start-gui-session"
                                       :code 200)

(smithy/sdk/operation:define-operation start-instance :shape-name
                                       "StartInstance" :input
                                       start-instance-request :output
                                       start-instance-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/StartInstance" :code
                                       200)

(smithy/sdk/operation:define-operation start-relational-database :shape-name
                                       "StartRelationalDatabase" :input
                                       start-relational-database-request
                                       :output start-relational-database-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/StartRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-guisession :shape-name
                                       "StopGUISession" :input
                                       stop-guisession-request :output
                                       stop-guisession-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/stop-gui-session"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-instance :shape-name "StopInstance"
                                       :input stop-instance-request :output
                                       stop-instance-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/StopInstance" :code
                                       200)

(smithy/sdk/operation:define-operation stop-relational-database :shape-name
                                       "StopRelationalDatabase" :input
                                       stop-relational-database-request :output
                                       stop-relational-database-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/StopRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/TagResource" :code
                                       200)

(smithy/sdk/operation:define-operation test-alarm :shape-name "TestAlarm"
                                       :input test-alarm-request :output
                                       test-alarm-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "GET" :uri
                                       "/ls/api/2016-11-28/TestAlarm" :code 200)

(smithy/sdk/operation:define-operation unpeer-vpc :shape-name "UnpeerVpc"
                                       :input unpeer-vpc-request :output
                                       unpeer-vpc-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UnpeerVpc" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UntagResource" :code
                                       200)

(smithy/sdk/operation:define-operation update-bucket :shape-name "UpdateBucket"
                                       :input update-bucket-request :output
                                       update-bucket-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateBucket" :code
                                       200)

(smithy/sdk/operation:define-operation update-bucket-bundle :shape-name
                                       "UpdateBucketBundle" :input
                                       update-bucket-bundle-request :output
                                       update-bucket-bundle-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateBucketBundle"
                                       :code 200)

(smithy/sdk/operation:define-operation update-container-service :shape-name
                                       "UpdateContainerService" :input
                                       update-container-service-request :output
                                       update-container-service-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "PATCH" :uri
                                       "/ls/api/2016-11-28/container-services/{serviceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-distribution :shape-name
                                       "UpdateDistribution" :input
                                       update-distribution-request :output
                                       update-distribution-result :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateDistribution"
                                       :code 200)

(smithy/sdk/operation:define-operation update-distribution-bundle :shape-name
                                       "UpdateDistributionBundle" :input
                                       update-distribution-bundle-request
                                       :output
                                       update-distribution-bundle-result
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateDistributionBundle"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-entry :shape-name
                                       "UpdateDomainEntry" :input
                                       update-domain-entry-request :output
                                       update-domain-entry-result :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateDomainEntry"
                                       :code 200)

(smithy/sdk/operation:define-operation update-instance-metadata-options
                                       :shape-name
                                       "UpdateInstanceMetadataOptions" :input
                                       update-instance-metadata-options-request
                                       :output
                                       update-instance-metadata-options-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateInstanceMetadataOptions"
                                       :code 200)

(smithy/sdk/operation:define-operation update-load-balancer-attribute
                                       :shape-name
                                       "UpdateLoadBalancerAttribute" :input
                                       update-load-balancer-attribute-request
                                       :output
                                       update-load-balancer-attribute-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateLoadBalancerAttribute"
                                       :code 200)

(smithy/sdk/operation:define-operation update-relational-database :shape-name
                                       "UpdateRelationalDatabase" :input
                                       update-relational-database-request
                                       :output
                                       update-relational-database-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateRelationalDatabase"
                                       :code 200)

(smithy/sdk/operation:define-operation update-relational-database-parameters
                                       :shape-name
                                       "UpdateRelationalDatabaseParameters"
                                       :input
                                       update-relational-database-parameters-request
                                       :output
                                       update-relational-database-parameters-result
                                       :errors
                                       (access-denied-exception
                                        account-setup-in-progress-exception
                                        invalid-input-exception
                                        not-found-exception
                                        operation-failure-exception
                                        region-setup-in-progress-exception
                                        service-exception
                                        unauthenticated-exception)
                                       :method "POST" :uri
                                       "/ls/api/2016-11-28/UpdateRelationalDatabaseParameters"
                                       :code 200)
