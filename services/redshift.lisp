(uiop/package:define-package #:pira/redshift (:use)
                             (:export #:accept-reserved-node-exchange
                              #:account-attribute #:account-attribute-list
                              #:account-with-restore-access
                              #:accounts-with-restore-access-list #:action-type
                              #:add-partner #:aqua-configuration
                              #:aqua-configuration-status #:aqua-status
                              #:associate-data-share-consumer
                              #:associated-cluster-list #:association
                              #:association-list #:attribute-list
                              #:attribute-name-list #:attribute-value-list
                              #:attribute-value-target #:authentication-profile
                              #:authentication-profile-list
                              #:authentication-profile-name-string
                              #:authorization-status
                              #:authorize-cluster-security-group-ingress
                              #:authorize-data-share
                              #:authorize-endpoint-access
                              #:authorize-snapshot-access
                              #:authorized-audience-list
                              #:authorized-token-issuer
                              #:authorized-token-issuer-list
                              #:availability-zone #:availability-zone-list
                              #:batch-delete-cluster-snapshots
                              #:batch-modify-cluster-snapshots
                              #:batch-snapshot-operation-error-list
                              #:batch-snapshot-operation-errors #:boolean
                              #:boolean-optional #:cancel-resize
                              #:certificate-association
                              #:certificate-association-list #:cluster
                              #:cluster-associated-to-schedule
                              #:cluster-credentials #:cluster-db-revision
                              #:cluster-db-revisions-list
                              #:cluster-extended-credentials #:cluster-iam-role
                              #:cluster-iam-role-list #:cluster-list
                              #:cluster-node #:cluster-nodes-list
                              #:cluster-parameter-group
                              #:cluster-parameter-group-details
                              #:cluster-parameter-group-name-message
                              #:cluster-parameter-group-status
                              #:cluster-parameter-group-status-list
                              #:cluster-parameter-status
                              #:cluster-parameter-status-list
                              #:cluster-security-group
                              #:cluster-security-group-membership
                              #:cluster-security-group-membership-list
                              #:cluster-security-group-name-list
                              #:cluster-security-groups
                              #:cluster-snapshot-copy-status
                              #:cluster-subnet-group #:cluster-subnet-groups
                              #:cluster-version #:cluster-version-list
                              #:consumer-identifier-list
                              #:copy-cluster-snapshot
                              #:create-authentication-profile #:create-cluster
                              #:create-cluster-parameter-group
                              #:create-cluster-security-group
                              #:create-cluster-snapshot
                              #:create-cluster-subnet-group
                              #:create-custom-domain-association
                              #:create-endpoint-access
                              #:create-event-subscription
                              #:create-hsm-client-certificate
                              #:create-hsm-configuration #:create-integration
                              #:create-redshift-idc-application
                              #:create-scheduled-action
                              #:create-snapshot-copy-grant
                              #:create-snapshot-schedule #:create-tags
                              #:create-usage-limit
                              #:custom-domain-certificate-arn-string
                              #:custom-domain-name-string #:data-share
                              #:data-share-association
                              #:data-share-association-list #:data-share-list
                              #:data-share-status
                              #:data-share-status-for-consumer
                              #:data-share-status-for-producer
                              #:data-share-type #:data-transfer-progress
                              #:db-group-list #:deauthorize-data-share
                              #:default-cluster-parameters
                              #:deferred-maintenance-window
                              #:deferred-maintenance-windows-list
                              #:delete-authentication-profile #:delete-cluster
                              #:delete-cluster-parameter-group
                              #:delete-cluster-security-group
                              #:delete-cluster-snapshot
                              #:delete-cluster-snapshot-message
                              #:delete-cluster-snapshot-message-list
                              #:delete-cluster-subnet-group
                              #:delete-custom-domain-association
                              #:delete-endpoint-access
                              #:delete-event-subscription
                              #:delete-hsm-client-certificate
                              #:delete-hsm-configuration #:delete-integration
                              #:delete-partner
                              #:delete-redshift-idc-application
                              #:delete-resource-policy
                              #:delete-scheduled-action
                              #:delete-snapshot-copy-grant
                              #:delete-snapshot-schedule #:delete-tags
                              #:delete-usage-limit #:deregister-namespace
                              #:describe-account-attributes
                              #:describe-authentication-profiles
                              #:describe-cluster-db-revisions
                              #:describe-cluster-parameter-groups
                              #:describe-cluster-parameters
                              #:describe-cluster-security-groups
                              #:describe-cluster-snapshots
                              #:describe-cluster-subnet-groups
                              #:describe-cluster-tracks
                              #:describe-cluster-versions #:describe-clusters
                              #:describe-custom-domain-associations
                              #:describe-data-shares
                              #:describe-data-shares-for-consumer
                              #:describe-data-shares-for-producer
                              #:describe-default-cluster-parameters
                              #:describe-endpoint-access
                              #:describe-endpoint-authorization
                              #:describe-event-categories
                              #:describe-event-subscriptions #:describe-events
                              #:describe-hsm-client-certificates
                              #:describe-hsm-configurations
                              #:describe-inbound-integrations
                              #:describe-integrations
                              #:describe-integrations-filter
                              #:describe-integrations-filter-list
                              #:describe-integrations-filter-name
                              #:describe-integrations-filter-value-list
                              #:describe-logging-status
                              #:describe-node-configuration-options
                              #:describe-orderable-cluster-options
                              #:describe-partners
                              #:describe-redshift-idc-applications
                              #:describe-reserved-node-exchange-status
                              #:describe-reserved-node-offerings
                              #:describe-reserved-nodes #:describe-resize
                              #:describe-scheduled-actions
                              #:describe-snapshot-copy-grants
                              #:describe-snapshot-schedules #:describe-storage
                              #:describe-table-restore-status #:describe-tags
                              #:describe-usage-limits #:description
                              #:disable-logging #:disable-snapshot-copy
                              #:disassociate-data-share-consumer #:double
                              #:double-optional #:ec2security-group
                              #:ec2security-group-list #:elastic-ip-status
                              #:eligible-tracks-to-update-list #:enable-logging
                              #:enable-snapshot-copy #:encryption-context-map
                              #:endpoint #:endpoint-access
                              #:endpoint-access-list #:endpoint-accesses
                              #:endpoint-authorization
                              #:endpoint-authorization-list
                              #:endpoint-authorizations #:event
                              #:event-categories-list #:event-categories-map
                              #:event-categories-map-list #:event-info-map
                              #:event-info-map-list #:event-list
                              #:event-subscription #:event-subscriptions-list
                              #:exception-message #:failover-primary-compute
                              #:get-cluster-credentials
                              #:get-cluster-credentials-with-iam
                              #:get-reserved-node-exchange-configuration-options
                              #:get-reserved-node-exchange-offerings
                              #:get-resource-policy #:hsm-client-certificate
                              #:hsm-client-certificate-list #:hsm-configuration
                              #:hsm-configuration-list #:hsm-status #:iprange
                              #:iprange-list #:iam-role-arn-list
                              #:idc-display-name-string
                              #:identity-namespace-string #:impact-ranking-type
                              #:import-tables-completed
                              #:import-tables-in-progress
                              #:import-tables-not-started #:inbound-integration
                              #:inbound-integration-arn
                              #:inbound-integration-list #:integer
                              #:integer-optional #:integration
                              #:integration-arn #:integration-description
                              #:integration-error #:integration-error-list
                              #:integration-list #:integration-name
                              #:lake-formation-query
                              #:lake-formation-scope-union
                              #:lake-formation-service-integrations
                              #:list-recommendations #:log-destination-type
                              #:log-type-list #:logging-status #:long
                              #:long-optional #:maintenance-track #:mode
                              #:modify-aqua-configuration
                              #:modify-authentication-profile #:modify-cluster
                              #:modify-cluster-db-revision
                              #:modify-cluster-iam-roles
                              #:modify-cluster-maintenance
                              #:modify-cluster-parameter-group
                              #:modify-cluster-snapshot
                              #:modify-cluster-snapshot-schedule
                              #:modify-cluster-subnet-group
                              #:modify-custom-domain-association
                              #:modify-endpoint-access
                              #:modify-event-subscription #:modify-integration
                              #:modify-redshift-idc-application
                              #:modify-scheduled-action
                              #:modify-snapshot-copy-retention-period
                              #:modify-snapshot-schedule #:modify-usage-limit
                              #:namespace-identifier-union
                              #:namespace-registration-status
                              #:network-interface #:network-interface-list
                              #:node-configuration-option
                              #:node-configuration-option-list
                              #:node-configuration-options-filter
                              #:node-configuration-options-filter-list
                              #:node-configuration-options-filter-name
                              #:operator-type #:orderable-cluster-option
                              #:orderable-cluster-options-list #:parameter
                              #:parameter-apply-type #:parameter-group-list
                              #:parameters-list
                              #:partner-integration-account-id
                              #:partner-integration-cluster-identifier
                              #:partner-integration-database-name
                              #:partner-integration-info
                              #:partner-integration-info-list
                              #:partner-integration-input-message
                              #:partner-integration-output-message
                              #:partner-integration-partner-name
                              #:partner-integration-status
                              #:partner-integration-status-message
                              #:pause-cluster #:pause-cluster-message
                              #:pending-actions-list #:pending-modified-values
                              #:provisioned-identifier
                              #:purchase-reserved-node-offering
                              #:put-resource-policy #:read-write-access
                              #:reboot-cluster #:recommendation
                              #:recommendation-list #:recommended-action
                              #:recommended-action-list
                              #:recommended-action-type #:recurring-charge
                              #:recurring-charge-list
                              #:redshift-idc-application
                              #:redshift-idc-application-list
                              #:redshift-idc-application-name
                              #:redshift-service-version20121201
                              #:reference-link #:reference-link-list
                              #:register-namespace #:reject-data-share
                              #:reserved-node
                              #:reserved-node-configuration-option
                              #:reserved-node-configuration-option-list
                              #:reserved-node-exchange-action-type
                              #:reserved-node-exchange-status
                              #:reserved-node-exchange-status-list
                              #:reserved-node-exchange-status-type
                              #:reserved-node-list #:reserved-node-offering
                              #:reserved-node-offering-list
                              #:reserved-node-offering-type
                              #:reset-cluster-parameter-group #:resize-cluster
                              #:resize-cluster-message #:resize-info
                              #:resize-progress-message #:resource-policy
                              #:restorable-node-type-list
                              #:restore-from-cluster-snapshot #:restore-status
                              #:restore-table-from-cluster-snapshot
                              #:resume-cluster #:resume-cluster-message
                              #:revision-target #:revision-targets-list
                              #:revoke-cluster-security-group-ingress
                              #:revoke-endpoint-access #:revoke-snapshot-access
                              #:rotate-encryption-key
                              #:s3access-grants-scope-union
                              #:s3access-grants-service-integrations
                              #:s3key-prefix-value #:schedule-definition-list
                              #:schedule-state #:scheduled-action
                              #:scheduled-action-filter
                              #:scheduled-action-filter-list
                              #:scheduled-action-filter-name
                              #:scheduled-action-list #:scheduled-action-state
                              #:scheduled-action-time-list
                              #:scheduled-action-type
                              #:scheduled-action-type-values
                              #:scheduled-snapshot-time-list
                              #:secondary-cluster-info #:sensitive-string
                              #:serverless-identifier #:service-authorization
                              #:service-integration-list
                              #:service-integrations-union #:snapshot
                              #:snapshot-attribute-to-sort-by
                              #:snapshot-copy-grant #:snapshot-copy-grant-list
                              #:snapshot-error-message
                              #:snapshot-identifier-list #:snapshot-list
                              #:snapshot-schedule #:snapshot-schedule-list
                              #:snapshot-sorting-entity
                              #:snapshot-sorting-entity-list #:sort-by-order
                              #:source-arn #:source-ids-list #:source-type
                              #:string #:subnet #:subnet-identifier-list
                              #:subnet-list #:supported-operation
                              #:supported-operation-list #:supported-platform
                              #:supported-platforms-list #:tstamp
                              #:table-restore-status
                              #:table-restore-status-list
                              #:table-restore-status-type #:tag #:tag-key-list
                              #:tag-list #:tag-value-list #:tagged-resource
                              #:tagged-resource-list #:target-arn #:track-list
                              #:update-partner-status #:update-target
                              #:usage-limit #:usage-limit-breach-action
                              #:usage-limit-feature-type
                              #:usage-limit-limit-type #:usage-limit-list
                              #:usage-limit-period #:usage-limits
                              #:value-string-list #:vpc-endpoint
                              #:vpc-endpoints-list #:vpc-identifier-list
                              #:vpc-security-group-id-list
                              #:vpc-security-group-membership
                              #:vpc-security-group-membership-list
                              #:zero-etlintegration-status))
(common-lisp:in-package #:pira/redshift)

(smithy/sdk/service:define-service redshift-service-version20121201 :shape-name
                                   "RedshiftServiceVersion20121201" :version
                                   "2012-12-01" :title "Amazon Redshift"
                                   :xml-namespace
                                   '(:uri
                                     "http://redshift.amazonaws.com/doc/2012-12-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Redshift")
                                      ("arnNamespace" . "redshift")
                                      ("cloudFormationName" . "Redshift")
                                      ("cloudTrailEventSource"
                                       . "redshift.amazonaws.com")
                                      ("endpointPrefix" . "redshift"))
                                     ("aws.auth#sigv4" ("name" . "redshift"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-input accept-reserved-node-exchange-input-message
                                common-lisp:nil
                                ((reserved-node-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReservedNodeId")
                                 (target-reserved-node-offering-id :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetReservedNodeOfferingId"))
                                (:shape-name
                                 "AcceptReservedNodeExchangeInputMessage"))

(smithy/sdk/shapes:define-output accept-reserved-node-exchange-output-message
                                 common-lisp:nil
                                 ((exchanged-reserved-node :target-type
                                   reserved-node :member-name
                                   "ExchangedReservedNode"))
                                 (:shape-name
                                  "AcceptReservedNodeExchangeOutputMessage"))

(smithy/sdk/shapes:define-error access-to-cluster-denied-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessToClusterDeniedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error access-to-snapshot-denied-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessToSnapshotDeniedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure account-attribute common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "AttributeName")
                                     (attribute-values :target-type
                                      attribute-value-list :member-name
                                      "AttributeValues"))
                                    (:shape-name "AccountAttribute"))

(smithy/sdk/shapes:define-structure account-attribute-list common-lisp:nil
                                    ((account-attributes :target-type
                                      attribute-list :member-name
                                      "AccountAttributes"))
                                    (:shape-name "AccountAttributeList"))

(smithy/sdk/shapes:define-structure account-with-restore-access common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "AccountId")
                                     (account-alias :target-type string
                                      :member-name "AccountAlias"))
                                    (:shape-name "AccountWithRestoreAccess"))

(smithy/sdk/shapes:define-list accounts-with-restore-access-list :member
                               (account-with-restore-access :xml-name
                                "AccountWithRestoreAccess"))

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:restore-cluster "restore-cluster")
  (:recommend-node-config "recommend-node-config")
  (:resize-cluster "resize-cluster"))

(smithy/sdk/shapes:define-structure aqua-configuration common-lisp:nil
                                    ((aqua-status :target-type aqua-status
                                      :member-name "AquaStatus")
                                     (aqua-configuration-status :target-type
                                      aqua-configuration-status :member-name
                                      "AquaConfigurationStatus"))
                                    (:shape-name "AquaConfiguration"))

(smithy/sdk/shapes:define-enum aqua-configuration-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:auto "auto"))

(smithy/sdk/shapes:define-enum aqua-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled")
  (:applying "applying"))

(smithy/sdk/shapes:define-input associate-data-share-consumer-message
                                common-lisp:nil
                                ((data-share-arn :target-type string :required
                                  common-lisp:t :member-name "DataShareArn")
                                 (associate-entire-account :target-type
                                  boolean-optional :member-name
                                  "AssociateEntireAccount")
                                 (consumer-arn :target-type string :member-name
                                  "ConsumerArn")
                                 (consumer-region :target-type string
                                  :member-name "ConsumerRegion")
                                 (allow-writes :target-type boolean-optional
                                  :member-name "AllowWrites"))
                                (:shape-name
                                 "AssociateDataShareConsumerMessage"))

(smithy/sdk/shapes:define-list associated-cluster-list :member
                               (cluster-associated-to-schedule :xml-name
                                "ClusterAssociatedToSchedule"))

(smithy/sdk/shapes:define-structure association common-lisp:nil
                                    ((custom-domain-certificate-arn
                                      :target-type string :member-name
                                      "CustomDomainCertificateArn")
                                     (custom-domain-certificate-expiry-date
                                      :target-type tstamp :member-name
                                      "CustomDomainCertificateExpiryDate")
                                     (certificate-associations :target-type
                                      certificate-association-list :member-name
                                      "CertificateAssociations"))
                                    (:shape-name "Association"))

(smithy/sdk/shapes:define-list association-list :member
                               (association :xml-name "Association"))

(smithy/sdk/shapes:define-list attribute-list :member
                               (account-attribute :xml-name "AccountAttribute"))

(smithy/sdk/shapes:define-list attribute-name-list :member
                               (string :xml-name "AttributeName"))

(smithy/sdk/shapes:define-list attribute-value-list :member
                               (attribute-value-target :xml-name
                                "AttributeValueTarget"))

(smithy/sdk/shapes:define-structure attribute-value-target common-lisp:nil
                                    ((attribute-value :target-type string
                                      :member-name "AttributeValue"))
                                    (:shape-name "AttributeValueTarget"))

(smithy/sdk/shapes:define-structure authentication-profile common-lisp:nil
                                    ((authentication-profile-name :target-type
                                      authentication-profile-name-string
                                      :member-name "AuthenticationProfileName")
                                     (authentication-profile-content
                                      :target-type string :member-name
                                      "AuthenticationProfileContent"))
                                    (:shape-name "AuthenticationProfile"))

(smithy/sdk/shapes:define-error authentication-profile-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "AuthenticationProfileAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list authentication-profile-list :member
                               authentication-profile)

(smithy/sdk/shapes:define-type authentication-profile-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error authentication-profile-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "AuthenticationProfileNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error authentication-profile-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "AuthenticationProfileQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error authorization-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error authorization-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error authorization-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AuthorizationQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum authorization-status
    common-lisp:nil
  (:authorized "Authorized")
  (:revoking "Revoking"))

(smithy/sdk/shapes:define-input
 authorize-cluster-security-group-ingress-message common-lisp:nil
 ((cluster-security-group-name :target-type string :required common-lisp:t
   :member-name "ClusterSecurityGroupName")
  (cidrip :target-type string :member-name "CIDRIP")
  (ec2security-group-name :target-type string :member-name
   "EC2SecurityGroupName")
  (ec2security-group-owner-id :target-type string :member-name
   "EC2SecurityGroupOwnerId"))
 (:shape-name "AuthorizeClusterSecurityGroupIngressMessage"))

(smithy/sdk/shapes:define-output
 authorize-cluster-security-group-ingress-result common-lisp:nil
 ((cluster-security-group :target-type cluster-security-group :member-name
   "ClusterSecurityGroup"))
 (:shape-name "AuthorizeClusterSecurityGroupIngressResult"))

(smithy/sdk/shapes:define-input authorize-data-share-message common-lisp:nil
                                ((data-share-arn :target-type string :required
                                  common-lisp:t :member-name "DataShareArn")
                                 (consumer-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ConsumerIdentifier")
                                 (allow-writes :target-type boolean-optional
                                  :member-name "AllowWrites"))
                                (:shape-name "AuthorizeDataShareMessage"))

(smithy/sdk/shapes:define-input authorize-endpoint-access-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (account :target-type string :required
                                  common-lisp:t :member-name "Account")
                                 (vpc-ids :target-type vpc-identifier-list
                                  :member-name "VpcIds"))
                                (:shape-name "AuthorizeEndpointAccessMessage"))

(smithy/sdk/shapes:define-input authorize-snapshot-access-message
                                common-lisp:nil
                                ((snapshot-identifier :target-type string
                                  :member-name "SnapshotIdentifier")
                                 (snapshot-arn :target-type string :member-name
                                  "SnapshotArn")
                                 (snapshot-cluster-identifier :target-type
                                  string :member-name
                                  "SnapshotClusterIdentifier")
                                 (account-with-restore-access :target-type
                                  string :required common-lisp:t :member-name
                                  "AccountWithRestoreAccess"))
                                (:shape-name "AuthorizeSnapshotAccessMessage"))

(smithy/sdk/shapes:define-output authorize-snapshot-access-result
                                 common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "AuthorizeSnapshotAccessResult"))

(smithy/sdk/shapes:define-list authorized-audience-list :member string)

(smithy/sdk/shapes:define-structure authorized-token-issuer common-lisp:nil
                                    ((trusted-token-issuer-arn :target-type
                                      string :member-name
                                      "TrustedTokenIssuerArn")
                                     (authorized-audiences-list :target-type
                                      authorized-audience-list :member-name
                                      "AuthorizedAudiencesList"))
                                    (:shape-name "AuthorizedTokenIssuer"))

(smithy/sdk/shapes:define-list authorized-token-issuer-list :member
                               authorized-token-issuer)

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (supported-platforms :target-type
                                      supported-platforms-list :member-name
                                      "SupportedPlatforms"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zone-list :member
                               (availability-zone :xml-name "AvailabilityZone"))

(smithy/sdk/shapes:define-input batch-delete-cluster-snapshots-request
                                common-lisp:nil
                                ((identifiers :target-type
                                  delete-cluster-snapshot-message-list
                                  :required common-lisp:t :member-name
                                  "Identifiers"))
                                (:shape-name
                                 "BatchDeleteClusterSnapshotsRequest"))

(smithy/sdk/shapes:define-output batch-delete-cluster-snapshots-result
                                 common-lisp:nil
                                 ((resources :target-type
                                   snapshot-identifier-list :member-name
                                   "Resources")
                                  (errors :target-type
                                   batch-snapshot-operation-error-list
                                   :member-name "Errors"))
                                 (:shape-name
                                  "BatchDeleteClusterSnapshotsResult"))

(smithy/sdk/shapes:define-error batch-delete-request-size-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "BatchDeleteRequestSizeExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 batch-modify-cluster-snapshots-limit-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "BatchModifyClusterSnapshotsLimitExceededFault")
 (:error-code 400))

(smithy/sdk/shapes:define-input batch-modify-cluster-snapshots-message
                                common-lisp:nil
                                ((snapshot-identifier-list :target-type
                                  snapshot-identifier-list :required
                                  common-lisp:t :member-name
                                  "SnapshotIdentifierList")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name
                                 "BatchModifyClusterSnapshotsMessage"))

(smithy/sdk/shapes:define-output batch-modify-cluster-snapshots-output-message
                                 common-lisp:nil
                                 ((resources :target-type
                                   snapshot-identifier-list :member-name
                                   "Resources")
                                  (errors :target-type
                                   batch-snapshot-operation-errors :member-name
                                   "Errors"))
                                 (:shape-name
                                  "BatchModifyClusterSnapshotsOutputMessage"))

(smithy/sdk/shapes:define-list batch-snapshot-operation-error-list :member
                               (snapshot-error-message :xml-name
                                "SnapshotErrorMessage"))

(smithy/sdk/shapes:define-list batch-snapshot-operation-errors :member
                               (snapshot-error-message :xml-name
                                "SnapshotErrorMessage"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error bucket-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "BucketNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input cancel-resize-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "CancelResizeMessage"))

(smithy/sdk/shapes:define-structure certificate-association common-lisp:nil
                                    ((custom-domain-name :target-type string
                                      :member-name "CustomDomainName")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier"))
                                    (:shape-name "CertificateAssociation"))

(smithy/sdk/shapes:define-list certificate-association-list :member
                               (certificate-association :xml-name
                                "CertificateAssociation"))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (cluster-status :target-type string
                                      :member-name "ClusterStatus")
                                     (cluster-availability-status :target-type
                                      string :member-name
                                      "ClusterAvailabilityStatus")
                                     (modify-status :target-type string
                                      :member-name "ModifyStatus")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (dbname :target-type string :member-name
                                      "DBName")
                                     (endpoint :target-type endpoint
                                      :member-name "Endpoint")
                                     (cluster-create-time :target-type tstamp
                                      :member-name "ClusterCreateTime")
                                     (automated-snapshot-retention-period
                                      :target-type integer :member-name
                                      "AutomatedSnapshotRetentionPeriod")
                                     (manual-snapshot-retention-period
                                      :target-type integer :member-name
                                      "ManualSnapshotRetentionPeriod")
                                     (cluster-security-groups :target-type
                                      cluster-security-group-membership-list
                                      :member-name "ClusterSecurityGroups")
                                     (vpc-security-groups :target-type
                                      vpc-security-group-membership-list
                                      :member-name "VpcSecurityGroups")
                                     (cluster-parameter-groups :target-type
                                      cluster-parameter-group-status-list
                                      :member-name "ClusterParameterGroups")
                                     (cluster-subnet-group-name :target-type
                                      string :member-name
                                      "ClusterSubnetGroupName")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (pending-modified-values :target-type
                                      pending-modified-values :member-name
                                      "PendingModifiedValues")
                                     (cluster-version :target-type string
                                      :member-name "ClusterVersion")
                                     (allow-version-upgrade :target-type
                                      boolean :member-name
                                      "AllowVersionUpgrade")
                                     (number-of-nodes :target-type integer
                                      :member-name "NumberOfNodes")
                                     (publicly-accessible :target-type boolean
                                      :member-name "PubliclyAccessible")
                                     (encrypted :target-type boolean
                                      :member-name "Encrypted")
                                     (restore-status :target-type
                                      restore-status :member-name
                                      "RestoreStatus")
                                     (data-transfer-progress :target-type
                                      data-transfer-progress :member-name
                                      "DataTransferProgress")
                                     (hsm-status :target-type hsm-status
                                      :member-name "HsmStatus")
                                     (cluster-snapshot-copy-status :target-type
                                      cluster-snapshot-copy-status :member-name
                                      "ClusterSnapshotCopyStatus")
                                     (cluster-public-key :target-type string
                                      :member-name "ClusterPublicKey")
                                     (cluster-nodes :target-type
                                      cluster-nodes-list :member-name
                                      "ClusterNodes")
                                     (elastic-ip-status :target-type
                                      elastic-ip-status :member-name
                                      "ElasticIpStatus")
                                     (cluster-revision-number :target-type
                                      string :member-name
                                      "ClusterRevisionNumber")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (enhanced-vpc-routing :target-type boolean
                                      :member-name "EnhancedVpcRouting")
                                     (iam-roles :target-type
                                      cluster-iam-role-list :member-name
                                      "IamRoles")
                                     (pending-actions :target-type
                                      pending-actions-list :member-name
                                      "PendingActions")
                                     (maintenance-track-name :target-type
                                      string :member-name
                                      "MaintenanceTrackName")
                                     (elastic-resize-number-of-node-options
                                      :target-type string :member-name
                                      "ElasticResizeNumberOfNodeOptions")
                                     (deferred-maintenance-windows :target-type
                                      deferred-maintenance-windows-list
                                      :member-name
                                      "DeferredMaintenanceWindows")
                                     (snapshot-schedule-identifier :target-type
                                      string :member-name
                                      "SnapshotScheduleIdentifier")
                                     (snapshot-schedule-state :target-type
                                      schedule-state :member-name
                                      "SnapshotScheduleState")
                                     (expected-next-snapshot-schedule-time
                                      :target-type tstamp :member-name
                                      "ExpectedNextSnapshotScheduleTime")
                                     (expected-next-snapshot-schedule-time-status
                                      :target-type string :member-name
                                      "ExpectedNextSnapshotScheduleTimeStatus")
                                     (next-maintenance-window-start-time
                                      :target-type tstamp :member-name
                                      "NextMaintenanceWindowStartTime")
                                     (resize-info :target-type resize-info
                                      :member-name "ResizeInfo")
                                     (availability-zone-relocation-status
                                      :target-type string :member-name
                                      "AvailabilityZoneRelocationStatus")
                                     (cluster-namespace-arn :target-type string
                                      :member-name "ClusterNamespaceArn")
                                     (total-storage-capacity-in-mega-bytes
                                      :target-type long-optional :member-name
                                      "TotalStorageCapacityInMegaBytes")
                                     (aqua-configuration :target-type
                                      aqua-configuration :member-name
                                      "AquaConfiguration")
                                     (default-iam-role-arn :target-type string
                                      :member-name "DefaultIamRoleArn")
                                     (reserved-node-exchange-status
                                      :target-type
                                      reserved-node-exchange-status
                                      :member-name
                                      "ReservedNodeExchangeStatus")
                                     (custom-domain-name :target-type string
                                      :member-name "CustomDomainName")
                                     (custom-domain-certificate-arn
                                      :target-type string :member-name
                                      "CustomDomainCertificateArn")
                                     (custom-domain-certificate-expiry-date
                                      :target-type tstamp :member-name
                                      "CustomDomainCertificateExpiryDate")
                                     (master-password-secret-arn :target-type
                                      string :member-name
                                      "MasterPasswordSecretArn")
                                     (master-password-secret-kms-key-id
                                      :target-type string :member-name
                                      "MasterPasswordSecretKmsKeyId")
                                     (ip-address-type :target-type string
                                      :member-name "IpAddressType")
                                     (multi-az :target-type string :member-name
                                      "MultiAZ")
                                     (multi-azsecondary :target-type
                                      secondary-cluster-info :member-name
                                      "MultiAZSecondary"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-error cluster-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-associated-to-schedule
                                    common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (schedule-association-state :target-type
                                      schedule-state :member-name
                                      "ScheduleAssociationState"))
                                    (:shape-name "ClusterAssociatedToSchedule"))

(smithy/sdk/shapes:define-structure cluster-credentials common-lisp:nil
                                    ((db-user :target-type string :member-name
                                      "DbUser")
                                     (db-password :target-type sensitive-string
                                      :member-name "DbPassword")
                                     (expiration :target-type tstamp
                                      :member-name "Expiration"))
                                    (:shape-name "ClusterCredentials"))

(smithy/sdk/shapes:define-structure cluster-db-revision common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (current-database-revision :target-type
                                      string :member-name
                                      "CurrentDatabaseRevision")
                                     (database-revision-release-date
                                      :target-type tstamp :member-name
                                      "DatabaseRevisionReleaseDate")
                                     (revision-targets :target-type
                                      revision-targets-list :member-name
                                      "RevisionTargets"))
                                    (:shape-name "ClusterDbRevision"))

(smithy/sdk/shapes:define-list cluster-db-revisions-list :member
                               (cluster-db-revision :xml-name
                                "ClusterDbRevision"))

(smithy/sdk/shapes:define-output cluster-db-revisions-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cluster-db-revisions :target-type
                                   cluster-db-revisions-list :member-name
                                   "ClusterDbRevisions"))
                                 (:shape-name "ClusterDbRevisionsMessage"))

(smithy/sdk/shapes:define-structure cluster-extended-credentials
                                    common-lisp:nil
                                    ((db-user :target-type string :member-name
                                      "DbUser")
                                     (db-password :target-type sensitive-string
                                      :member-name "DbPassword")
                                     (expiration :target-type tstamp
                                      :member-name "Expiration")
                                     (next-refresh-time :target-type tstamp
                                      :member-name "NextRefreshTime"))
                                    (:shape-name "ClusterExtendedCredentials"))

(smithy/sdk/shapes:define-structure cluster-iam-role common-lisp:nil
                                    ((iam-role-arn :target-type string
                                      :member-name "IamRoleArn")
                                     (apply-status :target-type string
                                      :member-name "ApplyStatus"))
                                    (:shape-name "ClusterIamRole"))

(smithy/sdk/shapes:define-list cluster-iam-role-list :member
                               (cluster-iam-role :xml-name "ClusterIamRole"))

(smithy/sdk/shapes:define-list cluster-list :member
                               (cluster :xml-name "Cluster"))

(smithy/sdk/shapes:define-structure cluster-node common-lisp:nil
                                    ((node-role :target-type string
                                      :member-name "NodeRole")
                                     (private-ipaddress :target-type string
                                      :member-name "PrivateIPAddress")
                                     (public-ipaddress :target-type string
                                      :member-name "PublicIPAddress"))
                                    (:shape-name "ClusterNode"))

(smithy/sdk/shapes:define-list cluster-nodes-list :member cluster-node)

(smithy/sdk/shapes:define-error cluster-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cluster-on-latest-revision-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterOnLatestRevisionFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-parameter-group common-lisp:nil
                                    ((parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (parameter-group-family :target-type
                                      string :member-name
                                      "ParameterGroupFamily")
                                     (description :target-type string
                                      :member-name "Description")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ClusterParameterGroup"))

(smithy/sdk/shapes:define-error cluster-parameter-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterParameterGroupAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-parameter-group-details
                                    common-lisp:nil
                                    ((parameters :target-type parameters-list
                                      :member-name "Parameters")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name
                                     "ClusterParameterGroupDetails"))

(smithy/sdk/shapes:define-structure cluster-parameter-group-name-message
                                    common-lisp:nil
                                    ((parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (parameter-group-status :target-type
                                      string :member-name
                                      "ParameterGroupStatus"))
                                    (:shape-name
                                     "ClusterParameterGroupNameMessage"))

(smithy/sdk/shapes:define-error cluster-parameter-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterParameterGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cluster-parameter-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterParameterGroupQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-parameter-group-status
                                    common-lisp:nil
                                    ((parameter-group-name :target-type string
                                      :member-name "ParameterGroupName")
                                     (parameter-apply-status :target-type
                                      string :member-name
                                      "ParameterApplyStatus")
                                     (cluster-parameter-status-list
                                      :target-type
                                      cluster-parameter-status-list
                                      :member-name
                                      "ClusterParameterStatusList"))
                                    (:shape-name "ClusterParameterGroupStatus"))

(smithy/sdk/shapes:define-list cluster-parameter-group-status-list :member
                               (cluster-parameter-group-status :xml-name
                                "ClusterParameterGroup"))

(smithy/sdk/shapes:define-output cluster-parameter-groups-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (parameter-groups :target-type
                                   parameter-group-list :member-name
                                   "ParameterGroups"))
                                 (:shape-name "ClusterParameterGroupsMessage"))

(smithy/sdk/shapes:define-structure cluster-parameter-status common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-apply-status :target-type
                                      string :member-name
                                      "ParameterApplyStatus")
                                     (parameter-apply-error-description
                                      :target-type string :member-name
                                      "ParameterApplyErrorDescription"))
                                    (:shape-name "ClusterParameterStatus"))

(smithy/sdk/shapes:define-list cluster-parameter-status-list :member
                               cluster-parameter-status)

(smithy/sdk/shapes:define-error cluster-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-security-group common-lisp:nil
                                    ((cluster-security-group-name :target-type
                                      string :member-name
                                      "ClusterSecurityGroupName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (ec2security-groups :target-type
                                      ec2security-group-list :member-name
                                      "EC2SecurityGroups")
                                     (ipranges :target-type iprange-list
                                      :member-name "IPRanges")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ClusterSecurityGroup"))

(smithy/sdk/shapes:define-error cluster-security-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSecurityGroupAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-security-group-membership
                                    common-lisp:nil
                                    ((cluster-security-group-name :target-type
                                      string :member-name
                                      "ClusterSecurityGroupName")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name
                                     "ClusterSecurityGroupMembership"))

(smithy/sdk/shapes:define-list cluster-security-group-membership-list :member
                               (cluster-security-group-membership :xml-name
                                "ClusterSecurityGroup"))

(smithy/sdk/shapes:define-output cluster-security-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cluster-security-groups :target-type
                                   cluster-security-groups :member-name
                                   "ClusterSecurityGroups"))
                                 (:shape-name "ClusterSecurityGroupMessage"))

(smithy/sdk/shapes:define-list cluster-security-group-name-list :member
                               (string :xml-name "ClusterSecurityGroupName"))

(smithy/sdk/shapes:define-error cluster-security-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSecurityGroupNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cluster-security-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSecurityGroupQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list cluster-security-groups :member
                               (cluster-security-group :xml-name
                                "ClusterSecurityGroup"))

(smithy/sdk/shapes:define-error cluster-snapshot-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSnapshotAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-snapshot-copy-status
                                    common-lisp:nil
                                    ((destination-region :target-type string
                                      :member-name "DestinationRegion")
                                     (retention-period :target-type long
                                      :member-name "RetentionPeriod")
                                     (manual-snapshot-retention-period
                                      :target-type integer :member-name
                                      "ManualSnapshotRetentionPeriod")
                                     (snapshot-copy-grant-name :target-type
                                      string :member-name
                                      "SnapshotCopyGrantName"))
                                    (:shape-name "ClusterSnapshotCopyStatus"))

(smithy/sdk/shapes:define-error cluster-snapshot-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterSnapshotNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error cluster-snapshot-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSnapshotQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-subnet-group common-lisp:nil
                                    ((cluster-subnet-group-name :target-type
                                      string :member-name
                                      "ClusterSubnetGroupName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (subnet-group-status :target-type string
                                      :member-name "SubnetGroupStatus")
                                     (subnets :target-type subnet-list
                                      :member-name "Subnets")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (supported-cluster-ip-address-types
                                      :target-type value-string-list
                                      :member-name
                                      "SupportedClusterIpAddressTypes"))
                                    (:shape-name "ClusterSubnetGroup"))

(smithy/sdk/shapes:define-error cluster-subnet-group-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSubnetGroupAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-output cluster-subnet-group-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cluster-subnet-groups :target-type
                                   cluster-subnet-groups :member-name
                                   "ClusterSubnetGroups"))
                                 (:shape-name "ClusterSubnetGroupMessage"))

(smithy/sdk/shapes:define-error cluster-subnet-group-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterSubnetGroupNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cluster-subnet-group-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ClusterSubnetGroupQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list cluster-subnet-groups :member
                               (cluster-subnet-group :xml-name
                                "ClusterSubnetGroup"))

(smithy/sdk/shapes:define-error cluster-subnet-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ClusterSubnetQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster-version common-lisp:nil
                                    ((cluster-version :target-type string
                                      :member-name "ClusterVersion")
                                     (cluster-parameter-group-family
                                      :target-type string :member-name
                                      "ClusterParameterGroupFamily")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "ClusterVersion"))

(smithy/sdk/shapes:define-list cluster-version-list :member
                               (cluster-version :xml-name "ClusterVersion"))

(smithy/sdk/shapes:define-output cluster-versions-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (cluster-versions :target-type
                                   cluster-version-list :member-name
                                   "ClusterVersions"))
                                 (:shape-name "ClusterVersionsMessage"))

(smithy/sdk/shapes:define-output clusters-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (clusters :target-type cluster-list
                                   :member-name "Clusters"))
                                 (:shape-name "ClustersMessage"))

(smithy/sdk/shapes:define-error conflict-policy-update-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ConflictPolicyUpdateFault")
                                (:error-code 409))

(smithy/sdk/shapes:define-list consumer-identifier-list :member string)

(smithy/sdk/shapes:define-input copy-cluster-snapshot-message common-lisp:nil
                                ((source-snapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "SourceSnapshotIdentifier")
                                 (source-snapshot-cluster-identifier
                                  :target-type string :member-name
                                  "SourceSnapshotClusterIdentifier")
                                 (target-snapshot-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetSnapshotIdentifier")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod"))
                                (:shape-name "CopyClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output copy-cluster-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CopyClusterSnapshotResult"))

(smithy/sdk/shapes:define-error copy-to-region-disabled-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CopyToRegionDisabledFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-authentication-profile-message
                                common-lisp:nil
                                ((authentication-profile-name :target-type
                                  authentication-profile-name-string :required
                                  common-lisp:t :member-name
                                  "AuthenticationProfileName")
                                 (authentication-profile-content :target-type
                                  string :required common-lisp:t :member-name
                                  "AuthenticationProfileContent"))
                                (:shape-name
                                 "CreateAuthenticationProfileMessage"))

(smithy/sdk/shapes:define-output create-authentication-profile-result
                                 common-lisp:nil
                                 ((authentication-profile-name :target-type
                                   authentication-profile-name-string
                                   :member-name "AuthenticationProfileName")
                                  (authentication-profile-content :target-type
                                   string :member-name
                                   "AuthenticationProfileContent"))
                                 (:shape-name
                                  "CreateAuthenticationProfileResult"))

(smithy/sdk/shapes:define-input create-cluster-message common-lisp:nil
                                ((dbname :target-type string :member-name
                                  "DBName")
                                 (cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (cluster-type :target-type string :member-name
                                  "ClusterType")
                                 (node-type :target-type string :required
                                  common-lisp:t :member-name "NodeType")
                                 (master-username :target-type string :required
                                  common-lisp:t :member-name "MasterUsername")
                                 (master-user-password :target-type
                                  sensitive-string :member-name
                                  "MasterUserPassword")
                                 (cluster-security-groups :target-type
                                  cluster-security-group-name-list :member-name
                                  "ClusterSecurityGroups")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (cluster-subnet-group-name :target-type string
                                  :member-name "ClusterSubnetGroupName")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (cluster-parameter-group-name :target-type
                                  string :member-name
                                  "ClusterParameterGroupName")
                                 (automated-snapshot-retention-period
                                  :target-type integer-optional :member-name
                                  "AutomatedSnapshotRetentionPeriod")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (cluster-version :target-type string
                                  :member-name "ClusterVersion")
                                 (allow-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AllowVersionUpgrade")
                                 (number-of-nodes :target-type integer-optional
                                  :member-name "NumberOfNodes")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (encrypted :target-type boolean-optional
                                  :member-name "Encrypted")
                                 (hsm-client-certificate-identifier
                                  :target-type string :member-name
                                  "HsmClientCertificateIdentifier")
                                 (hsm-configuration-identifier :target-type
                                  string :member-name
                                  "HsmConfigurationIdentifier")
                                 (elastic-ip :target-type string :member-name
                                  "ElasticIp")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (enhanced-vpc-routing :target-type
                                  boolean-optional :member-name
                                  "EnhancedVpcRouting")
                                 (additional-info :target-type string
                                  :member-name "AdditionalInfo")
                                 (iam-roles :target-type iam-role-arn-list
                                  :member-name "IamRoles")
                                 (maintenance-track-name :target-type string
                                  :member-name "MaintenanceTrackName")
                                 (snapshot-schedule-identifier :target-type
                                  string :member-name
                                  "SnapshotScheduleIdentifier")
                                 (availability-zone-relocation :target-type
                                  boolean-optional :member-name
                                  "AvailabilityZoneRelocation")
                                 (aqua-configuration-status :target-type
                                  aqua-configuration-status :member-name
                                  "AquaConfigurationStatus")
                                 (default-iam-role-arn :target-type string
                                  :member-name "DefaultIamRoleArn")
                                 (load-sample-data :target-type string
                                  :member-name "LoadSampleData")
                                 (manage-master-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterPassword")
                                 (master-password-secret-kms-key-id
                                  :target-type string :member-name
                                  "MasterPasswordSecretKmsKeyId")
                                 (ip-address-type :target-type string
                                  :member-name "IpAddressType")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (redshift-idc-application-arn :target-type
                                  string :member-name
                                  "RedshiftIdcApplicationArn"))
                                (:shape-name "CreateClusterMessage"))

(smithy/sdk/shapes:define-input create-cluster-parameter-group-message
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (parameter-group-family :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupFamily")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output create-cluster-parameter-group-result
                                 common-lisp:nil
                                 ((cluster-parameter-group :target-type
                                   cluster-parameter-group :member-name
                                   "ClusterParameterGroup"))
                                 (:shape-name
                                  "CreateClusterParameterGroupResult"))

(smithy/sdk/shapes:define-output create-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "CreateClusterResult"))

(smithy/sdk/shapes:define-input create-cluster-security-group-message
                                common-lisp:nil
                                ((cluster-security-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ClusterSecurityGroupName")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateClusterSecurityGroupMessage"))

(smithy/sdk/shapes:define-output create-cluster-security-group-result
                                 common-lisp:nil
                                 ((cluster-security-group :target-type
                                   cluster-security-group :member-name
                                   "ClusterSecurityGroup"))
                                 (:shape-name
                                  "CreateClusterSecurityGroupResult"))

(smithy/sdk/shapes:define-input create-cluster-snapshot-message common-lisp:nil
                                ((snapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "SnapshotIdentifier")
                                 (cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output create-cluster-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CreateClusterSnapshotResult"))

(smithy/sdk/shapes:define-input create-cluster-subnet-group-message
                                common-lisp:nil
                                ((cluster-subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterSubnetGroupName")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateClusterSubnetGroupMessage"))

(smithy/sdk/shapes:define-output create-cluster-subnet-group-result
                                 common-lisp:nil
                                 ((cluster-subnet-group :target-type
                                   cluster-subnet-group :member-name
                                   "ClusterSubnetGroup"))
                                 (:shape-name "CreateClusterSubnetGroupResult"))

(smithy/sdk/shapes:define-input create-custom-domain-association-message
                                common-lisp:nil
                                ((custom-domain-name :target-type
                                  custom-domain-name-string :required
                                  common-lisp:t :member-name
                                  "CustomDomainName")
                                 (custom-domain-certificate-arn :target-type
                                  custom-domain-certificate-arn-string
                                  :required common-lisp:t :member-name
                                  "CustomDomainCertificateArn")
                                 (cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name
                                 "CreateCustomDomainAssociationMessage"))

(smithy/sdk/shapes:define-output create-custom-domain-association-result
                                 common-lisp:nil
                                 ((custom-domain-name :target-type
                                   custom-domain-name-string :member-name
                                   "CustomDomainName")
                                  (custom-domain-certificate-arn :target-type
                                   custom-domain-certificate-arn-string
                                   :member-name "CustomDomainCertificateArn")
                                  (cluster-identifier :target-type string
                                   :member-name "ClusterIdentifier")
                                  (custom-domain-cert-expiry-time :target-type
                                   string :member-name
                                   "CustomDomainCertExpiryTime"))
                                 (:shape-name
                                  "CreateCustomDomainAssociationResult"))

(smithy/sdk/shapes:define-input create-endpoint-access-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (resource-owner :target-type string
                                  :member-name "ResourceOwner")
                                 (endpoint-name :target-type string :required
                                  common-lisp:t :member-name "EndpointName")
                                 (subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubnetGroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds"))
                                (:shape-name "CreateEndpointAccessMessage"))

(smithy/sdk/shapes:define-input create-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (sns-topic-arn :target-type string :required
                                  common-lisp:t :member-name "SnsTopicArn")
                                 (source-type :target-type string :member-name
                                  "SourceType")
                                 (source-ids :target-type source-ids-list
                                  :member-name "SourceIds")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (severity :target-type string :member-name
                                  "Severity")
                                 (enabled :target-type boolean-optional
                                  :member-name "Enabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output create-event-subscription-result
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name "CreateEventSubscriptionResult"))

(smithy/sdk/shapes:define-input create-hsm-client-certificate-message
                                common-lisp:nil
                                ((hsm-client-certificate-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "HsmClientCertificateIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateHsmClientCertificateMessage"))

(smithy/sdk/shapes:define-output create-hsm-client-certificate-result
                                 common-lisp:nil
                                 ((hsm-client-certificate :target-type
                                   hsm-client-certificate :member-name
                                   "HsmClientCertificate"))
                                 (:shape-name
                                  "CreateHsmClientCertificateResult"))

(smithy/sdk/shapes:define-input create-hsm-configuration-message
                                common-lisp:nil
                                ((hsm-configuration-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "HsmConfigurationIdentifier")
                                 (description :target-type string :required
                                  common-lisp:t :member-name "Description")
                                 (hsm-ip-address :target-type string :required
                                  common-lisp:t :member-name "HsmIpAddress")
                                 (hsm-partition-name :target-type string
                                  :required common-lisp:t :member-name
                                  "HsmPartitionName")
                                 (hsm-partition-password :target-type string
                                  :required common-lisp:t :member-name
                                  "HsmPartitionPassword")
                                 (hsm-server-public-certificate :target-type
                                  string :required common-lisp:t :member-name
                                  "HsmServerPublicCertificate")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateHsmConfigurationMessage"))

(smithy/sdk/shapes:define-output create-hsm-configuration-result
                                 common-lisp:nil
                                 ((hsm-configuration :target-type
                                   hsm-configuration :member-name
                                   "HsmConfiguration"))
                                 (:shape-name "CreateHsmConfigurationResult"))

(smithy/sdk/shapes:define-input create-integration-message common-lisp:nil
                                ((source-arn :target-type source-arn :required
                                  common-lisp:t :member-name "SourceArn")
                                 (target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "TargetArn")
                                 (integration-name :target-type
                                  integration-name :required common-lisp:t
                                  :member-name "IntegrationName")
                                 (kmskey-id :target-type string :member-name
                                  "KMSKeyId")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "AdditionalEncryptionContext")
                                 (description :target-type
                                  integration-description :member-name
                                  "Description"))
                                (:shape-name "CreateIntegrationMessage"))

(smithy/sdk/shapes:define-input create-redshift-idc-application-message
                                common-lisp:nil
                                ((idc-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "IdcInstanceArn")
                                 (redshift-idc-application-name :target-type
                                  redshift-idc-application-name :required
                                  common-lisp:t :member-name
                                  "RedshiftIdcApplicationName")
                                 (identity-namespace :target-type
                                  identity-namespace-string :member-name
                                  "IdentityNamespace")
                                 (idc-display-name :target-type
                                  idc-display-name-string :required
                                  common-lisp:t :member-name "IdcDisplayName")
                                 (iam-role-arn :target-type string :required
                                  common-lisp:t :member-name "IamRoleArn")
                                 (authorized-token-issuer-list :target-type
                                  authorized-token-issuer-list :member-name
                                  "AuthorizedTokenIssuerList")
                                 (service-integrations :target-type
                                  service-integration-list :member-name
                                  "ServiceIntegrations"))
                                (:shape-name
                                 "CreateRedshiftIdcApplicationMessage"))

(smithy/sdk/shapes:define-output create-redshift-idc-application-result
                                 common-lisp:nil
                                 ((redshift-idc-application :target-type
                                   redshift-idc-application :member-name
                                   "RedshiftIdcApplication"))
                                 (:shape-name
                                  "CreateRedshiftIdcApplicationResult"))

(smithy/sdk/shapes:define-input create-scheduled-action-message common-lisp:nil
                                ((scheduled-action-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ScheduledActionName")
                                 (target-action :target-type
                                  scheduled-action-type :required common-lisp:t
                                  :member-name "TargetAction")
                                 (schedule :target-type string :required
                                  common-lisp:t :member-name "Schedule")
                                 (iam-role :target-type string :required
                                  common-lisp:t :member-name "IamRole")
                                 (scheduled-action-description :target-type
                                  string :member-name
                                  "ScheduledActionDescription")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (enable :target-type boolean-optional
                                  :member-name "Enable"))
                                (:shape-name "CreateScheduledActionMessage"))

(smithy/sdk/shapes:define-input create-snapshot-copy-grant-message
                                common-lisp:nil
                                ((snapshot-copy-grant-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SnapshotCopyGrantName")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateSnapshotCopyGrantMessage"))

(smithy/sdk/shapes:define-output create-snapshot-copy-grant-result
                                 common-lisp:nil
                                 ((snapshot-copy-grant :target-type
                                   snapshot-copy-grant :member-name
                                   "SnapshotCopyGrant"))
                                 (:shape-name "CreateSnapshotCopyGrantResult"))

(smithy/sdk/shapes:define-input create-snapshot-schedule-message
                                common-lisp:nil
                                ((schedule-definitions :target-type
                                  schedule-definition-list :member-name
                                  "ScheduleDefinitions")
                                 (schedule-identifier :target-type string
                                  :member-name "ScheduleIdentifier")
                                 (schedule-description :target-type string
                                  :member-name "ScheduleDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dry-run :target-type boolean-optional
                                  :member-name "DryRun")
                                 (next-invocations :target-type
                                  integer-optional :member-name
                                  "NextInvocations"))
                                (:shape-name "CreateSnapshotScheduleMessage"))

(smithy/sdk/shapes:define-input create-tags-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "CreateTagsMessage"))

(smithy/sdk/shapes:define-input create-usage-limit-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (feature-type :target-type
                                  usage-limit-feature-type :required
                                  common-lisp:t :member-name "FeatureType")
                                 (limit-type :target-type
                                  usage-limit-limit-type :required
                                  common-lisp:t :member-name "LimitType")
                                 (amount :target-type long :required
                                  common-lisp:t :member-name "Amount")
                                 (period :target-type usage-limit-period
                                  :member-name "Period")
                                 (breach-action :target-type
                                  usage-limit-breach-action :member-name
                                  "BreachAction")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateUsageLimitMessage"))

(smithy/sdk/shapes:define-error custom-cname-association-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CustomCnameAssociationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error custom-domain-association-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CustomDomainAssociationNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-output custom-domain-associations-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (associations :target-type association-list
                                   :member-name "Associations"))
                                 (:shape-name
                                  "CustomDomainAssociationsMessage"))

(smithy/sdk/shapes:define-type custom-domain-certificate-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-domain-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output customer-storage-message common-lisp:nil
                                 ((total-backup-size-in-mega-bytes :target-type
                                   double :member-name
                                   "TotalBackupSizeInMegaBytes")
                                  (total-provisioned-storage-in-mega-bytes
                                   :target-type double :member-name
                                   "TotalProvisionedStorageInMegaBytes"))
                                 (:shape-name "CustomerStorageMessage"))

(smithy/sdk/shapes:define-structure data-share common-lisp:nil
                                    ((data-share-arn :target-type string
                                      :member-name "DataShareArn")
                                     (producer-arn :target-type string
                                      :member-name "ProducerArn")
                                     (allow-publicly-accessible-consumers
                                      :target-type boolean :member-name
                                      "AllowPubliclyAccessibleConsumers")
                                     (data-share-associations :target-type
                                      data-share-association-list :member-name
                                      "DataShareAssociations")
                                     (managed-by :target-type string
                                      :member-name "ManagedBy")
                                     (data-share-type :target-type
                                      data-share-type :member-name
                                      "DataShareType"))
                                    (:shape-name "DataShare"))

(smithy/sdk/shapes:define-structure data-share-association common-lisp:nil
                                    ((consumer-identifier :target-type string
                                      :member-name "ConsumerIdentifier")
                                     (status :target-type data-share-status
                                      :member-name "Status")
                                     (consumer-region :target-type string
                                      :member-name "ConsumerRegion")
                                     (created-date :target-type tstamp
                                      :member-name "CreatedDate")
                                     (status-change-date :target-type tstamp
                                      :member-name "StatusChangeDate")
                                     (producer-allowed-writes :target-type
                                      boolean-optional :member-name
                                      "ProducerAllowedWrites")
                                     (consumer-accepted-writes :target-type
                                      boolean-optional :member-name
                                      "ConsumerAcceptedWrites"))
                                    (:shape-name "DataShareAssociation"))

(smithy/sdk/shapes:define-list data-share-association-list :member
                               data-share-association)

(smithy/sdk/shapes:define-list data-share-list :member data-share)

(smithy/sdk/shapes:define-enum data-share-status
    common-lisp:nil
  (:active "ACTIVE")
  (:pending-authorization "PENDING_AUTHORIZATION")
  (:authorized "AUTHORIZED")
  (:deauthorized "DEAUTHORIZED")
  (:rejected "REJECTED")
  (:available "AVAILABLE"))

(smithy/sdk/shapes:define-enum data-share-status-for-consumer
    common-lisp:nil
  (:active "ACTIVE")
  (:available "AVAILABLE"))

(smithy/sdk/shapes:define-enum data-share-status-for-producer
    common-lisp:nil
  (:active "ACTIVE")
  (:authorized "AUTHORIZED")
  (:pending-authorization "PENDING_AUTHORIZATION")
  (:deauthorized "DEAUTHORIZED")
  (:rejected "REJECTED"))

(smithy/sdk/shapes:define-enum data-share-type
    common-lisp:nil
  (:internal "INTERNAL"))

(smithy/sdk/shapes:define-structure data-transfer-progress common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (current-rate-in-mega-bytes-per-second
                                      :target-type double-optional :member-name
                                      "CurrentRateInMegaBytesPerSecond")
                                     (total-data-in-mega-bytes :target-type
                                      long :member-name "TotalDataInMegaBytes")
                                     (data-transferred-in-mega-bytes
                                      :target-type long :member-name
                                      "DataTransferredInMegaBytes")
                                     (estimated-time-to-completion-in-seconds
                                      :target-type long-optional :member-name
                                      "EstimatedTimeToCompletionInSeconds")
                                     (elapsed-time-in-seconds :target-type
                                      long-optional :member-name
                                      "ElapsedTimeInSeconds"))
                                    (:shape-name "DataTransferProgress"))

(smithy/sdk/shapes:define-list db-group-list :member
                               (string :xml-name "DbGroup"))

(smithy/sdk/shapes:define-input deauthorize-data-share-message common-lisp:nil
                                ((data-share-arn :target-type string :required
                                  common-lisp:t :member-name "DataShareArn")
                                 (consumer-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ConsumerIdentifier"))
                                (:shape-name "DeauthorizeDataShareMessage"))

(smithy/sdk/shapes:define-structure default-cluster-parameters common-lisp:nil
                                    ((parameter-group-family :target-type
                                      string :member-name
                                      "ParameterGroupFamily")
                                     (marker :target-type string :member-name
                                      "Marker")
                                     (parameters :target-type parameters-list
                                      :member-name "Parameters"))
                                    (:shape-name "DefaultClusterParameters"))

(smithy/sdk/shapes:define-structure deferred-maintenance-window common-lisp:nil
                                    ((defer-maintenance-identifier :target-type
                                      string :member-name
                                      "DeferMaintenanceIdentifier")
                                     (defer-maintenance-start-time :target-type
                                      tstamp :member-name
                                      "DeferMaintenanceStartTime")
                                     (defer-maintenance-end-time :target-type
                                      tstamp :member-name
                                      "DeferMaintenanceEndTime"))
                                    (:shape-name "DeferredMaintenanceWindow"))

(smithy/sdk/shapes:define-list deferred-maintenance-windows-list :member
                               (deferred-maintenance-window :xml-name
                                "DeferredMaintenanceWindow"))

(smithy/sdk/shapes:define-input delete-authentication-profile-message
                                common-lisp:nil
                                ((authentication-profile-name :target-type
                                  authentication-profile-name-string :required
                                  common-lisp:t :member-name
                                  "AuthenticationProfileName"))
                                (:shape-name
                                 "DeleteAuthenticationProfileMessage"))

(smithy/sdk/shapes:define-output delete-authentication-profile-result
                                 common-lisp:nil
                                 ((authentication-profile-name :target-type
                                   authentication-profile-name-string
                                   :member-name "AuthenticationProfileName"))
                                 (:shape-name
                                  "DeleteAuthenticationProfileResult"))

(smithy/sdk/shapes:define-input delete-cluster-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (skip-final-cluster-snapshot :target-type
                                  boolean :member-name
                                  "SkipFinalClusterSnapshot")
                                 (final-cluster-snapshot-identifier
                                  :target-type string :member-name
                                  "FinalClusterSnapshotIdentifier")
                                 (final-cluster-snapshot-retention-period
                                  :target-type integer-optional :member-name
                                  "FinalClusterSnapshotRetentionPeriod"))
                                (:shape-name "DeleteClusterMessage"))

(smithy/sdk/shapes:define-input delete-cluster-parameter-group-message
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName"))
                                (:shape-name
                                 "DeleteClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output delete-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DeleteClusterResult"))

(smithy/sdk/shapes:define-input delete-cluster-security-group-message
                                common-lisp:nil
                                ((cluster-security-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ClusterSecurityGroupName"))
                                (:shape-name
                                 "DeleteClusterSecurityGroupMessage"))

(smithy/sdk/shapes:define-structure delete-cluster-snapshot-message
                                    common-lisp:nil
                                    ((snapshot-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "SnapshotIdentifier")
                                     (snapshot-cluster-identifier :target-type
                                      string :member-name
                                      "SnapshotClusterIdentifier"))
                                    (:shape-name
                                     "DeleteClusterSnapshotMessage"))

(smithy/sdk/shapes:define-list delete-cluster-snapshot-message-list :member
                               (delete-cluster-snapshot-message :xml-name
                                "DeleteClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output delete-cluster-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "DeleteClusterSnapshotResult"))

(smithy/sdk/shapes:define-input delete-cluster-subnet-group-message
                                common-lisp:nil
                                ((cluster-subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterSubnetGroupName"))
                                (:shape-name "DeleteClusterSubnetGroupMessage"))

(smithy/sdk/shapes:define-input delete-custom-domain-association-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (custom-domain-name :target-type
                                  custom-domain-name-string :required
                                  common-lisp:t :member-name
                                  "CustomDomainName"))
                                (:shape-name
                                 "DeleteCustomDomainAssociationMessage"))

(smithy/sdk/shapes:define-input delete-endpoint-access-message common-lisp:nil
                                ((endpoint-name :target-type string :required
                                  common-lisp:t :member-name "EndpointName"))
                                (:shape-name "DeleteEndpointAccessMessage"))

(smithy/sdk/shapes:define-input delete-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName"))
                                (:shape-name "DeleteEventSubscriptionMessage"))

(smithy/sdk/shapes:define-input delete-hsm-client-certificate-message
                                common-lisp:nil
                                ((hsm-client-certificate-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "HsmClientCertificateIdentifier"))
                                (:shape-name
                                 "DeleteHsmClientCertificateMessage"))

(smithy/sdk/shapes:define-input delete-hsm-configuration-message
                                common-lisp:nil
                                ((hsm-configuration-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "HsmConfigurationIdentifier"))
                                (:shape-name "DeleteHsmConfigurationMessage"))

(smithy/sdk/shapes:define-input delete-integration-message common-lisp:nil
                                ((integration-arn :target-type integration-arn
                                  :required common-lisp:t :member-name
                                  "IntegrationArn"))
                                (:shape-name "DeleteIntegrationMessage"))

(smithy/sdk/shapes:define-input delete-redshift-idc-application-message
                                common-lisp:nil
                                ((redshift-idc-application-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "RedshiftIdcApplicationArn"))
                                (:shape-name
                                 "DeleteRedshiftIdcApplicationMessage"))

(smithy/sdk/shapes:define-input delete-resource-policy-message common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "DeleteResourcePolicyMessage"))

(smithy/sdk/shapes:define-input delete-scheduled-action-message common-lisp:nil
                                ((scheduled-action-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ScheduledActionName"))
                                (:shape-name "DeleteScheduledActionMessage"))

(smithy/sdk/shapes:define-input delete-snapshot-copy-grant-message
                                common-lisp:nil
                                ((snapshot-copy-grant-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SnapshotCopyGrantName"))
                                (:shape-name "DeleteSnapshotCopyGrantMessage"))

(smithy/sdk/shapes:define-input delete-snapshot-schedule-message
                                common-lisp:nil
                                ((schedule-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ScheduleIdentifier"))
                                (:shape-name "DeleteSnapshotScheduleMessage"))

(smithy/sdk/shapes:define-input delete-tags-message common-lisp:nil
                                ((resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "DeleteTagsMessage"))

(smithy/sdk/shapes:define-input delete-usage-limit-message common-lisp:nil
                                ((usage-limit-id :target-type string :required
                                  common-lisp:t :member-name "UsageLimitId"))
                                (:shape-name "DeleteUsageLimitMessage"))

(smithy/sdk/shapes:define-error dependent-service-access-denied-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DependentServiceAccessDeniedFault")
                                (:error-code 403))

(smithy/sdk/shapes:define-error dependent-service-request-throttling-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DependentServiceRequestThrottlingFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error dependent-service-unavailable-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "DependentServiceUnavailableFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input deregister-namespace-input-message
                                common-lisp:nil
                                ((namespace-identifier :target-type
                                  namespace-identifier-union :required
                                  common-lisp:t :member-name
                                  "NamespaceIdentifier")
                                 (consumer-identifiers :target-type
                                  consumer-identifier-list :required
                                  common-lisp:t :member-name
                                  "ConsumerIdentifiers"))
                                (:shape-name "DeregisterNamespaceInputMessage"))

(smithy/sdk/shapes:define-output deregister-namespace-output-message
                                 common-lisp:nil
                                 ((status :target-type
                                   namespace-registration-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "DeregisterNamespaceOutputMessage"))

(smithy/sdk/shapes:define-input describe-account-attributes-message
                                common-lisp:nil
                                ((attribute-names :target-type
                                  attribute-name-list :member-name
                                  "AttributeNames"))
                                (:shape-name
                                 "DescribeAccountAttributesMessage"))

(smithy/sdk/shapes:define-input describe-authentication-profiles-message
                                common-lisp:nil
                                ((authentication-profile-name :target-type
                                  authentication-profile-name-string
                                  :member-name "AuthenticationProfileName"))
                                (:shape-name
                                 "DescribeAuthenticationProfilesMessage"))

(smithy/sdk/shapes:define-output describe-authentication-profiles-result
                                 common-lisp:nil
                                 ((authentication-profiles :target-type
                                   authentication-profile-list :member-name
                                   "AuthenticationProfiles"))
                                 (:shape-name
                                  "DescribeAuthenticationProfilesResult"))

(smithy/sdk/shapes:define-input describe-cluster-db-revisions-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeClusterDbRevisionsMessage"))

(smithy/sdk/shapes:define-input describe-cluster-parameter-groups-message
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :member-name "ParameterGroupName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeClusterParameterGroupsMessage"))

(smithy/sdk/shapes:define-input describe-cluster-parameters-message
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (source :target-type string :member-name
                                  "Source")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeClusterParametersMessage"))

(smithy/sdk/shapes:define-input describe-cluster-security-groups-message
                                common-lisp:nil
                                ((cluster-security-group-name :target-type
                                  string :member-name
                                  "ClusterSecurityGroupName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeClusterSecurityGroupsMessage"))

(smithy/sdk/shapes:define-input describe-cluster-snapshots-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (snapshot-identifier :target-type string
                                  :member-name "SnapshotIdentifier")
                                 (snapshot-arn :target-type string :member-name
                                  "SnapshotArn")
                                 (snapshot-type :target-type string
                                  :member-name "SnapshotType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (owner-account :target-type string
                                  :member-name "OwnerAccount")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues")
                                 (cluster-exists :target-type boolean-optional
                                  :member-name "ClusterExists")
                                 (sorting-entities :target-type
                                  snapshot-sorting-entity-list :member-name
                                  "SortingEntities"))
                                (:shape-name "DescribeClusterSnapshotsMessage"))

(smithy/sdk/shapes:define-input describe-cluster-subnet-groups-message
                                common-lisp:nil
                                ((cluster-subnet-group-name :target-type string
                                  :member-name "ClusterSubnetGroupName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeClusterSubnetGroupsMessage"))

(smithy/sdk/shapes:define-input describe-cluster-tracks-message common-lisp:nil
                                ((maintenance-track-name :target-type string
                                  :member-name "MaintenanceTrackName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeClusterTracksMessage"))

(smithy/sdk/shapes:define-input describe-cluster-versions-message
                                common-lisp:nil
                                ((cluster-version :target-type string
                                  :member-name "ClusterVersion")
                                 (cluster-parameter-group-family :target-type
                                  string :member-name
                                  "ClusterParameterGroupFamily")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeClusterVersionsMessage"))

(smithy/sdk/shapes:define-input describe-clusters-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name "DescribeClustersMessage"))

(smithy/sdk/shapes:define-input describe-custom-domain-associations-message
                                common-lisp:nil
                                ((custom-domain-name :target-type
                                  custom-domain-name-string :member-name
                                  "CustomDomainName")
                                 (custom-domain-certificate-arn :target-type
                                  custom-domain-certificate-arn-string
                                  :member-name "CustomDomainCertificateArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeCustomDomainAssociationsMessage"))

(smithy/sdk/shapes:define-input describe-data-shares-for-consumer-message
                                common-lisp:nil
                                ((consumer-arn :target-type string :member-name
                                  "ConsumerArn")
                                 (status :target-type
                                  data-share-status-for-consumer :member-name
                                  "Status")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDataSharesForConsumerMessage"))

(smithy/sdk/shapes:define-output describe-data-shares-for-consumer-result
                                 common-lisp:nil
                                 ((data-shares :target-type data-share-list
                                   :member-name "DataShares")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeDataSharesForConsumerResult"))

(smithy/sdk/shapes:define-input describe-data-shares-for-producer-message
                                common-lisp:nil
                                ((producer-arn :target-type string :member-name
                                  "ProducerArn")
                                 (status :target-type
                                  data-share-status-for-producer :member-name
                                  "Status")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDataSharesForProducerMessage"))

(smithy/sdk/shapes:define-output describe-data-shares-for-producer-result
                                 common-lisp:nil
                                 ((data-shares :target-type data-share-list
                                   :member-name "DataShares")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeDataSharesForProducerResult"))

(smithy/sdk/shapes:define-input describe-data-shares-message common-lisp:nil
                                ((data-share-arn :target-type string
                                  :member-name "DataShareArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDataSharesMessage"))

(smithy/sdk/shapes:define-output describe-data-shares-result common-lisp:nil
                                 ((data-shares :target-type data-share-list
                                   :member-name "DataShares")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeDataSharesResult"))

(smithy/sdk/shapes:define-input describe-default-cluster-parameters-message
                                common-lisp:nil
                                ((parameter-group-family :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupFamily")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeDefaultClusterParametersMessage"))

(smithy/sdk/shapes:define-output describe-default-cluster-parameters-result
                                 common-lisp:nil
                                 ((default-cluster-parameters :target-type
                                   default-cluster-parameters :member-name
                                   "DefaultClusterParameters"))
                                 (:shape-name
                                  "DescribeDefaultClusterParametersResult"))

(smithy/sdk/shapes:define-input describe-endpoint-access-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (resource-owner :target-type string
                                  :member-name "ResourceOwner")
                                 (endpoint-name :target-type string
                                  :member-name "EndpointName")
                                 (vpc-id :target-type string :member-name
                                  "VpcId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEndpointAccessMessage"))

(smithy/sdk/shapes:define-input describe-endpoint-authorization-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (account :target-type string :member-name
                                  "Account")
                                 (grantee :target-type boolean-optional
                                  :member-name "Grantee")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeEndpointAuthorizationMessage"))

(smithy/sdk/shapes:define-input describe-event-categories-message
                                common-lisp:nil
                                ((source-type :target-type string :member-name
                                  "SourceType"))
                                (:shape-name "DescribeEventCategoriesMessage"))

(smithy/sdk/shapes:define-input describe-event-subscriptions-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :member-name "SubscriptionName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeEventSubscriptionsMessage"))

(smithy/sdk/shapes:define-input describe-events-message common-lisp:nil
                                ((source-identifier :target-type string
                                  :member-name "SourceIdentifier")
                                 (source-type :target-type source-type
                                  :member-name "SourceType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (duration :target-type integer-optional
                                  :member-name "Duration")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEventsMessage"))

(smithy/sdk/shapes:define-input describe-hsm-client-certificates-message
                                common-lisp:nil
                                ((hsm-client-certificate-identifier
                                  :target-type string :member-name
                                  "HsmClientCertificateIdentifier")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeHsmClientCertificatesMessage"))

(smithy/sdk/shapes:define-input describe-hsm-configurations-message
                                common-lisp:nil
                                ((hsm-configuration-identifier :target-type
                                  string :member-name
                                  "HsmConfigurationIdentifier")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeHsmConfigurationsMessage"))

(smithy/sdk/shapes:define-input describe-inbound-integrations-message
                                common-lisp:nil
                                ((integration-arn :target-type
                                  inbound-integration-arn :member-name
                                  "IntegrationArn")
                                 (target-arn :target-type target-arn
                                  :member-name "TargetArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeInboundIntegrationsMessage"))

(smithy/sdk/shapes:define-structure describe-integrations-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      describe-integrations-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type
                                      describe-integrations-filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "DescribeIntegrationsFilter"))

(smithy/sdk/shapes:define-list describe-integrations-filter-list :member
                               (describe-integrations-filter :xml-name
                                "DescribeIntegrationsFilter"))

(smithy/sdk/shapes:define-enum describe-integrations-filter-name
    common-lisp:nil
  (:integration-arn "integration-arn")
  (:source-arn "source-arn")
  (:source-types "source-types")
  (:status "status"))

(smithy/sdk/shapes:define-list describe-integrations-filter-value-list :member
                               (string :xml-name "Value"))

(smithy/sdk/shapes:define-input describe-integrations-message common-lisp:nil
                                ((integration-arn :target-type integration-arn
                                  :member-name "IntegrationArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (filters :target-type
                                  describe-integrations-filter-list
                                  :member-name "Filters"))
                                (:shape-name "DescribeIntegrationsMessage"))

(smithy/sdk/shapes:define-input describe-logging-status-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "DescribeLoggingStatusMessage"))

(smithy/sdk/shapes:define-input describe-node-configuration-options-message
                                common-lisp:nil
                                ((action-type :target-type action-type
                                  :required common-lisp:t :member-name
                                  "ActionType")
                                 (cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (snapshot-identifier :target-type string
                                  :member-name "SnapshotIdentifier")
                                 (snapshot-arn :target-type string :member-name
                                  "SnapshotArn")
                                 (owner-account :target-type string
                                  :member-name "OwnerAccount")
                                 (filters :target-type
                                  node-configuration-options-filter-list
                                  :member-name "Filters" :xml-name "Filter")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeNodeConfigurationOptionsMessage"))

(smithy/sdk/shapes:define-input describe-orderable-cluster-options-message
                                common-lisp:nil
                                ((cluster-version :target-type string
                                  :member-name "ClusterVersion")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeOrderableClusterOptionsMessage"))

(smithy/sdk/shapes:define-input describe-partners-input-message common-lisp:nil
                                ((account-id :target-type
                                  partner-integration-account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (cluster-identifier :target-type
                                  partner-integration-cluster-identifier
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (database-name :target-type
                                  partner-integration-database-name
                                  :member-name "DatabaseName")
                                 (partner-name :target-type
                                  partner-integration-partner-name :member-name
                                  "PartnerName"))
                                (:shape-name "DescribePartnersInputMessage"))

(smithy/sdk/shapes:define-output describe-partners-output-message
                                 common-lisp:nil
                                 ((partner-integration-info-list :target-type
                                   partner-integration-info-list :member-name
                                   "PartnerIntegrationInfoList"))
                                 (:shape-name "DescribePartnersOutputMessage"))

(smithy/sdk/shapes:define-input describe-redshift-idc-applications-message
                                common-lisp:nil
                                ((redshift-idc-application-arn :target-type
                                  string :member-name
                                  "RedshiftIdcApplicationArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeRedshiftIdcApplicationsMessage"))

(smithy/sdk/shapes:define-output describe-redshift-idc-applications-result
                                 common-lisp:nil
                                 ((redshift-idc-applications :target-type
                                   redshift-idc-application-list :member-name
                                   "RedshiftIdcApplications")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeRedshiftIdcApplicationsResult"))

(smithy/sdk/shapes:define-input
 describe-reserved-node-exchange-status-input-message common-lisp:nil
 ((reserved-node-id :target-type string :member-name "ReservedNodeId")
  (reserved-node-exchange-request-id :target-type string :member-name
   "ReservedNodeExchangeRequestId")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeReservedNodeExchangeStatusInputMessage"))

(smithy/sdk/shapes:define-output
 describe-reserved-node-exchange-status-output-message common-lisp:nil
 ((reserved-node-exchange-status-details :target-type
   reserved-node-exchange-status-list :member-name
   "ReservedNodeExchangeStatusDetails")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeReservedNodeExchangeStatusOutputMessage"))

(smithy/sdk/shapes:define-input describe-reserved-node-offerings-message
                                common-lisp:nil
                                ((reserved-node-offering-id :target-type string
                                  :member-name "ReservedNodeOfferingId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReservedNodeOfferingsMessage"))

(smithy/sdk/shapes:define-input describe-reserved-nodes-message common-lisp:nil
                                ((reserved-node-id :target-type string
                                  :member-name "ReservedNodeId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeReservedNodesMessage"))

(smithy/sdk/shapes:define-input describe-resize-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "DescribeResizeMessage"))

(smithy/sdk/shapes:define-input describe-scheduled-actions-message
                                common-lisp:nil
                                ((scheduled-action-name :target-type string
                                  :member-name "ScheduledActionName")
                                 (target-action-type :target-type
                                  scheduled-action-type-values :member-name
                                  "TargetActionType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (active :target-type boolean-optional
                                  :member-name "Active")
                                 (filters :target-type
                                  scheduled-action-filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name "DescribeScheduledActionsMessage"))

(smithy/sdk/shapes:define-input describe-snapshot-copy-grants-message
                                common-lisp:nil
                                ((snapshot-copy-grant-name :target-type string
                                  :member-name "SnapshotCopyGrantName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name
                                 "DescribeSnapshotCopyGrantsMessage"))

(smithy/sdk/shapes:define-input describe-snapshot-schedules-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (schedule-identifier :target-type string
                                  :member-name "ScheduleIdentifier")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeSnapshotSchedulesMessage"))

(smithy/sdk/shapes:define-output describe-snapshot-schedules-output-message
                                 common-lisp:nil
                                 ((snapshot-schedules :target-type
                                   snapshot-schedule-list :member-name
                                   "SnapshotSchedules")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeSnapshotSchedulesOutputMessage"))

(smithy/sdk/shapes:define-input describe-table-restore-status-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (table-restore-request-id :target-type string
                                  :member-name "TableRestoreRequestId")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeTableRestoreStatusMessage"))

(smithy/sdk/shapes:define-input describe-tags-message common-lisp:nil
                                ((resource-name :target-type string
                                  :member-name "ResourceName")
                                 (resource-type :target-type string
                                  :member-name "ResourceType")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name "DescribeTagsMessage"))

(smithy/sdk/shapes:define-input describe-usage-limits-message common-lisp:nil
                                ((usage-limit-id :target-type string
                                  :member-name "UsageLimitId")
                                 (cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (feature-type :target-type
                                  usage-limit-feature-type :member-name
                                  "FeatureType")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (tag-keys :target-type tag-key-list
                                  :member-name "TagKeys")
                                 (tag-values :target-type tag-value-list
                                  :member-name "TagValues"))
                                (:shape-name "DescribeUsageLimitsMessage"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disable-logging-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "DisableLoggingMessage"))

(smithy/sdk/shapes:define-input disable-snapshot-copy-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "DisableSnapshotCopyMessage"))

(smithy/sdk/shapes:define-output disable-snapshot-copy-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DisableSnapshotCopyResult"))

(smithy/sdk/shapes:define-input disassociate-data-share-consumer-message
                                common-lisp:nil
                                ((data-share-arn :target-type string :required
                                  common-lisp:t :member-name "DataShareArn")
                                 (disassociate-entire-account :target-type
                                  boolean-optional :member-name
                                  "DisassociateEntireAccount")
                                 (consumer-arn :target-type string :member-name
                                  "ConsumerArn")
                                 (consumer-region :target-type string
                                  :member-name "ConsumerRegion"))
                                (:shape-name
                                 "DisassociateDataShareConsumerMessage"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-optional smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure ec2security-group common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (ec2security-group-name :target-type
                                      string :member-name
                                      "EC2SecurityGroupName")
                                     (ec2security-group-owner-id :target-type
                                      string :member-name
                                      "EC2SecurityGroupOwnerId")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "EC2SecurityGroup"))

(smithy/sdk/shapes:define-list ec2security-group-list :member
                               (ec2security-group :xml-name "EC2SecurityGroup"))

(smithy/sdk/shapes:define-structure elastic-ip-status common-lisp:nil
                                    ((elastic-ip :target-type string
                                      :member-name "ElasticIp")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "ElasticIpStatus"))

(smithy/sdk/shapes:define-list eligible-tracks-to-update-list :member
                               (update-target :xml-name "UpdateTarget"))

(smithy/sdk/shapes:define-input enable-logging-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (bucket-name :target-type string :member-name
                                  "BucketName")
                                 (s3key-prefix :target-type s3key-prefix-value
                                  :member-name "S3KeyPrefix")
                                 (log-destination-type :target-type
                                  log-destination-type :member-name
                                  "LogDestinationType")
                                 (log-exports :target-type log-type-list
                                  :member-name "LogExports"))
                                (:shape-name "EnableLoggingMessage"))

(smithy/sdk/shapes:define-input enable-snapshot-copy-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (destination-region :target-type string
                                  :required common-lisp:t :member-name
                                  "DestinationRegion")
                                 (retention-period :target-type
                                  integer-optional :member-name
                                  "RetentionPeriod")
                                 (snapshot-copy-grant-name :target-type string
                                  :member-name "SnapshotCopyGrantName")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod"))
                                (:shape-name "EnableSnapshotCopyMessage"))

(smithy/sdk/shapes:define-output enable-snapshot-copy-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "EnableSnapshotCopyResult"))

(smithy/sdk/shapes:define-map encryption-context-map :key string :value string)

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (vpc-endpoints :target-type
                                      vpc-endpoints-list :member-name
                                      "VpcEndpoints"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure endpoint-access common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (resource-owner :target-type string
                                      :member-name "ResourceOwner")
                                     (subnet-group-name :target-type string
                                      :member-name "SubnetGroupName")
                                     (endpoint-status :target-type string
                                      :member-name "EndpointStatus")
                                     (endpoint-name :target-type string
                                      :member-name "EndpointName")
                                     (endpoint-create-time :target-type tstamp
                                      :member-name "EndpointCreateTime")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (address :target-type string :member-name
                                      "Address")
                                     (vpc-security-groups :target-type
                                      vpc-security-group-membership-list
                                      :member-name "VpcSecurityGroups")
                                     (vpc-endpoint :target-type vpc-endpoint
                                      :member-name "VpcEndpoint"))
                                    (:shape-name "EndpointAccess"))

(smithy/sdk/shapes:define-structure endpoint-access-list common-lisp:nil
                                    ((endpoint-access-list :target-type
                                      endpoint-accesses :member-name
                                      "EndpointAccessList")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name "EndpointAccessList"))

(smithy/sdk/shapes:define-list endpoint-accesses :member endpoint-access)

(smithy/sdk/shapes:define-error endpoint-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "EndpointAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure endpoint-authorization common-lisp:nil
                                    ((grantor :target-type string :member-name
                                      "Grantor")
                                     (grantee :target-type string :member-name
                                      "Grantee")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (authorize-time :target-type tstamp
                                      :member-name "AuthorizeTime")
                                     (cluster-status :target-type string
                                      :member-name "ClusterStatus")
                                     (status :target-type authorization-status
                                      :member-name "Status")
                                     (allowed-all-vpcs :target-type boolean
                                      :member-name "AllowedAllVPCs")
                                     (allowed-vpcs :target-type
                                      vpc-identifier-list :member-name
                                      "AllowedVPCs")
                                     (endpoint-count :target-type integer
                                      :member-name "EndpointCount"))
                                    (:shape-name "EndpointAuthorization"))

(smithy/sdk/shapes:define-error endpoint-authorization-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "EndpointAuthorizationAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure endpoint-authorization-list common-lisp:nil
                                    ((endpoint-authorization-list :target-type
                                      endpoint-authorizations :member-name
                                      "EndpointAuthorizationList")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name "EndpointAuthorizationList"))

(smithy/sdk/shapes:define-error endpoint-authorization-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "EndpointAuthorizationNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-list endpoint-authorizations :member
                               endpoint-authorization)

(smithy/sdk/shapes:define-error
 endpoint-authorizations-per-cluster-limit-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "EndpointAuthorizationsPerClusterLimitExceededFault")
 (:error-code 400))

(smithy/sdk/shapes:define-error endpoint-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "EndpointNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error
 endpoints-per-authorization-limit-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "EndpointsPerAuthorizationLimitExceededFault") (:error-code 400))

(smithy/sdk/shapes:define-error endpoints-per-cluster-limit-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "EndpointsPerClusterLimitExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((source-identifier :target-type string
                                      :member-name "SourceIdentifier")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (event-categories :target-type
                                      event-categories-list :member-name
                                      "EventCategories")
                                     (severity :target-type string :member-name
                                      "Severity")
                                     (date :target-type tstamp :member-name
                                      "Date")
                                     (event-id :target-type string :member-name
                                      "EventId"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-categories-list :member
                               (string :xml-name "EventCategory"))

(smithy/sdk/shapes:define-structure event-categories-map common-lisp:nil
                                    ((source-type :target-type string
                                      :member-name "SourceType")
                                     (events :target-type event-info-map-list
                                      :member-name "Events"))
                                    (:shape-name "EventCategoriesMap"))

(smithy/sdk/shapes:define-list event-categories-map-list :member
                               (event-categories-map :xml-name
                                "EventCategoriesMap"))

(smithy/sdk/shapes:define-output event-categories-message common-lisp:nil
                                 ((event-categories-map-list :target-type
                                   event-categories-map-list :member-name
                                   "EventCategoriesMapList"))
                                 (:shape-name "EventCategoriesMessage"))

(smithy/sdk/shapes:define-structure event-info-map common-lisp:nil
                                    ((event-id :target-type string :member-name
                                      "EventId")
                                     (event-categories :target-type
                                      event-categories-list :member-name
                                      "EventCategories")
                                     (event-description :target-type string
                                      :member-name "EventDescription")
                                     (severity :target-type string :member-name
                                      "Severity"))
                                    (:shape-name "EventInfoMap"))

(smithy/sdk/shapes:define-list event-info-map-list :member
                               (event-info-map :xml-name "EventInfoMap"))

(smithy/sdk/shapes:define-list event-list :member (event :xml-name "Event"))

(smithy/sdk/shapes:define-structure event-subscription common-lisp:nil
                                    ((customer-aws-id :target-type string
                                      :member-name "CustomerAwsId")
                                     (cust-subscription-id :target-type string
                                      :member-name "CustSubscriptionId")
                                     (sns-topic-arn :target-type string
                                      :member-name "SnsTopicArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (subscription-creation-time :target-type
                                      tstamp :member-name
                                      "SubscriptionCreationTime")
                                     (source-type :target-type string
                                      :member-name "SourceType")
                                     (source-ids-list :target-type
                                      source-ids-list :member-name
                                      "SourceIdsList")
                                     (event-categories-list :target-type
                                      event-categories-list :member-name
                                      "EventCategoriesList")
                                     (severity :target-type string :member-name
                                      "Severity")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "EventSubscription"))

(smithy/sdk/shapes:define-error event-subscription-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "EventSubscriptionQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list event-subscriptions-list :member
                               (event-subscription :xml-name
                                "EventSubscription"))

(smithy/sdk/shapes:define-output event-subscriptions-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (event-subscriptions-list :target-type
                                   event-subscriptions-list :member-name
                                   "EventSubscriptionsList"))
                                 (:shape-name "EventSubscriptionsMessage"))

(smithy/sdk/shapes:define-output events-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (events :target-type event-list :member-name
                                   "Events"))
                                 (:shape-name "EventsMessage"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input failover-primary-compute-input-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name
                                 "FailoverPrimaryComputeInputMessage"))

(smithy/sdk/shapes:define-output failover-primary-compute-result
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "FailoverPrimaryComputeResult"))

(smithy/sdk/shapes:define-input get-cluster-credentials-message common-lisp:nil
                                ((db-user :target-type string :required
                                  common-lisp:t :member-name "DbUser")
                                 (db-name :target-type string :member-name
                                  "DbName")
                                 (cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (duration-seconds :target-type
                                  integer-optional :member-name
                                  "DurationSeconds")
                                 (auto-create :target-type boolean-optional
                                  :member-name "AutoCreate")
                                 (db-groups :target-type db-group-list
                                  :member-name "DbGroups")
                                 (custom-domain-name :target-type string
                                  :member-name "CustomDomainName"))
                                (:shape-name "GetClusterCredentialsMessage"))

(smithy/sdk/shapes:define-input get-cluster-credentials-with-iammessage
                                common-lisp:nil
                                ((db-name :target-type string :member-name
                                  "DbName")
                                 (cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (duration-seconds :target-type
                                  integer-optional :member-name
                                  "DurationSeconds")
                                 (custom-domain-name :target-type string
                                  :member-name "CustomDomainName"))
                                (:shape-name
                                 "GetClusterCredentialsWithIAMMessage"))

(smithy/sdk/shapes:define-input
 get-reserved-node-exchange-configuration-options-input-message common-lisp:nil
 ((action-type :target-type reserved-node-exchange-action-type :required
   common-lisp:t :member-name "ActionType")
  (cluster-identifier :target-type string :member-name "ClusterIdentifier")
  (snapshot-identifier :target-type string :member-name "SnapshotIdentifier")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "GetReservedNodeExchangeConfigurationOptionsInputMessage"))

(smithy/sdk/shapes:define-output
 get-reserved-node-exchange-configuration-options-output-message
 common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (reserved-node-configuration-option-list :target-type
   reserved-node-configuration-option-list :member-name
   "ReservedNodeConfigurationOptionList"))
 (:shape-name "GetReservedNodeExchangeConfigurationOptionsOutputMessage"))

(smithy/sdk/shapes:define-input
 get-reserved-node-exchange-offerings-input-message common-lisp:nil
 ((reserved-node-id :target-type string :required common-lisp:t :member-name
   "ReservedNodeId")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "GetReservedNodeExchangeOfferingsInputMessage"))

(smithy/sdk/shapes:define-output
 get-reserved-node-exchange-offerings-output-message common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (reserved-node-offerings :target-type reserved-node-offering-list
   :member-name "ReservedNodeOfferings"))
 (:shape-name "GetReservedNodeExchangeOfferingsOutputMessage"))

(smithy/sdk/shapes:define-input get-resource-policy-message common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "GetResourcePolicyMessage"))

(smithy/sdk/shapes:define-output get-resource-policy-result common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy"))
                                 (:shape-name "GetResourcePolicyResult"))

(smithy/sdk/shapes:define-structure hsm-client-certificate common-lisp:nil
                                    ((hsm-client-certificate-identifier
                                      :target-type string :member-name
                                      "HsmClientCertificateIdentifier")
                                     (hsm-client-certificate-public-key
                                      :target-type string :member-name
                                      "HsmClientCertificatePublicKey")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "HsmClientCertificate"))

(smithy/sdk/shapes:define-error hsm-client-certificate-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "HsmClientCertificateAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list hsm-client-certificate-list :member
                               (hsm-client-certificate :xml-name
                                "HsmClientCertificate"))

(smithy/sdk/shapes:define-output hsm-client-certificate-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (hsm-client-certificates :target-type
                                   hsm-client-certificate-list :member-name
                                   "HsmClientCertificates"))
                                 (:shape-name "HsmClientCertificateMessage"))

(smithy/sdk/shapes:define-error hsm-client-certificate-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "HsmClientCertificateNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error hsm-client-certificate-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "HsmClientCertificateQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure hsm-configuration common-lisp:nil
                                    ((hsm-configuration-identifier :target-type
                                      string :member-name
                                      "HsmConfigurationIdentifier")
                                     (description :target-type string
                                      :member-name "Description")
                                     (hsm-ip-address :target-type string
                                      :member-name "HsmIpAddress")
                                     (hsm-partition-name :target-type string
                                      :member-name "HsmPartitionName")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "HsmConfiguration"))

(smithy/sdk/shapes:define-error hsm-configuration-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "HsmConfigurationAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list hsm-configuration-list :member
                               (hsm-configuration :xml-name "HsmConfiguration"))

(smithy/sdk/shapes:define-output hsm-configuration-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (hsm-configurations :target-type
                                   hsm-configuration-list :member-name
                                   "HsmConfigurations"))
                                 (:shape-name "HsmConfigurationMessage"))

(smithy/sdk/shapes:define-error hsm-configuration-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "HsmConfigurationNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error hsm-configuration-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "HsmConfigurationQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure hsm-status common-lisp:nil
                                    ((hsm-client-certificate-identifier
                                      :target-type string :member-name
                                      "HsmClientCertificateIdentifier")
                                     (hsm-configuration-identifier :target-type
                                      string :member-name
                                      "HsmConfigurationIdentifier")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "HsmStatus"))

(smithy/sdk/shapes:define-structure iprange common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (cidrip :target-type string :member-name
                                      "CIDRIP")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "IPRange"))

(smithy/sdk/shapes:define-list iprange-list :member
                               (iprange :xml-name "IPRange"))

(smithy/sdk/shapes:define-list iam-role-arn-list :member
                               (string :xml-name "IamRoleArn"))

(smithy/sdk/shapes:define-type idc-display-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-namespace-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum impact-ranking-type
    common-lisp:nil
  (:high "HIGH")
  (:medium "MEDIUM")
  (:low "LOW"))

(smithy/sdk/shapes:define-list import-tables-completed :member string)

(smithy/sdk/shapes:define-list import-tables-in-progress :member string)

(smithy/sdk/shapes:define-list import-tables-not-started :member string)

(smithy/sdk/shapes:define-error in-progress-table-restore-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InProgressTableRestoreQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure inbound-integration common-lisp:nil
                                    ((integration-arn :target-type
                                      inbound-integration-arn :member-name
                                      "IntegrationArn")
                                     (source-arn :target-type string
                                      :member-name "SourceArn")
                                     (target-arn :target-type target-arn
                                      :member-name "TargetArn")
                                     (status :target-type
                                      zero-etlintegration-status :member-name
                                      "Status")
                                     (errors :target-type
                                      integration-error-list :member-name
                                      "Errors")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime"))
                                    (:shape-name "InboundIntegration"))

(smithy/sdk/shapes:define-type inbound-integration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inbound-integration-list :member
                               (inbound-integration :xml-name
                                "InboundIntegration"))

(smithy/sdk/shapes:define-output inbound-integrations-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (inbound-integrations :target-type
                                   inbound-integration-list :member-name
                                   "InboundIntegrations"))
                                 (:shape-name "InboundIntegrationsMessage"))

(smithy/sdk/shapes:define-error incompatible-orderable-options common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IncompatibleOrderableOptions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-cluster-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientClusterCapacityFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-s3bucket-policy-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InsufficientS3BucketPolicyFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure integration common-lisp:nil
                                    ((integration-arn :target-type
                                      integration-arn :member-name
                                      "IntegrationArn")
                                     (integration-name :target-type
                                      integration-name :member-name
                                      "IntegrationName")
                                     (source-arn :target-type source-arn
                                      :member-name "SourceArn")
                                     (target-arn :target-type target-arn
                                      :member-name "TargetArn")
                                     (status :target-type
                                      zero-etlintegration-status :member-name
                                      "Status")
                                     (errors :target-type
                                      integration-error-list :member-name
                                      "Errors")
                                     (create-time :target-type tstamp
                                      :member-name "CreateTime")
                                     (description :target-type description
                                      :member-name "Description")
                                     (kmskey-id :target-type string
                                      :member-name "KMSKeyId")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "AdditionalEncryptionContext")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "Integration"))

(smithy/sdk/shapes:define-error integration-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integration-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error integration-conflict-operation-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "IntegrationConflictOperationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error integration-conflict-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationConflictStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure integration-error common-lisp:nil
                                    ((error-code :target-type string :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "IntegrationError"))

(smithy/sdk/shapes:define-list integration-error-list :member
                               (integration-error :xml-name "IntegrationError"))

(smithy/sdk/shapes:define-list integration-list :member
                               (integration :xml-name "Integration"))

(smithy/sdk/shapes:define-type integration-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error integration-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error integration-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error integration-source-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationSourceNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error integration-target-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "IntegrationTargetNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-output integrations-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (integrations :target-type integration-list
                                   :member-name "Integrations"))
                                 (:shape-name "IntegrationsMessage"))

(smithy/sdk/shapes:define-error invalid-authentication-profile-request-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidAuthenticationProfileRequestFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-authorization-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidAuthorizationStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-parameter-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidClusterParameterGroupStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-security-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidClusterSecurityGroupStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-snapshot-schedule-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidClusterSnapshotScheduleStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-snapshot-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidClusterSnapshotStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidClusterStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-subnet-group-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidClusterSubnetGroupStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-subnet-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidClusterSubnetStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cluster-track-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidClusterTrackFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-data-share-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidDataShareFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-elastic-ip-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidElasticIpFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-endpoint-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidEndpointStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-hsm-client-certificate-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidHsmClientCertificateStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-hsm-configuration-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidHsmConfigurationStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-namespace-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidNamespaceFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidPolicyFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-reserved-node-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidReservedNodeStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-restore-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidRestoreFault")
                                (:error-code 406))

(smithy/sdk/shapes:define-error invalid-retention-period-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidRetentionPeriodFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3bucket-name-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3BucketNameFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3key-prefix-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3KeyPrefixFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-schedule-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidScheduleFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-scheduled-action-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidScheduledActionFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-snapshot-copy-grant-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidSnapshotCopyGrantStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subscription-state-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubscriptionStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-table-restore-argument-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidTableRestoreArgumentFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidTagFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-usage-limit-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidUsageLimitFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-vpcnetwork-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCNetworkStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error ipv6cidr-block-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "Ipv6CidrBlockNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure lake-formation-query common-lisp:nil
                                    ((authorization :target-type
                                      service-authorization :required
                                      common-lisp:t :member-name
                                      "Authorization"))
                                    (:shape-name "LakeFormationQuery"))

(smithy/sdk/shapes:define-union lake-formation-scope-union common-lisp:nil
                                ((lake-formation-query :target-type
                                  lake-formation-query :member-name
                                  "LakeFormationQuery"))
                                (:shape-name "LakeFormationScopeUnion"))

(smithy/sdk/shapes:define-list lake-formation-service-integrations :member
                               lake-formation-scope-union)

(smithy/sdk/shapes:define-error limit-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-recommendations-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (namespace-arn :target-type string
                                  :member-name "NamespaceArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "ListRecommendationsMessage"))

(smithy/sdk/shapes:define-output list-recommendations-result common-lisp:nil
                                 ((recommendations :target-type
                                   recommendation-list :member-name
                                   "Recommendations")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "ListRecommendationsResult"))

(smithy/sdk/shapes:define-enum log-destination-type
    common-lisp:nil
  (:s3 "s3")
  (:cloudwatch "cloudwatch"))

(smithy/sdk/shapes:define-list log-type-list :member string)

(smithy/sdk/shapes:define-structure logging-status common-lisp:nil
                                    ((logging-enabled :target-type boolean
                                      :member-name "LoggingEnabled")
                                     (bucket-name :target-type string
                                      :member-name "BucketName")
                                     (s3key-prefix :target-type
                                      s3key-prefix-value :member-name
                                      "S3KeyPrefix")
                                     (last-successful-delivery-time
                                      :target-type tstamp :member-name
                                      "LastSuccessfulDeliveryTime")
                                     (last-failure-time :target-type tstamp
                                      :member-name "LastFailureTime")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage")
                                     (log-destination-type :target-type
                                      log-destination-type :member-name
                                      "LogDestinationType")
                                     (log-exports :target-type log-type-list
                                      :member-name "LogExports"))
                                    (:shape-name "LoggingStatus"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-optional smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure maintenance-track common-lisp:nil
                                    ((maintenance-track-name :target-type
                                      string :member-name
                                      "MaintenanceTrackName")
                                     (database-version :target-type string
                                      :member-name "DatabaseVersion")
                                     (update-targets :target-type
                                      eligible-tracks-to-update-list
                                      :member-name "UpdateTargets"))
                                    (:shape-name "MaintenanceTrack"))

(smithy/sdk/shapes:define-enum mode
    common-lisp:nil
  (:standard "standard")
  (:high-performance "high-performance"))

(smithy/sdk/shapes:define-input modify-aqua-input-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (aqua-configuration-status :target-type
                                  aqua-configuration-status :member-name
                                  "AquaConfigurationStatus"))
                                (:shape-name "ModifyAquaInputMessage"))

(smithy/sdk/shapes:define-output modify-aqua-output-message common-lisp:nil
                                 ((aqua-configuration :target-type
                                   aqua-configuration :member-name
                                   "AquaConfiguration"))
                                 (:shape-name "ModifyAquaOutputMessage"))

(smithy/sdk/shapes:define-input modify-authentication-profile-message
                                common-lisp:nil
                                ((authentication-profile-name :target-type
                                  authentication-profile-name-string :required
                                  common-lisp:t :member-name
                                  "AuthenticationProfileName")
                                 (authentication-profile-content :target-type
                                  string :required common-lisp:t :member-name
                                  "AuthenticationProfileContent"))
                                (:shape-name
                                 "ModifyAuthenticationProfileMessage"))

(smithy/sdk/shapes:define-output modify-authentication-profile-result
                                 common-lisp:nil
                                 ((authentication-profile-name :target-type
                                   authentication-profile-name-string
                                   :member-name "AuthenticationProfileName")
                                  (authentication-profile-content :target-type
                                   string :member-name
                                   "AuthenticationProfileContent"))
                                 (:shape-name
                                  "ModifyAuthenticationProfileResult"))

(smithy/sdk/shapes:define-input modify-cluster-db-revision-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (revision-target :target-type string :required
                                  common-lisp:t :member-name "RevisionTarget"))
                                (:shape-name "ModifyClusterDbRevisionMessage"))

(smithy/sdk/shapes:define-output modify-cluster-db-revision-result
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ModifyClusterDbRevisionResult"))

(smithy/sdk/shapes:define-input modify-cluster-iam-roles-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (add-iam-roles :target-type iam-role-arn-list
                                  :member-name "AddIamRoles")
                                 (remove-iam-roles :target-type
                                  iam-role-arn-list :member-name
                                  "RemoveIamRoles")
                                 (default-iam-role-arn :target-type string
                                  :member-name "DefaultIamRoleArn"))
                                (:shape-name "ModifyClusterIamRolesMessage"))

(smithy/sdk/shapes:define-output modify-cluster-iam-roles-result
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ModifyClusterIamRolesResult"))

(smithy/sdk/shapes:define-input modify-cluster-maintenance-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (defer-maintenance :target-type
                                  boolean-optional :member-name
                                  "DeferMaintenance")
                                 (defer-maintenance-identifier :target-type
                                  string :member-name
                                  "DeferMaintenanceIdentifier")
                                 (defer-maintenance-start-time :target-type
                                  tstamp :member-name
                                  "DeferMaintenanceStartTime")
                                 (defer-maintenance-end-time :target-type
                                  tstamp :member-name
                                  "DeferMaintenanceEndTime")
                                 (defer-maintenance-duration :target-type
                                  integer-optional :member-name
                                  "DeferMaintenanceDuration"))
                                (:shape-name "ModifyClusterMaintenanceMessage"))

(smithy/sdk/shapes:define-output modify-cluster-maintenance-result
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ModifyClusterMaintenanceResult"))

(smithy/sdk/shapes:define-input modify-cluster-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (cluster-type :target-type string :member-name
                                  "ClusterType")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (number-of-nodes :target-type integer-optional
                                  :member-name "NumberOfNodes")
                                 (cluster-security-groups :target-type
                                  cluster-security-group-name-list :member-name
                                  "ClusterSecurityGroups")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (master-user-password :target-type
                                  sensitive-string :member-name
                                  "MasterUserPassword")
                                 (cluster-parameter-group-name :target-type
                                  string :member-name
                                  "ClusterParameterGroupName")
                                 (automated-snapshot-retention-period
                                  :target-type integer-optional :member-name
                                  "AutomatedSnapshotRetentionPeriod")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (cluster-version :target-type string
                                  :member-name "ClusterVersion")
                                 (allow-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AllowVersionUpgrade")
                                 (hsm-client-certificate-identifier
                                  :target-type string :member-name
                                  "HsmClientCertificateIdentifier")
                                 (hsm-configuration-identifier :target-type
                                  string :member-name
                                  "HsmConfigurationIdentifier")
                                 (new-cluster-identifier :target-type string
                                  :member-name "NewClusterIdentifier")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (elastic-ip :target-type string :member-name
                                  "ElasticIp")
                                 (enhanced-vpc-routing :target-type
                                  boolean-optional :member-name
                                  "EnhancedVpcRouting")
                                 (maintenance-track-name :target-type string
                                  :member-name "MaintenanceTrackName")
                                 (encrypted :target-type boolean-optional
                                  :member-name "Encrypted")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (availability-zone-relocation :target-type
                                  boolean-optional :member-name
                                  "AvailabilityZoneRelocation")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (manage-master-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterPassword")
                                 (master-password-secret-kms-key-id
                                  :target-type string :member-name
                                  "MasterPasswordSecretKmsKeyId")
                                 (ip-address-type :target-type string
                                  :member-name "IpAddressType")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ"))
                                (:shape-name "ModifyClusterMessage"))

(smithy/sdk/shapes:define-input modify-cluster-parameter-group-message
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (parameters :target-type parameters-list
                                  :required common-lisp:t :member-name
                                  "Parameters"))
                                (:shape-name
                                 "ModifyClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-output modify-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ModifyClusterResult"))

(smithy/sdk/shapes:define-input modify-cluster-snapshot-message common-lisp:nil
                                ((snapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "SnapshotIdentifier")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "ModifyClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output modify-cluster-snapshot-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "ModifyClusterSnapshotResult"))

(smithy/sdk/shapes:define-input modify-cluster-snapshot-schedule-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (schedule-identifier :target-type string
                                  :member-name "ScheduleIdentifier")
                                 (disassociate-schedule :target-type
                                  boolean-optional :member-name
                                  "DisassociateSchedule"))
                                (:shape-name
                                 "ModifyClusterSnapshotScheduleMessage"))

(smithy/sdk/shapes:define-input modify-cluster-subnet-group-message
                                common-lisp:nil
                                ((cluster-subnet-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterSubnetGroupName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds"))
                                (:shape-name "ModifyClusterSubnetGroupMessage"))

(smithy/sdk/shapes:define-output modify-cluster-subnet-group-result
                                 common-lisp:nil
                                 ((cluster-subnet-group :target-type
                                   cluster-subnet-group :member-name
                                   "ClusterSubnetGroup"))
                                 (:shape-name "ModifyClusterSubnetGroupResult"))

(smithy/sdk/shapes:define-input modify-custom-domain-association-message
                                common-lisp:nil
                                ((custom-domain-name :target-type
                                  custom-domain-name-string :required
                                  common-lisp:t :member-name
                                  "CustomDomainName")
                                 (custom-domain-certificate-arn :target-type
                                  custom-domain-certificate-arn-string
                                  :required common-lisp:t :member-name
                                  "CustomDomainCertificateArn")
                                 (cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name
                                 "ModifyCustomDomainAssociationMessage"))

(smithy/sdk/shapes:define-output modify-custom-domain-association-result
                                 common-lisp:nil
                                 ((custom-domain-name :target-type
                                   custom-domain-name-string :member-name
                                   "CustomDomainName")
                                  (custom-domain-certificate-arn :target-type
                                   custom-domain-certificate-arn-string
                                   :member-name "CustomDomainCertificateArn")
                                  (cluster-identifier :target-type string
                                   :member-name "ClusterIdentifier")
                                  (custom-domain-cert-expiry-time :target-type
                                   string :member-name
                                   "CustomDomainCertExpiryTime"))
                                 (:shape-name
                                  "ModifyCustomDomainAssociationResult"))

(smithy/sdk/shapes:define-input modify-endpoint-access-message common-lisp:nil
                                ((endpoint-name :target-type string :required
                                  common-lisp:t :member-name "EndpointName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds"))
                                (:shape-name "ModifyEndpointAccessMessage"))

(smithy/sdk/shapes:define-input modify-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (sns-topic-arn :target-type string
                                  :member-name "SnsTopicArn")
                                 (source-type :target-type string :member-name
                                  "SourceType")
                                 (source-ids :target-type source-ids-list
                                  :member-name "SourceIds")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (severity :target-type string :member-name
                                  "Severity")
                                 (enabled :target-type boolean-optional
                                  :member-name "Enabled"))
                                (:shape-name "ModifyEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output modify-event-subscription-result
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name "ModifyEventSubscriptionResult"))

(smithy/sdk/shapes:define-input modify-integration-message common-lisp:nil
                                ((integration-arn :target-type integration-arn
                                  :required common-lisp:t :member-name
                                  "IntegrationArn")
                                 (description :target-type
                                  integration-description :member-name
                                  "Description")
                                 (integration-name :target-type
                                  integration-name :member-name
                                  "IntegrationName"))
                                (:shape-name "ModifyIntegrationMessage"))

(smithy/sdk/shapes:define-input modify-redshift-idc-application-message
                                common-lisp:nil
                                ((redshift-idc-application-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "RedshiftIdcApplicationArn")
                                 (identity-namespace :target-type
                                  identity-namespace-string :member-name
                                  "IdentityNamespace")
                                 (iam-role-arn :target-type string :member-name
                                  "IamRoleArn")
                                 (idc-display-name :target-type
                                  idc-display-name-string :member-name
                                  "IdcDisplayName")
                                 (authorized-token-issuer-list :target-type
                                  authorized-token-issuer-list :member-name
                                  "AuthorizedTokenIssuerList")
                                 (service-integrations :target-type
                                  service-integration-list :member-name
                                  "ServiceIntegrations"))
                                (:shape-name
                                 "ModifyRedshiftIdcApplicationMessage"))

(smithy/sdk/shapes:define-output modify-redshift-idc-application-result
                                 common-lisp:nil
                                 ((redshift-idc-application :target-type
                                   redshift-idc-application :member-name
                                   "RedshiftIdcApplication"))
                                 (:shape-name
                                  "ModifyRedshiftIdcApplicationResult"))

(smithy/sdk/shapes:define-input modify-scheduled-action-message common-lisp:nil
                                ((scheduled-action-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ScheduledActionName")
                                 (target-action :target-type
                                  scheduled-action-type :member-name
                                  "TargetAction")
                                 (schedule :target-type string :member-name
                                  "Schedule")
                                 (iam-role :target-type string :member-name
                                  "IamRole")
                                 (scheduled-action-description :target-type
                                  string :member-name
                                  "ScheduledActionDescription")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (enable :target-type boolean-optional
                                  :member-name "Enable"))
                                (:shape-name "ModifyScheduledActionMessage"))

(smithy/sdk/shapes:define-input modify-snapshot-copy-retention-period-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (retention-period :target-type integer
                                  :required common-lisp:t :member-name
                                  "RetentionPeriod")
                                 (manual :target-type boolean :member-name
                                  "Manual"))
                                (:shape-name
                                 "ModifySnapshotCopyRetentionPeriodMessage"))

(smithy/sdk/shapes:define-output modify-snapshot-copy-retention-period-result
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name
                                  "ModifySnapshotCopyRetentionPeriodResult"))

(smithy/sdk/shapes:define-input modify-snapshot-schedule-message
                                common-lisp:nil
                                ((schedule-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ScheduleIdentifier")
                                 (schedule-definitions :target-type
                                  schedule-definition-list :required
                                  common-lisp:t :member-name
                                  "ScheduleDefinitions"))
                                (:shape-name "ModifySnapshotScheduleMessage"))

(smithy/sdk/shapes:define-input modify-usage-limit-message common-lisp:nil
                                ((usage-limit-id :target-type string :required
                                  common-lisp:t :member-name "UsageLimitId")
                                 (amount :target-type long-optional
                                  :member-name "Amount")
                                 (breach-action :target-type
                                  usage-limit-breach-action :member-name
                                  "BreachAction"))
                                (:shape-name "ModifyUsageLimitMessage"))

(smithy/sdk/shapes:define-union namespace-identifier-union common-lisp:nil
                                ((serverless-identifier :target-type
                                  serverless-identifier :member-name
                                  "ServerlessIdentifier")
                                 (provisioned-identifier :target-type
                                  provisioned-identifier :member-name
                                  "ProvisionedIdentifier"))
                                (:shape-name "NamespaceIdentifierUnion"))

(smithy/sdk/shapes:define-enum namespace-registration-status
    common-lisp:nil
  (:registering "Registering")
  (:deregistering "Deregistering"))

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((network-interface-id :target-type string
                                      :member-name "NetworkInterfaceId")
                                     (subnet-id :target-type string
                                      :member-name "SubnetId")
                                     (private-ip-address :target-type string
                                      :member-name "PrivateIpAddress")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (ipv6address :target-type string
                                      :member-name "Ipv6Address"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interface-list :member
                               (network-interface :xml-name "NetworkInterface"))

(smithy/sdk/shapes:define-structure node-configuration-option common-lisp:nil
                                    ((node-type :target-type string
                                      :member-name "NodeType")
                                     (number-of-nodes :target-type integer
                                      :member-name "NumberOfNodes")
                                     (estimated-disk-utilization-percent
                                      :target-type double-optional :member-name
                                      "EstimatedDiskUtilizationPercent")
                                     (mode :target-type mode :member-name
                                      "Mode"))
                                    (:shape-name "NodeConfigurationOption"))

(smithy/sdk/shapes:define-list node-configuration-option-list :member
                               (node-configuration-option :xml-name
                                "NodeConfigurationOption"))

(smithy/sdk/shapes:define-structure node-configuration-options-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      node-configuration-options-filter-name
                                      :member-name "Name")
                                     (operator :target-type operator-type
                                      :member-name "Operator")
                                     (values :target-type value-string-list
                                      :member-name "Values" :xml-name "Value"))
                                    (:shape-name
                                     "NodeConfigurationOptionsFilter"))

(smithy/sdk/shapes:define-list node-configuration-options-filter-list :member
                               (node-configuration-options-filter :xml-name
                                "NodeConfigurationOptionsFilter"))

(smithy/sdk/shapes:define-enum node-configuration-options-filter-name
    common-lisp:nil
  (:node-type "NodeType")
  (:num-nodes "NumberOfNodes")
  (:estimated-disk-utilization-percent "EstimatedDiskUtilizationPercent")
  (:mode "Mode"))

(smithy/sdk/shapes:define-output node-configuration-options-message
                                 common-lisp:nil
                                 ((node-configuration-option-list :target-type
                                   node-configuration-option-list :member-name
                                   "NodeConfigurationOptionList")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "NodeConfigurationOptionsMessage"))

(smithy/sdk/shapes:define-error
 number-of-nodes-per-cluster-limit-exceeded-fault common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "NumberOfNodesPerClusterLimitExceededFault") (:error-code 400))

(smithy/sdk/shapes:define-error number-of-nodes-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "NumberOfNodesQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum operator-type
    common-lisp:nil
  (:eq "eq")
  (:lt "lt")
  (:gt "gt")
  (:le "le")
  (:ge "ge")
  (:in "in")
  (:between "between"))

(smithy/sdk/shapes:define-structure orderable-cluster-option common-lisp:nil
                                    ((cluster-version :target-type string
                                      :member-name "ClusterVersion")
                                     (cluster-type :target-type string
                                      :member-name "ClusterType")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (availability-zones :target-type
                                      availability-zone-list :member-name
                                      "AvailabilityZones"))
                                    (:shape-name "OrderableClusterOption"))

(smithy/sdk/shapes:define-list orderable-cluster-options-list :member
                               (orderable-cluster-option :xml-name
                                "OrderableClusterOption"))

(smithy/sdk/shapes:define-output orderable-cluster-options-message
                                 common-lisp:nil
                                 ((orderable-cluster-options :target-type
                                   orderable-cluster-options-list :member-name
                                   "OrderableClusterOptions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "OrderableClusterOptionsMessage"))

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((parameter-name :target-type string
                                      :member-name "ParameterName")
                                     (parameter-value :target-type string
                                      :member-name "ParameterValue")
                                     (description :target-type string
                                      :member-name "Description")
                                     (source :target-type string :member-name
                                      "Source")
                                     (data-type :target-type string
                                      :member-name "DataType")
                                     (allowed-values :target-type string
                                      :member-name "AllowedValues")
                                     (apply-type :target-type
                                      parameter-apply-type :member-name
                                      "ApplyType")
                                     (is-modifiable :target-type boolean
                                      :member-name "IsModifiable")
                                     (minimum-engine-version :target-type
                                      string :member-name
                                      "MinimumEngineVersion"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-enum parameter-apply-type
    common-lisp:nil
  (:static "static")
  (:dynamic "dynamic"))

(smithy/sdk/shapes:define-list parameter-group-list :member
                               (cluster-parameter-group :xml-name
                                "ClusterParameterGroup"))

(smithy/sdk/shapes:define-list parameters-list :member
                               (parameter :xml-name "Parameter"))

(smithy/sdk/shapes:define-type partner-integration-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partner-integration-cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partner-integration-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure partner-integration-info common-lisp:nil
                                    ((database-name :target-type
                                      partner-integration-database-name
                                      :member-name "DatabaseName")
                                     (partner-name :target-type
                                      partner-integration-partner-name
                                      :member-name "PartnerName")
                                     (status :target-type
                                      partner-integration-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      partner-integration-status-message
                                      :member-name "StatusMessage")
                                     (created-at :target-type tstamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type tstamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "PartnerIntegrationInfo"))

(smithy/sdk/shapes:define-list partner-integration-info-list :member
                               (partner-integration-info :xml-name
                                "PartnerIntegrationInfo"))

(smithy/sdk/shapes:define-structure partner-integration-input-message
                                    common-lisp:nil
                                    ((account-id :target-type
                                      partner-integration-account-id :required
                                      common-lisp:t :member-name "AccountId")
                                     (cluster-identifier :target-type
                                      partner-integration-cluster-identifier
                                      :required common-lisp:t :member-name
                                      "ClusterIdentifier")
                                     (database-name :target-type
                                      partner-integration-database-name
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (partner-name :target-type
                                      partner-integration-partner-name
                                      :required common-lisp:t :member-name
                                      "PartnerName"))
                                    (:shape-name
                                     "PartnerIntegrationInputMessage"))

(smithy/sdk/shapes:define-structure partner-integration-output-message
                                    common-lisp:nil
                                    ((database-name :target-type
                                      partner-integration-database-name
                                      :member-name "DatabaseName")
                                     (partner-name :target-type
                                      partner-integration-partner-name
                                      :member-name "PartnerName"))
                                    (:shape-name
                                     "PartnerIntegrationOutputMessage"))

(smithy/sdk/shapes:define-type partner-integration-partner-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum partner-integration-status
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive")
  (:runtime-failure "RuntimeFailure")
  (:connection-failure "ConnectionFailure"))

(smithy/sdk/shapes:define-type partner-integration-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error partner-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "PartnerNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure pause-cluster-message common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "ClusterIdentifier"))
                                    (:shape-name "PauseClusterMessage"))

(smithy/sdk/shapes:define-output pause-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "PauseClusterResult"))

(smithy/sdk/shapes:define-list pending-actions-list :member string)

(smithy/sdk/shapes:define-structure pending-modified-values common-lisp:nil
                                    ((master-user-password :target-type
                                      sensitive-string :member-name
                                      "MasterUserPassword")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (number-of-nodes :target-type
                                      integer-optional :member-name
                                      "NumberOfNodes")
                                     (cluster-type :target-type string
                                      :member-name "ClusterType")
                                     (cluster-version :target-type string
                                      :member-name "ClusterVersion")
                                     (automated-snapshot-retention-period
                                      :target-type integer-optional
                                      :member-name
                                      "AutomatedSnapshotRetentionPeriod")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (publicly-accessible :target-type
                                      boolean-optional :member-name
                                      "PubliclyAccessible")
                                     (enhanced-vpc-routing :target-type
                                      boolean-optional :member-name
                                      "EnhancedVpcRouting")
                                     (maintenance-track-name :target-type
                                      string :member-name
                                      "MaintenanceTrackName")
                                     (encryption-type :target-type string
                                      :member-name "EncryptionType"))
                                    (:shape-name "PendingModifiedValues"))

(smithy/sdk/shapes:define-structure provisioned-identifier common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "ClusterIdentifier"))
                                    (:shape-name "ProvisionedIdentifier"))

(smithy/sdk/shapes:define-input purchase-reserved-node-offering-message
                                common-lisp:nil
                                ((reserved-node-offering-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ReservedNodeOfferingId")
                                 (node-count :target-type integer-optional
                                  :member-name "NodeCount"))
                                (:shape-name
                                 "PurchaseReservedNodeOfferingMessage"))

(smithy/sdk/shapes:define-output purchase-reserved-node-offering-result
                                 common-lisp:nil
                                 ((reserved-node :target-type reserved-node
                                   :member-name "ReservedNode"))
                                 (:shape-name
                                  "PurchaseReservedNodeOfferingResult"))

(smithy/sdk/shapes:define-input put-resource-policy-message common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (policy :target-type string :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutResourcePolicyMessage"))

(smithy/sdk/shapes:define-output put-resource-policy-result common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy"))
                                 (:shape-name "PutResourcePolicyResult"))

(smithy/sdk/shapes:define-structure read-write-access common-lisp:nil
                                    ((authorization :target-type
                                      service-authorization :required
                                      common-lisp:t :member-name
                                      "Authorization"))
                                    (:shape-name "ReadWriteAccess"))

(smithy/sdk/shapes:define-input reboot-cluster-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "RebootClusterMessage"))

(smithy/sdk/shapes:define-output reboot-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "RebootClusterResult"))

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (namespace-arn :target-type string
                                      :member-name "NamespaceArn")
                                     (created-at :target-type tstamp
                                      :member-name "CreatedAt")
                                     (recommendation-type :target-type string
                                      :member-name "RecommendationType")
                                     (title :target-type string :member-name
                                      "Title")
                                     (description :target-type string
                                      :member-name "Description")
                                     (observation :target-type string
                                      :member-name "Observation")
                                     (impact-ranking :target-type
                                      impact-ranking-type :member-name
                                      "ImpactRanking")
                                     (recommendation-text :target-type string
                                      :member-name "RecommendationText")
                                     (recommended-actions :target-type
                                      recommended-action-list :member-name
                                      "RecommendedActions")
                                     (reference-links :target-type
                                      reference-link-list :member-name
                                      "ReferenceLinks"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-list recommendation-list :member
                               (recommendation :xml-name "Recommendation"))

(smithy/sdk/shapes:define-structure recommended-action common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (database :target-type string :member-name
                                      "Database")
                                     (command :target-type string :member-name
                                      "Command")
                                     (type :target-type recommended-action-type
                                      :member-name "Type"))
                                    (:shape-name "RecommendedAction"))

(smithy/sdk/shapes:define-list recommended-action-list :member
                               (recommended-action :xml-name
                                "RecommendedAction"))

(smithy/sdk/shapes:define-enum recommended-action-type
    common-lisp:nil
  (:sql "SQL")
  (:cli "CLI"))

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

(smithy/sdk/shapes:define-structure redshift-idc-application common-lisp:nil
                                    ((idc-instance-arn :target-type string
                                      :member-name "IdcInstanceArn")
                                     (redshift-idc-application-name
                                      :target-type
                                      redshift-idc-application-name
                                      :member-name
                                      "RedshiftIdcApplicationName")
                                     (redshift-idc-application-arn :target-type
                                      string :member-name
                                      "RedshiftIdcApplicationArn")
                                     (identity-namespace :target-type
                                      identity-namespace-string :member-name
                                      "IdentityNamespace")
                                     (idc-display-name :target-type
                                      idc-display-name-string :member-name
                                      "IdcDisplayName")
                                     (iam-role-arn :target-type string
                                      :member-name "IamRoleArn")
                                     (idc-managed-application-arn :target-type
                                      string :member-name
                                      "IdcManagedApplicationArn")
                                     (idc-onboard-status :target-type string
                                      :member-name "IdcOnboardStatus")
                                     (authorized-token-issuer-list :target-type
                                      authorized-token-issuer-list :member-name
                                      "AuthorizedTokenIssuerList")
                                     (service-integrations :target-type
                                      service-integration-list :member-name
                                      "ServiceIntegrations"))
                                    (:shape-name "RedshiftIdcApplication"))

(smithy/sdk/shapes:define-error redshift-idc-application-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RedshiftIdcApplicationAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list redshift-idc-application-list :member
                               redshift-idc-application)

(smithy/sdk/shapes:define-type redshift-idc-application-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error redshift-idc-application-not-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RedshiftIdcApplicationNotExistsFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error redshift-idc-application-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RedshiftIdcApplicationQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure reference-link common-lisp:nil
                                    ((text :target-type string :member-name
                                      "Text")
                                     (link :target-type string :member-name
                                      "Link"))
                                    (:shape-name "ReferenceLink"))

(smithy/sdk/shapes:define-list reference-link-list :member
                               (reference-link :xml-name "ReferenceLink"))

(smithy/sdk/shapes:define-input register-namespace-input-message
                                common-lisp:nil
                                ((namespace-identifier :target-type
                                  namespace-identifier-union :required
                                  common-lisp:t :member-name
                                  "NamespaceIdentifier")
                                 (consumer-identifiers :target-type
                                  consumer-identifier-list :required
                                  common-lisp:t :member-name
                                  "ConsumerIdentifiers"))
                                (:shape-name "RegisterNamespaceInputMessage"))

(smithy/sdk/shapes:define-output register-namespace-output-message
                                 common-lisp:nil
                                 ((status :target-type
                                   namespace-registration-status :member-name
                                   "Status"))
                                 (:shape-name "RegisterNamespaceOutputMessage"))

(smithy/sdk/shapes:define-input reject-data-share-message common-lisp:nil
                                ((data-share-arn :target-type string :required
                                  common-lisp:t :member-name "DataShareArn"))
                                (:shape-name "RejectDataShareMessage"))

(smithy/sdk/shapes:define-structure reserved-node common-lisp:nil
                                    ((reserved-node-id :target-type string
                                      :member-name "ReservedNodeId")
                                     (reserved-node-offering-id :target-type
                                      string :member-name
                                      "ReservedNodeOfferingId")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (node-count :target-type integer
                                      :member-name "NodeCount")
                                     (state :target-type string :member-name
                                      "State")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges")
                                     (reserved-node-offering-type :target-type
                                      reserved-node-offering-type :member-name
                                      "ReservedNodeOfferingType"))
                                    (:shape-name "ReservedNode"))

(smithy/sdk/shapes:define-error reserved-node-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedNodeAlreadyExistsFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error reserved-node-already-migrated-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedNodeAlreadyMigratedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure reserved-node-configuration-option
                                    common-lisp:nil
                                    ((source-reserved-node :target-type
                                      reserved-node :member-name
                                      "SourceReservedNode")
                                     (target-reserved-node-count :target-type
                                      integer :member-name
                                      "TargetReservedNodeCount")
                                     (target-reserved-node-offering
                                      :target-type reserved-node-offering
                                      :member-name
                                      "TargetReservedNodeOffering"))
                                    (:shape-name
                                     "ReservedNodeConfigurationOption"))

(smithy/sdk/shapes:define-list reserved-node-configuration-option-list :member
                               (reserved-node-configuration-option :xml-name
                                "ReservedNodeConfigurationOption"))

(smithy/sdk/shapes:define-enum reserved-node-exchange-action-type
    common-lisp:nil
  (:restore-cluster "restore-cluster")
  (:resize-cluster "resize-cluster"))

(smithy/sdk/shapes:define-error reserved-node-exchange-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedNodeExchangeNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure reserved-node-exchange-status
                                    common-lisp:nil
                                    ((reserved-node-exchange-request-id
                                      :target-type string :member-name
                                      "ReservedNodeExchangeRequestId")
                                     (status :target-type
                                      reserved-node-exchange-status-type
                                      :member-name "Status")
                                     (request-time :target-type tstamp
                                      :member-name "RequestTime")
                                     (source-reserved-node-id :target-type
                                      string :member-name
                                      "SourceReservedNodeId")
                                     (source-reserved-node-type :target-type
                                      string :member-name
                                      "SourceReservedNodeType")
                                     (source-reserved-node-count :target-type
                                      integer :member-name
                                      "SourceReservedNodeCount")
                                     (target-reserved-node-offering-id
                                      :target-type string :member-name
                                      "TargetReservedNodeOfferingId")
                                     (target-reserved-node-type :target-type
                                      string :member-name
                                      "TargetReservedNodeType")
                                     (target-reserved-node-count :target-type
                                      integer :member-name
                                      "TargetReservedNodeCount"))
                                    (:shape-name "ReservedNodeExchangeStatus"))

(smithy/sdk/shapes:define-list reserved-node-exchange-status-list :member
                               (reserved-node-exchange-status :xml-name
                                "ReservedNodeExchangeStatus"))

(smithy/sdk/shapes:define-enum reserved-node-exchange-status-type
    common-lisp:nil
  (:requested "REQUESTED")
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:retrying "RETRYING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list reserved-node-list :member
                               (reserved-node :xml-name "ReservedNode"))

(smithy/sdk/shapes:define-error reserved-node-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedNodeNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure reserved-node-offering common-lisp:nil
                                    ((reserved-node-offering-id :target-type
                                      string :member-name
                                      "ReservedNodeOfferingId")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (duration :target-type integer
                                      :member-name "Duration")
                                     (fixed-price :target-type double
                                      :member-name "FixedPrice")
                                     (usage-price :target-type double
                                      :member-name "UsagePrice")
                                     (currency-code :target-type string
                                      :member-name "CurrencyCode")
                                     (offering-type :target-type string
                                      :member-name "OfferingType")
                                     (recurring-charges :target-type
                                      recurring-charge-list :member-name
                                      "RecurringCharges")
                                     (reserved-node-offering-type :target-type
                                      reserved-node-offering-type :member-name
                                      "ReservedNodeOfferingType"))
                                    (:shape-name "ReservedNodeOffering"))

(smithy/sdk/shapes:define-list reserved-node-offering-list :member
                               (reserved-node-offering :xml-name
                                "ReservedNodeOffering"))

(smithy/sdk/shapes:define-error reserved-node-offering-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReservedNodeOfferingNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum reserved-node-offering-type
    common-lisp:nil
  (:regular "Regular")
  (:upgradable "Upgradable"))

(smithy/sdk/shapes:define-output reserved-node-offerings-message
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (reserved-node-offerings :target-type
                                   reserved-node-offering-list :member-name
                                   "ReservedNodeOfferings"))
                                 (:shape-name "ReservedNodeOfferingsMessage"))

(smithy/sdk/shapes:define-error reserved-node-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReservedNodeQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-output reserved-nodes-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (reserved-nodes :target-type
                                   reserved-node-list :member-name
                                   "ReservedNodes"))
                                 (:shape-name "ReservedNodesMessage"))

(smithy/sdk/shapes:define-input reset-cluster-parameter-group-message
                                common-lisp:nil
                                ((parameter-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ParameterGroupName")
                                 (reset-all-parameters :target-type boolean
                                  :member-name "ResetAllParameters")
                                 (parameters :target-type parameters-list
                                  :member-name "Parameters"))
                                (:shape-name
                                 "ResetClusterParameterGroupMessage"))

(smithy/sdk/shapes:define-structure resize-cluster-message common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "ClusterIdentifier")
                                     (cluster-type :target-type string
                                      :member-name "ClusterType")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (number-of-nodes :target-type
                                      integer-optional :member-name
                                      "NumberOfNodes")
                                     (classic :target-type boolean-optional
                                      :member-name "Classic")
                                     (reserved-node-id :target-type string
                                      :member-name "ReservedNodeId")
                                     (target-reserved-node-offering-id
                                      :target-type string :member-name
                                      "TargetReservedNodeOfferingId"))
                                    (:shape-name "ResizeClusterMessage"))

(smithy/sdk/shapes:define-output resize-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ResizeClusterResult"))

(smithy/sdk/shapes:define-structure resize-info common-lisp:nil
                                    ((resize-type :target-type string
                                      :member-name "ResizeType")
                                     (allow-cancel-resize :target-type boolean
                                      :member-name "AllowCancelResize"))
                                    (:shape-name "ResizeInfo"))

(smithy/sdk/shapes:define-error resize-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResizeNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resize-progress-message common-lisp:nil
                                    ((target-node-type :target-type string
                                      :member-name "TargetNodeType")
                                     (target-number-of-nodes :target-type
                                      integer-optional :member-name
                                      "TargetNumberOfNodes")
                                     (target-cluster-type :target-type string
                                      :member-name "TargetClusterType")
                                     (status :target-type string :member-name
                                      "Status")
                                     (import-tables-completed :target-type
                                      import-tables-completed :member-name
                                      "ImportTablesCompleted")
                                     (import-tables-in-progress :target-type
                                      import-tables-in-progress :member-name
                                      "ImportTablesInProgress")
                                     (import-tables-not-started :target-type
                                      import-tables-not-started :member-name
                                      "ImportTablesNotStarted")
                                     (avg-resize-rate-in-mega-bytes-per-second
                                      :target-type double-optional :member-name
                                      "AvgResizeRateInMegaBytesPerSecond")
                                     (total-resize-data-in-mega-bytes
                                      :target-type long-optional :member-name
                                      "TotalResizeDataInMegaBytes")
                                     (progress-in-mega-bytes :target-type
                                      long-optional :member-name
                                      "ProgressInMegaBytes")
                                     (elapsed-time-in-seconds :target-type
                                      long-optional :member-name
                                      "ElapsedTimeInSeconds")
                                     (estimated-time-to-completion-in-seconds
                                      :target-type long-optional :member-name
                                      "EstimatedTimeToCompletionInSeconds")
                                     (resize-type :target-type string
                                      :member-name "ResizeType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (target-encryption-type :target-type
                                      string :member-name
                                      "TargetEncryptionType")
                                     (data-transfer-progress-percent
                                      :target-type double-optional :member-name
                                      "DataTransferProgressPercent"))
                                    (:shape-name "ResizeProgressMessage"))

(smithy/sdk/shapes:define-error resource-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (policy :target-type string :member-name
                                      "Policy"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-list restorable-node-type-list :member
                               (string :xml-name "NodeType"))

(smithy/sdk/shapes:define-input restore-from-cluster-snapshot-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (snapshot-identifier :target-type string
                                  :member-name "SnapshotIdentifier")
                                 (snapshot-arn :target-type string :member-name
                                  "SnapshotArn")
                                 (snapshot-cluster-identifier :target-type
                                  string :member-name
                                  "SnapshotClusterIdentifier")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (allow-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AllowVersionUpgrade")
                                 (cluster-subnet-group-name :target-type string
                                  :member-name "ClusterSubnetGroupName")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (owner-account :target-type string
                                  :member-name "OwnerAccount")
                                 (hsm-client-certificate-identifier
                                  :target-type string :member-name
                                  "HsmClientCertificateIdentifier")
                                 (hsm-configuration-identifier :target-type
                                  string :member-name
                                  "HsmConfigurationIdentifier")
                                 (elastic-ip :target-type string :member-name
                                  "ElasticIp")
                                 (cluster-parameter-group-name :target-type
                                  string :member-name
                                  "ClusterParameterGroupName")
                                 (cluster-security-groups :target-type
                                  cluster-security-group-name-list :member-name
                                  "ClusterSecurityGroups")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (automated-snapshot-retention-period
                                  :target-type integer-optional :member-name
                                  "AutomatedSnapshotRetentionPeriod")
                                 (manual-snapshot-retention-period :target-type
                                  integer-optional :member-name
                                  "ManualSnapshotRetentionPeriod")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (node-type :target-type string :member-name
                                  "NodeType")
                                 (enhanced-vpc-routing :target-type
                                  boolean-optional :member-name
                                  "EnhancedVpcRouting")
                                 (additional-info :target-type string
                                  :member-name "AdditionalInfo")
                                 (iam-roles :target-type iam-role-arn-list
                                  :member-name "IamRoles")
                                 (maintenance-track-name :target-type string
                                  :member-name "MaintenanceTrackName")
                                 (snapshot-schedule-identifier :target-type
                                  string :member-name
                                  "SnapshotScheduleIdentifier")
                                 (number-of-nodes :target-type integer-optional
                                  :member-name "NumberOfNodes")
                                 (availability-zone-relocation :target-type
                                  boolean-optional :member-name
                                  "AvailabilityZoneRelocation")
                                 (aqua-configuration-status :target-type
                                  aqua-configuration-status :member-name
                                  "AquaConfigurationStatus")
                                 (default-iam-role-arn :target-type string
                                  :member-name "DefaultIamRoleArn")
                                 (reserved-node-id :target-type string
                                  :member-name "ReservedNodeId")
                                 (target-reserved-node-offering-id :target-type
                                  string :member-name
                                  "TargetReservedNodeOfferingId")
                                 (encrypted :target-type boolean-optional
                                  :member-name "Encrypted")
                                 (manage-master-password :target-type
                                  boolean-optional :member-name
                                  "ManageMasterPassword")
                                 (master-password-secret-kms-key-id
                                  :target-type string :member-name
                                  "MasterPasswordSecretKmsKeyId")
                                 (ip-address-type :target-type string
                                  :member-name "IpAddressType")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ"))
                                (:shape-name
                                 "RestoreFromClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output restore-from-cluster-snapshot-result
                                 common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name
                                  "RestoreFromClusterSnapshotResult"))

(smithy/sdk/shapes:define-structure restore-status common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (current-restore-rate-in-mega-bytes-per-second
                                      :target-type double :member-name
                                      "CurrentRestoreRateInMegaBytesPerSecond")
                                     (snapshot-size-in-mega-bytes :target-type
                                      long :member-name
                                      "SnapshotSizeInMegaBytes")
                                     (progress-in-mega-bytes :target-type long
                                      :member-name "ProgressInMegaBytes")
                                     (elapsed-time-in-seconds :target-type long
                                      :member-name "ElapsedTimeInSeconds")
                                     (estimated-time-to-completion-in-seconds
                                      :target-type long :member-name
                                      "EstimatedTimeToCompletionInSeconds"))
                                    (:shape-name "RestoreStatus"))

(smithy/sdk/shapes:define-input restore-table-from-cluster-snapshot-message
                                common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (snapshot-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "SnapshotIdentifier")
                                 (source-database-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceDatabaseName")
                                 (source-schema-name :target-type string
                                  :member-name "SourceSchemaName")
                                 (source-table-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceTableName")
                                 (target-database-name :target-type string
                                  :member-name "TargetDatabaseName")
                                 (target-schema-name :target-type string
                                  :member-name "TargetSchemaName")
                                 (new-table-name :target-type string :required
                                  common-lisp:t :member-name "NewTableName")
                                 (enable-case-sensitive-identifier :target-type
                                  boolean-optional :member-name
                                  "EnableCaseSensitiveIdentifier"))
                                (:shape-name
                                 "RestoreTableFromClusterSnapshotMessage"))

(smithy/sdk/shapes:define-output restore-table-from-cluster-snapshot-result
                                 common-lisp:nil
                                 ((table-restore-status :target-type
                                   table-restore-status :member-name
                                   "TableRestoreStatus"))
                                 (:shape-name
                                  "RestoreTableFromClusterSnapshotResult"))

(smithy/sdk/shapes:define-structure resume-cluster-message common-lisp:nil
                                    ((cluster-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "ClusterIdentifier"))
                                    (:shape-name "ResumeClusterMessage"))

(smithy/sdk/shapes:define-output resume-cluster-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ResumeClusterResult"))

(smithy/sdk/shapes:define-structure revision-target common-lisp:nil
                                    ((database-revision :target-type string
                                      :member-name "DatabaseRevision")
                                     (description :target-type string
                                      :member-name "Description")
                                     (database-revision-release-date
                                      :target-type tstamp :member-name
                                      "DatabaseRevisionReleaseDate"))
                                    (:shape-name "RevisionTarget"))

(smithy/sdk/shapes:define-list revision-targets-list :member
                               (revision-target :xml-name "RevisionTarget"))

(smithy/sdk/shapes:define-input revoke-cluster-security-group-ingress-message
                                common-lisp:nil
                                ((cluster-security-group-name :target-type
                                  string :required common-lisp:t :member-name
                                  "ClusterSecurityGroupName")
                                 (cidrip :target-type string :member-name
                                  "CIDRIP")
                                 (ec2security-group-name :target-type string
                                  :member-name "EC2SecurityGroupName")
                                 (ec2security-group-owner-id :target-type
                                  string :member-name
                                  "EC2SecurityGroupOwnerId"))
                                (:shape-name
                                 "RevokeClusterSecurityGroupIngressMessage"))

(smithy/sdk/shapes:define-output revoke-cluster-security-group-ingress-result
                                 common-lisp:nil
                                 ((cluster-security-group :target-type
                                   cluster-security-group :member-name
                                   "ClusterSecurityGroup"))
                                 (:shape-name
                                  "RevokeClusterSecurityGroupIngressResult"))

(smithy/sdk/shapes:define-input revoke-endpoint-access-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :member-name "ClusterIdentifier")
                                 (account :target-type string :member-name
                                  "Account")
                                 (vpc-ids :target-type vpc-identifier-list
                                  :member-name "VpcIds")
                                 (force :target-type boolean :member-name
                                  "Force"))
                                (:shape-name "RevokeEndpointAccessMessage"))

(smithy/sdk/shapes:define-input revoke-snapshot-access-message common-lisp:nil
                                ((snapshot-identifier :target-type string
                                  :member-name "SnapshotIdentifier")
                                 (snapshot-arn :target-type string :member-name
                                  "SnapshotArn")
                                 (snapshot-cluster-identifier :target-type
                                  string :member-name
                                  "SnapshotClusterIdentifier")
                                 (account-with-restore-access :target-type
                                  string :required common-lisp:t :member-name
                                  "AccountWithRestoreAccess"))
                                (:shape-name "RevokeSnapshotAccessMessage"))

(smithy/sdk/shapes:define-output revoke-snapshot-access-result common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "RevokeSnapshotAccessResult"))

(smithy/sdk/shapes:define-input rotate-encryption-key-message common-lisp:nil
                                ((cluster-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier"))
                                (:shape-name "RotateEncryptionKeyMessage"))

(smithy/sdk/shapes:define-output rotate-encryption-key-result common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "RotateEncryptionKeyResult"))

(smithy/sdk/shapes:define-union s3access-grants-scope-union common-lisp:nil
                                ((read-write-access :target-type
                                  read-write-access :member-name
                                  "ReadWriteAccess"))
                                (:shape-name "S3AccessGrantsScopeUnion"))

(smithy/sdk/shapes:define-list s3access-grants-service-integrations :member
                               s3access-grants-scope-union)

(smithy/sdk/shapes:define-type s3key-prefix-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error snsinvalid-topic-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSInvalidTopicFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snsno-authorization-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSNoAuthorizationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snstopic-arn-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSTopicArnNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-list schedule-definition-list :member
                               (string :xml-name "ScheduleDefinition"))

(smithy/sdk/shapes:define-error schedule-definition-type-unsupported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ScheduleDefinitionTypeUnsupportedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum schedule-state
    common-lisp:nil
  (:modifying "MODIFYING")
  (:active "ACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure scheduled-action common-lisp:nil
                                    ((scheduled-action-name :target-type string
                                      :member-name "ScheduledActionName")
                                     (target-action :target-type
                                      scheduled-action-type :member-name
                                      "TargetAction")
                                     (schedule :target-type string :member-name
                                      "Schedule")
                                     (iam-role :target-type string :member-name
                                      "IamRole")
                                     (scheduled-action-description :target-type
                                      string :member-name
                                      "ScheduledActionDescription")
                                     (state :target-type scheduled-action-state
                                      :member-name "State")
                                     (next-invocations :target-type
                                      scheduled-action-time-list :member-name
                                      "NextInvocations")
                                     (start-time :target-type tstamp
                                      :member-name "StartTime")
                                     (end-time :target-type tstamp :member-name
                                      "EndTime"))
                                    (:shape-name "ScheduledAction"))

(smithy/sdk/shapes:define-error scheduled-action-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ScheduledActionAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure scheduled-action-filter common-lisp:nil
                                    ((name :target-type
                                      scheduled-action-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type value-string-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ScheduledActionFilter"))

(smithy/sdk/shapes:define-list scheduled-action-filter-list :member
                               (scheduled-action-filter :xml-name
                                "ScheduledActionFilter"))

(smithy/sdk/shapes:define-enum scheduled-action-filter-name
    common-lisp:nil
  (:cluster-identifier "cluster-identifier")
  (:iam-role "iam-role"))

(smithy/sdk/shapes:define-list scheduled-action-list :member
                               (scheduled-action :xml-name "ScheduledAction"))

(smithy/sdk/shapes:define-error scheduled-action-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ScheduledActionNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error scheduled-action-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ScheduledActionQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum scheduled-action-state
    common-lisp:nil
  (:active "ACTIVE")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list scheduled-action-time-list :member
                               (tstamp :xml-name "ScheduledActionTime"))

(smithy/sdk/shapes:define-structure scheduled-action-type common-lisp:nil
                                    ((resize-cluster :target-type
                                      resize-cluster-message :member-name
                                      "ResizeCluster")
                                     (pause-cluster :target-type
                                      pause-cluster-message :member-name
                                      "PauseCluster")
                                     (resume-cluster :target-type
                                      resume-cluster-message :member-name
                                      "ResumeCluster"))
                                    (:shape-name "ScheduledActionType"))

(smithy/sdk/shapes:define-error scheduled-action-type-unsupported-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ScheduledActionTypeUnsupportedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum scheduled-action-type-values
    common-lisp:nil
  (:resize-cluster "ResizeCluster")
  (:pause-cluster "PauseCluster")
  (:resume-cluster "ResumeCluster"))

(smithy/sdk/shapes:define-output scheduled-actions-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (scheduled-actions :target-type
                                   scheduled-action-list :member-name
                                   "ScheduledActions"))
                                 (:shape-name "ScheduledActionsMessage"))

(smithy/sdk/shapes:define-list scheduled-snapshot-time-list :member
                               (tstamp :xml-name "SnapshotTime"))

(smithy/sdk/shapes:define-structure secondary-cluster-info common-lisp:nil
                                    ((availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (cluster-nodes :target-type
                                      cluster-nodes-list :member-name
                                      "ClusterNodes"))
                                    (:shape-name "SecondaryClusterInfo"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure serverless-identifier common-lisp:nil
                                    ((namespace-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "NamespaceIdentifier")
                                     (workgroup-identifier :target-type string
                                      :required common-lisp:t :member-name
                                      "WorkgroupIdentifier"))
                                    (:shape-name "ServerlessIdentifier"))

(smithy/sdk/shapes:define-enum service-authorization
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list service-integration-list :member
                               service-integrations-union)

(smithy/sdk/shapes:define-union service-integrations-union common-lisp:nil
                                ((lake-formation :target-type
                                  lake-formation-service-integrations
                                  :member-name "LakeFormation")
                                 (s3access-grants :target-type
                                  s3access-grants-service-integrations
                                  :member-name "S3AccessGrants"))
                                (:shape-name "ServiceIntegrationsUnion"))

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((snapshot-identifier :target-type string
                                      :member-name "SnapshotIdentifier")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (snapshot-create-time :target-type tstamp
                                      :member-name "SnapshotCreateTime")
                                     (status :target-type string :member-name
                                      "Status")
                                     (port :target-type integer :member-name
                                      "Port")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (cluster-create-time :target-type tstamp
                                      :member-name "ClusterCreateTime")
                                     (master-username :target-type string
                                      :member-name "MasterUsername")
                                     (cluster-version :target-type string
                                      :member-name "ClusterVersion")
                                     (engine-full-version :target-type string
                                      :member-name "EngineFullVersion")
                                     (snapshot-type :target-type string
                                      :member-name "SnapshotType")
                                     (node-type :target-type string
                                      :member-name "NodeType")
                                     (number-of-nodes :target-type integer
                                      :member-name "NumberOfNodes")
                                     (dbname :target-type string :member-name
                                      "DBName")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (encrypted :target-type boolean
                                      :member-name "Encrypted")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (encrypted-with-hsm :target-type boolean
                                      :member-name "EncryptedWithHSM")
                                     (accounts-with-restore-access :target-type
                                      accounts-with-restore-access-list
                                      :member-name "AccountsWithRestoreAccess")
                                     (owner-account :target-type string
                                      :member-name "OwnerAccount")
                                     (total-backup-size-in-mega-bytes
                                      :target-type double :member-name
                                      "TotalBackupSizeInMegaBytes")
                                     (actual-incremental-backup-size-in-mega-bytes
                                      :target-type double :member-name
                                      "ActualIncrementalBackupSizeInMegaBytes")
                                     (backup-progress-in-mega-bytes
                                      :target-type double :member-name
                                      "BackupProgressInMegaBytes")
                                     (current-backup-rate-in-mega-bytes-per-second
                                      :target-type double :member-name
                                      "CurrentBackupRateInMegaBytesPerSecond")
                                     (estimated-seconds-to-completion
                                      :target-type long :member-name
                                      "EstimatedSecondsToCompletion")
                                     (elapsed-time-in-seconds :target-type long
                                      :member-name "ElapsedTimeInSeconds")
                                     (source-region :target-type string
                                      :member-name "SourceRegion")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (restorable-node-types :target-type
                                      restorable-node-type-list :member-name
                                      "RestorableNodeTypes")
                                     (enhanced-vpc-routing :target-type boolean
                                      :member-name "EnhancedVpcRouting")
                                     (maintenance-track-name :target-type
                                      string :member-name
                                      "MaintenanceTrackName")
                                     (manual-snapshot-retention-period
                                      :target-type integer-optional
                                      :member-name
                                      "ManualSnapshotRetentionPeriod")
                                     (manual-snapshot-remaining-days
                                      :target-type integer-optional
                                      :member-name
                                      "ManualSnapshotRemainingDays")
                                     (snapshot-retention-start-time
                                      :target-type tstamp :member-name
                                      "SnapshotRetentionStartTime")
                                     (master-password-secret-arn :target-type
                                      string :member-name
                                      "MasterPasswordSecretArn")
                                     (master-password-secret-kms-key-id
                                      :target-type string :member-name
                                      "MasterPasswordSecretKmsKeyId")
                                     (snapshot-arn :target-type string
                                      :member-name "SnapshotArn"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-enum snapshot-attribute-to-sort-by
    common-lisp:nil
  (:source-type "SOURCE_TYPE")
  (:total-size "TOTAL_SIZE")
  (:create-time "CREATE_TIME"))

(smithy/sdk/shapes:define-error snapshot-copy-already-disabled-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotCopyAlreadyDisabledFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snapshot-copy-already-enabled-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotCopyAlreadyEnabledFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snapshot-copy-disabled-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotCopyDisabledFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure snapshot-copy-grant common-lisp:nil
                                    ((snapshot-copy-grant-name :target-type
                                      string :member-name
                                      "SnapshotCopyGrantName")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "SnapshotCopyGrant"))

(smithy/sdk/shapes:define-error snapshot-copy-grant-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotCopyGrantAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list snapshot-copy-grant-list :member
                               (snapshot-copy-grant :xml-name
                                "SnapshotCopyGrant"))

(smithy/sdk/shapes:define-output snapshot-copy-grant-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (snapshot-copy-grants :target-type
                                   snapshot-copy-grant-list :member-name
                                   "SnapshotCopyGrants"))
                                 (:shape-name "SnapshotCopyGrantMessage"))

(smithy/sdk/shapes:define-error snapshot-copy-grant-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotCopyGrantNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snapshot-copy-grant-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotCopyGrantQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure snapshot-error-message common-lisp:nil
                                    ((snapshot-identifier :target-type string
                                      :member-name "SnapshotIdentifier")
                                     (snapshot-cluster-identifier :target-type
                                      string :member-name
                                      "SnapshotClusterIdentifier")
                                     (failure-code :target-type string
                                      :member-name "FailureCode")
                                     (failure-reason :target-type string
                                      :member-name "FailureReason"))
                                    (:shape-name "SnapshotErrorMessage"))

(smithy/sdk/shapes:define-list snapshot-identifier-list :member
                               (string :xml-name "String"))

(smithy/sdk/shapes:define-list snapshot-list :member
                               (snapshot :xml-name "Snapshot"))

(smithy/sdk/shapes:define-output snapshot-message common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (snapshots :target-type snapshot-list
                                   :member-name "Snapshots"))
                                 (:shape-name "SnapshotMessage"))

(smithy/sdk/shapes:define-structure snapshot-schedule common-lisp:nil
                                    ((schedule-definitions :target-type
                                      schedule-definition-list :member-name
                                      "ScheduleDefinitions")
                                     (schedule-identifier :target-type string
                                      :member-name "ScheduleIdentifier")
                                     (schedule-description :target-type string
                                      :member-name "ScheduleDescription")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (next-invocations :target-type
                                      scheduled-snapshot-time-list :member-name
                                      "NextInvocations")
                                     (associated-cluster-count :target-type
                                      integer-optional :member-name
                                      "AssociatedClusterCount")
                                     (associated-clusters :target-type
                                      associated-cluster-list :member-name
                                      "AssociatedClusters"))
                                    (:shape-name "SnapshotSchedule"))

(smithy/sdk/shapes:define-error snapshot-schedule-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotScheduleAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list snapshot-schedule-list :member
                               (snapshot-schedule :xml-name "SnapshotSchedule"))

(smithy/sdk/shapes:define-error snapshot-schedule-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SnapshotScheduleNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snapshot-schedule-quota-exceeded-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotScheduleQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snapshot-schedule-update-in-progress-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SnapshotScheduleUpdateInProgressFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure snapshot-sorting-entity common-lisp:nil
                                    ((attribute :target-type
                                      snapshot-attribute-to-sort-by :required
                                      common-lisp:t :member-name "Attribute")
                                     (sort-order :target-type sort-by-order
                                      :member-name "SortOrder"))
                                    (:shape-name "SnapshotSortingEntity"))

(smithy/sdk/shapes:define-list snapshot-sorting-entity-list :member
                               (snapshot-sorting-entity :xml-name
                                "SnapshotSortingEntity"))

(smithy/sdk/shapes:define-enum sort-by-order
    common-lisp:nil
  (:ascending "ASC")
  (:descending "DESC"))

(smithy/sdk/shapes:define-type source-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list source-ids-list :member
                               (string :xml-name "SourceId"))

(smithy/sdk/shapes:define-error source-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SourceNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:cluster "cluster")
  (:cluster-parameter-group "cluster-parameter-group")
  (:cluster-security-group "cluster-security-group")
  (:cluster-snapshot "cluster-snapshot")
  (:scheduled-action "scheduled-action"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((subnet-identifier :target-type string
                                      :member-name "SubnetIdentifier")
                                     (subnet-availability-zone :target-type
                                      availability-zone :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-status :target-type string
                                      :member-name "SubnetStatus"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-error subnet-already-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetAlreadyInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnet-identifier-list :member
                               (string :xml-name "SubnetIdentifier"))

(smithy/sdk/shapes:define-list subnet-list :member (subnet :xml-name "Subnet"))

(smithy/sdk/shapes:define-error subscription-already-exist-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubscriptionAlreadyExistFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error subscription-category-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SubscriptionCategoryNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error subscription-event-id-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SubscriptionEventIdNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error subscription-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubscriptionNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error subscription-severity-not-found-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "SubscriptionSeverityNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure supported-operation common-lisp:nil
                                    ((operation-name :target-type string
                                      :member-name "OperationName"))
                                    (:shape-name "SupportedOperation"))

(smithy/sdk/shapes:define-list supported-operation-list :member
                               (supported-operation :xml-name
                                "SupportedOperation"))

(smithy/sdk/shapes:define-structure supported-platform common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "SupportedPlatform"))

(smithy/sdk/shapes:define-list supported-platforms-list :member
                               (supported-platform :xml-name
                                "SupportedPlatform"))

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error table-limit-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TableLimitExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error table-restore-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TableRestoreNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure table-restore-status common-lisp:nil
                                    ((table-restore-request-id :target-type
                                      string :member-name
                                      "TableRestoreRequestId")
                                     (status :target-type
                                      table-restore-status-type :member-name
                                      "Status")
                                     (message :target-type string :member-name
                                      "Message")
                                     (request-time :target-type tstamp
                                      :member-name "RequestTime")
                                     (progress-in-mega-bytes :target-type
                                      long-optional :member-name
                                      "ProgressInMegaBytes")
                                     (total-data-in-mega-bytes :target-type
                                      long-optional :member-name
                                      "TotalDataInMegaBytes")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (snapshot-identifier :target-type string
                                      :member-name "SnapshotIdentifier")
                                     (source-database-name :target-type string
                                      :member-name "SourceDatabaseName")
                                     (source-schema-name :target-type string
                                      :member-name "SourceSchemaName")
                                     (source-table-name :target-type string
                                      :member-name "SourceTableName")
                                     (target-database-name :target-type string
                                      :member-name "TargetDatabaseName")
                                     (target-schema-name :target-type string
                                      :member-name "TargetSchemaName")
                                     (new-table-name :target-type string
                                      :member-name "NewTableName"))
                                    (:shape-name "TableRestoreStatus"))

(smithy/sdk/shapes:define-list table-restore-status-list :member
                               (table-restore-status :xml-name
                                "TableRestoreStatus"))

(smithy/sdk/shapes:define-output table-restore-status-message common-lisp:nil
                                 ((table-restore-status-details :target-type
                                   table-restore-status-list :member-name
                                   "TableRestoreStatusDetails")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "TableRestoreStatusMessage"))

(smithy/sdk/shapes:define-enum table-restore-status-type
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-key-list :member (string :xml-name "TagKey"))

(smithy/sdk/shapes:define-error tag-limit-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TagLimitExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-list tag-value-list :member
                               (string :xml-name "TagValue"))

(smithy/sdk/shapes:define-structure tagged-resource common-lisp:nil
                                    ((tag :target-type tag :member-name "Tag")
                                     (resource-name :target-type string
                                      :member-name "ResourceName")
                                     (resource-type :target-type string
                                      :member-name "ResourceType"))
                                    (:shape-name "TaggedResource"))

(smithy/sdk/shapes:define-list tagged-resource-list :member
                               (tagged-resource :xml-name "TaggedResource"))

(smithy/sdk/shapes:define-output tagged-resource-list-message common-lisp:nil
                                 ((tagged-resources :target-type
                                   tagged-resource-list :member-name
                                   "TaggedResources")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "TaggedResourceListMessage"))

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list track-list :member
                               (maintenance-track :xml-name "MaintenanceTrack"))

(smithy/sdk/shapes:define-output track-list-message common-lisp:nil
                                 ((maintenance-tracks :target-type track-list
                                   :member-name "MaintenanceTracks")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "TrackListMessage"))

(smithy/sdk/shapes:define-error unauthorized-operation common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnauthorizedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unauthorized-partner-integration-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnauthorizedPartnerIntegrationFault")
                                (:error-code 401))

(smithy/sdk/shapes:define-error unknown-snapshot-copy-region-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnknownSnapshotCopyRegionFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-error unsupported-operation-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-option-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedOptionFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-partner-status-input-message
                                common-lisp:nil
                                ((account-id :target-type
                                  partner-integration-account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (cluster-identifier :target-type
                                  partner-integration-cluster-identifier
                                  :required common-lisp:t :member-name
                                  "ClusterIdentifier")
                                 (database-name :target-type
                                  partner-integration-database-name :required
                                  common-lisp:t :member-name "DatabaseName")
                                 (partner-name :target-type
                                  partner-integration-partner-name :required
                                  common-lisp:t :member-name "PartnerName")
                                 (status :target-type
                                  partner-integration-status :required
                                  common-lisp:t :member-name "Status")
                                 (status-message :target-type
                                  partner-integration-status-message
                                  :member-name "StatusMessage"))
                                (:shape-name "UpdatePartnerStatusInputMessage"))

(smithy/sdk/shapes:define-structure update-target common-lisp:nil
                                    ((maintenance-track-name :target-type
                                      string :member-name
                                      "MaintenanceTrackName")
                                     (database-version :target-type string
                                      :member-name "DatabaseVersion")
                                     (supported-operations :target-type
                                      supported-operation-list :member-name
                                      "SupportedOperations"))
                                    (:shape-name "UpdateTarget"))

(smithy/sdk/shapes:define-structure usage-limit common-lisp:nil
                                    ((usage-limit-id :target-type string
                                      :member-name "UsageLimitId")
                                     (cluster-identifier :target-type string
                                      :member-name "ClusterIdentifier")
                                     (feature-type :target-type
                                      usage-limit-feature-type :member-name
                                      "FeatureType")
                                     (limit-type :target-type
                                      usage-limit-limit-type :member-name
                                      "LimitType")
                                     (amount :target-type long :member-name
                                      "Amount")
                                     (period :target-type usage-limit-period
                                      :member-name "Period")
                                     (breach-action :target-type
                                      usage-limit-breach-action :member-name
                                      "BreachAction")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "UsageLimit"))

(smithy/sdk/shapes:define-error usage-limit-already-exists-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UsageLimitAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum usage-limit-breach-action
    common-lisp:nil
  (:log "log")
  (:emit-metric "emit-metric")
  (:disable "disable"))

(smithy/sdk/shapes:define-enum usage-limit-feature-type
    common-lisp:nil
  (:spectrum "spectrum")
  (:concurrency-scaling "concurrency-scaling")
  (:cross-region-datasharing "cross-region-datasharing"))

(smithy/sdk/shapes:define-enum usage-limit-limit-type
    common-lisp:nil
  (:time "time")
  (:data-scanned "data-scanned"))

(smithy/sdk/shapes:define-structure usage-limit-list common-lisp:nil
                                    ((usage-limits :target-type usage-limits
                                      :member-name "UsageLimits")
                                     (marker :target-type string :member-name
                                      "Marker"))
                                    (:shape-name "UsageLimitList"))

(smithy/sdk/shapes:define-error usage-limit-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UsageLimitNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum usage-limit-period
    common-lisp:nil
  (:daily "daily")
  (:weekly "weekly")
  (:monthly "monthly"))

(smithy/sdk/shapes:define-list usage-limits :member usage-limit)

(smithy/sdk/shapes:define-list value-string-list :member
                               (string :xml-name "item"))

(smithy/sdk/shapes:define-structure vpc-endpoint common-lisp:nil
                                    ((vpc-endpoint-id :target-type string
                                      :member-name "VpcEndpointId")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "NetworkInterfaces"))
                                    (:shape-name "VpcEndpoint"))

(smithy/sdk/shapes:define-list vpc-endpoints-list :member
                               (vpc-endpoint :xml-name "VpcEndpoint"))

(smithy/sdk/shapes:define-list vpc-identifier-list :member
                               (string :xml-name "VpcIdentifier"))

(smithy/sdk/shapes:define-list vpc-security-group-id-list :member
                               (string :xml-name "VpcSecurityGroupId"))

(smithy/sdk/shapes:define-structure vpc-security-group-membership
                                    common-lisp:nil
                                    ((vpc-security-group-id :target-type string
                                      :member-name "VpcSecurityGroupId")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "VpcSecurityGroupMembership"))

(smithy/sdk/shapes:define-list vpc-security-group-membership-list :member
                               (vpc-security-group-membership :xml-name
                                "VpcSecurityGroup"))

(smithy/sdk/shapes:define-enum zero-etlintegration-status
    common-lisp:nil
  (:creating "creating")
  (:active "active")
  (:modifying "modifying")
  (:failed "failed")
  (:deleting "deleting")
  (:syncing "syncing")
  (:needs-attention "needs_attention"))

(smithy/sdk/operation:define-operation accept-reserved-node-exchange
                                       :shape-name "AcceptReservedNodeExchange"
                                       :input
                                       accept-reserved-node-exchange-input-message
                                       :output
                                       accept-reserved-node-exchange-output-message
                                       :errors
                                       (dependent-service-unavailable-fault
                                        invalid-reserved-node-state-fault
                                        reserved-node-already-exists-fault
                                        reserved-node-already-migrated-fault
                                        reserved-node-not-found-fault
                                        reserved-node-offering-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation add-partner :shape-name "AddPartner"
                                       :input partner-integration-input-message
                                       :output
                                       partner-integration-output-message
                                       :errors
                                       (cluster-not-found-fault
                                        partner-not-found-fault
                                        unauthorized-partner-integration-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation associate-data-share-consumer
                                       :shape-name "AssociateDataShareConsumer"
                                       :input
                                       associate-data-share-consumer-message
                                       :output data-share :errors
                                       (invalid-data-share-fault
                                        invalid-namespace-fault))

(smithy/sdk/operation:define-operation authorize-cluster-security-group-ingress
                                       :shape-name
                                       "AuthorizeClusterSecurityGroupIngress"
                                       :input
                                       authorize-cluster-security-group-ingress-message
                                       :output
                                       authorize-cluster-security-group-ingress-result
                                       :errors
                                       (authorization-already-exists-fault
                                        authorization-quota-exceeded-fault
                                        cluster-security-group-not-found-fault
                                        invalid-cluster-security-group-state-fault))

(smithy/sdk/operation:define-operation authorize-data-share :shape-name
                                       "AuthorizeDataShare" :input
                                       authorize-data-share-message :output
                                       data-share :errors
                                       (invalid-data-share-fault))

(smithy/sdk/operation:define-operation authorize-endpoint-access :shape-name
                                       "AuthorizeEndpointAccess" :input
                                       authorize-endpoint-access-message
                                       :output endpoint-authorization :errors
                                       (cluster-not-found-fault
                                        endpoint-authorization-already-exists-fault
                                        endpoint-authorizations-per-cluster-limit-exceeded-fault
                                        invalid-authorization-state-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation authorize-snapshot-access :shape-name
                                       "AuthorizeSnapshotAccess" :input
                                       authorize-snapshot-access-message
                                       :output authorize-snapshot-access-result
                                       :errors
                                       (authorization-already-exists-fault
                                        authorization-quota-exceeded-fault
                                        cluster-snapshot-not-found-fault
                                        dependent-service-request-throttling-fault
                                        invalid-cluster-snapshot-state-fault
                                        limit-exceeded-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation batch-delete-cluster-snapshots
                                       :shape-name
                                       "BatchDeleteClusterSnapshots" :input
                                       batch-delete-cluster-snapshots-request
                                       :output
                                       batch-delete-cluster-snapshots-result
                                       :errors
                                       (batch-delete-request-size-exceeded-fault))

(smithy/sdk/operation:define-operation batch-modify-cluster-snapshots
                                       :shape-name
                                       "BatchModifyClusterSnapshots" :input
                                       batch-modify-cluster-snapshots-message
                                       :output
                                       batch-modify-cluster-snapshots-output-message
                                       :errors
                                       (batch-modify-cluster-snapshots-limit-exceeded-fault
                                        invalid-retention-period-fault))

(smithy/sdk/operation:define-operation cancel-resize :shape-name "CancelResize"
                                       :input cancel-resize-message :output
                                       resize-progress-message :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        resize-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation copy-cluster-snapshot :shape-name
                                       "CopyClusterSnapshot" :input
                                       copy-cluster-snapshot-message :output
                                       copy-cluster-snapshot-result :errors
                                       (cluster-not-found-fault
                                        cluster-snapshot-already-exists-fault
                                        cluster-snapshot-not-found-fault
                                        cluster-snapshot-quota-exceeded-fault
                                        invalid-cluster-snapshot-state-fault
                                        invalid-retention-period-fault))

(smithy/sdk/operation:define-operation create-authentication-profile
                                       :shape-name
                                       "CreateAuthenticationProfile" :input
                                       create-authentication-profile-message
                                       :output
                                       create-authentication-profile-result
                                       :errors
                                       (authentication-profile-already-exists-fault
                                        authentication-profile-quota-exceeded-fault
                                        invalid-authentication-profile-request-fault))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-message :output
                                       create-cluster-result :errors
                                       (cluster-already-exists-fault
                                        cluster-parameter-group-not-found-fault
                                        cluster-quota-exceeded-fault
                                        cluster-security-group-not-found-fault
                                        cluster-subnet-group-not-found-fault
                                        dependent-service-request-throttling-fault
                                        hsm-client-certificate-not-found-fault
                                        hsm-configuration-not-found-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-subnet-group-state-fault
                                        invalid-cluster-track-fault
                                        invalid-elastic-ip-fault
                                        invalid-retention-period-fault
                                        invalid-subnet invalid-tag-fault
                                        invalid-vpcnetwork-state-fault
                                        ipv6cidr-block-not-found-fault
                                        limit-exceeded-fault
                                        number-of-nodes-per-cluster-limit-exceeded-fault
                                        number-of-nodes-quota-exceeded-fault
                                        redshift-idc-application-not-exists-fault
                                        snapshot-schedule-not-found-fault
                                        tag-limit-exceeded-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation create-cluster-parameter-group
                                       :shape-name
                                       "CreateClusterParameterGroup" :input
                                       create-cluster-parameter-group-message
                                       :output
                                       create-cluster-parameter-group-result
                                       :errors
                                       (cluster-parameter-group-already-exists-fault
                                        cluster-parameter-group-quota-exceeded-fault
                                        invalid-tag-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-cluster-security-group
                                       :shape-name "CreateClusterSecurityGroup"
                                       :input
                                       create-cluster-security-group-message
                                       :output
                                       create-cluster-security-group-result
                                       :errors
                                       (cluster-security-group-already-exists-fault
                                        cluster-security-group-quota-exceeded-fault
                                        invalid-tag-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-cluster-snapshot :shape-name
                                       "CreateClusterSnapshot" :input
                                       create-cluster-snapshot-message :output
                                       create-cluster-snapshot-result :errors
                                       (cluster-not-found-fault
                                        cluster-snapshot-already-exists-fault
                                        cluster-snapshot-quota-exceeded-fault
                                        invalid-cluster-state-fault
                                        invalid-retention-period-fault
                                        invalid-tag-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-cluster-subnet-group :shape-name
                                       "CreateClusterSubnetGroup" :input
                                       create-cluster-subnet-group-message
                                       :output
                                       create-cluster-subnet-group-result
                                       :errors
                                       (cluster-subnet-group-already-exists-fault
                                        cluster-subnet-group-quota-exceeded-fault
                                        cluster-subnet-quota-exceeded-fault
                                        dependent-service-request-throttling-fault
                                        invalid-subnet invalid-tag-fault
                                        tag-limit-exceeded-fault
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation create-custom-domain-association
                                       :shape-name
                                       "CreateCustomDomainAssociation" :input
                                       create-custom-domain-association-message
                                       :output
                                       create-custom-domain-association-result
                                       :errors
                                       (cluster-not-found-fault
                                        custom-cname-association-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation create-endpoint-access :shape-name
                                       "CreateEndpointAccess" :input
                                       create-endpoint-access-message :output
                                       endpoint-access :errors
                                       (access-to-cluster-denied-fault
                                        cluster-not-found-fault
                                        cluster-subnet-group-not-found-fault
                                        endpoint-already-exists-fault
                                        endpoints-per-authorization-limit-exceeded-fault
                                        endpoints-per-cluster-limit-exceeded-fault
                                        invalid-cluster-security-group-state-fault
                                        invalid-cluster-state-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation create-event-subscription :shape-name
                                       "CreateEventSubscription" :input
                                       create-event-subscription-message
                                       :output create-event-subscription-result
                                       :errors
                                       (event-subscription-quota-exceeded-fault
                                        invalid-tag-fault
                                        snsinvalid-topic-fault
                                        snsno-authorization-fault
                                        snstopic-arn-not-found-fault
                                        source-not-found-fault
                                        subscription-already-exist-fault
                                        subscription-category-not-found-fault
                                        subscription-event-id-not-found-fault
                                        subscription-severity-not-found-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-hsm-client-certificate
                                       :shape-name "CreateHsmClientCertificate"
                                       :input
                                       create-hsm-client-certificate-message
                                       :output
                                       create-hsm-client-certificate-result
                                       :errors
                                       (hsm-client-certificate-already-exists-fault
                                        hsm-client-certificate-quota-exceeded-fault
                                        invalid-tag-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-hsm-configuration :shape-name
                                       "CreateHsmConfiguration" :input
                                       create-hsm-configuration-message :output
                                       create-hsm-configuration-result :errors
                                       (hsm-configuration-already-exists-fault
                                        hsm-configuration-quota-exceeded-fault
                                        invalid-tag-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-integration :shape-name
                                       "CreateIntegration" :input
                                       create-integration-message :output
                                       integration :errors
                                       (integration-already-exists-fault
                                        integration-conflict-operation-fault
                                        integration-quota-exceeded-fault
                                        integration-source-not-found-fault
                                        integration-target-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-tag-fault
                                        tag-limit-exceeded-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation create-redshift-idc-application
                                       :shape-name
                                       "CreateRedshiftIdcApplication" :input
                                       create-redshift-idc-application-message
                                       :output
                                       create-redshift-idc-application-result
                                       :errors
                                       (dependent-service-access-denied-fault
                                        dependent-service-unavailable-fault
                                        redshift-idc-application-already-exists-fault
                                        redshift-idc-application-quota-exceeded-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation create-scheduled-action :shape-name
                                       "CreateScheduledAction" :input
                                       create-scheduled-action-message :output
                                       scheduled-action :errors
                                       (cluster-not-found-fault
                                        invalid-scheduled-action-fault
                                        invalid-schedule-fault
                                        scheduled-action-already-exists-fault
                                        scheduled-action-quota-exceeded-fault
                                        scheduled-action-type-unsupported-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation create-snapshot-copy-grant :shape-name
                                       "CreateSnapshotCopyGrant" :input
                                       create-snapshot-copy-grant-message
                                       :output
                                       create-snapshot-copy-grant-result
                                       :errors
                                       (dependent-service-request-throttling-fault
                                        invalid-tag-fault limit-exceeded-fault
                                        snapshot-copy-grant-already-exists-fault
                                        snapshot-copy-grant-quota-exceeded-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-snapshot-schedule :shape-name
                                       "CreateSnapshotSchedule" :input
                                       create-snapshot-schedule-message :output
                                       snapshot-schedule :errors
                                       (invalid-schedule-fault
                                        invalid-tag-fault
                                        schedule-definition-type-unsupported-fault
                                        snapshot-schedule-already-exists-fault
                                        snapshot-schedule-quota-exceeded-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-tags :shape-name "CreateTags"
                                       :input create-tags-message :output
                                       common-lisp:null :errors
                                       (invalid-cluster-state-fault
                                        invalid-tag-fault
                                        resource-not-found-fault
                                        tag-limit-exceeded-fault))

(smithy/sdk/operation:define-operation create-usage-limit :shape-name
                                       "CreateUsageLimit" :input
                                       create-usage-limit-message :output
                                       usage-limit :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-usage-limit-fault
                                        limit-exceeded-fault
                                        tag-limit-exceeded-fault
                                        unsupported-operation-fault
                                        usage-limit-already-exists-fault))

(smithy/sdk/operation:define-operation deauthorize-data-share :shape-name
                                       "DeauthorizeDataShare" :input
                                       deauthorize-data-share-message :output
                                       data-share :errors
                                       (invalid-data-share-fault))

(smithy/sdk/operation:define-operation delete-authentication-profile
                                       :shape-name
                                       "DeleteAuthenticationProfile" :input
                                       delete-authentication-profile-message
                                       :output
                                       delete-authentication-profile-result
                                       :errors
                                       (authentication-profile-not-found-fault
                                        invalid-authentication-profile-request-fault))

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-message :output
                                       delete-cluster-result :errors
                                       (cluster-not-found-fault
                                        cluster-snapshot-already-exists-fault
                                        cluster-snapshot-quota-exceeded-fault
                                        invalid-cluster-state-fault
                                        invalid-retention-period-fault))

(smithy/sdk/operation:define-operation delete-cluster-parameter-group
                                       :shape-name
                                       "DeleteClusterParameterGroup" :input
                                       delete-cluster-parameter-group-message
                                       :output common-lisp:null :errors
                                       (cluster-parameter-group-not-found-fault
                                        invalid-cluster-parameter-group-state-fault))

(smithy/sdk/operation:define-operation delete-cluster-security-group
                                       :shape-name "DeleteClusterSecurityGroup"
                                       :input
                                       delete-cluster-security-group-message
                                       :output common-lisp:null :errors
                                       (cluster-security-group-not-found-fault
                                        invalid-cluster-security-group-state-fault))

(smithy/sdk/operation:define-operation delete-cluster-snapshot :shape-name
                                       "DeleteClusterSnapshot" :input
                                       delete-cluster-snapshot-message :output
                                       delete-cluster-snapshot-result :errors
                                       (cluster-snapshot-not-found-fault
                                        invalid-cluster-snapshot-state-fault))

(smithy/sdk/operation:define-operation delete-cluster-subnet-group :shape-name
                                       "DeleteClusterSubnetGroup" :input
                                       delete-cluster-subnet-group-message
                                       :output common-lisp:null :errors
                                       (cluster-subnet-group-not-found-fault
                                        invalid-cluster-subnet-group-state-fault
                                        invalid-cluster-subnet-state-fault))

(smithy/sdk/operation:define-operation delete-custom-domain-association
                                       :shape-name
                                       "DeleteCustomDomainAssociation" :input
                                       delete-custom-domain-association-message
                                       :output common-lisp:null :errors
                                       (cluster-not-found-fault
                                        custom-cname-association-fault
                                        custom-domain-association-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation delete-endpoint-access :shape-name
                                       "DeleteEndpointAccess" :input
                                       delete-endpoint-access-message :output
                                       endpoint-access :errors
                                       (cluster-not-found-fault
                                        endpoint-not-found-fault
                                        invalid-cluster-security-group-state-fault
                                        invalid-cluster-state-fault
                                        invalid-endpoint-state-fault))

(smithy/sdk/operation:define-operation delete-event-subscription :shape-name
                                       "DeleteEventSubscription" :input
                                       delete-event-subscription-message
                                       :output common-lisp:null :errors
                                       (invalid-subscription-state-fault
                                        subscription-not-found-fault))

(smithy/sdk/operation:define-operation delete-hsm-client-certificate
                                       :shape-name "DeleteHsmClientCertificate"
                                       :input
                                       delete-hsm-client-certificate-message
                                       :output common-lisp:null :errors
                                       (hsm-client-certificate-not-found-fault
                                        invalid-hsm-client-certificate-state-fault))

(smithy/sdk/operation:define-operation delete-hsm-configuration :shape-name
                                       "DeleteHsmConfiguration" :input
                                       delete-hsm-configuration-message :output
                                       common-lisp:null :errors
                                       (hsm-configuration-not-found-fault
                                        invalid-hsm-configuration-state-fault))

(smithy/sdk/operation:define-operation delete-integration :shape-name
                                       "DeleteIntegration" :input
                                       delete-integration-message :output
                                       integration :errors
                                       (integration-conflict-operation-fault
                                        integration-conflict-state-fault
                                        integration-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation delete-partner :shape-name
                                       "DeletePartner" :input
                                       partner-integration-input-message
                                       :output
                                       partner-integration-output-message
                                       :errors
                                       (cluster-not-found-fault
                                        partner-not-found-fault
                                        unauthorized-partner-integration-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation delete-redshift-idc-application
                                       :shape-name
                                       "DeleteRedshiftIdcApplication" :input
                                       delete-redshift-idc-application-message
                                       :output common-lisp:null :errors
                                       (dependent-service-access-denied-fault
                                        dependent-service-unavailable-fault
                                        redshift-idc-application-not-exists-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-message :output
                                       common-lisp:null :errors
                                       (resource-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation delete-scheduled-action :shape-name
                                       "DeleteScheduledAction" :input
                                       delete-scheduled-action-message :output
                                       common-lisp:null :errors
                                       (scheduled-action-not-found-fault
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation delete-snapshot-copy-grant :shape-name
                                       "DeleteSnapshotCopyGrant" :input
                                       delete-snapshot-copy-grant-message
                                       :output common-lisp:null :errors
                                       (invalid-snapshot-copy-grant-state-fault
                                        snapshot-copy-grant-not-found-fault))

(smithy/sdk/operation:define-operation delete-snapshot-schedule :shape-name
                                       "DeleteSnapshotSchedule" :input
                                       delete-snapshot-schedule-message :output
                                       common-lisp:null :errors
                                       (invalid-cluster-snapshot-schedule-state-fault
                                        snapshot-schedule-not-found-fault))

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-message :output
                                       common-lisp:null :errors
                                       (invalid-tag-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-usage-limit :shape-name
                                       "DeleteUsageLimit" :input
                                       delete-usage-limit-message :output
                                       common-lisp:null :errors
                                       (unsupported-operation-fault
                                        usage-limit-not-found-fault))

(smithy/sdk/operation:define-operation deregister-namespace :shape-name
                                       "DeregisterNamespace" :input
                                       deregister-namespace-input-message
                                       :output
                                       deregister-namespace-output-message
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-namespace-fault))

(smithy/sdk/operation:define-operation describe-account-attributes :shape-name
                                       "DescribeAccountAttributes" :input
                                       describe-account-attributes-message
                                       :output account-attribute-list :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-authentication-profiles
                                       :shape-name
                                       "DescribeAuthenticationProfiles" :input
                                       describe-authentication-profiles-message
                                       :output
                                       describe-authentication-profiles-result
                                       :errors
                                       (authentication-profile-not-found-fault
                                        invalid-authentication-profile-request-fault))

(smithy/sdk/operation:define-operation describe-cluster-db-revisions
                                       :shape-name "DescribeClusterDbRevisions"
                                       :input
                                       describe-cluster-db-revisions-message
                                       :output cluster-db-revisions-message
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault))

(smithy/sdk/operation:define-operation describe-cluster-parameter-groups
                                       :shape-name
                                       "DescribeClusterParameterGroups" :input
                                       describe-cluster-parameter-groups-message
                                       :output cluster-parameter-groups-message
                                       :errors
                                       (cluster-parameter-group-not-found-fault
                                        invalid-tag-fault))

(smithy/sdk/operation:define-operation describe-cluster-parameters :shape-name
                                       "DescribeClusterParameters" :input
                                       describe-cluster-parameters-message
                                       :output cluster-parameter-group-details
                                       :errors
                                       (cluster-parameter-group-not-found-fault))

(smithy/sdk/operation:define-operation describe-cluster-security-groups
                                       :shape-name
                                       "DescribeClusterSecurityGroups" :input
                                       describe-cluster-security-groups-message
                                       :output cluster-security-group-message
                                       :errors
                                       (cluster-security-group-not-found-fault
                                        invalid-tag-fault))

(smithy/sdk/operation:define-operation describe-cluster-snapshots :shape-name
                                       "DescribeClusterSnapshots" :input
                                       describe-cluster-snapshots-message
                                       :output snapshot-message :errors
                                       (cluster-not-found-fault
                                        cluster-snapshot-not-found-fault
                                        invalid-tag-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-cluster-subnet-groups
                                       :shape-name
                                       "DescribeClusterSubnetGroups" :input
                                       describe-cluster-subnet-groups-message
                                       :output cluster-subnet-group-message
                                       :errors
                                       (cluster-subnet-group-not-found-fault
                                        invalid-tag-fault))

(smithy/sdk/operation:define-operation describe-cluster-tracks :shape-name
                                       "DescribeClusterTracks" :input
                                       describe-cluster-tracks-message :output
                                       track-list-message :errors
                                       (invalid-cluster-track-fault
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation describe-cluster-versions :shape-name
                                       "DescribeClusterVersions" :input
                                       describe-cluster-versions-message
                                       :output cluster-versions-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-clusters :shape-name
                                       "DescribeClusters" :input
                                       describe-clusters-message :output
                                       clusters-message :errors
                                       (cluster-not-found-fault
                                        invalid-tag-fault))

(smithy/sdk/operation:define-operation describe-custom-domain-associations
                                       :shape-name
                                       "DescribeCustomDomainAssociations"
                                       :input
                                       describe-custom-domain-associations-message
                                       :output
                                       custom-domain-associations-message
                                       :errors
                                       (custom-domain-association-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-data-shares :shape-name
                                       "DescribeDataShares" :input
                                       describe-data-shares-message :output
                                       describe-data-shares-result :errors
                                       (invalid-data-share-fault))

(smithy/sdk/operation:define-operation describe-data-shares-for-consumer
                                       :shape-name
                                       "DescribeDataSharesForConsumer" :input
                                       describe-data-shares-for-consumer-message
                                       :output
                                       describe-data-shares-for-consumer-result
                                       :errors (invalid-namespace-fault))

(smithy/sdk/operation:define-operation describe-data-shares-for-producer
                                       :shape-name
                                       "DescribeDataSharesForProducer" :input
                                       describe-data-shares-for-producer-message
                                       :output
                                       describe-data-shares-for-producer-result
                                       :errors (invalid-namespace-fault))

(smithy/sdk/operation:define-operation describe-default-cluster-parameters
                                       :shape-name
                                       "DescribeDefaultClusterParameters"
                                       :input
                                       describe-default-cluster-parameters-message
                                       :output
                                       describe-default-cluster-parameters-result
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-endpoint-access :shape-name
                                       "DescribeEndpointAccess" :input
                                       describe-endpoint-access-message :output
                                       endpoint-access-list :errors
                                       (cluster-not-found-fault
                                        endpoint-not-found-fault
                                        invalid-cluster-state-fault))

(smithy/sdk/operation:define-operation describe-endpoint-authorization
                                       :shape-name
                                       "DescribeEndpointAuthorization" :input
                                       describe-endpoint-authorization-message
                                       :output endpoint-authorization-list
                                       :errors
                                       (cluster-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-event-categories :shape-name
                                       "DescribeEventCategories" :input
                                       describe-event-categories-message
                                       :output event-categories-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-event-subscriptions :shape-name
                                       "DescribeEventSubscriptions" :input
                                       describe-event-subscriptions-message
                                       :output event-subscriptions-message
                                       :errors
                                       (invalid-tag-fault
                                        subscription-not-found-fault))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-message :output
                                       events-message :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-hsm-client-certificates
                                       :shape-name
                                       "DescribeHsmClientCertificates" :input
                                       describe-hsm-client-certificates-message
                                       :output hsm-client-certificate-message
                                       :errors
                                       (hsm-client-certificate-not-found-fault
                                        invalid-tag-fault))

(smithy/sdk/operation:define-operation describe-hsm-configurations :shape-name
                                       "DescribeHsmConfigurations" :input
                                       describe-hsm-configurations-message
                                       :output hsm-configuration-message
                                       :errors
                                       (hsm-configuration-not-found-fault
                                        invalid-tag-fault))

(smithy/sdk/operation:define-operation describe-inbound-integrations
                                       :shape-name
                                       "DescribeInboundIntegrations" :input
                                       describe-inbound-integrations-message
                                       :output inbound-integrations-message
                                       :errors
                                       (integration-not-found-fault
                                        invalid-namespace-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-integrations :shape-name
                                       "DescribeIntegrations" :input
                                       describe-integrations-message :output
                                       integrations-message :errors
                                       (integration-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-logging-status :shape-name
                                       "DescribeLoggingStatus" :input
                                       describe-logging-status-message :output
                                       logging-status :errors
                                       (cluster-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-node-configuration-options
                                       :shape-name
                                       "DescribeNodeConfigurationOptions"
                                       :input
                                       describe-node-configuration-options-message
                                       :output
                                       node-configuration-options-message
                                       :errors
                                       (access-to-snapshot-denied-fault
                                        cluster-not-found-fault
                                        cluster-snapshot-not-found-fault
                                        invalid-cluster-snapshot-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-orderable-cluster-options
                                       :shape-name
                                       "DescribeOrderableClusterOptions" :input
                                       describe-orderable-cluster-options-message
                                       :output
                                       orderable-cluster-options-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-partners :shape-name
                                       "DescribePartners" :input
                                       describe-partners-input-message :output
                                       describe-partners-output-message :errors
                                       (cluster-not-found-fault
                                        unauthorized-partner-integration-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-redshift-idc-applications
                                       :shape-name
                                       "DescribeRedshiftIdcApplications" :input
                                       describe-redshift-idc-applications-message
                                       :output
                                       describe-redshift-idc-applications-result
                                       :errors
                                       (dependent-service-access-denied-fault
                                        dependent-service-unavailable-fault
                                        redshift-idc-application-not-exists-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-reserved-node-exchange-status
                                       :shape-name
                                       "DescribeReservedNodeExchangeStatus"
                                       :input
                                       describe-reserved-node-exchange-status-input-message
                                       :output
                                       describe-reserved-node-exchange-status-output-message
                                       :errors
                                       (reserved-node-exchange-not-found-fault
                                        reserved-node-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-reserved-node-offerings
                                       :shape-name
                                       "DescribeReservedNodeOfferings" :input
                                       describe-reserved-node-offerings-message
                                       :output reserved-node-offerings-message
                                       :errors
                                       (dependent-service-unavailable-fault
                                        reserved-node-offering-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-reserved-nodes :shape-name
                                       "DescribeReservedNodes" :input
                                       describe-reserved-nodes-message :output
                                       reserved-nodes-message :errors
                                       (dependent-service-unavailable-fault
                                        reserved-node-not-found-fault))

(smithy/sdk/operation:define-operation describe-resize :shape-name
                                       "DescribeResize" :input
                                       describe-resize-message :output
                                       resize-progress-message :errors
                                       (cluster-not-found-fault
                                        resize-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation describe-scheduled-actions :shape-name
                                       "DescribeScheduledActions" :input
                                       describe-scheduled-actions-message
                                       :output scheduled-actions-message
                                       :errors
                                       (scheduled-action-not-found-fault
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation describe-snapshot-copy-grants
                                       :shape-name "DescribeSnapshotCopyGrants"
                                       :input
                                       describe-snapshot-copy-grants-message
                                       :output snapshot-copy-grant-message
                                       :errors
                                       (invalid-tag-fault
                                        snapshot-copy-grant-not-found-fault))

(smithy/sdk/operation:define-operation describe-snapshot-schedules :shape-name
                                       "DescribeSnapshotSchedules" :input
                                       describe-snapshot-schedules-message
                                       :output
                                       describe-snapshot-schedules-output-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-storage :shape-name
                                       "DescribeStorage" :input
                                       common-lisp:null :output
                                       customer-storage-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-table-restore-status
                                       :shape-name "DescribeTableRestoreStatus"
                                       :input
                                       describe-table-restore-status-message
                                       :output table-restore-status-message
                                       :errors
                                       (cluster-not-found-fault
                                        table-restore-not-found-fault))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-message :output
                                       tagged-resource-list-message :errors
                                       (invalid-tag-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-usage-limits :shape-name
                                       "DescribeUsageLimits" :input
                                       describe-usage-limits-message :output
                                       usage-limit-list :errors
                                       (cluster-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation disable-logging :shape-name
                                       "DisableLogging" :input
                                       disable-logging-message :output
                                       logging-status :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation disable-snapshot-copy :shape-name
                                       "DisableSnapshotCopy" :input
                                       disable-snapshot-copy-message :output
                                       disable-snapshot-copy-result :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        snapshot-copy-already-disabled-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation disassociate-data-share-consumer
                                       :shape-name
                                       "DisassociateDataShareConsumer" :input
                                       disassociate-data-share-consumer-message
                                       :output data-share :errors
                                       (invalid-data-share-fault
                                        invalid-namespace-fault))

(smithy/sdk/operation:define-operation enable-logging :shape-name
                                       "EnableLogging" :input
                                       enable-logging-message :output
                                       logging-status :errors
                                       (bucket-not-found-fault
                                        cluster-not-found-fault
                                        insufficient-s3bucket-policy-fault
                                        invalid-cluster-state-fault
                                        invalid-s3bucket-name-fault
                                        invalid-s3key-prefix-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation enable-snapshot-copy :shape-name
                                       "EnableSnapshotCopy" :input
                                       enable-snapshot-copy-message :output
                                       enable-snapshot-copy-result :errors
                                       (cluster-not-found-fault
                                        copy-to-region-disabled-fault
                                        dependent-service-request-throttling-fault
                                        incompatible-orderable-options
                                        invalid-cluster-state-fault
                                        invalid-retention-period-fault
                                        limit-exceeded-fault
                                        snapshot-copy-already-enabled-fault
                                        snapshot-copy-grant-not-found-fault
                                        unauthorized-operation
                                        unknown-snapshot-copy-region-fault))

(smithy/sdk/operation:define-operation failover-primary-compute :shape-name
                                       "FailoverPrimaryCompute" :input
                                       failover-primary-compute-input-message
                                       :output failover-primary-compute-result
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation get-cluster-credentials :shape-name
                                       "GetClusterCredentials" :input
                                       get-cluster-credentials-message :output
                                       cluster-credentials :errors
                                       (cluster-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation get-cluster-credentials-with-iam
                                       :shape-name
                                       "GetClusterCredentialsWithIAM" :input
                                       get-cluster-credentials-with-iammessage
                                       :output cluster-extended-credentials
                                       :errors
                                       (cluster-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation
 get-reserved-node-exchange-configuration-options :shape-name
 "GetReservedNodeExchangeConfigurationOptions" :input
 get-reserved-node-exchange-configuration-options-input-message :output
 get-reserved-node-exchange-configuration-options-output-message :errors
 (cluster-not-found-fault cluster-snapshot-not-found-fault
  dependent-service-unavailable-fault invalid-reserved-node-state-fault
  reserved-node-already-migrated-fault reserved-node-not-found-fault
  reserved-node-offering-not-found-fault unsupported-operation-fault))

(smithy/sdk/operation:define-operation get-reserved-node-exchange-offerings
                                       :shape-name
                                       "GetReservedNodeExchangeOfferings"
                                       :input
                                       get-reserved-node-exchange-offerings-input-message
                                       :output
                                       get-reserved-node-exchange-offerings-output-message
                                       :errors
                                       (dependent-service-unavailable-fault
                                        invalid-reserved-node-state-fault
                                        reserved-node-already-migrated-fault
                                        reserved-node-not-found-fault
                                        reserved-node-offering-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-message :output
                                       get-resource-policy-result :errors
                                       (invalid-policy-fault
                                        resource-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation list-recommendations :shape-name
                                       "ListRecommendations" :input
                                       list-recommendations-message :output
                                       list-recommendations-result :errors
                                       (cluster-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-aqua-configuration :shape-name
                                       "ModifyAquaConfiguration" :input
                                       modify-aqua-input-message :output
                                       modify-aqua-output-message :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-authentication-profile
                                       :shape-name
                                       "ModifyAuthenticationProfile" :input
                                       modify-authentication-profile-message
                                       :output
                                       modify-authentication-profile-result
                                       :errors
                                       (authentication-profile-not-found-fault
                                        authentication-profile-quota-exceeded-fault
                                        invalid-authentication-profile-request-fault))

(smithy/sdk/operation:define-operation modify-cluster :shape-name
                                       "ModifyCluster" :input
                                       modify-cluster-message :output
                                       modify-cluster-result :errors
                                       (cluster-already-exists-fault
                                        cluster-not-found-fault
                                        cluster-parameter-group-not-found-fault
                                        cluster-security-group-not-found-fault
                                        custom-cname-association-fault
                                        dependent-service-request-throttling-fault
                                        hsm-client-certificate-not-found-fault
                                        hsm-configuration-not-found-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-security-group-state-fault
                                        invalid-cluster-state-fault
                                        invalid-cluster-track-fault
                                        invalid-elastic-ip-fault
                                        invalid-retention-period-fault
                                        ipv6cidr-block-not-found-fault
                                        limit-exceeded-fault
                                        number-of-nodes-per-cluster-limit-exceeded-fault
                                        number-of-nodes-quota-exceeded-fault
                                        table-limit-exceeded-fault
                                        unauthorized-operation
                                        unsupported-operation-fault
                                        unsupported-option-fault))

(smithy/sdk/operation:define-operation modify-cluster-db-revision :shape-name
                                       "ModifyClusterDbRevision" :input
                                       modify-cluster-db-revision-message
                                       :output
                                       modify-cluster-db-revision-result
                                       :errors
                                       (cluster-not-found-fault
                                        cluster-on-latest-revision-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-cluster-iam-roles :shape-name
                                       "ModifyClusterIamRoles" :input
                                       modify-cluster-iam-roles-message :output
                                       modify-cluster-iam-roles-result :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault))

(smithy/sdk/operation:define-operation modify-cluster-maintenance :shape-name
                                       "ModifyClusterMaintenance" :input
                                       modify-cluster-maintenance-message
                                       :output
                                       modify-cluster-maintenance-result
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault))

(smithy/sdk/operation:define-operation modify-cluster-parameter-group
                                       :shape-name
                                       "ModifyClusterParameterGroup" :input
                                       modify-cluster-parameter-group-message
                                       :output
                                       cluster-parameter-group-name-message
                                       :errors
                                       (cluster-parameter-group-not-found-fault
                                        invalid-cluster-parameter-group-state-fault))

(smithy/sdk/operation:define-operation modify-cluster-snapshot :shape-name
                                       "ModifyClusterSnapshot" :input
                                       modify-cluster-snapshot-message :output
                                       modify-cluster-snapshot-result :errors
                                       (cluster-snapshot-not-found-fault
                                        invalid-cluster-snapshot-state-fault
                                        invalid-retention-period-fault))

(smithy/sdk/operation:define-operation modify-cluster-snapshot-schedule
                                       :shape-name
                                       "ModifyClusterSnapshotSchedule" :input
                                       modify-cluster-snapshot-schedule-message
                                       :output common-lisp:null :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-snapshot-schedule-state-fault
                                        snapshot-schedule-not-found-fault))

(smithy/sdk/operation:define-operation modify-cluster-subnet-group :shape-name
                                       "ModifyClusterSubnetGroup" :input
                                       modify-cluster-subnet-group-message
                                       :output
                                       modify-cluster-subnet-group-result
                                       :errors
                                       (cluster-subnet-group-not-found-fault
                                        cluster-subnet-quota-exceeded-fault
                                        dependent-service-request-throttling-fault
                                        invalid-subnet subnet-already-in-use
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation modify-custom-domain-association
                                       :shape-name
                                       "ModifyCustomDomainAssociation" :input
                                       modify-custom-domain-association-message
                                       :output
                                       modify-custom-domain-association-result
                                       :errors
                                       (cluster-not-found-fault
                                        custom-cname-association-fault
                                        custom-domain-association-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-endpoint-access :shape-name
                                       "ModifyEndpointAccess" :input
                                       modify-endpoint-access-message :output
                                       endpoint-access :errors
                                       (cluster-not-found-fault
                                        endpoint-not-found-fault
                                        invalid-cluster-security-group-state-fault
                                        invalid-cluster-state-fault
                                        invalid-endpoint-state-fault
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation modify-event-subscription :shape-name
                                       "ModifyEventSubscription" :input
                                       modify-event-subscription-message
                                       :output modify-event-subscription-result
                                       :errors
                                       (invalid-subscription-state-fault
                                        snsinvalid-topic-fault
                                        snsno-authorization-fault
                                        snstopic-arn-not-found-fault
                                        source-not-found-fault
                                        subscription-category-not-found-fault
                                        subscription-event-id-not-found-fault
                                        subscription-not-found-fault
                                        subscription-severity-not-found-fault))

(smithy/sdk/operation:define-operation modify-integration :shape-name
                                       "ModifyIntegration" :input
                                       modify-integration-message :output
                                       integration :errors
                                       (integration-already-exists-fault
                                        integration-conflict-operation-fault
                                        integration-conflict-state-fault
                                        integration-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-redshift-idc-application
                                       :shape-name
                                       "ModifyRedshiftIdcApplication" :input
                                       modify-redshift-idc-application-message
                                       :output
                                       modify-redshift-idc-application-result
                                       :errors
                                       (dependent-service-access-denied-fault
                                        dependent-service-unavailable-fault
                                        redshift-idc-application-not-exists-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-scheduled-action :shape-name
                                       "ModifyScheduledAction" :input
                                       modify-scheduled-action-message :output
                                       scheduled-action :errors
                                       (cluster-not-found-fault
                                        invalid-scheduled-action-fault
                                        invalid-schedule-fault
                                        scheduled-action-not-found-fault
                                        scheduled-action-type-unsupported-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation modify-snapshot-copy-retention-period
                                       :shape-name
                                       "ModifySnapshotCopyRetentionPeriod"
                                       :input
                                       modify-snapshot-copy-retention-period-message
                                       :output
                                       modify-snapshot-copy-retention-period-result
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-retention-period-fault
                                        snapshot-copy-disabled-fault
                                        unauthorized-operation))

(smithy/sdk/operation:define-operation modify-snapshot-schedule :shape-name
                                       "ModifySnapshotSchedule" :input
                                       modify-snapshot-schedule-message :output
                                       snapshot-schedule :errors
                                       (invalid-schedule-fault
                                        snapshot-schedule-not-found-fault
                                        snapshot-schedule-update-in-progress-fault))

(smithy/sdk/operation:define-operation modify-usage-limit :shape-name
                                       "ModifyUsageLimit" :input
                                       modify-usage-limit-message :output
                                       usage-limit :errors
                                       (invalid-usage-limit-fault
                                        unsupported-operation-fault
                                        usage-limit-not-found-fault))

(smithy/sdk/operation:define-operation pause-cluster :shape-name "PauseCluster"
                                       :input pause-cluster-message :output
                                       pause-cluster-result :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation purchase-reserved-node-offering
                                       :shape-name
                                       "PurchaseReservedNodeOffering" :input
                                       purchase-reserved-node-offering-message
                                       :output
                                       purchase-reserved-node-offering-result
                                       :errors
                                       (reserved-node-already-exists-fault
                                        reserved-node-offering-not-found-fault
                                        reserved-node-quota-exceeded-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-message :output
                                       put-resource-policy-result :errors
                                       (conflict-policy-update-fault
                                        invalid-policy-fault
                                        resource-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation reboot-cluster :shape-name
                                       "RebootCluster" :input
                                       reboot-cluster-message :output
                                       reboot-cluster-result :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault))

(smithy/sdk/operation:define-operation register-namespace :shape-name
                                       "RegisterNamespace" :input
                                       register-namespace-input-message :output
                                       register-namespace-output-message
                                       :errors
                                       (cluster-not-found-fault
                                        invalid-cluster-state-fault
                                        invalid-namespace-fault))

(smithy/sdk/operation:define-operation reject-data-share :shape-name
                                       "RejectDataShare" :input
                                       reject-data-share-message :output
                                       data-share :errors
                                       (invalid-data-share-fault))

(smithy/sdk/operation:define-operation reset-cluster-parameter-group
                                       :shape-name "ResetClusterParameterGroup"
                                       :input
                                       reset-cluster-parameter-group-message
                                       :output
                                       cluster-parameter-group-name-message
                                       :errors
                                       (cluster-parameter-group-not-found-fault
                                        invalid-cluster-parameter-group-state-fault))

(smithy/sdk/operation:define-operation resize-cluster :shape-name
                                       "ResizeCluster" :input
                                       resize-cluster-message :output
                                       resize-cluster-result :errors
                                       (cluster-not-found-fault
                                        dependent-service-unavailable-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-state-fault
                                        invalid-reserved-node-state-fault
                                        limit-exceeded-fault
                                        number-of-nodes-per-cluster-limit-exceeded-fault
                                        number-of-nodes-quota-exceeded-fault
                                        reserved-node-already-exists-fault
                                        reserved-node-already-migrated-fault
                                        reserved-node-not-found-fault
                                        reserved-node-offering-not-found-fault
                                        unauthorized-operation
                                        unsupported-operation-fault
                                        unsupported-option-fault))

(smithy/sdk/operation:define-operation restore-from-cluster-snapshot
                                       :shape-name "RestoreFromClusterSnapshot"
                                       :input
                                       restore-from-cluster-snapshot-message
                                       :output
                                       restore-from-cluster-snapshot-result
                                       :errors
                                       (access-to-snapshot-denied-fault
                                        cluster-already-exists-fault
                                        cluster-parameter-group-not-found-fault
                                        cluster-quota-exceeded-fault
                                        cluster-security-group-not-found-fault
                                        cluster-snapshot-not-found-fault
                                        cluster-subnet-group-not-found-fault
                                        dependent-service-request-throttling-fault
                                        dependent-service-unavailable-fault
                                        hsm-client-certificate-not-found-fault
                                        hsm-configuration-not-found-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-snapshot-state-fault
                                        invalid-cluster-subnet-group-state-fault
                                        invalid-cluster-track-fault
                                        invalid-elastic-ip-fault
                                        invalid-reserved-node-state-fault
                                        invalid-restore-fault invalid-subnet
                                        invalid-tag-fault
                                        invalid-vpcnetwork-state-fault
                                        ipv6cidr-block-not-found-fault
                                        limit-exceeded-fault
                                        number-of-nodes-per-cluster-limit-exceeded-fault
                                        number-of-nodes-quota-exceeded-fault
                                        reserved-node-already-exists-fault
                                        reserved-node-already-migrated-fault
                                        reserved-node-not-found-fault
                                        reserved-node-offering-not-found-fault
                                        snapshot-schedule-not-found-fault
                                        tag-limit-exceeded-fault
                                        unauthorized-operation
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation restore-table-from-cluster-snapshot
                                       :shape-name
                                       "RestoreTableFromClusterSnapshot" :input
                                       restore-table-from-cluster-snapshot-message
                                       :output
                                       restore-table-from-cluster-snapshot-result
                                       :errors
                                       (cluster-not-found-fault
                                        cluster-snapshot-not-found-fault
                                        in-progress-table-restore-quota-exceeded-fault
                                        invalid-cluster-snapshot-state-fault
                                        invalid-cluster-state-fault
                                        invalid-table-restore-argument-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation resume-cluster :shape-name
                                       "ResumeCluster" :input
                                       resume-cluster-message :output
                                       resume-cluster-result :errors
                                       (cluster-not-found-fault
                                        insufficient-cluster-capacity-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation revoke-cluster-security-group-ingress
                                       :shape-name
                                       "RevokeClusterSecurityGroupIngress"
                                       :input
                                       revoke-cluster-security-group-ingress-message
                                       :output
                                       revoke-cluster-security-group-ingress-result
                                       :errors
                                       (authorization-not-found-fault
                                        cluster-security-group-not-found-fault
                                        invalid-cluster-security-group-state-fault))

(smithy/sdk/operation:define-operation revoke-endpoint-access :shape-name
                                       "RevokeEndpointAccess" :input
                                       revoke-endpoint-access-message :output
                                       endpoint-authorization :errors
                                       (cluster-not-found-fault
                                        endpoint-authorization-not-found-fault
                                        endpoint-not-found-fault
                                        invalid-authorization-state-fault
                                        invalid-cluster-security-group-state-fault
                                        invalid-cluster-state-fault
                                        invalid-endpoint-state-fault))

(smithy/sdk/operation:define-operation revoke-snapshot-access :shape-name
                                       "RevokeSnapshotAccess" :input
                                       revoke-snapshot-access-message :output
                                       revoke-snapshot-access-result :errors
                                       (access-to-snapshot-denied-fault
                                        authorization-not-found-fault
                                        cluster-snapshot-not-found-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation rotate-encryption-key :shape-name
                                       "RotateEncryptionKey" :input
                                       rotate-encryption-key-message :output
                                       rotate-encryption-key-result :errors
                                       (cluster-not-found-fault
                                        dependent-service-request-throttling-fault
                                        invalid-cluster-state-fault
                                        unsupported-operation-fault))

(smithy/sdk/operation:define-operation update-partner-status :shape-name
                                       "UpdatePartnerStatus" :input
                                       update-partner-status-input-message
                                       :output
                                       partner-integration-output-message
                                       :errors
                                       (cluster-not-found-fault
                                        partner-not-found-fault
                                        unauthorized-partner-integration-fault
                                        unsupported-operation-fault))
